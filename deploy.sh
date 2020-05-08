hugo --minify 

rsync -avW --no-perms --no-owner --no-group --delete --info=progress2 public/ magnias@magnias.be:/home/magnias/html

