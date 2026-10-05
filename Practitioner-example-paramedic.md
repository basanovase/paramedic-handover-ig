# example-paramedic - Paramedic Handover Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **example-paramedic**

## Example Practitioner: example-paramedic

Profile: [AU Core Practitioner](http://hl7.org.au/fhir/core/1.1.0-preview/StructureDefinition-au-core-practitioner.html)

**name**: Sam Jensen 



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "example-paramedic",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/core/StructureDefinition/au-core-practitioner"]
  },
  "name" : [{
    "family" : "Jensen",
    "given" : ["Sam"]
  }]
}

```
