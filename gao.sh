YEAR=$(date -d now +%Y)
MONTH=$(date -d now +%m)
DAY=$(date -d now +%d)

cd ~/Sources



NAME=$YEAR
if [ ! -d "$NAME" ]; then
  mkdir $NAME
fi
cd $NAME
NAME=$MONTH
if [ ! -d "$NAME" ]; then
  mkdir $NAME
fi
cd $NAME
NAME=$DAY
if [ ! -d "$NAME" ]; then
  mkdir $NAME
fi
cd $NAME

