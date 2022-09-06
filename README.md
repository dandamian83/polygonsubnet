In order to run a local Docker container with a Polygon Edge Subnet follow the steps bellow:

1) Create your Docker image

    $docker build . -t polygon;

2) Start your Docker container

    $docker run -it -d -p 10002:10002 --name subnet polygon;

3) Open container console (I'm using Docker Desktop on Windows)

4) Run the following shell scripts
    
    
    ./generateGenesis.sh (generates the genesis.json file)

    ./startSubnet.sh (starts all the 4 nodes)