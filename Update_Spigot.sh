Jar_Name=Spigot-Latest.jar
Server_Path=
Tool_Url=https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
Tool_Name=BuildTools.jar
Cache=~/Spigot_Update
Tool_Path=${Cache}/Tool


echo "This script only supports Debian/Ubuntu"
echo "If you are using Arch/Gentoo/CentOS etc, please install OpenJDK version 17 and use at your own risk!"
sudo apt-get install git openjdk-8-jre-headless -y
cd ~
mkdir ${Cache}
mkdir ${Tool_Path}
cd ${Cache}
wget ${Tool_Url}
mv ${Tool_Name} ${Tool_Path}/
echo "<-----Build Start----->"
sleep 2 s
java -jar ${Tool_Path}/${Tool_Name}
echo "<-----Build Stop----->"
mv spigot-*.jar ${Jar_Name}
rm ${Server_Path}/${Jar_Name}.old
mv ${Server_Path}/${Jar_Name} ${Server_Path}/${Jar_Name}.old
mv ${Jar_Name} ${Server_Path}/
rm -rf apache-maven-3.6.0/ BuildData Bukkit CraftBukkit Spigot work
cd ~
rm -r ${Cache}
echo "Done!"
#EOF
