ssh rumm-server
strOnk053369strOnk0533

cd /data/Flemming/DNAsense/quast
git reset --hard HEAD
git pull
chmod +x /data/Flemming/git/metagenomics/quast.sh

cd /data/Flemming/DNAsense/quast

conda activate quast

nohup /data/Flemming/git/metagenomics/quast.sh > pipeline.log 2>&1 &

tail -n 50 -f pipeline.log


