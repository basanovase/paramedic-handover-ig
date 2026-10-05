# Handover Admit Task - Paramedic Handover Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Handover Admit Task**

## Resource Profile: Handover Admit Task 

| | |
| :--- | :--- |
| *Official URL*:https://basanovase.github.io/paramedic-handover-ig/StructureDefinition/handover-admit-task | *Version*:0.1.0 |
| Draft as of 2026-10-05 | *Computable Name*:HandoverAdmitTask |

 
Work item asking ED admissions to verify identity, confirm SNOMED codings and admit. 

**Usages:**

* Examples for this Profile: [Task/example-admit-task](Task-example-admit-task.md)
* CapabilityStatements using this Profile: [Paramedic Handover Receiver](CapabilityStatement-ParamedicHandoverReceiver.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/paramedic.handover|current/StructureDefinition/StructureDefinition-handover-admit-task.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-handover-admit-task.csv), [Excel](StructureDefinition-handover-admit-task.xlsx), [Schematron](StructureDefinition-handover-admit-task.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "handover-admit-task",
  "url" : "https://basanovase.github.io/paramedic-handover-ig/StructureDefinition/handover-admit-task",
  "version" : "0.1.0",
  "name" : "HandoverAdmitTask",
  "title" : "Handover Admit Task",
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
  "description" : "Work item asking ED admissions to verify identity, confirm SNOMED codings and admit.",
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
  "type" : "Task",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Task",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Task",
      "path" : "Task",
      "constraint" : [{
        "key" : "handover-task-1",
        "severity" : "error",
        "human" : "A completed admit task must name who completed it.",
        "expression" : "status = 'completed' implies owner.exists()",
        "source" : "https://basanovase.github.io/paramedic-handover-ig/StructureDefinition/handover-admit-task"
      }]
    },
    {
      "id" : "Task.status",
      "path" : "Task.status",
      "mustSupport" : true
    },
    {
      "id" : "Task.intent",
      "path" : "Task.intent",
      "patternCode" : "order"
    },
    {
      "id" : "Task.priority",
      "path" : "Task.priority",
      "patternCode" : "urgent"
    },
    {
      "id" : "Task.code",
      "path" : "Task.code",
      "min" : 1
    },
    {
      "id" : "Task.code.coding",
      "path" : "Task.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Task.code.coding:admit",
      "path" : "Task.code.coding",
      "sliceName" : "admit",
      "min" : 1,
      "max" : "1",
      "patternCoding" : {
        "system" : "https://basanovase.github.io/paramedic-handover-ig/CodeSystem/handover-task-code",
        "code" : "admit"
      }
    },
    {
      "id" : "Task.focus",
      "path" : "Task.focus",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://basanovase.github.io/paramedic-handover-ig/StructureDefinition/paramedic-handover-encounter"]
      }]
    },
    {
      "id" : "Task.for",
      "path" : "Task.for",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org.au/fhir/core/StructureDefinition/au-core-patient"]
      }]
    }]
  }
}

```
