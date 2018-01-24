
MY_WORKSPACE=test-projects
MY_TOKEN=ce2135f0-9edd-4666-a8b2-56378b8165d2
MY_MODEL=inception_v3
MY_MODEL_VERSION=1.0.0



curl -H “Authorization: Bearer ${MY_TOKEN}” \
  https://dev.kuberlab.io/api/v0.2/workspace/${MY_WORKSPACE}/mlmodels/${MY_MODEL}/versions/${MY_MODEL_VERSION}/download \
  > ${MY_MODEL}.tgz
