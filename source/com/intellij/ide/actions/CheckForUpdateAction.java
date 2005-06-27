package com.intellij.ide.actions;

import com.intellij.ide.reporter.ConnectionException;
import com.intellij.openapi.actionSystem.AnAction;
import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.ui.Messages;
import com.intellij.openapi.updateSettings.impl.UpdateChecker;
import com.intellij.openapi.updateSettings.impl.UpdateSettingsConfigurable;
import com.intellij.openapi.util.SystemInfo;

public class CheckForUpdateAction extends AnAction {

  public void update(AnActionEvent e) {
    e.getPresentation().setVisible(!SystemInfo.isMacSystemMenu);
  }

  public void actionPerformed(AnActionEvent e) {
    actionPerformed(true);
  }

  public static void actionPerformed(final boolean enableLink) {
    try {
      UpdateChecker.checkForUpdates();

      if (UpdateChecker.NEW_VERION != null) {
        UpdateSettingsConfigurable.getInstance().LAST_TIME_CHECKED = System.currentTimeMillis();
        UpdateChecker.showUpdateInfoDialog(enableLink);
      }
      else {
        UpdateChecker.showNoUpdatesDialog(enableLink);
      }
    }
    catch (ConnectionException e) {
      Messages.showErrorDialog("Connection failed. Please check your network connection and try again.", "Connection Error");
    }
  }
}
