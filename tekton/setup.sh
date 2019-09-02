#!/bin/bash

for i in {1..40}
do
  PROJECT=`printf "dev%02d-pipeline" "${i}"`
  USERNAME=`printf "dev%02d" "${i}"`
  oc new-project $PROJECT --as=$USERNAME \
    --as-group=system:authenticated --as-group=system:authenticated:oauth
  oc project $PROJECT
  oc create serviceaccount pipeline
  oc adm policy add-scc-to-user privileged -z pipeline
  oc adm policy add-role-to-user edit -z pipeline
  sleep 3
done
