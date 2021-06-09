cd app

rm -rf ./node_modules
npm install
npm rebuild node-sass
chown $CURRENT_UID_GID ./node_modules/ -R
if [[ $APP_MODE == "dev" ]]; then
  HOST=$FRONT_HOST PORT=$FRONT_PORT npm run dev
  echo -e "Run dev mode"
else
  npm run build
  HOST=$FRONT_HOST PORT=$FRONT_PORT npm run start
  echo -e "Run production mode"
fi
