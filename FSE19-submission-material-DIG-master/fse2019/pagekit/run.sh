#!/bin/bash

runtime_dependency_for_reset="$HOME/.m2/repository/mysql/mysql-connector-java/6.0.5/mysql-connector-java-6.0.5.jar"

evosuite_cp="$HOME/.m2/repository/org/evosuite/evosuite-runtime/1.0.4-SNAPSHOT/evosuite-runtime-1.0.4-SNAPSHOT.jar:$HOME/.m2/repository/org/mockito/mockito-all/2.0.2-beta/mockito-all-2.0.2-beta.jar:$HOME/.m2/repository/org/jboss/spec/javax/servlet/jboss-servlet-api_3.1_spec/1.0.0.Final/jboss-servlet-api_3.1_spec-1.0.0.Final.jar:$HOME/.m2/repository/javax/inject/javax.inject/1/javax.inject-1.jar:$HOME/.m2/repository/javax/ejb/javax.ejb-api/3.2/javax.ejb-api-3.2.jar:$HOME/.m2/repository/javax/transaction/javax.transaction-api/1.2/javax.transaction-api-1.2.jar:$HOME/.m2/repository/javax/faces/javax.faces-api/2.2/javax.faces-api-2.2.jar:$HOME/.m2/repository/javax/ws/rs/jsr311-api/1.1.1/jsr311-api-1.1.1.jar:$HOME/.m2/repository/javax/enterprise/cdi-api/1.2/cdi-api-1.2.jar:$HOME/.m2/repository/javax/el/javax.el-api/3.0.0/javax.el-api-3.0.0.jar:$HOME/.m2/repository/javax/interceptor/javax.interceptor-api/1.2/javax.interceptor-api-1.2.jar:$HOME/.m2/repository/org/hibernate/hibernate-entitymanager/5.0.5.Final/hibernate-entitymanager-5.0.5.Final.jar:$HOME/.m2/repository/org/jboss/logging/jboss-logging/3.3.0.Final/jboss-logging-3.3.0.Final.jar:$HOME/.m2/repository/org/hibernate/hibernate-core/5.0.5.Final/hibernate-core-5.0.5.Final.jar:$HOME/.m2/repository/antlr/antlr/2.7.7/antlr-2.7.7.jar:$HOME/.m2/repository/org/jboss/jandex/2.0.0.Final/jandex-2.0.0.Final.jar:$HOME/.m2/repository/dom4j/dom4j/1.6.1/dom4j-1.6.1.jar:$HOME/.m2/repository/xml-apis/xml-apis/1.0.b2/xml-apis-1.0.b2.jar:$HOME/.m2/repository/org/hibernate/common/hibernate-commons-annotations/5.0.1.Final/hibernate-commons-annotations-5.0.1.Final.jar:$HOME/.m2/repository/org/hibernate/javax/persistence/hibernate-jpa-2.1-api/1.0.0.Final/hibernate-jpa-2.1-api-1.0.0.Final.jar:$HOME/.m2/repository/org/javassist/javassist/3.18.1-GA/javassist-3.18.1-GA.jar:$HOME/.m2/repository/org/hsqldb/hsqldb/2.3.3/hsqldb-2.3.3.jar:$HOME/.m2/repository/org/springframework/spring-orm/4.2.5.RELEASE/spring-orm-4.2.5.RELEASE.jar:$HOME/.m2/repository/org/springframework/spring-beans/4.2.5.RELEASE/spring-beans-4.2.5.RELEASE.jar:$HOME/.m2/repository/org/springframework/spring-core/4.2.5.RELEASE/spring-core-4.2.5.RELEASE.jar:$HOME/.m2/repository/commons-logging/commons-logging/1.2/commons-logging-1.2.jar:$HOME/.m2/repository/org/springframework/spring-jdbc/4.2.5.RELEASE/spring-jdbc-4.2.5.RELEASE.jar:$HOME/.m2/repository/org/springframework/spring-tx/4.2.5.RELEASE/spring-tx-4.2.5.RELEASE.jar:$HOME/.m2/repository/org/springframework/spring-context/4.2.5.RELEASE/spring-context-4.2.5.RELEASE.jar:$HOME/.m2/repository/org/springframework/spring-aop/4.2.5.RELEASE/spring-aop-4.2.5.RELEASE.jar:$HOME/.m2/repository/org/springframework/spring-expression/4.2.5.RELEASE/spring-expression-4.2.5.RELEASE.jar:/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home/jre/../lib/tools.jar:$HOME/.m2/repository/org/ow2/asm/asm-all/5.1/asm-all-5.1.jar:$HOME/.m2/repository/org/evosuite/evosuite-client/1.0.4-SNAPSHOT/evosuite-client-1.0.4-SNAPSHOT.jar:$HOME/.m2/repository/javax/xml/bind/jaxb-api/2.2.12/jaxb-api-2.2.12.jar:$HOME/.m2/repository/net/sf/opencsv/opencsv/2.3/opencsv-2.3.jar:$HOME/.m2/repository/dk/brics/automaton/automaton/1.11-8/automaton-1.11-8.jar:$HOME/.m2/repository/ch/qos/logback/logback-classic/1.1.3/logback-classic-1.1.3.jar:$HOME/.m2/repository/ch/qos/logback/logback-core/1.1.3/logback-core-1.1.3.jar:$HOME/.m2/repository/com/googlecode/gentyref/gentyref/1.2.0/gentyref-1.2.0.jar:$HOME/.m2/repository/net/sf/jgrapht/jgrapht/0.8.3/jgrapht-0.8.3.jar:$HOME/.m2/repository/com/thoughtworks/xstream/xstream/1.4.9/xstream-1.4.9.jar:$HOME/.m2/repository/xmlpull/xmlpull/1.1.3.1/xmlpull-1.1.3.1.jar:$HOME/.m2/repository/xpp3/xpp3_min/1.1.4c/xpp3_min-1.1.4c.jar:$HOME/.m2/repository/org/apache/commons/commons-lang3/3.3.2/commons-lang3-3.3.2.jar:$HOME/.m2/repository/commons-cli/commons-cli/1.3.1/commons-cli-1.3.1.jar:$HOME/.m2/repository/org/kohsuke/graphviz-api/1.1/graphviz-api-1.1.jar:$HOME/.m2/repository/oro/oro/2.0.8/oro-2.0.8.jar:$HOME/.m2/repository/org/apache/commons/commons-exec/1.3/commons-exec-1.3.jar:$HOME/.m2/repository/org/seleniumhq/selenium/selenium-java/3.3.1/selenium-java-3.3.1.jar:$HOME/.m2/repository/org/seleniumhq/selenium/selenium-chrome-driver/3.3.1/selenium-chrome-driver-3.3.1.jar:$HOME/.m2/repository/org/seleniumhq/selenium/selenium-edge-driver/3.3.1/selenium-edge-driver-3.3.1.jar:$HOME/.m2/repository/org/seleniumhq/selenium/selenium-firefox-driver/3.3.1/selenium-firefox-driver-3.3.1.jar:$HOME/.m2/repository/org/seleniumhq/selenium/selenium-ie-driver/3.3.1/selenium-ie-driver-3.3.1.jar:$HOME/.m2/repository/org/seleniumhq/selenium/selenium-opera-driver/3.3.1/selenium-opera-driver-3.3.1.jar:$HOME/.m2/repository/org/seleniumhq/selenium/selenium-safari-driver/3.3.1/selenium-safari-driver-3.3.1.jar:$HOME/.m2/repository/com/codeborne/phantomjsdriver/1.4.0/phantomjsdriver-1.4.0.jar:$HOME/.m2/repository/org/seleniumhq/selenium/htmlunit-driver/2.24/htmlunit-driver-2.24.jar:$HOME/.m2/repository/net/sourceforge/htmlunit/htmlunit/2.24/htmlunit-2.24.jar:$HOME/.m2/repository/xalan/xalan/2.7.2/xalan-2.7.2.jar:$HOME/.m2/repository/xalan/serializer/2.7.2/serializer-2.7.2.jar:$HOME/.m2/repository/org/apache/httpcomponents/httpmime/4.5.2/httpmime-4.5.2.jar:$HOME/.m2/repository/commons-codec/commons-codec/1.10/commons-codec-1.10.jar:$HOME/.m2/repository/net/sourceforge/htmlunit/htmlunit-core-js/2.23/htmlunit-core-js-2.23.jar:$HOME/.m2/repository/net/sourceforge/htmlunit/neko-htmlunit/2.24/neko-htmlunit-2.24.jar:$HOME/.m2/repository/xerces/xercesImpl/2.11.0/xercesImpl-2.11.0.jar:$HOME/.m2/repository/net/sourceforge/cssparser/cssparser/0.9.21/cssparser-0.9.21.jar:$HOME/.m2/repository/org/w3c/css/sac/1.3/sac-1.3.jar:$HOME/.m2/repository/org/eclipse/jetty/websocket/websocket-client/9.2.20.v20161216/websocket-client-9.2.20.v20161216.jar:$HOME/.m2/repository/org/eclipse/jetty/jetty-util/9.2.20.v20161216/jetty-util-9.2.20.v20161216.jar:$HOME/.m2/repository/org/eclipse/jetty/jetty-io/9.2.20.v20161216/jetty-io-9.2.20.v20161216.jar:$HOME/.m2/repository/org/eclipse/jetty/websocket/websocket-common/9.2.20.v20161216/websocket-common-9.2.20.v20161216.jar:$HOME/.m2/repository/org/eclipse/jetty/websocket/websocket-api/9.2.20.v20161216/websocket-api-9.2.20.v20161216.jar:$HOME/.m2/repository/org/seleniumhq/selenium/selenium-support/3.3.1/selenium-support-3.3.1.jar:$HOME/.m2/repository/org/seleniumhq/selenium/selenium-remote-driver/3.3.1/selenium-remote-driver-3.3.1.jar:$HOME/.m2/repository/org/seleniumhq/selenium/selenium-api/3.3.1/selenium-api-3.3.1.jar:$HOME/.m2/repository/cglib/cglib-nodep/3.2.4/cglib-nodep-3.2.4.jar:$HOME/.m2/repository/com/google/code/gson/gson/2.8.0/gson-2.8.0.jar:$HOME/.m2/repository/org/apache/httpcomponents/httpclient/4.5.2/httpclient-4.5.2.jar:$HOME/.m2/repository/org/apache/httpcomponents/httpcore/4.4.4/httpcore-4.4.4.jar:$HOME/.m2/repository/net/java/dev/jna/jna-platform/4.1.0/jna-platform-4.1.0.jar:$HOME/.m2/repository/net/java/dev/jna/jna/4.1.0/jna-4.1.0.jar:$HOME/.m2/repository/org/hamcrest/hamcrest-library/1.3/hamcrest-library-1.3.jar:$HOME/.m2/repository/org/jgrapht/jgrapht-ext/1.0.0/jgrapht-ext-1.0.0.jar:$HOME/.m2/repository/org/jgrapht/jgrapht-core/1.0.0/jgrapht-core-1.0.0.jar:$HOME/.m2/repository/org/tinyjee/jgraphx/jgraphx/2.0.0.1/jgraphx-2.0.0.1.jar:$HOME/.m2/repository/jgraph/jgraph/5.13.0.0/jgraph-5.13.0.0.jar:$HOME/.m2/repository/org/antlr/antlr4-runtime/4.5.3/antlr4-runtime-4.5.3.jar:$HOME/.m2/repository/com/github/javaparser/javaparser-core/3.4.3/javaparser-core-3.4.3.jar:$HOME/.m2/repository/org/evosuite/evosuite-master/1.0.4-SNAPSHOT/evosuite-master-1.0.4-SNAPSHOT.jar:$HOME/.m2/repository/junit/junit/4.12/junit-4.12.jar:$HOME/.m2/repository/org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar:$HOME/.m2/repository/org/slf4j/slf4j-api/1.7.20/slf4j-api-1.7.20.jar:$HOME/.m2/repository/commons-io/commons-io/2.4/commons-io-2.4.jar:$HOME/.m2/repository/org/apache/maven/maven-core/3.3.9/maven-core-3.3.9.jar:$HOME/.m2/repository/org/apache/maven/maven-model/3.3.9/maven-model-3.3.9.jar:$HOME/.m2/repository/org/apache/maven/maven-settings/3.3.9/maven-settings-3.3.9.jar:$HOME/.m2/repository/org/apache/maven/maven-settings-builder/3.3.9/maven-settings-builder-3.3.9.jar:$HOME/.m2/repository/org/apache/maven/maven-builder-support/3.3.9/maven-builder-support-3.3.9.jar:$HOME/.m2/repository/org/apache/maven/maven-repository-metadata/3.3.9/maven-repository-metadata-3.3.9.jar:$HOME/.m2/repository/org/apache/maven/maven-artifact/3.3.9/maven-artifact-3.3.9.jar:$HOME/.m2/repository/org/apache/maven/maven-model-builder/3.3.9/maven-model-builder-3.3.9.jar:$HOME/.m2/repository/com/google/guava/guava/18.0/guava-18.0.jar:$HOME/.m2/repository/org/apache/maven/maven-aether-provider/3.3.9/maven-aether-provider-3.3.9.jar:$HOME/.m2/repository/org/eclipse/aether/aether-spi/1.0.2.v20150114/aether-spi-1.0.2.v20150114.jar:$HOME/.m2/repository/org/eclipse/aether/aether-impl/1.0.2.v20150114/aether-impl-1.0.2.v20150114.jar:$HOME/.m2/repository/org/eclipse/sisu/org.eclipse.sisu.plexus/0.3.2/org.eclipse.sisu.plexus-0.3.2.jar:$HOME/.m2/repository/org/eclipse/sisu/org.eclipse.sisu.inject/0.3.2/org.eclipse.sisu.inject-0.3.2.jar:$HOME/.m2/repository/com/google/inject/guice/4.0/guice-4.0-no_aop.jar:$HOME/.m2/repository/aopalliance/aopalliance/1.0/aopalliance-1.0.jar:$HOME/.m2/repository/org/codehaus/plexus/plexus-interpolation/1.21/plexus-interpolation-1.21.jar:$HOME/.m2/repository/org/codehaus/plexus/plexus-utils/3.0.22/plexus-utils-3.0.22.jar:$HOME/.m2/repository/org/codehaus/plexus/plexus-classworlds/2.5.2/plexus-classworlds-2.5.2.jar:$HOME/.m2/repository/org/codehaus/plexus/plexus-component-annotations/1.6/plexus-component-annotations-1.6.jar:$HOME/.m2/repository/org/sonatype/plexus/plexus-sec-dispatcher/1.3/plexus-sec-dispatcher-1.3.jar:$HOME/.m2/repository/org/sonatype/plexus/plexus-cipher/1.4/plexus-cipher-1.4.jar:$HOME/.m2/repository/org/apache/maven/maven-plugin-api/3.3.9/maven-plugin-api-3.3.9.jar:$HOME/.m2/repository/org/apache/maven/plugin-tools/maven-plugin-annotations/3.4/maven-plugin-annotations-3.4.jar:$HOME/.m2/repository/org/eclipse/aether/aether-api/1.1.0/aether-api-1.1.0.jar:$HOME/.m2/repository/org/eclipse/aether/aether-util/1.1.0/aether-util-1.1.0.jar:$runtime_dependency_for_reset"

project_cp="target/classes" 

java -Xms4096m -Xmx4096m -cp $evosuite_cp org.evosuite.EvoSuite -projectCP $project_cp $*
