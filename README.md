http://docs.mongodb.org/manual/tutorial/install-mongodb-on-os-x/
brew update
brew install mongodb --devel
sudo mkdir -p /data/db
chown -R wouter /data/db   (uiteraard 'wouter' vervangen, tenzij je user ook 'wouter' heet, maar da's scary)

sudo npm install -g mean-cli 

sudo chown -R wouter ~/.npm    (uiteraard 'wouter' vervangen, tenzij je user ook 'wouter' heet, maar da's scary)

mean init yourNewApp

cd yourNewApp && npm install (dat crashte ergens along the way, dus eerst bower en daarna nog maar es:)

bower install
npm install



Info:
http://learn.mean.io/


info:
http://www.slideshare.net/fitc_slideshare/building-your-first-mean-application

tutorial:
http://www.bradoncode.com/tutorials/mean-stack-tutorial-part-1-setup/

