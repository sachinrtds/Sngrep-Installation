
#!/bin/bash

sudo tee /etc/yum.repos.d/sngrep.repo<<EOF
[irontec]
name=Irontec RPMs repository
baseurl=http://packages.irontec.com/centos/\$releasever/\$basearch/
EOF

/bin/rpm --import http://packages.irontec.com/public.key

/bin/yum install sngrep -y
