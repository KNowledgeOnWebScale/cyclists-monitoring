#!/bin/bash

# URL of C-SPARQL server
BASE_URL=http://localhost:8275

# create C-SPARQL stream
curl -X PUT \
  $BASE_URL/streams/http%3A%2F%2Fidlab.ugent.be%2Fcycling%2Fstream \
  -d 'tbox=http://localhost:8080/cycling/ontology/cycling-profile.ttl;http://localhost:8080/cycling/ontology/cycling-sosa.ttl'

# add context and profile data for riders
curl -X POST \
  $BASE_URL/kb \
  -d 'action=put&iri=http://localhost:8080/cycling/context/cycling-riders.rdf'

# add context and profile data for sensors
curl -X POST \
  $BASE_URL/kb \
  -d 'action=put&iri=http://localhost:8080/cycling/context/cycling-sensors.rdf'

# register getQuantityObservationValue query
QUANTITY_QUERY=$(cat getQuantityObservationValue.txt)
curl -X PUT \
  $BASE_URL/queries/getQuantityObservationValue \
  -d "$QUANTITY_QUERY"

# register getTrainingZone query
TRAINING_ZONE_QUERY=$(cat getTrainingZone.txt)
curl -X PUT \
  $BASE_URL/queries/getTrainingZone \
  -d "$TRAINING_ZONE_QUERY"
