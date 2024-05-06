#!/usr/bin/bash

# ensure the user already exits or not
password="Salma123" 
id pet-clinic > /dev/null 2>&1     # to know the details about the user
if [ `echo $? == 0` ]              # if the last command has been done successfully, the user already exits and the output: "0" ... if not, the user isn't found and the output: any num > 0
then
    echo " ------------------------------- "
    echo "| pet-clinic user already exits |"
    echo " ------------------------------- "
else
    sudo useradd -m -s /bin/bash pet-clinic   # create user with his home directory and make the shell bash
    echo -e "$password\n$password" | sudo passwd pet-clinic > /dev/null 2>&1   # set password for the user
    echo " -------------------------------------- "
    echo "| pet-clinic user created successfully |"  
    echo " -------------------------------------- "
fi

# install java jdk in pet-clinic user home 
su - pet-clinic << EOF          
$password
    cd /home/pet-clinic
    if [[ -e /home/pet-clinic/jdk-22.0.1 ]]              
    then
        echo
        echo " -------------------- "
        echo "| java already exits |"
        echo " -------------------- "
    else
        echo
        echo " ------------------ "
        echo "| installeing java |"
        echo " ------------------ "
        wget https://download.oracle.com/java/22/latest/jdk-22_linux-x64_bin.tar.gz 
        tar -xvzf jdk-22_linux-x64_bin.tar.gz 
        echo 'export JAVA_HOME="/home/pet-clinic/jdk-22.0.1" ' >> /home/pet-clinic/.bashrc
        echo 'export PATH="/home/pet-clinic/jdk-22.0.1/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games" ' >> /home/pet-clinic/.bashrc  
        source .bashrc
        echo " ------------------- "
        echo "| java is installed |"
        echo " ------------------- "
    fi
EOF