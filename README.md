In order to run a local Docker container with a Polygon Edge Subnet follow the steps bellow:

1) Create your Docker container 

    $docker run -it -d -p 10002:10002 --name subnet polygon;

2) Open container console (I'm using Docker Desktop on Windows)

3) Run the following shell scripts
    
    
    ./generateGenesis.sh (generates the genesis.json file)

    ./startSubnet.sh (starts all the 4 nodes)