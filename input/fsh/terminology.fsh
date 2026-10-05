// IMIST-AMBO handover sections: the structure paramedics speak in.
CodeSystem: ImistAmboSection
Id: imist-ambo-section
Title: "IMIST-AMBO Handover Section"
Description: "Sections of the IMIST-AMBO clinical handover mnemonic."
* ^caseSensitive = true
* #I-ident "Identification" "Patient identification"
* #M-mech "Mechanism / medical complaint" "Mechanism of injury or medical complaint"
* #I-inj "Injuries / information" "Injuries found or information relative to the complaint"
* #S "Signs" "Vital signs and GCS"
* #T "Treatment and trends" "Treatment given and patient trends"
* #A "Allergies" "Allergies"
* #M-meds "Medications" "Medications"
* #B "Background" "Background history"
* #O "Other" "Other information"

ValueSet: ImistAmboSectionVS
Id: imist-ambo-section-vs
Title: "IMIST-AMBO Handover Sections"
Description: "All IMIST-AMBO handover sections."
* include codes from system ImistAmboSection

CodeSystem: HandoverTaskCode
Id: handover-task-code
Title: "Handover Task Codes"
Description: "Local workflow codes for ED handover processing."
* ^caseSensitive = true
* #admit "ED admission processing"
