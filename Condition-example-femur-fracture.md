# example-femur-fracture - Paramedic Handover Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **example-femur-fracture**

## Example Condition: example-femur-fracture

**Handover Source Section**: [IMIST-AMBO Handover Section: I-inj](CodeSystem-imist-ambo-section.md#imist-ambo-section-I-inj) (Injuries / information)

**clinicalStatus**: Active

**verificationStatus**: Provisional

**category**: Encounter Diagnosis

**code**: Fracture of femur

**subject**: [ Male, DoB: ( ?ngen-9?)](Patient-example.md)

**encounter**: [Encounter: status = arrived; class = emergency (ActCode#EMER); period = 2026-10-05 09:42:00+1100 --> (ongoing)](Encounter-example-handover-encounter.md)



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "example-femur-fracture",
  "extension" : [{
    "url" : "https://basanovase.github.io/paramedic-handover-ig/StructureDefinition/handover-source-section",
    "valueCoding" : {
      "system" : "https://basanovase.github.io/paramedic-handover-ig/CodeSystem/imist-ambo-section",
      "code" : "I-inj",
      "display" : "Injuries / information"
    }
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "provisional"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
      "code" : "encounter-diagnosis"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "71620000",
      "display" : "Fracture of femur"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "encounter" : {
    "reference" : "Encounter/example-handover-encounter"
  }
}

```
