#!/usr/bin/env bash

# double interpolate vars from travis
eval export "AttachmentsBucket=\$AttachmentsBucket_$TRAVIS_BRANCH"
eval export "AwsDefaultVpcId=\$AwsDefaultVpcId_$TRAVIS_BRANCH"
eval export "AwsSnsNotificationEndpoint=\$AwsSnsNotificationEndpoint_$TRAVIS_BRANCH"
eval export "BridgeEnv=\$BridgeEnv_$TRAVIS_BRANCH"
eval export "BridgeWorkerEmail=\$BridgeWorkerEmail_$TRAVIS_BRANCH"
eval export "BridgeWorkerStudy=\$BridgeWorkerStudy_$TRAVIS_BRANCH"
eval export "BridgeWorkerPassword=\$BridgeWorkerPassword_$TRAVIS_BRANCH"
eval export "Env=\$Env_$TRAVIS_BRANCH"
eval export "RecordIdsBucket=\$RecordIdsBucket_$TRAVIS_BRANCH"
eval export "SynapseApiKey=\$SynapseApiKey_$TRAVIS_BRANCH"
eval export "SynapsePrincipalId=\$SynapsePrincipalId_$TRAVIS_BRANCH"
eval export "SynapseUser=\$SynapseUser_$TRAVIS_BRANCH"

