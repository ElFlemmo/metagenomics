ssh rumm-server
strOnk053369strOnk0533

git clone https://github.com/ElFlemmo/metagenomics.git
cd ~/metagenomics
chmod +x QUAST.sh

cd /data/Flemming/DNAsense/quast
conda activate quast

nohup bash "$HOME/metagenomics/QUAST.sh" > pipeline.log 2>&1 &

tail -n 50 -f pipeline.log


