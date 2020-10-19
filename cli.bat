echo %~1
docker exec -it  screeps /bin/bash -c "cd /screeps; echo 'system.setTickDuration(%~1%)'  | npx screeps cli"