ls
if [ -d hello-world-war ]
then
rm -rf hello-world-war
fi
git clone https://github.com/santhosh0811/hello-world-war.git
cd hello-world-war
mvn clean package

ls
ls
mkdir -p sample
