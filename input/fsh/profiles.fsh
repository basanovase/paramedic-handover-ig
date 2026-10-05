Alias: $AUCoreEncounter = http://hl7.org.au/fhir/core/StructureDefinition/au-core-encounter
Alias: $AUCorePatient = http://hl7.org.au/fhir/core/StructureDefinition/au-core-patient
Alias: $AUCorePractitioner = http://hl7.org.au/fhir/core/StructureDefinition/au-core-practitioner
Alias: $ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $ParticipationType = http://terminology.hl7.org/CodeSystem/v3-ParticipationType
Alias: $LOINC = http://loinc.org

// --- Encounter: the ED arrival created at handover -------------------------
Profile: ParamedicHandoverEncounter
Parent: $AUCoreEncounter
Id: paramedic-handover-encounter
Title: "Paramedic Handover Encounter"
Description: "Emergency encounter created when a paramedic hands a patient over to the ED."
* status from http://hl7.org/fhir/ValueSet/encounter-status (required)
* status ^short = "arrived on handover; advanced by the admissions workflow"
* class = $ActCode#EMER
* subject 1..1
* subject only Reference($AUCorePatient)
* period 1..1
* period.start 1..1
* participant 1..* MS
* participant ^slicing.discriminator.type = #pattern
* participant ^slicing.discriminator.path = "type"
* participant ^slicing.rules = #open
* participant contains paramedic 1..1 MS
* participant[paramedic].type = $ParticipationType#PPRF
* participant[paramedic].individual 1..1
* participant[paramedic].individual only Reference($AUCorePractitioner)
* obeys handover-enc-1

Invariant: handover-enc-1
Description: "A handover encounter that has finished must record an end time."
Expression: "status = 'finished' implies period.end.exists()"
Severity: #error

// --- Task: the admissions work item queued for clinician review ------------
Profile: HandoverAdmitTask
Parent: Task
Id: handover-admit-task
Title: "Handover Admit Task"
Description: "Work item asking ED admissions to verify identity, confirm SNOMED codings and admit."
* status MS
* intent = #order
* priority = #urgent
* code 1..1
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains admit 1..1
* code.coding[admit] = HandoverTaskCode#admit
* focus 1..1
* focus only Reference(ParamedicHandoverEncounter)
* for 1..1
* for only Reference($AUCorePatient)
* obeys handover-task-1

Invariant: handover-task-1
Description: "A completed admit task must name who completed it."
Expression: "status = 'completed' implies owner.exists()"
Severity: #error

// --- DocumentReference: the verbatim transcript ----------------------------
Profile: HandoverTranscript
Parent: DocumentReference
Id: handover-transcript
Title: "Handover Transcript"
Description: "Verbatim transcript of the spoken IMIST-AMBO handover, kept for audit."
* status = #current
* type 1..1
* type = $LOINC#34111-5
* subject 1..1
* subject only Reference($AUCorePatient)
* context.encounter 1..1
* context.encounter only Reference(ParamedicHandoverEncounter)
* content 1..1
* content.attachment.contentType = #text/plain
* content.attachment.data 1..1

// --- Bundle: the transaction the platform commits --------------------------
Profile: ParamedicHandoverBundle
Parent: Bundle
Id: paramedic-handover-bundle
Title: "Paramedic Handover Bundle"
Description: "Transaction bundle committed at handover: one patient, one encounter, the admit task and the transcript, plus coded findings."
* type = #transaction
* entry 3..*
* entry.request 1..1
* obeys handover-bundle-1 and handover-bundle-2 and handover-bundle-3

Invariant: handover-bundle-1
Description: "Exactly one Patient and one Encounter per handover."
Expression: "entry.resource.ofType(Patient).count() = 1 and entry.resource.ofType(Encounter).count() = 1"
Severity: #error

Invariant: handover-bundle-2
Description: "Exactly one admit Task per handover."
Expression: "entry.resource.ofType(Task).count() = 1"
Severity: #error

Invariant: handover-bundle-3
Description: "Every Condition must be coded in SNOMED CT."
Expression: "entry.resource.ofType(Condition).all(code.coding.where(system = 'http://snomed.info/sct').exists())"
Severity: #error
