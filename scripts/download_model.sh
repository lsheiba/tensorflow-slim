
MY_WORKSPACE=test-projects
MY_TOKEN=ce2135f0-9edd-4666-a8b2-56378b8165d2
MY_MODEL=inception_v3
MY_MODEL_VERSION=1.0.0
PRETRAINED_CHECKPOINT_DIR=/notebooks


curl -H “Authorization: Bearer ${MY_TOKEN}” \
  https://dev.kuberlab.io/api/v0.2/workspace/${MY_WORKSPACE}/mlmodels/${MY_MODEL}/versions/${MY_MODEL_VERSION}/download \
  > ${MY_MODEL}.tgz
tar -xvzf ${MY_MODEL}.tgz
mv ${MY_MODEL}.ckpt ${PRETRAINED_CHECKPOINT_DIR}/${MY_MODEL}.ckpt
rm ${MY_MODEL}.tgz
