# create folder
mkdir -p ~/Desktop/jitsi-meet-cfg/{web,transcripts,prosody/config,prosody/prosody-plugins-custom,jicofo,jvb,jigasi,jibri}

# start
docker-compose up -d

# delete
docker-compose down


