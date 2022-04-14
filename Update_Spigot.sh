apt-get install git openjdk-8-jre-headless -y
cd /root
mkdir Update_Cache
cd Update_Cache
git config --global --unset core.autocrlf
wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar -O BuildTools.jar && java -jar BuildTools.jar nogui
mv spigot-*.jar Spigot.jar
rm -rf /mnt/main/Main/Spigot/spigot.jar.old
mv /mnt/main/Main/Spigot/spigot.jar /mnt/main/Main/Spigot/spigot.jar.old
cp -r Spigot.jar /mnt/main/Main/Spigot/spigot.jar
cd /root
rm -rf Update_Cache
