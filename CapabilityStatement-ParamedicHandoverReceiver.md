# Paramedic Handover Receiver - Paramedic Handover Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Paramedic Handover Receiver**

## CapabilityStatement: Paramedic Handover Receiver 

| | |
| :--- | :--- |
| *Official URL*:https://basanovase.github.io/paramedic-handover-ig/CapabilityStatement/ParamedicHandoverReceiver | *Version*:0.1.0 |
| Draft as of 2026-10-05 | *Computable Name*:ParamedicHandoverReceiver |

 
Server capabilities an emergency department FHIR server needs to accept paramedic handovers and run the admissions review queue. 

 [Raw OpenAPI-Swagger Definition file](ParamedicHandoverReceiver.openapi.json) | [Download](ParamedicHandoverReceiver.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "ParamedicHandoverReceiver",
  "url" : "https://basanovase.github.io/paramedic-handover-ig/CapabilityStatement/ParamedicHandoverReceiver",
  "version" : "0.1.0",
  "name" : "ParamedicHandoverReceiver",
  "title" : "Paramedic Handover Receiver",
  "status" : "draft",
  "date" : "2026-10-05",
  "publisher" : "Basal (Flynn McLean)",
  "contact" : [{
    "name" : "Basal (Flynn McLean)",
    "telecom" : [{
      "system" : "url",
      "value" : "https://basal.com.au"
    }]
  }],
  "description" : "Server capabilities an emergency department FHIR server needs to accept paramedic handovers and run the admissions review queue.",
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["json"],
  "rest" : [{
    "mode" : "server",
    "documentation" : "Handovers arrive as one transaction Bundle (ParamedicHandoverBundle). Writes go through a SMART-on-FHIR proxy that checks scopes per Bundle entry.",
    "security" : {
      "service" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/restful-security-service",
          "code" : "SMART-on-FHIR"
        }]
      }]
    },
    "resource" : [{
      "type" : "Patient",
      "supportedProfile" : ["http://hl7.org.au/fhir/core/StructureDefinition/au-core-patient"],
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "create"
      }],
      "conditionalCreate" : true
    },
    {
      "type" : "Encounter",
      "supportedProfile" : ["https://basanovase.github.io/paramedic-handover-ig/StructureDefinition/paramedic-handover-encounter"],
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "update"
      }]
    },
    {
      "type" : "Task",
      "supportedProfile" : ["https://basanovase.github.io/paramedic-handover-ig/StructureDefinition/handover-admit-task"],
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "update"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "code",
        "definition" : "http://hl7.org/fhir/SearchParameter/Task-code",
        "type" : "token"
      },
      {
        "name" : "status",
        "definition" : "http://hl7.org/fhir/SearchParameter/Task-status",
        "type" : "token"
      }]
    },
    {
      "type" : "DocumentReference",
      "supportedProfile" : ["https://basanovase.github.io/paramedic-handover-ig/StructureDefinition/handover-transcript"],
      "interaction" : [{
        "code" : "read"
      }]
    }],
    "interaction" : [{
      "code" : "transaction"
    }],
    "operation" : [{
      "name" : "validate",
      "definition" : "http://hl7.org/fhir/OperationDefinition/Resource-validate"
    }]
  }]
}

```
