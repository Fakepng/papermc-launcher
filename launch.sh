game_version="1.19.2"
server_ram_min_size="1G"
server_ram_max_size="4G"
server_arguments=""

build_version=$(curl -H "Accept: application/json" https://api.papermc.io/v2/projects/paper/versions/$game_version | jq '.builds[-1]') -O ebackup-1.3.1.jar

wget https://api.papermc.io/v2/projects/paper/versions/$game_version/builds/$build_version/downloads/paper-$game_version-$build_version.jar

java -Xms$server_ram_min_size -Xmx$server_ram_max_size $server_arguments -jar paper-$game_version-$build_version.jar -nogui