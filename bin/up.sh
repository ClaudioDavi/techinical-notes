IDu=$(id -u) # UID saves your user id in the ID variable
IDg=$(id -g) # GID

docker run -it \
 -p 0.0.0.0:4000:4000 \
 --hostname=jekyll \
 --name=jekyll \
 -v /mnt/c/Users/Claudio/Documents/Website/techinical-notes:/srv/jekyll \
 -v $PWD/cache:/usr/local/bundle \
 -v $PWD/build:/srv/jekyll/build \
 -e 'TZ=America/Sao_Paulo' \
 -e JEKYLL_UID=$IDu \
 -e JEKYLL_GID=$IDg \
 jekyll/jekyll \
  jekyll serve --source /srv/jekyll \
  --destination /srv/jekyll/build \
  --disable-disk-cache \
  --watch \
  --force_polling \
