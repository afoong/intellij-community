#!/bin/bash

IDEA_HOME="C:\Program Files (x86)\JetBrains\IntelliJ IDEA Community Edition 11.1.3"
IDEA_DIR="$IDEA_HOME\bin"
JAVA_HOME="C:\Program Files\Java\jdk1.6.0_35"
CUSTOM_IDEA_HOME="C:\jects\idea"
CUSTOM_IDEA_OUT="$CUSTOM_IDEA_HOME\out"

"$JAVA_HOME\bin\java" -ea -Xbootclasspath/p:../out/classes/production/boot -Xmx192m -Didea.is.internal=true -XX:MaxPermSize=150m -Didea.launcher.port=7532 "-Didea.launcher.bin.path=$IDEA_DIR" -Dfile.encoding=UTF-8 -classpath "$JAVA_HOME\jre\lib\charsets.jar;$JAVA_HOME\jre\lib\deploy.jar;$JAVA_HOME\jre\lib\javaws.jar;$JAVA_HOME\jre\lib\jce.jar;$JAVA_HOME\jre\lib\jsse.jar;$JAVA_HOME\jre\lib\management-agent.jar;$JAVA_HOME\jre\lib\plugin.jar;$JAVA_HOME\jre\lib\resources.jar;$JAVA_HOME\jre\lib\rt.jar;$JAVA_HOME\jre\lib\ext\dnsns.jar;$JAVA_HOME\jre\lib\ext\localedata.jar;$JAVA_HOME\jre\lib\ext\sunjce_provider.jar;$IDEA_HOME\jre\lib\tools.jar;$CUSTOM_IDEA_OUT\production\annotations;$CUSTOM_IDEA_OUT\production\ant;$CUSTOM_IDEA_OUT\production\openapi;$CUSTOM_IDEA_OUT\production\util;$CUSTOM_IDEA_HOME\lib\jdom.jar;$CUSTOM_IDEA_HOME\lib\log4j.jar;$CUSTOM_IDEA_HOME\lib\trove4j.jar;$CUSTOM_IDEA_HOME\lib\picocontainer.jar;$CUSTOM_IDEA_OUT\production\platform-resources-en;$CUSTOM_IDEA_OUT\production\util-rt;$CUSTOM_IDEA_HOME\lib\jna-utils.jar;$CUSTOM_IDEA_HOME\lib\jna.jar;$CUSTOM_IDEA_HOME\lib\oromatcher.jar;$CUSTOM_IDEA_OUT\production\forms_rt;$CUSTOM_IDEA_OUT\production\extensions;$CUSTOM_IDEA_HOME\lib\xstream.jar;$CUSTOM_IDEA_OUT\production\icons;$CUSTOM_IDEA_HOME\lib\nanoxml-2.2.3.jar;$CUSTOM_IDEA_HOME\lib\microba.jar;$CUSTOM_IDEA_HOME\lib\jgoodies-forms.jar;$CUSTOM_IDEA_OUT\production\xml-openapi;$CUSTOM_IDEA_OUT\production\lang-api;$CUSTOM_IDEA_OUT\production\platform-api;$CUSTOM_IDEA_OUT\production\core-api;$CUSTOM_IDEA_OUT\production\bootstrap;$CUSTOM_IDEA_HOME\lib\commons-codec-1.3.jar;$CUSTOM_IDEA_HOME\lib\automaton.jar;$CUSTOM_IDEA_OUT\production\projectModel-api;$CUSTOM_IDEA_OUT\production\jps-model-api;$CUSTOM_IDEA_HOME\lib\netty-3.5.5.Final.jar;$CUSTOM_IDEA_OUT\production\lvcs-api;$CUSTOM_IDEA_OUT\production\indexing-api;$CUSTOM_IDEA_OUT\production\vcs-api;$CUSTOM_IDEA_HOME\lib\xmlrpc-2.0.jar;$CUSTOM_IDEA_OUT\production\dom-openapi;$CUSTOM_IDEA_OUT\production\resources;$CUSTOM_IDEA_OUT\production\platform-resources;$CUSTOM_IDEA_OUT\production\lvcs-impl;$CUSTOM_IDEA_OUT\production\vcs-impl;$CUSTOM_IDEA_OUT\production\platform-impl;$CUSTOM_IDEA_OUT\production\boot;$CUSTOM_IDEA_HOME\lib\commons-net-3.1.jar;$CUSTOM_IDEA_HOME\lib\asm.jar;$CUSTOM_IDEA_HOME\lib\asm-commons.jar;$CUSTOM_IDEA_HOME\lib\cglib-2.2.2.jar;$CUSTOM_IDEA_HOME\lib\jh.jar;$CUSTOM_IDEA_HOME\lib\commons-logging-1.1.1.jar;$CUSTOM_IDEA_HOME\lib\commons-httpclient-3.1-patched.jar;$CUSTOM_IDEA_HOME\lib\winp-1.16-patched.jar;$CUSTOM_IDEA_HOME\lib\swingx-core-1.6.2.jar;$CUSTOM_IDEA_OUT\production\core-impl;$CUSTOM_IDEA_HOME\lib\miglayout-swing.jar;$CUSTOM_IDEA_OUT\production\indexing-impl;$CUSTOM_IDEA_OUT\production\projectModel-impl;$CUSTOM_IDEA_OUT\production\jps-model-impl;$CUSTOM_IDEA_OUT\production\jps-model-serialization;$CUSTOM_IDEA_HOME\lib\snappy-java-1.0.4.1.jar;$CUSTOM_IDEA_HOME\lib\sanselan-0.98-snapshot.jar;$CUSTOM_IDEA_HOME\lib\guava-12.0.jar;$CUSTOM_IDEA_HOME\lib\jcip-annotations.jar;$CUSTOM_IDEA_OUT\production\RegExpSupport;$CUSTOM_IDEA_OUT\production\lang-impl;$CUSTOM_IDEA_HOME\lib\velocity.jar;$CUSTOM_IDEA_OUT\production\usageView;$CUSTOM_IDEA_HOME\lib\xpp3-1.1.4-min.jar;$CUSTOM_IDEA_HOME\lib\cli-parser-1.1.jar;$CUSTOM_IDEA_HOME\lib\xerces.jar;$CUSTOM_IDEA_OUT\production\xml;$CUSTOM_IDEA_HOME\lib\jsr173_1.0_api.jar;$CUSTOM_IDEA_HOME\lib\xbean.jar;$CUSTOM_IDEA_HOME\lib\resolver.jar;$CUSTOM_IDEA_HOME\lib\jaxen-1.1.3.jar;$CUSTOM_IDEA_OUT\production\dom-impl;$CUSTOM_IDEA_HOME\lib\dtdparser113.jar;$CUSTOM_IDEA_OUT\production\relaxng;$CUSTOM_IDEA_HOME\xml\relaxng\lib\rngom-20051226-patched.jar;$CUSTOM_IDEA_HOME\xml\relaxng\lib\isorelax.jar;$CUSTOM_IDEA_HOME\xml\relaxng\lib\trang-core.jar;$CUSTOM_IDEA_HOME\xml\relaxng\lib\jing.jar;$CUSTOM_IDEA_OUT\production\spellchecker;$CUSTOM_IDEA_OUT\production\xdebugger-impl;$CUSTOM_IDEA_OUT\production\xdebugger-api;$CUSTOM_IDEA_OUT\production\images;$CUSTOM_IDEA_OUT\production\community-resources;$CUSTOM_IDEA_OUT\production\resources-en;$CUSTOM_IDEA_OUT\production\java-psi-api;$CUSTOM_IDEA_OUT\production\java-indexing-api;$CUSTOM_IDEA_HOME\lib\ant\lib\ant-commons-net.jar;$CUSTOM_IDEA_HOME\lib\ant\lib\ant-jmf.jar;$CUSTOM_IDEA_HOME\lib\ant\lib\ant-apache-resolver.jar;$CUSTOM_IDEA_HOME\lib\ant\lib\ant-jai.jar;$CUSTOM_IDEA_HOME\lib\ant\lib\ant-apache-bsf.jar;$CUSTOM_IDEA_HOME\lib\ant\lib\ant-commons-logging.jar;$CUSTOM_IDEA_HOME\lib\ant\lib\ant-junit.jar;$CUSTOM_IDEA_HOME\lib\ant\lib\ant-jsch.jar;$CUSTOM_IDEA_HOME\lib\ant\lib\ant-apache-bcel.jar;$CUSTOM_IDEA_HOME\lib\ant\lib\ant.jar;$CUSTOM_IDEA_HOME\lib\ant\lib\ant-netrexx.jar;$CUSTOM_IDEA_HOME\lib\ant\lib\ant-apache-oro.jar;$CUSTOM_IDEA_HOME\lib\ant\lib\ant-antlr.jar;$CUSTOM_IDEA_HOME\lib\ant\lib\ant-jdepend.jar;$CUSTOM_IDEA_HOME\lib\ant\lib\ant-launcher.jar;$CUSTOM_IDEA_HOME\lib\ant\lib\ant-apache-regexp.jar;$CUSTOM_IDEA_HOME\lib\ant\lib\ant-apache-log4j.jar;$CUSTOM_IDEA_HOME\lib\ant\lib\ant-swing.jar;$CUSTOM_IDEA_HOME\lib\ant\lib\ant-javamail.jar;$CUSTOM_IDEA_OUT\production\compiler-impl;$CUSTOM_IDEA_OUT\production\compiler-openapi;$CUSTOM_IDEA_OUT\production\java-runtime;$CUSTOM_IDEA_HOME\lib\junit.jar;$CUSTOM_IDEA_HOME\lib\junit-4.10.jar;$CUSTOM_IDEA_OUT\production\instrumentation-util;$CUSTOM_IDEA_HOME\lib\asm4-all.jar;$CUSTOM_IDEA_HOME\lib\ecj-4.2.jar;$CUSTOM_IDEA_OUT\production\jsp-openapi;$CUSTOM_IDEA_OUT\production\jsp-base-openapi;$CUSTOM_IDEA_OUT\production\java-impl;$CUSTOM_IDEA_OUT\production\jsp-spi;$CUSTOM_IDEA_OUT\production\execution-openapi;$CUSTOM_IDEA_HOME\lib\groovy-all-1.8.5.jar;$CUSTOM_IDEA_OUT\production\java-psi-impl;$CUSTOM_IDEA_OUT\production\java-indexing-impl;$CUSTOM_IDEA_OUT\production\jps-builders;$CUSTOM_IDEA_OUT\production\forms-compiler;$CUSTOM_IDEA_HOME\lib\protobuf-2.4.1.jar;$CUSTOM_IDEA_HOME\jps\lib\optimizedFileManager.jar;$CUSTOM_IDEA_OUT\production\ui-designer-jps-plugin;$CUSTOM_IDEA_OUT\production\execution-impl;$CUSTOM_IDEA_OUT\production\debugger-impl;$CUSTOM_IDEA_OUT\production\debugger-openapi;$CUSTOM_IDEA_OUT\production\testRunner;$CUSTOM_IDEA_OUT\production\properties;$CUSTOM_IDEA_OUT\production\idea-ui;$CUSTOM_IDEA_OUT\production\commander;$CUSTOM_IDEA_OUT\production\platform-main;$CUSTOM_IDEA_OUT\production\testFramework;$CUSTOM_IDEA_OUT\production\tests_bootstrap;$CUSTOM_IDEA_OUT\production\testFramework-java;$CUSTOM_IDEA_OUT\production\java-tests;$CUSTOM_IDEA_OUT\production\java-i18n;$CUSTOM_IDEA_OUT\production\IntelliLang-java;$CUSTOM_IDEA_OUT\production\IntelliLang;$CUSTOM_IDEA_OUT\production\IntelliLang-xml;$CUSTOM_IDEA_OUT\production\xpath;$CUSTOM_IDEA_OUT\production\xslt-rt;$CUSTOM_IDEA_OUT\production\copyright;$CUSTOM_IDEA_OUT\production\cvs-plugin;$CUSTOM_IDEA_OUT\production\cvs-core;$CUSTOM_IDEA_OUT\production\javacvs-src;$CUSTOM_IDEA_HOME\plugins\cvs\lib\trilead-ssh2-build213.jar;$CUSTOM_IDEA_OUT\production\smartcvs-src;$CUSTOM_IDEA_OUT\production\ui-designer;$CUSTOM_IDEA_OUT\production\devkit;$CUSTOM_IDEA_HOME\plugins\testng\lib\testng.jar;$CUSTOM_IDEA_OUT\production\eclipse;$CUSTOM_IDEA_OUT\production\eclipse-jps-plugin;$CUSTOM_IDEA_OUT\production\generate-tostring;$CUSTOM_IDEA_OUT\production\git4idea;$CUSTOM_IDEA_HOME\plugins\git4idea\lib\trilead-ssh2.jar;$CUSTOM_IDEA_OUT\production\git4idea-rt;$CUSTOM_IDEA_HOME\plugins\git4idea\lib\ini4j\ini4j-0.5.2-patched.jar;$CUSTOM_IDEA_HOME\plugins\git4idea\lib\jgit\org.eclipse.jgit-1.1.0.201109151100-r.jar;$CUSTOM_IDEA_HOME\plugins\git4idea\lib\jgit\jsch-0.1.44.jar;$CUSTOM_IDEA_OUT\production\InspectionGadgetsPlugin;$CUSTOM_IDEA_OUT\production\IntentionPowerPackPlugin;$CUSTOM_IDEA_OUT\production\jetgroovy;$CUSTOM_IDEA_OUT\production\groovy_rt;$CUSTOM_IDEA_OUT\production\groovy-rt-constants;$CUSTOM_IDEA_OUT\production\groovy-jps-plugin;$CUSTOM_IDEA_OUT\production\junit;$CUSTOM_IDEA_OUT\production\junit_rt;$CUSTOM_IDEA_OUT\production\maven;$CUSTOM_IDEA_OUT\production\maven-server-api;$CUSTOM_IDEA_HOME\plugins\maven\maven-server-api\lib\lucene-core-2.4.1.jar;$CUSTOM_IDEA_HOME\plugins\maven\lib\wadl-core.jar;$CUSTOM_IDEA_HOME\lib\jaxb-api.jar;$CUSTOM_IDEA_HOME\lib\jaxb-impl.jar;$CUSTOM_IDEA_HOME\lib\gson-2.2.1.jar;$CUSTOM_IDEA_OUT\production\maven2-server-impl;$CUSTOM_IDEA_HOME\plugins\maven\maven2-server-impl\lib\classworlds-1.1.jar;$CUSTOM_IDEA_HOME\plugins\maven\maven2-server-impl\lib\plexus-utils-1.5.5.jar;$CUSTOM_IDEA_HOME\plugins\maven\maven2-server-impl\lib\maven-dependency-tree-1.2.jar;$CUSTOM_IDEA_HOME\plugins\maven\maven2-server-impl\lib\archetype-common-2.0-alpha-4-SNAPSHOT.jar;$CUSTOM_IDEA_HOME\plugins\maven\maven2-server-impl\lib\mercury-artifact-1.0-alpha-6.jar;$CUSTOM_IDEA_HOME\plugins\maven\maven2-server-impl\lib\maven-2.2.1-uber.jar;$CUSTOM_IDEA_HOME\plugins\maven\maven2-server-impl\lib\maven-embedder-1.1-SNAPSHOT.jar;$CUSTOM_IDEA_HOME\plugins\maven\maven2-server-impl\lib\nexus-indexer-1.2.3.jar;$CUSTOM_IDEA_HOME\plugins\maven\maven2-server-impl\lib\activation-1.1.jar;$CUSTOM_IDEA_HOME\plugins\maven\maven2-server-impl\lib\commons-beanutils.jar;$CUSTOM_IDEA_OUT\production\svn4idea;$CUSTOM_IDEA_HOME\plugins\svn4idea\lib\svnkit.jar;$CUSTOM_IDEA_HOME\plugins\svn4idea\lib\trilead.jar;$CUSTOM_IDEA_HOME\plugins\svn4idea\lib\sequence-library.jar;$CUSTOM_IDEA_HOME\plugins\svn4idea\lib\sqljet.jar;$CUSTOM_IDEA_HOME\plugins\svn4idea\lib\httpclient-4.1.1.jar;$CUSTOM_IDEA_HOME\plugins\svn4idea\lib\httpcore-4.1.jar;$CUSTOM_IDEA_HOME\plugins\svn4idea\lib\antlr.jar;$CUSTOM_IDEA_HOME\plugins\svn4idea\lib\javahl.jar;$CUSTOM_IDEA_HOME\plugins\svn4idea\lib\svnkit-javahl.jar;$CUSTOM_IDEA_OUT\production\svn4idea-tests;$CUSTOM_IDEA_OUT\production\testng;$CUSTOM_IDEA_OUT\production\testng_rt;$CUSTOM_IDEA_OUT\production\IntelliLang-javaee;$CUSTOM_IDEA_OUT\production\xslt-debugger;$CUSTOM_IDEA_OUT\production\xslt-debugger-engine;$CUSTOM_IDEA_HOME\plugins\xslt-debugger\engine\lib\rmi-stubs.jar;$CUSTOM_IDEA_OUT\production\tasks-core;$CUSTOM_IDEA_OUT\production\tasks-api;$CUSTOM_IDEA_HOME\plugins\tasks\tasks-core\lib\axis-1.4.jar;$CUSTOM_IDEA_HOME\plugins\tasks\tasks-core\lib\wsdl4j-1.4.jar;$CUSTOM_IDEA_HOME\plugins\tasks\tasks-core\lib\axis-jaxrpc-1.4.jar;$CUSTOM_IDEA_HOME\plugins\tasks\tasks-core\lib\axis-saaj-1.3.jar;$CUSTOM_IDEA_HOME\plugins\tasks\tasks-core\lib\markdownj-core-0.4.2-SNAPSHOT.jar;$CUSTOM_IDEA_OUT\production\jira-connector;$CUSTOM_IDEA_HOME\plugins\tasks\tasks-core\lib\commons-discovery-0.4.jar;$CUSTOM_IDEA_OUT\production\tasks-java;$CUSTOM_IDEA_OUT\production\tasks-tests;$CUSTOM_IDEA_OUT\production\github;$CUSTOM_IDEA_OUT\production\hg4idea;$CUSTOM_IDEA_OUT\production\android;$CUSTOM_IDEA_OUT\production\smRunner;$CUSTOM_IDEA_HOME\lib\serviceMessages.jar;$CUSTOM_IDEA_HOME\plugins\android\lib\ddmlib.jar;$CUSTOM_IDEA_HOME\plugins\android\lib\sdklib.jar;$CUSTOM_IDEA_HOME\plugins\android\lib\androidprefs.jar;$CUSTOM_IDEA_HOME\plugins\android\lib\jarutils.jar;$CUSTOM_IDEA_HOME\plugins\android\lib\common.jar;$CUSTOM_IDEA_HOME\plugins\android\lib\ide_common.jar;$CUSTOM_IDEA_HOME\plugins\android\lib\ninepatch.jar;$CUSTOM_IDEA_HOME\plugins\android\lib\layoutlib_api.jar;$CUSTOM_IDEA_HOME\plugins\android\lib\kxml2-2.3.0.jar;$CUSTOM_IDEA_HOME\plugins\android\lib\lint_api.jar;$CUSTOM_IDEA_HOME\plugins\android\lib\lint_checks.jar;$CUSTOM_IDEA_HOME\plugins\android\lib\lint.jar;$CUSTOM_IDEA_HOME\plugins\android\lib\lombok-ast-0.2.jar;$CUSTOM_IDEA_OUT\production\android-common;$CUSTOM_IDEA_OUT\production\android-rt;$CUSTOM_IDEA_OUT\production\gradle;$CUSTOM_IDEA_OUT\production\rearranger;$CUSTOM_IDEA_OUT\production\dom-tests;$IDEA_HOME\lib\idea_rt.jar" com.intellij.rt.execution.application.AppMain com.intellij.idea.Main merge $1 $2 $3 $4
