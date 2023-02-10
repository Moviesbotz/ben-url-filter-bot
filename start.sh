if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Moviesbotz/Auto-filter-Urlshortener-All.git /Auto-filter-Urlshortener-All
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Auto-filter-Urlshortener-All
fi
cd /Auto-filter-Urlshortener-All
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
