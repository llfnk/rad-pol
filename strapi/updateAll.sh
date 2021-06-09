cd "/srv/app"

rm -rf ./node_modules
#npm install
#npm run build


#if [ ! -f "package.json" ]; then
#
#  DATABASE_CLIENT=${DATABASE_CLIENT:-sqlite}
#
#  EXTRA_ARGS=${EXTRA_ARGS}
#
#  echo "Using strapi $(strapi -v)"
#  echo "No project found at /srv/app. Creating a new strapi project"
#
#  DOCKER=true strapi new . \
#    --dbclient=$DATABASE_CLIENT \
#    --dbhost=$DATABASE_HOST \
#    --dbport=$DATABASE_PORT \
#    --dbname=$DATABASE_NAME \
#    --dbusername=$DATABASE_USERNAME \
#    --dbpassword=$DATABASE_PASSWORD \
#    --dbssl=$DATABASE_SSL \
#    $EXTRA_ARGS
#
#
#if [ ! -d "node_modules" ] || [ ! "$(ls -qAL node_modules 2>/dev/null)" ]; then
#  echo "Node modules not installed. Installing..."
  if [ -f "yarn.lock" ]; then
    yarn install
    yarn build
  elif [ -f "package-lock.json" ]; then
    npm install
  fi
#fi

chown $CURRENT_UID_GID /srv/app -R