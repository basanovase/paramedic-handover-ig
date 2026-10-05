# example-admit-task - Paramedic Handover Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **example-admit-task**

## Example Task: example-admit-task

Profile: [Handover Admit Task](StructureDefinition-handover-admit-task.md)

**status**: Requested

**intent**: order

**priority**: Urgent

**code**: ED admission processing

**description**: Verify patient identity, confirm SNOMED codings, and admit.

**focus**: [Encounter: status = arrived; class = emergency (ActCode#EMER); period = 2026-10-05 09:42:00+1100 --> (ongoing)](Encounter-example-handover-encounter.md)

**for**: [ Male, DoB: ( ?ngen-9?)](Patient-example.md)



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "example-admit-task",
  "meta" : {
    "profile" : ["https://basanovase.github.io/paramedic-handover-ig/StructureDefinition/handover-admit-task"]
  },
  "status" : "requested",
  "intent" : "order",
  "priority" : "urgent",
  "code" : {
    "coding" : [{
      "system" : "https://basanovase.github.io/paramedic-handover-ig/CodeSystem/handover-task-code",
      "code" : "admit",
      "display" : "ED admission processing"
    }]
  },
  "description" : "Verify patient identity, confirm SNOMED codings, and admit.",
  "focus" : {
    "reference" : "Encounter/example-handover-encounter"
  },
  "for" : {
    "reference" : "Patient/example"
  }
}

```
