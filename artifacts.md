# Artifacts Summary - Paramedic Handover Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [Paramedic Handover Receiver](CapabilityStatement-ParamedicHandoverReceiver.md) | Server capabilities an emergency department FHIR server needs to accept paramedic handovers and run the admissions review queue. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Handover Admit Task](StructureDefinition-handover-admit-task.md) | Work item asking ED admissions to verify identity, confirm SNOMED codings and admit. |
| [Handover Transcript](StructureDefinition-handover-transcript.md) | Verbatim transcript of the spoken IMIST-AMBO handover, kept for audit. |
| [Paramedic Handover Bundle](StructureDefinition-paramedic-handover-bundle.md) | Transaction bundle committed at handover: one patient, one encounter, the admit task and the transcript, plus coded findings. |
| [Paramedic Handover Encounter](StructureDefinition-paramedic-handover-encounter.md) | Emergency encounter created when a paramedic hands a patient over to the ED. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Handover Source Section](StructureDefinition-handover-source-section.md) | The IMIST-AMBO section of the spoken handover that a coded item was extracted from. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [IMIST-AMBO Handover Sections](ValueSet-imist-ambo-section-vs.md) | All IMIST-AMBO handover sections. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Handover Task Codes](CodeSystem-handover-task-code.md) | Local workflow codes for ED handover processing. |
| [IMIST-AMBO Handover Section](CodeSystem-imist-ambo-section.md) | Sections of the IMIST-AMBO clinical handover mnemonic. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [example](Patient-example.md) | Unidentified patient from handover_001. No identifier, name or DOB stated, so data-absent-reason sentinels satisfy au-core-pat-01 and au-core-pat-02. |
| [example-admit-task](Task-example-admit-task.md) | Admissions work item for handover_001. |
| [example-femur-fracture](Condition-example-femur-fracture.md) | Suspected femur fracture from the Injuries section of handover_001, provisional. |
| [example-handover-encounter](Encounter-example-handover-encounter.md) | ED encounter created at handover for handover_001. |
| [example-paramedic](Practitioner-example-paramedic.md) | The handing-over paramedic. |

