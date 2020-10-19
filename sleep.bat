sleep %~1
docker exec -it  screeps /bin/bash -c "cd /screeps; echo 'system.setTickDuration(%~2%)' | npx screeps cli"