# Handover Source Section - Paramedic Handover Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Handover Source Section**

## Extension: Handover Source Section 

| | |
| :--- | :--- |
| *Official URL*:https://basanovase.github.io/paramedic-handover-ig/StructureDefinition/handover-source-section | *Version*:0.1.0 |
| Draft as of 2026-10-05 | *Computable Name*:HandoverSourceSection |

The IMIST-AMBO section of the spoken handover that a coded item was extracted from.

**Context of Use**

**Usage info**

**Usages:**

* Examples for this Extension: [Condition/example-femur-fracture](Condition-example-femur-fracture.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/paramedic.handover|current/StructureDefinition/StructureDefinition-handover-source-section.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-handover-source-section.csv), [Excel](StructureDefinition-handover-source-section.xlsx), [Schematron](StructureDefinition-handover-source-section.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "handover-source-section",
  "url" : "https://basanovase.github.io/paramedic-handover-ig/StructureDefinition/handover-source-section",
  "version" : "0.1.0",
  "name" : "HandoverSourceSection",
  "title" : "Handover Source Section",
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
  "description" : "The IMIST-AMBO section of the spoken handover that a coded item was extracted from.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Condition"
  },
  {
    "type" : "element",
    "expression" : "Procedure"
  },
  {
    "type" : "element",
    "expression" : "MedicationStatement"
  },
  {
    "type" : "element",
    "expression" : "AllergyIntolerance"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Handover Source Section",
      "definition" : "The IMIST-AMBO section of the spoken handover that a coded item was extracted from."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://basanovase.github.io/paramedic-handover-ig/StructureDefinition/handover-source-section"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://basanovase.github.io/paramedic-handover-ig/ValueSet/imist-ambo-section-vs"
      }
    }]
  }
}

```
