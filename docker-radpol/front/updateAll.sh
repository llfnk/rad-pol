cd app

rm -rf ./node_modules
npm install
npm rebuild node-sass
chown $CURRENT_UID_GID ./node_modules/ -R
if [[ $APP_MODE == "dev" ]]; then
  npm run dev
  echo -e "Run dev mode"
else
  npm run build && npm run start
  echo -e "Run production mode"
fi