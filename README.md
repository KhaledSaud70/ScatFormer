## run the following commands in the remote instance
mkdir /root/.kaggle && mkdir workspace && cd workspace
git clone https://github.com/User/repo.git

## Run the following in your local machine: scp PATH/TO/kaggle.json root@[INPUT REMOTE INSTANCE IP ADDRESS]:/root/.kaggle

## Run remote_setup.py in the remote instance
bash ScatFormer/remote_setup.sh
