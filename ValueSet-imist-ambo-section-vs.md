# IMIST-AMBO Handover Sections - Paramedic Handover Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IMIST-AMBO Handover Sections**

## ValueSet: IMIST-AMBO Handover Sections 

| | |
| :--- | :--- |
| *Official URL*:https://basanovase.github.io/paramedic-handover-ig/ValueSet/imist-ambo-section-vs | *Version*:0.1.0 |
| Draft as of 2026-10-05 | *Computable Name*:ImistAmboSectionVS |

 
All IMIST-AMBO handover sections. 

 **References** 

* [Handover Source Section](StructureDefinition-handover-source-section.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "imist-ambo-section-vs",
  "url" : "https://basanovase.github.io/paramedic-handover-ig/ValueSet/imist-ambo-section-vs",
  "version" : "0.1.0",
  "name" : "ImistAmboSectionVS",
  "title" : "IMIST-AMBO Handover Sections",
  "status" : "draft",
  "date" : "2026-10-05T08:19:54+00:00",
  "publisher" : "Basal (Flynn McLean)",
  "contact" : [{
    "name" : "Basal (Flynn McLean)",
    "telecom" : [{
      "system" : "url",
      "value" : "https://basal.com.au"
    }]
  }],
  "description" : "All IMIST-AMBO handover sections.",
  "compose" : {
    "include" : [{
      "system" : "https://basanovase.github.io/paramedic-handover-ig/CodeSystem/imist-ambo-section"
    }]
  }
}

```
