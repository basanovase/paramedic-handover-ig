Alias: $DAR = http://hl7.org/fhir/StructureDefinition/data-absent-reason

// handover_001: 42-year-old male, no name or identifier given at handover.
// au-core-pat-01 is satisfied by the data-absent-reason sentinel.
Instance: example
InstanceOf: http://hl7.org.au/fhir/core/StructureDefinition/au-core-patient
Usage: #example
Description: "Unidentified patient from handover_001. No identifier, name or DOB stated, so data-absent-reason sentinels satisfy au-core-pat-01 and au-core-pat-02."
* identifier.extension[0].url = $DAR
* identifier.extension[0].valueCode = #unknown
* name.extension[0].url = $DAR
* name.extension[0].valueCode = #unknown
* gender = #male
* birthDate.extension[0].url = $DAR
* birthDate.extension[0].valueCode = #unknown

Instance: example-paramedic
InstanceOf: http://hl7.org.au/fhir/core/StructureDefinition/au-core-practitioner
Usage: #example
Description: "The handing-over paramedic."
* name.family = "Jensen"
* name.given = "Sam"

Instance: example-handover-encounter
InstanceOf: ParamedicHandoverEncounter
Usage: #example
Description: "ED encounter created at handover for handover_001."
* status = #arrived
* class = $ActCode#EMER "emergency"
* subject = Reference(Patient/example)
* participant[paramedic].type = $ParticipationType#PPRF "primary performer"
* participant[paramedic].individual = Reference(Practitioner/example-paramedic)
* period.start = "2026-10-05T09:42:00+11:00"

Instance: example-admit-task
InstanceOf: HandoverAdmitTask
Usage: #example
Description: "Admissions work item for handover_001."
* status = #requested
* intent = #order
* priority = #urgent
* code.coding[admit] = HandoverTaskCode#admit "ED admission processing"
* focus = Reference(Encounter/example-handover-encounter)
* for = Reference(Patient/example)
* description = "Verify patient identity, confirm SNOMED codings, and admit."

Instance: example-femur-fracture
InstanceOf: Condition
Usage: #example
Description: "Suspected femur fracture from the Injuries section of handover_001, provisional."
* extension[HandoverSourceSection].valueCoding = ImistAmboSection#I-inj "Injuries / information"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#provisional
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* code = http://snomed.info/sct#71620000 "Fracture of femur"
* subject = Reference(Patient/example)
* encounter = Reference(Encounter/example-handover-encounter)
