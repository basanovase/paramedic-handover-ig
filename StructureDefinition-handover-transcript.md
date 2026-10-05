# Handover Transcript - Paramedic Handover Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Handover Transcript**

## Resource Profile: Handover Transcript 

| | |
| :--- | :--- |
| *Official URL*:https://basanovase.github.io/paramedic-handover-ig/StructureDefinition/handover-transcript | *Version*:0.1.0 |
| Draft as of 2026-10-05 | *Computable Name*:HandoverTranscript |

 
Verbatim transcript of the spoken IMIST-AMBO handover, kept for audit. 

**Usages:**

* CapabilityStatements using this Profile: [Paramedic Handover Receiver](CapabilityStatement-ParamedicHandoverReceiver.md)
* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/paramedic.handover|current/StructureDefinition/StructureDefinition-handover-transcript.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-handover-transcript.csv), [Excel](StructureDefinition-handover-transcript.xlsx), [Schematron](StructureDefinition-handover-transcript.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "handover-transcript",
  "url" : "https://basanovase.github.io/paramedic-handover-ig/StructureDefinition/handover-transcript",
  "version" : "0.1.0",
  "name" : "HandoverTranscript",
  "title" : "Handover Transcript",
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
  "description" : "Verbatim transcript of the spoken IMIST-AMBO handover, kept for audit.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "fhircomposition",
    "uri" : "http://hl7.org/fhir/composition",
    "name" : "FHIR Composition"
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
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "xds",
    "uri" : "http://ihe.net/xds",
    "name" : "XDS metadata equivalent"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DocumentReference",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DocumentReference",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DocumentReference",
      "path" : "DocumentReference"
    },
    {
      "id" : "DocumentReference.status",
      "path" : "DocumentReference.status",
      "patternCode" : "current"
    },
    {
      "id" : "DocumentReference.type",
      "path" : "DocumentReference.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "34111-5"
        }]
      }
    },
    {
      "id" : "DocumentReference.subject",
      "path" : "DocumentReference.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org.au/fhir/core/StructureDefinition/au-core-patient"]
      }]
    },
    {
      "id" : "DocumentReference.content",
      "path" : "DocumentReference.content",
      "max" : "1"
    },
    {
      "id" : "DocumentReference.content.attachment.contentType",
      "path" : "DocumentReference.content.attachment.contentType",
      "patternCode" : "text/plain"
    },
    {
      "id" : "DocumentReference.content.attachment.data",
      "path" : "DocumentReference.content.attachment.data",
      "min" : 1
    },
    {
      "id" : "DocumentReference.context.encounter",
      "path" : "DocumentReference.context.encounter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://basanovase.github.io/paramedic-handover-ig/StructureDefinition/paramedic-handover-encounter"]
      }]
    }]
  }
}

```
