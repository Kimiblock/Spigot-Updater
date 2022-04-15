Jar_Name=Spigot-latest.jar
Server_Path=
Tool_Url=https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
Tool_Name=BuildTools.jar
Cache=~/Spigot_Update
Tool_Path=${Cache}/Tool

if [[ $(sudo apt install 2>/dev/null) ]]; then
    echo 'Using apt' && sudo apt -y install openjdk17-jdk-headless
elif [[ $(sudo pacman -h 2>/dev/null) ]]; then
    echo 'Using pacman' && sudo pacman --noconfirm -S jre17-openjdk-headless
elif [[ $(sudo dnf install 2>/dev/null) ]]; then
    echo 'Using dnf' && sudo dnf -y install dnf-plugins-core java-latest-openjdk.x86_64
fi



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
cd ~
rm -r ${Cache}
echo "Done!"
#EOF
