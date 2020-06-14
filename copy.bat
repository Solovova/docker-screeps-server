SET from1=docker-screeps-server_screeps
SET from2=docker-screeps-server_mongo-volume
SET from3=docker-screeps-server_redis-volume
docker run --rm -i -t --mount type=volume,src=%from1%,dst=/from --mount type=bind,src=c://docker//screeps//archives,dst=/to alpine ash -c "cd /from ; tar cvzf /to/%from1%.tar.gz *"
docker run --rm -i -t --mount type=volume,src=%from2%,dst=/from --mount type=bind,src=c://docker//screeps//archives,dst=/to alpine ash -c "cd /from ; tar cvzf /to/%from2%.tar.gz *"
docker run --rm -i -t --mount type=volume,src=%from3%,dst=/from --mount type=bind,src=c://docker//screeps//archives,dst=/to alpine ash -c "cd /from ; tar cvzf /to/%from3%.tar.gz *"