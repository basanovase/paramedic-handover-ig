# example-handover-encounter - Paramedic Handover Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **example-handover-encounter**

## Example Encounter: example-handover-encounter

Profile: [Paramedic Handover Encounter](StructureDefinition-paramedic-handover-encounter.md)

**status**: Arrived

**class**: [ActCode: EMER](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActCode.html#v3-ActCode-EMER) (emergency)

**subject**: [ Male, DoB: ( ?ngen-9?)](Patient-example.md)

### Participants

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Individual** |
| * | primary performer | [Practitioner Sam Jensen ](Practitioner-example-paramedic.md) |

**period**: 2026-10-05 09:42:00+1100 --> (ongoing)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "example-handover-encounter",
  "meta" : {
    "profile" : ["https://basanovase.github.io/paramedic-handover-ig/StructureDefinition/paramedic-handover-encounter"]
  },
  "status" : "arrived",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "EMER",
    "display" : "emergency"
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "participant" : [{
    "type" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
        "code" : "PPRF",
        "display" : "primary performer"
      }]
    }],
    "individual" : {
      "reference" : "Practitioner/example-paramedic"
    }
  }],
  "period" : {
    "start" : "2026-10-05T09:42:00+11:00"
  }
}

```
