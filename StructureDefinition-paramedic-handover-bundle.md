# Paramedic Handover Bundle - Paramedic Handover Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Paramedic Handover Bundle**

## Resource Profile: Paramedic Handover Bundle 

| | |
| :--- | :--- |
| *Official URL*:https://basanovase.github.io/paramedic-handover-ig/StructureDefinition/paramedic-handover-bundle | *Version*:0.1.0 |
| Draft as of 2026-10-05 | *Computable Name*:ParamedicHandoverBundle |

 
Transaction bundle committed at handover: one patient, one encounter, the admit task and the transcript, plus coded findings. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/paramedic.handover|current/StructureDefinition/StructureDefinition-paramedic-handover-bundle.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-paramedic-handover-bundle.csv), [Excel](StructureDefinition-paramedic-handover-bundle.xlsx), [Schematron](StructureDefinition-paramedic-handover-bundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "paramedic-handover-bundle",
  "url" : "https://basanovase.github.io/paramedic-handover-ig/StructureDefinition/paramedic-handover-bundle",
  "version" : "0.1.0",
  "name" : "ParamedicHandoverBundle",
  "title" : "Paramedic Handover Bundle",
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
  "description" : "Transaction bundle committed at handover: one patient, one encounter, the admit task and the transcript, plus coded findings.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle",
      "constraint" : [{
        "key" : "handover-bundle-1",
        "severity" : "error",
        "human" : "Exactly one Patient and one Encounter per handover.",
        "expression" : "entry.resource.ofType(Patient).count() = 1 and entry.resource.ofType(Encounter).count() = 1",
        "source" : "https://basanovase.github.io/paramedic-handover-ig/StructureDefinition/paramedic-handover-bundle"
      },
      {
        "key" : "handover-bundle-2",
        "severity" : "error",
        "human" : "Exactly one admit Task per handover.",
        "expression" : "entry.resource.ofType(Task).count() = 1",
        "source" : "https://basanovase.github.io/paramedic-handover-ig/StructureDefinition/paramedic-handover-bundle"
      },
      {
        "key" : "handover-bundle-3",
        "severity" : "error",
        "human" : "Every Condition must be coded in SNOMED CT.",
        "expression" : "entry.resource.ofType(Condition).all(code.coding.where(system = 'http://snomed.info/sct').exists())",
        "source" : "https://basanovase.github.io/paramedic-handover-ig/StructureDefinition/paramedic-handover-bundle"
      }]
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "patternCode" : "transaction"
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "min" : 3
    },
    {
      "id" : "Bundle.entry.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    }]
  }
}

```
