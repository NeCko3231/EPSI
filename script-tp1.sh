echo " "
echo "L'installation de Jenkins va démarrer ..."
echo " "
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update -y
sudo apt install openjdk-11-jre -y
java -version
sudo apt-get install jenkins -y
sudo apt update -y
echo " "
echo "Installation terminée"
echo " "
echo "Le mot de passe administrateur de Jenkins est :"
cat /var/lib/jenkins/secrets/initialAdminPassword
echo " "
