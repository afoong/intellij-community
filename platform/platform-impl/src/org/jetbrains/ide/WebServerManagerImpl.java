package org.jetbrains.ide;

import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.diagnostic.Logger;
import com.intellij.openapi.extensions.Extensions;
import com.intellij.openapi.util.Computable;
import com.intellij.openapi.util.ShutDownTracker;
import com.intellij.openapi.util.SimpleTimer;
import com.intellij.util.Consumer;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.channel.ChannelPipeline;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.io.WebServer;

class WebServerManagerImpl extends WebServerManager {
  private static final Logger LOG = Logger.getInstance(WebServerManager.class);

  @NonNls
  private static final String PROPERTY_RPC_PORT = "rpc.port";
  private static final int FIRST_PORT_NUMBER = 63342;
  private static final int PORTS_COUNT = 20;

  private int detectedPortNumber = -1;

  private final WebServer server = new WebServer();

  public int getPort() {
    return detectedPortNumber == -1 ? getDefaultPort() : detectedPortNumber;
  }

  public void addClosingListener(ChannelFutureListener listener) {
    server.addClosingListener(listener);
  }

  private static int getDefaultPort() {
    return System.getProperty(PROPERTY_RPC_PORT) == null ? FIRST_PORT_NUMBER : Integer.parseInt(System.getProperty(PROPERTY_RPC_PORT));
  }

  @Override
  public void initComponent() {
    if (ApplicationManager.getApplication().isUnitTestMode()) {
      return;
    }

    detectedPortNumber = server.start(getDefaultPort(), PORTS_COUNT, true, new Computable<Consumer<ChannelPipeline>[]>() {
      @Override
      public Consumer<ChannelPipeline>[] compute() {
        Consumer<ChannelPipeline>[] consumers = Extensions.getExtensions(EP_NAME);
        if (consumers.length == 0) {
          LOG.warn("web server will be stopped, there are no pipeline consumers");
          SimpleTimer.getInstance().setUp(server.createShutdownTask(), 3000);
        }
        return consumers;
      }
    });

    if (detectedPortNumber != -1) {
      ShutDownTracker.getInstance().registerShutdownTask(server.createShutdownTask());
      LOG.info("web server started, port " + detectedPortNumber);
    }
  }

  @Override
  public void disposeComponent() {
    server.stop();
    LOG.info("web server stopped");
  }

  @NotNull
  @Override
  public String getComponentName() {
    return getClass().getName();
  }
}