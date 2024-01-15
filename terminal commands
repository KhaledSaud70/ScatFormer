## Run the following commands in the remote instance
mkdir /root/.kaggle && mkdir workspace && cd workspace

git clone https://github.com/KhaledSaud70/ScatFormer.git

## Run the following in your local machine:
scp PATH/TO/kaggle.json root@[INPUT REMOTE INSTANCE IP ADDRESS]:/root/.kaggle

## Run remote_setup.sh in the remote instance
bash ScatFormer/remote_setup.sh
## To trian scatformer_s0 with 1 GPU
bash dist_train.sh scatformer_s0 1
