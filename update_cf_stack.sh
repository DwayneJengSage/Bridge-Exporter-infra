#!/usr/bin/env bash

# double interpolate vars from travis
eval export "AwsSnsNotificationEndpoint=\$AwsSnsNotificationEndpoint_$TRAVIS_BRANCH"
eval export "BridgeEnv=\$BridgeEnv_$TRAVIS_BRANCH"
eval export "BridgeWorkerEmail=\$BridgeWorkerEmail_$TRAVIS_BRANCH"
eval export "BridgeWorkerStudy=\$BridgeWorkerStudy_$TRAVIS_BRANCH"
eval export "BridgeWorkerPassword=\$BridgeWorkerPassword_$TRAVIS_BRANCH"
eval export "Env=\$Env_$TRAVIS_BRANCH"
eval export "SynapseApiKey=\$SynapseApiKey_$TRAVIS_BRANCH"
eval export "SynapsePrincipalId=\$SynapsePrincipalId_$TRAVIS_BRANCH"
eval export "SynapseUser=\$SynapseUser_$TRAVIS_BRANCH"

# deploy with evaluated vars
aws cloudformation update-stack \
--stack-name $STACK_NAME \
--capabilities CAPABILITY_NAMED_IAM \
--template-body file://cf_templates/eb_app.yml \
--parameters \
ParameterKey=AwsDefaultVpcId,ParameterValue=$AwsDefaultVpcId \
ParameterKey=AwsSnsNotificationEndpoint,ParameterValue=$AwsSnsNotificationEndpoint \
ParameterKey=AwsSolutionStackName,ParameterValue="$AwsSolutionStackName" \
ParameterKey=BridgeEnv,ParameterValue=$BridgeEnv \
ParameterKey=BridgeUser,ParameterValue=$BridgeUser \
ParameterKey=BridgeWorkerEmail,ParameterValue=$BridgeWorkerEmail \
ParameterKey=BridgeWorkerStudy,ParameterValue=$BridgeWorkerStudy \
ParameterKey=BridgeWorkerPassword,ParameterValue=$BridgeWorkerPassword \
ParameterKey=EC2InstanceType,ParameterValue=t2.micro \
ParameterKey=Env,ParameterValue=$Env \
ParameterKey=SynapseApiKey,ParameterValue=$SynapseApiKey \
ParameterKey=SynapsePrincipalId,ParameterValue=$SynapsePrincipalId \
ParameterKey=SynapseUser,ParameterValue=$SynapseUser
