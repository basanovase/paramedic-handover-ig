# Paramedic Handover Encounter - Paramedic Handover Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Paramedic Handover Encounter**

## Resource Profile: Paramedic Handover Encounter 

| | |
| :--- | :--- |
| *Official URL*:https://basanovase.github.io/paramedic-handover-ig/StructureDefinition/paramedic-handover-encounter | *Version*:0.1.0 |
| Draft as of 2026-10-05 | *Computable Name*:ParamedicHandoverEncounter |

 
Emergency encounter created when a paramedic hands a patient over to the ED. 

**Usages:**

* Refer to this Profile: [Handover Admit Task](StructureDefinition-handover-admit-task.md) and [Handover Transcript](StructureDefinition-handover-transcript.md)
* Examples for this Profile: [Encounter/example-handover-encounter](Encounter-example-handover-encounter.md)
* CapabilityStatements using this Profile: [Paramedic Handover Receiver](CapabilityStatement-ParamedicHandoverReceiver.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/paramedic.handover|current/StructureDefinition/StructureDefinition-paramedic-handover-encounter.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-paramedic-handover-encounter.csv), [Excel](StructureDefinition-paramedic-handover-encounter.xlsx), [Schematron](StructureDefinition-paramedic-handover-encounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "paramedic-handover-encounter",
  "url" : "https://basanovase.github.io/paramedic-handover-ig/StructureDefinition/paramedic-handover-encounter",
  "version" : "0.1.0",
  "name" : "ParamedicHandoverEncounter",
  "title" : "Paramedic Handover Encounter",
  "status" : "draft",
  "date" : "2026-10-05T08:19:54+00:00",
  "publisher" : "Basal (Flynn McLean)",
  "contact" : [{
    "name" : "Basal (Flynn McLean)",
    "telecom" : [{
      "system" : "url",
      "value" : "https://basal.com.au"
    }]
  }],
  "description" : "Emergency encounter created when a paramedic hands a patient over to the ED.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org.au/fhir/core/StructureDefinition/au-core-encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter",
      "constraint" : [{
        "key" : "handover-enc-1",
        "severity" : "error",
        "human" : "A handover encounter that has finished must record an end time.",
        "expression" : "status = 'finished' implies period.end.exists()",
        "source" : "https://basanovase.github.io/paramedic-handover-ig/StructureDefinition/paramedic-handover-encounter"
      }]
    },
    {
      "id" : "Encounter.status",
      "path" : "Encounter.status",
      "short" : "arrived on handover; advanced by the admissions workflow",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/encounter-status"
      }
    },
    {
      "id" : "Encounter.class",
      "path" : "Encounter.class",
      "patternCoding" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "EMER"
      }
    },
    {
      "id" : "Encounter.participant",
      "path" : "Encounter.participant",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "type"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Encounter.participant:paramedic",
      "path" : "Encounter.participant",
      "sliceName" : "paramedic",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.participant:paramedic.type",
      "path" : "Encounter.participant.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
          "code" : "PPRF"
        }]
      }
    },
    {
      "id" : "Encounter.participant:paramedic.individual",
      "path" : "Encounter.participant.individual",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org.au/fhir/core/StructureDefinition/au-core-practitioner"]
      }]
    },
    {
      "id" : "Encounter.period",
      "path" : "Encounter.period",
      "min" : 1
    },
    {
      "id" : "Encounter.period.start",
      "path" : "Encounter.period.start",
      "min" : 1
    }]
  }
}

```
