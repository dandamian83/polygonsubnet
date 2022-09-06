# Build a Docker container running a Polygon Edge based Subnet
Built based on the official Polygon [documentation]  (https://docs.polygon.technology/docs/edge/get-started/set-up-ibft-locally).

In order to run a local Docker container with a Polygon Edge Subnet follow the steps bellow:

1) Create your Docker image

    $docker build . -t polygon;

2) Start your Docker container

    $docker run -it -d -p 10002:10002 --name subnet polygon;

3) Open container console (I'm using Docker Desktop on Windows)

4) Run the following shell scripts
    
    
    ./generateGenesis.sh (generates the genesis.json file)

    ./startSubnet.sh (starts all the 4 nodes)


## Observations

From the genesis.json file, I'm prepopulating the address 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266with 1983 MATIC.

This is the famous 'signer' address that Hardhat generates by default, so finding its private key would not be a hassle.

(To find this address's private key just install Hardhat and start a local node; the first account listed will be the one ending in ...Fb92266 and its private key will be shown as well.)