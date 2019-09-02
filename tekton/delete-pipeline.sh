#!/bin/bash

oc delete route quarkus-app
oc delete dc quarkus-app
oc delete svc quarkus-app

oc delete pipeline sample-pipeline
oc delete pipelinerun sample-pipeline-run
oc delete task oc
oc delete task build-and-push
oc delete pipelineresource pipeline-source
oc delete pipelineresource pipeline-image
