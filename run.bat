docker run -d --name screeps-server --mount type=bind,src=c://docker//screeps//data,dst=/screeps -p 21025:21025 quay.io/ags131/screeps-server