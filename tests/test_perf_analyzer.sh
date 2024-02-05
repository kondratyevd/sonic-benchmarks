mkdir clients
cd clients
wget -q https://github.com/triton-inference-server/server/releases/download/v2.42.0/v2.42.0_ubuntu2204.clients.tar.gz
tar xzf v2.42.0_ubuntu2204.clients.tar.gz

sudo apt-get install -y libb64-dev cuda-toolkit

cd ../
pwd
ls -l

clients/bin/perf_analyzer --model-repository=models --async -m deepmet -u localhost:8001 -p 1000 -b 100 --input-data "random"