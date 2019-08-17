#!/bin/bash

oc apply -f application.yaml
oc apply -f pipeline-task.yaml
oc apply -f pipeline-resources.yaml
oc apply -f pipeline-task-run.yaml

tkn pipeline start sample-pipeline \
  -r app-source=pipeline-source \
  -r app-image=pipeline-image \
  -s pipeline
