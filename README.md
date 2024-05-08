# Tutorial
Link: https://www.youtube.com/watch?v=H9bAMRmaaxk

# Gradle issues
The tutorial uses Gradle. Faced some issues with it and hence switched to Maven
Exercise 1 worked. So going to proceed with it.

# JDK issues
Got some issues around java runtime not being detected as well as some compiler issues.

TDLR:
- Spring 3 requires java 17 and above. Anything less will create some problem
- Installed java JDK version 17 from java website (jdk-17.0.10_macos-x64_bin.dmg)
- Had JAVA_HOME set as: /Library/Java/JavaVirtualMachines/jdk-17.jdk/Contents/Home (this got set automatically due to JDK installation step above)
- As well as set PATH as this on terminal: export PATH="$PATH:$JAVA_HOME/bin"
- Hit some issue around 'SDK version is not compatible with source version'. Followed steps here which worked: https://www.youtube.com/watch?v=yV6-mm-3JeU

# Useful Docker Commands
Especially when it comes to distinguishing containers & images and how to remove them. See the first response to this stackoverflow question:
https://stackoverflow.com/questions/33907835/docker-error-cannot-delete-docker-container-conflict-unable-to-remove-reposito

# Git issues
Hit some issue with pushing code initially to repo. Followed this to use '-f' to force push.
https://stackoverflow.com/questions/4181861/message-src-refspec-master-does-not-match-any-when-pushing-commits-in-git

# Things to keep in mind
1. As part of the upload, I pushed the opentelemetry-javaagent.jar as part of the 'target/agent' folder. In the tutorial, the jar gets added to 'target' folder as part of the gradle build plugin. Did not bother with doing the same on maven. Whenever a clean and build or package goal is run on maven, ensure to create 'agent' folder in 'target' and copy the otel jar from https://github.com/open-telemetry/opentelemetry-java-instrumentation/releases/latest/download/opentelemetry-javaagent.jar into this location. A copy of this jar is also there in the 'order-service' project folder.
