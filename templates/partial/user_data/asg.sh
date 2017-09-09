#!/bin/bash -xe

exec > >(tee "/var/log/user-data.log" | logger -t user-data -s 2>/dev/console) 2>&1

yum update -y aws-cfn-bootstrap
yum update -y aws-cli

/opt/aws/bin/cfn-init -v --stack ${AWS::StackName} --resource LaunchConfig --region ${AWS::Region}
/opt/aws/bin/cfn-signal -e $? --stack ${AWS::StackName} --resource WebServerGroup --region ${AWS::Region}
