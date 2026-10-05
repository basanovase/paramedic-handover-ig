# example - Paramedic Handover Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **example**

## Example Patient: example

Profile: [AU Core Patient](http://hl7.org.au/fhir/core/1.1.0-preview/StructureDefinition-au-core-patient.html)

 Male, DoB: ( ?ngen-9?)

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "example",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/core/StructureDefinition/au-core-patient"]
  },
  "identifier" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
      "valueCode" : "unknown"
    }]
  }],
  "name" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
      "valueCode" : "unknown"
    }]
  }],
  "gender" : "male",
  "_birthDate" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
      "valueCode" : "unknown"
    }]
  }
}

```
