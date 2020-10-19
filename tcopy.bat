SET from1=screeps
docker run --rm -i -t --mount type=volume,src=%from1%,dst=/from --mount type=bind,src=c://docker//screeps//archives,dst=/to alpine ash -c "cd /from ; tar cvzf /to/%from1%.tar.gz *"