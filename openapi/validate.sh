
#run from the openapi directory


#!/bin/bash
#OpenApi validation
for FILE in  ../fsh-generated/resources/Practitioner-*.json
do
	openapi-examples-validator -n -s $.components.schemas.Practitioner -e ${FILE} ./HpiFhirOpenApi.yaml
done	

#FHIR validator
