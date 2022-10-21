# Download

git clone https://github.com/TequieroD/jitsi.git
cd jitsi
git checkout develop/static-statefulset-hpa-kong


# [option] get External IP

gcloud compute addresses create jvb --region us-central1
gcloud compute addresses list


# Edit jitsi-meet/values.yaml

- publicURL: "https://YOUR_DOMAIN"
- LoadbalancerIP: JVB_IP
- publicIP: JVB_IP


# Install Jitsi-Meet

helm upgrade --install myjisti jitsi-meet


# Install kong with helm output
helm upgrade --install jitsi-gw kong -n {{ .Release.Namespace }} --set "proxy.enabled=false" --set "udpProxy.enabled=true" --set "udpProxy.type=LoadBalancer" --set "udpProxy.loadBalancerIP={{ JVB_IP }}"  --set "udpProxy.stream[0].containerPort=30000" --set "udpProxy.stream[0].servicePort=30000" --set "udpProxy.stream[0].protocol=UDP"  --set "udpProxy.stream[1].containerPort=30001" --set "udpProxy.stream[1].servicePort=30001" --set "udpProxy.stream[1].protocol=UDP"  --set "udpProxy.stream[2].containerPort=30002" --set "udpProxy.stream[2].servicePort=30002" --set "udpProxy.stream[2].protocol=UDP"

# Install UDPIngress
helm upgrade --install myjitsi jitsi-meet

# Rerun prosody
kubectl delete pod myjisti-prosody-0
