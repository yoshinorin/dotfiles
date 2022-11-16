#!/bin/sh

# Install Scala & sbt
curl -s "https://get.sdkman.io?rcupdate=false" | bash && source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk install java 11.0.11.hs-adpt && sdk install scala 2.13.4 && sdk install sbt
echo 'source "$HOME/.sdkman/bin/sdkman-init.sh"' >> ~/.bash_profile
