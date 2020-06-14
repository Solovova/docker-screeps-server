SET from1=docker-screeps-server_screeps
SET from2=docker-screeps-server_mongo-volume
SET from3=docker-screeps-server_redis-volume
docker run --rm -i -t --mount type=volume,src=%from1%,dst=/to --mount type=bind,src=c://docker//screeps//archives,dst=/from alpine ash -c "cd /to ; rm -rf .* *"
docker run --rm -i -t --mount type=volume,src=%from2%,dst=/to --mount type=bind,src=c://docker//screeps//archives,dst=/from alpine ash -c "cd /to ; rm -rf .* *"
docker run --rm -i -t --mount type=volume,src=%from3%,dst=/to --mount type=bind,src=c://docker//screeps//archives,dst=/from alpine ash -c "cd /to ; rm -rf .* *"