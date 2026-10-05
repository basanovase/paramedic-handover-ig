# Paramedic Handover Implementation Guide (FHIR R4)

FHIR Shorthand profiles for a voice-driven paramedic handover platform. A paramedic speaks an IMIST-AMBO handover; it is extracted, SNOMED CT-coded and committed to an emergency department FHIR server as a single transaction Bundle, then reviewed by a clinician before admission.

Built on **AU Core 1.1.0-preview** / **AU Base 5.1.0-preview**.

**Published guide:** https://basanovase.github.io/paramedic-handover-ig/

## Contents (`input/fsh/`)

- **Profiles**: ParamedicHandoverEncounter (on AU Core Encounter), HandoverAdmitTask, HandoverTranscript, ParamedicHandoverBundle
- **Extension**: HandoverSourceSection (the IMIST-AMBO section a coded item came from)
- **CapabilityStatement**: ParamedicHandoverReceiver
- **Terminology**: IMIST-AMBO section CodeSystem and ValueSet, handover task codes
- **Invariants** (FHIRPath): one Patient and one Encounter per Bundle, one admit Task, SNOMED-coded Conditions, end time on finished encounters, owner on completed tasks
- **Examples**: an unidentified patient using data-absent-reason (au-core-pat-01), encounter, admit task, provisional femur fracture

## Build

```sh
npx fsh-sushi build .                          # FSH -> FHIR JSON (fsh-generated/)
java -jar input-cache/publisher.jar -ig ig.ini # HL7 IG Publisher -> output/
```

Draft. Not for clinical use.
