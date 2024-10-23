echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/UNBRAKING/Ultra-Forward-Bot UNBRAKING/Ultra-Forward-Bot
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/UNBRAKING/Ultra-Forward-Bot -b $BRANCH /Ultra-Forward-Bot
fi
cd UNBRAKING/Ultra-Forward-Bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
