// Which IMIST-AMBO section a coded finding came from: keeps the clinical
// reviewer's link back to what the paramedic actually said.
Extension: HandoverSourceSection
Id: handover-source-section
Title: "Handover Source Section"
Description: "The IMIST-AMBO section of the spoken handover that a coded item was extracted from."
Context: Condition, Procedure, MedicationStatement, AllergyIntolerance
* value[x] only Coding
* valueCoding from ImistAmboSectionVS (required)

// What an ED system must support to receive handovers from the platform.
Instance: ParamedicHandoverReceiver
InstanceOf: CapabilityStatement
Usage: #definition
Title: "Paramedic Handover Receiver"
Description: "Server capabilities an emergency department FHIR server needs to accept paramedic handovers and run the admissions review queue."
* name = "ParamedicHandoverReceiver"
* status = #draft
* date = "2026-10-05"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* rest[0].mode = #server
* rest[0].documentation = "Handovers arrive as one transaction Bundle (ParamedicHandoverBundle). Writes go through a SMART-on-FHIR proxy that checks scopes per Bundle entry."
* rest[0].security.service = http://terminology.hl7.org/CodeSystem/restful-security-service#SMART-on-FHIR
* rest[0].interaction[0].code = #transaction
* rest[0].resource[0].type = #Patient
* rest[0].resource[0].supportedProfile = "http://hl7.org.au/fhir/core/StructureDefinition/au-core-patient"
* rest[0].resource[0].interaction[0].code = #read
* rest[0].resource[0].interaction[1].code = #create
* rest[0].resource[0].conditionalCreate = true
* rest[0].resource[1].type = #Encounter
* rest[0].resource[1].supportedProfile = Canonical(ParamedicHandoverEncounter)
* rest[0].resource[1].interaction[0].code = #read
* rest[0].resource[1].interaction[1].code = #update
* rest[0].resource[2].type = #Task
* rest[0].resource[2].supportedProfile = Canonical(HandoverAdmitTask)
* rest[0].resource[2].interaction[0].code = #read
* rest[0].resource[2].interaction[1].code = #update
* rest[0].resource[2].interaction[2].code = #search-type
* rest[0].resource[2].searchParam[0].name = "code"
* rest[0].resource[2].searchParam[0].type = #token
* rest[0].resource[2].searchParam[0].definition = "http://hl7.org/fhir/SearchParameter/Task-code"
* rest[0].resource[2].searchParam[1].name = "status"
* rest[0].resource[2].searchParam[1].type = #token
* rest[0].resource[2].searchParam[1].definition = "http://hl7.org/fhir/SearchParameter/Task-status"
* rest[0].resource[3].type = #DocumentReference
* rest[0].resource[3].supportedProfile = Canonical(HandoverTranscript)
* rest[0].resource[3].interaction[0].code = #read
* rest[0].operation[0].name = "validate"
* rest[0].operation[0].definition = "http://hl7.org/fhir/OperationDefinition/Resource-validate"
