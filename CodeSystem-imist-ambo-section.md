# IMIST-AMBO Handover Section - Paramedic Handover Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IMIST-AMBO Handover Section**

## CodeSystem: IMIST-AMBO Handover Section 

| | |
| :--- | :--- |
| *Official URL*:https://basanovase.github.io/paramedic-handover-ig/CodeSystem/imist-ambo-section | *Version*:0.1.0 |
| Draft as of 2026-10-05 | *Computable Name*:ImistAmboSection |

 
Sections of the IMIST-AMBO clinical handover mnemonic. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [IMIST-AMBO Handover Sections](ValueSet-imist-ambo-section-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "imist-ambo-section",
  "url" : "https://basanovase.github.io/paramedic-handover-ig/CodeSystem/imist-ambo-section",
  "version" : "0.1.0",
  "name" : "ImistAmboSection",
  "title" : "IMIST-AMBO Handover Section",
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
  "description" : "Sections of the IMIST-AMBO clinical handover mnemonic.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 9,
  "concept" : [{
    "code" : "I-ident",
    "display" : "Identification",
    "definition" : "Patient identification"
  },
  {
    "code" : "M-mech",
    "display" : "Mechanism / medical complaint",
    "definition" : "Mechanism of injury or medical complaint"
  },
  {
    "code" : "I-inj",
    "display" : "Injuries / information",
    "definition" : "Injuries found or information relative to the complaint"
  },
  {
    "code" : "S",
    "display" : "Signs",
    "definition" : "Vital signs and GCS"
  },
  {
    "code" : "T",
    "display" : "Treatment and trends",
    "definition" : "Treatment given and patient trends"
  },
  {
    "code" : "A",
    "display" : "Allergies",
    "definition" : "Allergies"
  },
  {
    "code" : "M-meds",
    "display" : "Medications",
    "definition" : "Medications"
  },
  {
    "code" : "B",
    "display" : "Background",
    "definition" : "Background history"
  },
  {
    "code" : "O",
    "display" : "Other",
    "definition" : "Other information"
  }]
}

```
