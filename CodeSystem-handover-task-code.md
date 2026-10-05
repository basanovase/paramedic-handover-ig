# Handover Task Codes - Paramedic Handover Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Handover Task Codes**

## CodeSystem: Handover Task Codes 

| | |
| :--- | :--- |
| *Official URL*:https://basanovase.github.io/paramedic-handover-ig/CodeSystem/handover-task-code | *Version*:0.1.0 |
| Draft as of 2026-10-05 | *Computable Name*:HandoverTaskCode |

 
Local workflow codes for ED handover processing. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "handover-task-code",
  "url" : "https://basanovase.github.io/paramedic-handover-ig/CodeSystem/handover-task-code",
  "version" : "0.1.0",
  "name" : "HandoverTaskCode",
  "title" : "Handover Task Codes",
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
  "description" : "Local workflow codes for ED handover processing.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "admit",
    "display" : "ED admission processing"
  }]
}

```
