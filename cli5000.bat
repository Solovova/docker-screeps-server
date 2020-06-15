sleep 3000
docker exec -it  screeps /bin/bash -c "cd /screeps; echo 'system.setTickDuration(5000)' | npx screeps cli"