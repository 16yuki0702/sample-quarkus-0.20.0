#!/bin/bash

oc delete route quarkus-app
oc delete is ubi-minimal
oc delete is quarkus-app
oc delete bc quarkus-app
oc delete bc quarkus-sample-pipeline
oc delete dc quarkus-app
oc delete svc quarkus-app
