FROM    almir/webhook
FROM    registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift:latest

COPY 		hooks/dockerHub-scan.json hooks/iq-consume.json hooks/nxrm-consume.json hooks/test.json /etc/webhook/
COPY		scripts/dockerHub-scan.sh scripts/iq-consume.sh scripts/nxrm-consume.sh scripts/test.sh /etc/webhook/

COPY		nexus-iq-cli-1.55.0-01.jar /etc/webhook/nexus-iq-cli.jar
