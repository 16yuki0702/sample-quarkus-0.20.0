#!/bin/bash

oc new-project $1-pipeline
oc project $1-pipeline
oc create serviceaccount pipeline
oc adm policy add-scc-to-user privileged -z pipeline
oc adm policy add-role-to-user edit -z pipeline
