### Paramedic Handover Implementation Guide

This guide profiles the FHIR resources a voice-driven paramedic handover platform commits to an emergency department. A paramedic speaks an IMIST-AMBO handover. The platform extracts and SNOMED-codes it, verifies codes on Ontoserver, and commits one transaction Bundle to a HAPI FHIR server running AU Core. A clinician then reviews the admit Task before admission.

Profiles build on **AU Core 1.1.0-preview**:

- **ParamedicHandoverEncounter**: AU Core Encounter with class fixed to EMER and the paramedic as a required primary-performer participant.
- **HandoverAdmitTask**: the admissions work item.
- **HandoverTranscript**: the verbatim transcript (LOINC 34111-5).
- **ParamedicHandoverBundle**: the transaction, constrained by FHIRPath invariants.

Draft. Not for production use.
