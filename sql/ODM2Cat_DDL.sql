DROP TABLE IF EXISTS "ActionAnnotations" CASCADE
;

DROP TABLE IF EXISTS "ActionBy" CASCADE
;

DROP TABLE IF EXISTS "ActionExtensionPropertyValues" CASCADE
;

DROP TABLE IF EXISTS "Actions" CASCADE
;

DROP TABLE IF EXISTS "Affiliations" CASCADE
;

DROP TABLE IF EXISTS "Annotations" CASCADE
;

DROP TABLE IF EXISTS "AuthorLists" CASCADE
;

DROP TABLE IF EXISTS "catalogHarvest" CASCADE
;

DROP TABLE IF EXISTS "CatalogRecord" CASCADE
;

DROP TABLE IF EXISTS "CitationExtensionPropertyValues" CASCADE
;

DROP TABLE IF EXISTS "CitationExternalIdentifiers" CASCADE
;

DROP TABLE IF EXISTS "Citations" CASCADE
;

DROP TABLE IF EXISTS "CVTerms" CASCADE
;

DROP TABLE IF EXISTS "DataSetCitations" CASCADE
;

DROP TABLE IF EXISTS "DataSets" CASCADE
;

DROP TABLE IF EXISTS "DataSetsResults" CASCADE
;

DROP TABLE IF EXISTS "ExtensionProperties" CASCADE
;

DROP TABLE IF EXISTS "ExternalIdentifierSystems" CASCADE
;

DROP TABLE IF EXISTS "FeatureActions" CASCADE
;

DROP TABLE IF EXISTS "MethodAnnotations" CASCADE
;

DROP TABLE IF EXISTS "MethodCitations" CASCADE
;

DROP TABLE IF EXISTS "MethodExtensionPropertyValues" CASCADE
;

DROP TABLE IF EXISTS "MethodExternalIdentifiers" CASCADE
;

DROP TABLE IF EXISTS "Methods" CASCADE
;

DROP TABLE IF EXISTS "Observation" CASCADE
;

DROP TABLE IF EXISTS "Organizations" CASCADE
;

DROP TABLE IF EXISTS "People" CASCADE
;

DROP TABLE IF EXISTS "PersonExternalIdentifiers" CASCADE
;

DROP TABLE IF EXISTS "ProcessingLevels" CASCADE
;

DROP TABLE IF EXISTS "ReferenceMaterialExternalIdentifiers" CASCADE
;

DROP TABLE IF EXISTS "RelatedDatasets" CASCADE
;

DROP TABLE IF EXISTS "RelatedFeatures" CASCADE
;

DROP TABLE IF EXISTS "RelatedResults" CASCADE
;

DROP TABLE IF EXISTS "ResponsibleParty" CASCADE
;

DROP TABLE IF EXISTS "Result" CASCADE
;

DROP TABLE IF EXISTS "ResultAnnotations" CASCADE
;

DROP TABLE IF EXISTS "ResultExtensionPropertyValues" CASCADE
;

DROP TABLE IF EXISTS "ResultSummary" CASCADE
;

DROP TABLE IF EXISTS "ResultValueAnnotations" CASCADE
;

DROP TABLE IF EXISTS "SamplingFeatureAnnotations" CASCADE
;

DROP TABLE IF EXISTS "SamplingFeatureExtensionPropertyValues" CASCADE
;

DROP TABLE IF EXISTS "SamplingFeatureExternalIdentifiers" CASCADE
;

DROP TABLE IF EXISTS "SamplingFeatures" CASCADE
;

DROP TABLE IF EXISTS "Sites" CASCADE
;

DROP TABLE IF EXISTS "SpatialOffsets" CASCADE
;

DROP TABLE IF EXISTS "SpatialReferenceExternalIdentifiers" CASCADE
;

DROP TABLE IF EXISTS "SpatialReferences" CASCADE
;

DROP TABLE IF EXISTS "Specimens" CASCADE
;

DROP TABLE IF EXISTS "SpecimenTaxonomicClassifiers" CASCADE
;

DROP TABLE IF EXISTS "TaxonomicClassifierExternalIdentifiers" CASCADE
;

DROP TABLE IF EXISTS "TaxonomicClassifiers" CASCADE
;

DROP TABLE IF EXISTS "Units" CASCADE
;

DROP TABLE IF EXISTS "VariableExtensionPropertyValues" CASCADE
;

DROP TABLE IF EXISTS "VariableExternalIdentifiers" CASCADE
;

DROP TABLE IF EXISTS "Variables" CASCADE
;

CREATE TABLE "ActionAnnotations"
(
	"BridgeID" Integer,
	"actionAnnotationsID" Integer NOT NULL,
	"ActionID" Integer
)
;

CREATE TABLE "ActionBy"
(
	"BridgeID" Integer,
	"IsActionLead" Bit,
	"RoleDescription" CharacterString,
	"actionByID" Integer NOT NULL,
	"ActionID" Integer,
	"AffiliationID" Integer
)
;

CREATE TABLE "ActionExtensionPropertyValues"
(
	"BridgeID" Integer,
	"PropertyValue" CharacterString,
	"actionExtensionPropertyValuesID" Integer NOT NULL,
	"ActionID" Integer
)
;

CREATE TABLE "Actions"
(
	"ActionDescription" CharacterString,
	"ActionFileLink" CharacterString,
	"ActionID" Integer,
	"ActionTypeCV" CharacterString,
	"BeginDateTime" DateTime,
	"BeginDateTimeUTCOffset" Integer,
	"EndDateTime" DateTime,
	"EndDateTimeUTCOffset" Integer,
	"actionsID" Integer NOT NULL,
	"MethodID" Integer
)
;

CREATE TABLE "Affiliations"
(
	"AffiliationEndDate" Date,
	"AffiliationID" Integer,
	"AffiliationStartDate" Date,
	"IsPrimaryOrganizationContact" Bit,
	"PersonLink" CharacterString,
	"PrimaryAddress" CharacterString,
	"PrimaryEmail" CharacterString,
	"PrimaryPhone" CharacterString,
	"affiliationsID" Integer NOT NULL,
	"PersonID" Integer,
	"OrganizationID" Integer
)
;

CREATE TABLE "Annotations"
(
	"AnnotationCode" CharacterString,
	"AnnotationDateTime" DateTime,
	"AnnotationID" Integer,
	"AnnotationLink" CharacterString,
	"AnnotationText" CharacterString,
	"AnnotationTypeCV" CharacterString,
	"AnnotationUTCOffset" Integer,
	"annotationsID" Integer NOT NULL,
	"CitationID" Integer,
	"AnnotatorID" Integer
)
;

CREATE TABLE "AuthorLists"
(
	"AuthorOrder" Integer,
	"BridgeID" Integer,
	"authorListsID" Integer NOT NULL,
	"PersonID" Integer,
	"CitationID" Integer
)
;

CREATE TABLE "catalogHarvest"
(
	"comment" String,
	"property" NamedValue,
	"runDate" DateTime,
	"success" Boolean,
	"valuecount" int,
	"catalogHarvestID" Integer NOT NULL,
	"catalogRecordID" Integer
)
;

CREATE TABLE "CatalogRecord"
(
	"createdDate" DateTime,
	"source" URL,
	"updatedDate" DateTime,
	"catalogRecordID" Integer NOT NULL
)
;

CREATE TABLE "CitationExtensionPropertyValues"
(
	"BridgeID" Integer,
	"PropertyValue" CharacterString,
	"citationExtensionPropertyValuesID" Integer NOT NULL,
	"CitationID" Integer
)
;

CREATE TABLE "CitationExternalIdentifiers"
(
	"BridgeID" Integer,
	"CitationExternalIdentifer" CharacterString,
	"CitationExternalIdentiferURI" CharacterString,
	"citationExternalIdentifiersID" Integer NOT NULL,
	"CitationID" Integer
)
;

CREATE TABLE "Citations"
(
	"CitationID" Integer,
	"CitationLink" CharacterString,
	"PublicationYear" Integer,
	"Publisher" CharacterString,
	"Title" CharacterString,
	"citationsID" Integer NOT NULL
)
;

CREATE TABLE "CVTerms"
(
	"Definition" CharacterString,
	"ODMVocabulary" CharacterString,
	"SourceVocabulary" CharacterString,
	"Term" CharacterString,
	"TermID" Integer,
	"cVTermsID" Integer NOT NULL
)
;

CREATE TABLE "DataSetCitations"
(
	"BridgeID" Integer,
	"RelationshipTypeCV" CharacterString,
	"dataSetCitationsID" Integer NOT NULL,
	"DataSetID" Integer,
	"CitationID" Integer
)
;

CREATE TABLE "DataSets"
(
	"DataSetAbstract" CharacterString,
	"DataSetCode" CharacterString,
	"DataSetID" Integer,
	"DataSetTitle" CharacterString,
	"DataSetTypeCV" CharacterString,
	"DataSetUUID" CharacterString,
	"dataSetsID" Integer NOT NULL
)
;

CREATE TABLE "DataSetsResults"
(
	"BridgeID" Integer,
	"dataSetsResultsID" Integer NOT NULL,
	"DataSetID" Integer,
	"ResultID" Integer
)
;

CREATE TABLE "ExtensionProperties"
(
	"PropertyDataTypeCV" CharacterString,
	"PropertyDescription" CharacterString,
	"PropertyID" Integer,
	"PropertyName" CharacterString,
	"extensionPropertiesID" Integer NOT NULL,
	"PropertyUnitsID" Integer
)
;

CREATE TABLE "ExternalIdentifierSystems"
(
	"ExternalIdentifierSystemDescription" CharacterString,
	"ExternalIdentifierSystemID" Integer,
	"ExternalIdentifierSystemName" CharacterString,
	"ExternalIdentifierSystemURL" CharacterString,
	"externalIdentifierSystemsID" Integer NOT NULL,
	"IdentifierSystemOrganizationID" Integer
)
;

CREATE TABLE "FeatureActions"
(
	"FeatureActionID" Integer,
	"featureActionsID" Integer NOT NULL,
	"ActionID" Integer,
	"SamplingFeatureID" Integer
)
;

CREATE TABLE "MethodAnnotations"
(
	"BridgeID" Integer,
	"methodAnnotationsID" Integer NOT NULL,
	"MethodID" Integer
)
;

CREATE TABLE "MethodCitations"
(
	"BridgeID" Integer,
	"RelationshipTypeCV" CharacterString,
	"methodCitationsID" Integer NOT NULL,
	"MethodID" Integer,
	"CitationID" Integer
)
;

CREATE TABLE "MethodExtensionPropertyValues"
(
	"BridgeID" Integer,
	"PropertyValue" CharacterString,
	"methodExtensionPropertyValuesID" Integer NOT NULL,
	"MethodID" Integer
)
;

CREATE TABLE "MethodExternalIdentifiers"
(
	"BridgeID" Integer,
	"MethodExternalIdentifier" CharacterString,
	"MethodExternalIdentifierURI" CharacterString,
	"methodExternalIdentifiersID" Integer NOT NULL,
	"MethodID" Integer
)
;

CREATE TABLE "Methods"
(
	"MethodCode" CharacterString,
	"MethodDescription" CharacterString,
	"MethodID" Integer,
	"MethodLink" CharacterString,
	"MethodName" CharacterString,
	"MethodTypeCV" CharacterString,
	"methodsID" Integer NOT NULL,
	"OrganizationID" Integer
)
;

CREATE TABLE "Observation"
(
	"observationID" Integer NOT NULL
)
;

CREATE TABLE "Organizations"
(
	"OrganizationCode" CharacterString,
	"OrganizationDescription" CharacterString,
	"OrganizationID" Integer,
	"OrganizationLink" CharacterString,
	"OrganizationName" CharacterString,
	"OrganizationTypeCV" CharacterString,
	"organizationsID" Integer NOT NULL,
	"ParentOrganizationID" Integer
)
;

CREATE TABLE "People"
(
	"PersonFirstName" CharacterString,
	"PersonID" Integer,
	"PersonLastName" CharacterString,
	"PersonMiddleName" CharacterString,
	"peopleID" Integer NOT NULL
)
;

CREATE TABLE "PersonExternalIdentifiers"
(
	"BridgeID" Integer,
	"PersonExternalIdenifierURI" CharacterString,
	"PersonExternalIdentifier" CharacterString,
	"personExternalIdentifiersID" Integer NOT NULL,
	"PersonID" Integer
)
;

CREATE TABLE "ProcessingLevels"
(
	"Definition" CharacterString,
	"Explanation" CharacterString,
	"ProcessingLevelCode" CharacterString,
	"ProcessingLevelID" Integer,
	"processingLevelsID" Integer NOT NULL
)
;

CREATE TABLE "ReferenceMaterialExternalIdentifiers"
(
	"BridgeID" Integer,
	"ReferenceMaterialExternalIdentifier" CharacterString,
	"ReferenceMaterialExternalIdentifierURI" CharacterString,
	"referenceMaterialExternalIdentifiersID" Integer NOT NULL
)
;

CREATE TABLE "RelatedDatasets"
(
	"RelationID" Integer,
	"RelationshipTypeCV" CharacterString,
	"VersionCode" CharacterString,
	"relatedDatasetsID" Integer NOT NULL,
	"RelatedDatasetID" Integer,
	"DataSetID" Integer
)
;

CREATE TABLE "RelatedFeatures"
(
	"RelationID" Integer,
	"RelationshipTypeCV" CharacterString,
	"relatedFeaturesID" Integer NOT NULL,
	"RelatedFeatureID" Integer,
	"SamplingFeatureID" Integer,
	"SpatialOffsetID" Integer
)
;

CREATE TABLE "RelatedResults"
(
	"RelatedResultSequenceNumber" Integer,
	"RelationID" Integer,
	"RelationshipTypeCV" CharacterString,
	"VersionCode" CharacterString,
	"relatedResultsID" Integer NOT NULL,
	"ResultID" Integer,
	"RelatedResultID" Integer
)
;

CREATE TABLE "ResponsibleParty"
(
	"responsiblePartyID" Integer NOT NULL
)
;

CREATE TABLE "Result"
(
	"IntendedObservationSpacing" CharacterString,
	"ResultDateTime" DateTime,
	"ResultDateTimeUTCOffset" Integer,
	"ResultID" Integer,
	"ResultTypeCV" CharacterString,
	"ResultUUID" CharacterString,
	"SampledMediumCV" CharacterString,
	"StatusCV" CharacterString,
	"ValidDateTime" DateTime,
	"ValidDateTimeUTCOffset" Integer,
	"ValueCount" Integer,
	"resultID" Integer NOT NULL,
	"FeatureActionID" Integer,
	"ProcessingLevelID" Integer,
	"UnitsID" Integer,
	"VariableID" Integer,
	"TaxonomicClassifierID" Integer
)
;

CREATE TABLE "ResultAnnotations"
(
	"BeginDateTime" DateTime,
	"BridgeID" Integer,
	"EndDateTime" DateTime,
	"resultAnnotationsID" Integer NOT NULL,
	"ResultID" Integer
)
;

CREATE TABLE "ResultExtensionPropertyValues"
(
	"BridgeID" Integer,
	"PropertyValue" CharacterString,
	"resultExtensionPropertyValuesID" Integer NOT NULL,
	"ResultID" Integer
)
;

CREATE TABLE "ResultSummary"
(
	"statisticalProperty" NamedValue,
	"resultSummaryID" Integer NOT NULL
)
;

CREATE TABLE "ResultValueAnnotations"
(
	"BridgeID" Integer,
	"resultValueAnnotationsID" Integer NOT NULL
)
;

CREATE TABLE "SamplingFeatureAnnotations"
(
	"BridgeID" Integer,
	"samplingFeatureAnnotationsID" Integer NOT NULL,
	"SamplingFeatureID" Integer
)
;

CREATE TABLE "SamplingFeatureExtensionPropertyValues"
(
	"BridgeID" Integer,
	"PropertyValue" CharacterString,
	"samplingFeatureExtensionPropertyValuesID" Integer NOT NULL,
	"SamplingFeatureID" Integer
)
;

CREATE TABLE "SamplingFeatureExternalIdentifiers"
(
	"BridgeID" Integer,
	"SamplingFeatureExternalIdentiferURI" CharacterString,
	"SamplingFeatureExternalIdentifier" CharacterString,
	"samplingFeatureExternalIdentifiersID" Integer NOT NULL,
	"SamplingFeatureID" Integer
)
;

CREATE TABLE "SamplingFeatures"
(
	"Elevation_m" Real,
	"ElevationDatumcCV" CharacterString,
	"FeatureGeometry" GM_Point,
	"SamplingFeatureCode" CharacterString,
	"SamplingFeatureDescription" CharacterString,
	"SamplingFeatureGeotypeCV" CharacterString,
	"SamplingFeatureID" Integer,
	"SamplingFeatureName" CharacterString,
	"SamplingFeatureTypeCV" CharacterString,
	"samplingFeaturesID" Integer NOT NULL
)
;

CREATE TABLE "Sites"
(
	"Latitude" Real,
	"Longitude" Real,
	"SiteTypeCV" CharacterString,
	"sitesID" Integer NOT NULL,
	"SamplingFeatureID" Integer,
	"LatLonDatumID" Integer
)
;

CREATE TABLE "SpatialOffsets"
(
	"Offset1UnitID" Integer,
	"Offset1Value" Real,
	"Offset2UnitID" Integer,
	"Offset2Value" Real,
	"Offset3UnitID" Integer,
	"Offset3Value" Real,
	"SpatialOffsetID" Integer,
	"SpatialOffsetTypeCV" CharacterString,
	"spatialOffsetsID" Integer NOT NULL
)
;

CREATE TABLE "SpatialReferenceExternalIdentifiers"
(
	"BridgeID" Integer,
	"SpatialReferenceExternalIdentifier" CharacterString,
	"SpatialReferenceExternalIdentifierURI" CharacterString,
	"spatialReferenceExternalIdentifiersID" Integer NOT NULL,
	"SpatialReferenceID" Integer
)
;

CREATE TABLE "SpatialReferences"
(
	"SpatialReferenceID" Integer,
	"SRSCode" CharacterString,
	"SRSDescription" CharacterString,
	"SRSName" CharacterString,
	"spatialReferencesID" Integer NOT NULL
)
;

CREATE TABLE "Specimens"
(
	"IsFieldSpecimen" Bit,
	"SpecimenMediumCV" CharacterString,
	"SpecimenTypeCV" CharacterString,
	"specimensID" Integer NOT NULL,
	"SamplingFeatureID" Integer
)
;

CREATE TABLE "SpecimenTaxonomicClassifiers"
(
	"BridgeID" Integer,
	"CitationID" Integer,
	"specimenTaxonomicClassifiersID" Integer NOT NULL,
	"TaxonomicClassifierID" Integer,
	"SamplingFeatureID" Integer
)
;

CREATE TABLE "TaxonomicClassifierExternalIdentifiers"
(
	"BridgeID" Integer,
	"TaxonomicClassifierExternalIdentifier" CharacterString,
	"TaxonomicClassifierExternalIdentifierURI" CharacterString,
	"taxonomicClassifierExternalIdentifiersID" Integer NOT NULL,
	"TaxonomicClassifierID" Integer
)
;

CREATE TABLE "TaxonomicClassifiers"
(
	"TaxonomicClassifierCommonName" CharacterString,
	"TaxonomicClassifierDescription" CharacterString,
	"TaxonomicClassifierID" Integer,
	"TaxonomicClassifierName" CharacterString,
	"TaxonomicClassifierTypeCV" CharacterString,
	"taxonomicClassifiersID" Integer NOT NULL,
	"ParentTaxonomicClassifierID" Integer
)
;

CREATE TABLE "Units"
(
	"UnitsAbbreviation" CharacterString,
	"UnitsID" Integer,
	"UnitsName" CharacterString,
	"UnitsTypeCV" CharacterString,
	"unitsID" Integer NOT NULL
)
;

CREATE TABLE "VariableExtensionPropertyValues"
(
	"BridgeID" Integer,
	"PropertyValue" CharacterString,
	"variableExtensionPropertyValuesID" Integer NOT NULL,
	"VariableID" Integer
)
;

CREATE TABLE "VariableExternalIdentifiers"
(
	"BridgeID" Integer,
	"VariableExternalIdentifer" CharacterString,
	"VariableExternalIdentifierURI" CharacterString,
	"variableExternalIdentifiersID" Integer NOT NULL,
	"VariableID" Integer
)
;

CREATE TABLE "Variables"
(
	"NoDataValue" Real,
	"SpeciationCV" CharacterString,
	"VariableCode" CharacterString,
	"VariableDefinition" CharacterString,
	"VariableID" Integer,
	"VariableNameCV" CharacterString,
	"VariableTypeCV" CharacterString,
	"variablesID" Integer NOT NULL
)
;

ALTER TABLE "ActionAnnotations" ADD CONSTRAINT "PK_ActionAnnotations"
	PRIMARY KEY ("actionAnnotationsID")
;

ALTER TABLE "ActionBy" ADD CONSTRAINT "PK_ActionBy"
	PRIMARY KEY ("actionByID")
;

ALTER TABLE "ActionExtensionPropertyValues" ADD CONSTRAINT "PK_ActionExtensionPropertyValues"
	PRIMARY KEY ("actionExtensionPropertyValuesID")
;

ALTER TABLE "Actions" ADD CONSTRAINT "PK_Actions"
	PRIMARY KEY ("actionsID")
;

ALTER TABLE "Affiliations" ADD CONSTRAINT "PK_Affiliations"
	PRIMARY KEY ("affiliationsID")
;

ALTER TABLE "Annotations" ADD CONSTRAINT "PK_Annotations"
	PRIMARY KEY ("annotationsID")
;

ALTER TABLE "AuthorLists" ADD CONSTRAINT "PK_AuthorLists"
	PRIMARY KEY ("authorListsID")
;

ALTER TABLE "catalogHarvest" ADD CONSTRAINT "PK_catalogHarvest"
	PRIMARY KEY ("catalogHarvestID")
;

ALTER TABLE "CatalogRecord" ADD CONSTRAINT "PK_CatalogRecord"
	PRIMARY KEY ("catalogRecordID")
;

ALTER TABLE "CitationExtensionPropertyValues" ADD CONSTRAINT "PK_CitationExtensionPropertyValues"
	PRIMARY KEY ("citationExtensionPropertyValuesID")
;

ALTER TABLE "CitationExternalIdentifiers" ADD CONSTRAINT "PK_CitationExternalIdentifiers"
	PRIMARY KEY ("citationExternalIdentifiersID")
;

ALTER TABLE "Citations" ADD CONSTRAINT "PK_Citations"
	PRIMARY KEY ("citationsID")
;

ALTER TABLE "CVTerms" ADD CONSTRAINT "PK_CVTerms"
	PRIMARY KEY ("cVTermsID")
;

ALTER TABLE "DataSetCitations" ADD CONSTRAINT "PK_DataSetCitations"
	PRIMARY KEY ("dataSetCitationsID")
;

ALTER TABLE "DataSets" ADD CONSTRAINT "PK_DataSets"
	PRIMARY KEY ("dataSetsID")
;

ALTER TABLE "DataSetsResults" ADD CONSTRAINT "PK_DataSetsResults"
	PRIMARY KEY ("dataSetsResultsID")
;

ALTER TABLE "ExtensionProperties" ADD CONSTRAINT "PK_ExtensionProperties"
	PRIMARY KEY ("extensionPropertiesID")
;

ALTER TABLE "ExternalIdentifierSystems" ADD CONSTRAINT "PK_ExternalIdentifierSystems"
	PRIMARY KEY ("externalIdentifierSystemsID")
;

ALTER TABLE "FeatureActions" ADD CONSTRAINT "PK_FeatureActions"
	PRIMARY KEY ("featureActionsID")
;

ALTER TABLE "MethodAnnotations" ADD CONSTRAINT "PK_MethodAnnotations"
	PRIMARY KEY ("methodAnnotationsID")
;

ALTER TABLE "MethodCitations" ADD CONSTRAINT "PK_MethodCitations"
	PRIMARY KEY ("methodCitationsID")
;

ALTER TABLE "MethodExtensionPropertyValues" ADD CONSTRAINT "PK_MethodExtensionPropertyValues"
	PRIMARY KEY ("methodExtensionPropertyValuesID")
;

ALTER TABLE "MethodExternalIdentifiers" ADD CONSTRAINT "PK_MethodExternalIdentifiers"
	PRIMARY KEY ("methodExternalIdentifiersID")
;

ALTER TABLE "Methods" ADD CONSTRAINT "PK_Methods"
	PRIMARY KEY ("methodsID")
;

ALTER TABLE "Observation" ADD CONSTRAINT "PK_Observation"
	PRIMARY KEY ("observationID")
;

ALTER TABLE "Organizations" ADD CONSTRAINT "PK_Organizations"
	PRIMARY KEY ("organizationsID")
;

ALTER TABLE "People" ADD CONSTRAINT "PK_People"
	PRIMARY KEY ("peopleID")
;

ALTER TABLE "PersonExternalIdentifiers" ADD CONSTRAINT "PK_PersonExternalIdentifiers"
	PRIMARY KEY ("personExternalIdentifiersID")
;

ALTER TABLE "ProcessingLevels" ADD CONSTRAINT "PK_ProcessingLevels"
	PRIMARY KEY ("processingLevelsID")
;

ALTER TABLE "ReferenceMaterialExternalIdentifiers" ADD CONSTRAINT "PK_ReferenceMaterialExternalIdentifiers"
	PRIMARY KEY ("referenceMaterialExternalIdentifiersID")
;

ALTER TABLE "RelatedDatasets" ADD CONSTRAINT "PK_RelatedDatasets"
	PRIMARY KEY ("relatedDatasetsID")
;

ALTER TABLE "RelatedFeatures" ADD CONSTRAINT "PK_RelatedFeatures"
	PRIMARY KEY ("relatedFeaturesID")
;

ALTER TABLE "RelatedResults" ADD CONSTRAINT "PK_RelatedResults"
	PRIMARY KEY ("relatedResultsID")
;

ALTER TABLE "ResponsibleParty" ADD CONSTRAINT "PK_ResponsibleParty"
	PRIMARY KEY ("responsiblePartyID")
;

ALTER TABLE "Result" ADD CONSTRAINT "PK_Result"
	PRIMARY KEY ("resultID")
;

ALTER TABLE "ResultAnnotations" ADD CONSTRAINT "PK_ResultAnnotations"
	PRIMARY KEY ("resultAnnotationsID")
;

ALTER TABLE "ResultExtensionPropertyValues" ADD CONSTRAINT "PK_ResultExtensionPropertyValues"
	PRIMARY KEY ("resultExtensionPropertyValuesID")
;

ALTER TABLE "ResultSummary" ADD CONSTRAINT "PK_ResultSummary"
	PRIMARY KEY ("resultSummaryID")
;

ALTER TABLE "ResultValueAnnotations" ADD CONSTRAINT "PK_ResultValueAnnotations"
	PRIMARY KEY ("resultValueAnnotationsID")
;

ALTER TABLE "SamplingFeatureAnnotations" ADD CONSTRAINT "PK_SamplingFeatureAnnotations"
	PRIMARY KEY ("samplingFeatureAnnotationsID")
;

ALTER TABLE "SamplingFeatureExtensionPropertyValues" ADD CONSTRAINT "PK_SamplingFeatureExtensionPropertyValues"
	PRIMARY KEY ("samplingFeatureExtensionPropertyValuesID")
;

ALTER TABLE "SamplingFeatureExternalIdentifiers" ADD CONSTRAINT "PK_SamplingFeatureExternalIdentifiers"
	PRIMARY KEY ("samplingFeatureExternalIdentifiersID")
;

ALTER TABLE "SamplingFeatures" ADD CONSTRAINT "PK_SamplingFeatures"
	PRIMARY KEY ("samplingFeaturesID")
;

ALTER TABLE "Sites" ADD CONSTRAINT "PK_Sites"
	PRIMARY KEY ("sitesID")
;

ALTER TABLE "SpatialOffsets" ADD CONSTRAINT "PK_SpatialOffsets"
	PRIMARY KEY ("spatialOffsetsID")
;

ALTER TABLE "SpatialReferenceExternalIdentifiers" ADD CONSTRAINT "PK_SpatialReferenceExternalIdentifiers"
	PRIMARY KEY ("spatialReferenceExternalIdentifiersID")
;

ALTER TABLE "SpatialReferences" ADD CONSTRAINT "PK_SpatialReferences"
	PRIMARY KEY ("spatialReferencesID")
;

ALTER TABLE "Specimens" ADD CONSTRAINT "PK_Specimens"
	PRIMARY KEY ("specimensID")
;

ALTER TABLE "SpecimenTaxonomicClassifiers" ADD CONSTRAINT "PK_SpecimenTaxonomicClassifiers"
	PRIMARY KEY ("specimenTaxonomicClassifiersID")
;

ALTER TABLE "TaxonomicClassifierExternalIdentifiers" ADD CONSTRAINT "PK_TaxonomicClassifierExternalIdentifiers"
	PRIMARY KEY ("taxonomicClassifierExternalIdentifiersID")
;

ALTER TABLE "TaxonomicClassifiers" ADD CONSTRAINT "PK_TaxonomicClassifiers"
	PRIMARY KEY ("taxonomicClassifiersID")
;

ALTER TABLE "Units" ADD CONSTRAINT "PK_Units"
	PRIMARY KEY ("unitsID")
;

ALTER TABLE "VariableExtensionPropertyValues" ADD CONSTRAINT "PK_VariableExtensionPropertyValues"
	PRIMARY KEY ("variableExtensionPropertyValuesID")
;

ALTER TABLE "VariableExternalIdentifiers" ADD CONSTRAINT "PK_VariableExternalIdentifiers"
	PRIMARY KEY ("variableExternalIdentifiersID")
;

ALTER TABLE "Variables" ADD CONSTRAINT "PK_Variables"
	PRIMARY KEY ("variablesID")
;

ALTER TABLE "ActionAnnotations" ADD CONSTRAINT "FK_ActionID"
	FOREIGN KEY ("ActionID") REFERENCES "Actions" ("actionsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "ActionAnnotations" ADD CONSTRAINT "FK_ActionAnnotations_Annotations"
	FOREIGN KEY ("actionAnnotationsID") REFERENCES "Annotations" ("annotationsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "ActionBy" ADD CONSTRAINT "FK_ActionID"
	FOREIGN KEY ("ActionID") REFERENCES "Actions" ("actionsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "ActionBy" ADD CONSTRAINT "FK_AffiliationID"
	FOREIGN KEY ("AffiliationID") REFERENCES "Affiliations" ("affiliationsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "ActionExtensionPropertyValues" ADD CONSTRAINT "FK_ActionID"
	FOREIGN KEY ("ActionID") REFERENCES "Actions" ("actionsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "ActionExtensionPropertyValues" ADD CONSTRAINT "FK_ActionExtensionPropertyValues_ExtensionProperti"
	FOREIGN KEY ("actionExtensionPropertyValuesID") REFERENCES "ExtensionProperties" ("extensionPropertiesID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Actions" ADD CONSTRAINT "FK_MethodID"
	FOREIGN KEY ("MethodID") REFERENCES "Methods" ("methodsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Affiliations" ADD CONSTRAINT "FK_PersonID"
	FOREIGN KEY ("PersonID") REFERENCES "People" ("peopleID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Affiliations" ADD CONSTRAINT "FK_OrganizationID"
	FOREIGN KEY ("OrganizationID") REFERENCES "Organizations" ("organizationsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Annotations" ADD CONSTRAINT "FK_CitationID"
	FOREIGN KEY ("CitationID") REFERENCES "Citations" ("citationsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Annotations" ADD CONSTRAINT "FK_AnnotatorID"
	FOREIGN KEY ("AnnotatorID") REFERENCES "People" ("peopleID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "AuthorLists" ADD CONSTRAINT "FK_PersonID"
	FOREIGN KEY ("PersonID") REFERENCES "People" ("peopleID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "AuthorLists" ADD CONSTRAINT "FK_CitationID"
	FOREIGN KEY ("CitationID") REFERENCES "Citations" ("citationsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "catalogHarvest" ADD CONSTRAINT "FK_catalogHarvest_CatalogRecord"
	FOREIGN KEY ("catalogRecordID") REFERENCES "CatalogRecord" ("catalogRecordID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "CitationExtensionPropertyValues" ADD CONSTRAINT "FK_CitationExtensionPropertyValues_ExtensionProper"
	FOREIGN KEY ("citationExtensionPropertyValuesID") REFERENCES "ExtensionProperties" ("extensionPropertiesID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "CitationExtensionPropertyValues" ADD CONSTRAINT "FK_CitationID"
	FOREIGN KEY ("CitationID") REFERENCES "Citations" ("citationsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "CitationExternalIdentifiers" ADD CONSTRAINT "FK_CitationID"
	FOREIGN KEY ("CitationID") REFERENCES "Citations" ("citationsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "CitationExternalIdentifiers" ADD CONSTRAINT "FK_CitationExternalIdentifiers_ExternalIdentifierS"
	FOREIGN KEY ("citationExternalIdentifiersID") REFERENCES "ExternalIdentifierSystems" ("externalIdentifierSystemsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "DataSetCitations" ADD CONSTRAINT "FK_DataSetID"
	FOREIGN KEY ("DataSetID") REFERENCES "DataSets" ("dataSetsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "DataSetCitations" ADD CONSTRAINT "FK_CitationID"
	FOREIGN KEY ("CitationID") REFERENCES "Citations" ("citationsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "DataSetsResults" ADD CONSTRAINT "FK_DataSetID"
	FOREIGN KEY ("DataSetID") REFERENCES "DataSets" ("dataSetsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "DataSetsResults" ADD CONSTRAINT "FK_ResultID"
	FOREIGN KEY ("ResultID") REFERENCES "Result" ("resultID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "ExtensionProperties" ADD CONSTRAINT "FK_PropertyUnitsID"
	FOREIGN KEY ("PropertyUnitsID") REFERENCES "Units" ("unitsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "ExternalIdentifierSystems" ADD CONSTRAINT "FK_IdentifierSystemOrganizationID"
	FOREIGN KEY ("IdentifierSystemOrganizationID") REFERENCES "Organizations" ("organizationsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "FeatureActions" ADD CONSTRAINT "FK_ActionID"
	FOREIGN KEY ("ActionID") REFERENCES "Actions" ("actionsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "FeatureActions" ADD CONSTRAINT "FK_SamplingFeatureID"
	FOREIGN KEY ("SamplingFeatureID") REFERENCES "SamplingFeatures" ("samplingFeaturesID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "MethodAnnotations" ADD CONSTRAINT "FK_MethodAnnotations_Annotations"
	FOREIGN KEY ("methodAnnotationsID") REFERENCES "Annotations" ("annotationsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "MethodAnnotations" ADD CONSTRAINT "FK_MethodID"
	FOREIGN KEY ("MethodID") REFERENCES "Methods" ("methodsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "MethodCitations" ADD CONSTRAINT "FK_MethodID"
	FOREIGN KEY ("MethodID") REFERENCES "Methods" ("methodsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "MethodCitations" ADD CONSTRAINT "FK_CitationID"
	FOREIGN KEY ("CitationID") REFERENCES "Citations" ("citationsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "MethodExtensionPropertyValues" ADD CONSTRAINT "FK_MethodID"
	FOREIGN KEY ("MethodID") REFERENCES "Methods" ("methodsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "MethodExtensionPropertyValues" ADD CONSTRAINT "FK_MethodExtensionPropertyValues_ExtensionProperti"
	FOREIGN KEY ("methodExtensionPropertyValuesID") REFERENCES "ExtensionProperties" ("extensionPropertiesID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "MethodExternalIdentifiers" ADD CONSTRAINT "FK_MethodID"
	FOREIGN KEY ("MethodID") REFERENCES "Methods" ("methodsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "MethodExternalIdentifiers" ADD CONSTRAINT "FK_MethodExternalIdentifiers_ExternalIdentifierSys"
	FOREIGN KEY ("methodExternalIdentifiersID") REFERENCES "ExternalIdentifierSystems" ("externalIdentifierSystemsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Methods" ADD CONSTRAINT "FK_OrganizationID"
	FOREIGN KEY ("OrganizationID") REFERENCES "Organizations" ("organizationsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Organizations" ADD CONSTRAINT "FK_ParentOrganizationID"
	FOREIGN KEY ("ParentOrganizationID") REFERENCES "Organizations" ("organizationsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "PersonExternalIdentifiers" ADD CONSTRAINT "FK_PersonID"
	FOREIGN KEY ("PersonID") REFERENCES "People" ("peopleID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "PersonExternalIdentifiers" ADD CONSTRAINT "FK_PersonExternalIdentifiers_ExternalIdentifierSys"
	FOREIGN KEY ("personExternalIdentifiersID") REFERENCES "ExternalIdentifierSystems" ("externalIdentifierSystemsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "ReferenceMaterialExternalIdentifiers" ADD CONSTRAINT "FK_ReferenceMaterialExternalIdentifiers_ExternalId"
	FOREIGN KEY ("referenceMaterialExternalIdentifiersID") REFERENCES "ExternalIdentifierSystems" ("externalIdentifierSystemsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "RelatedDatasets" ADD CONSTRAINT "FK_RelatedDatasetID"
	FOREIGN KEY ("RelatedDatasetID") REFERENCES "DataSets" ("dataSetsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "RelatedDatasets" ADD CONSTRAINT "FK_DataSetID"
	FOREIGN KEY ("DataSetID") REFERENCES "DataSets" ("dataSetsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "RelatedFeatures" ADD CONSTRAINT "FK_RelatedFeatureID"
	FOREIGN KEY ("RelatedFeatureID") REFERENCES "SamplingFeatures" ("samplingFeaturesID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "RelatedFeatures" ADD CONSTRAINT "FK_SamplingFeatureID"
	FOREIGN KEY ("SamplingFeatureID") REFERENCES "SamplingFeatures" ("samplingFeaturesID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "RelatedFeatures" ADD CONSTRAINT "FK_SpatialOffsetID"
	FOREIGN KEY ("SpatialOffsetID") REFERENCES "SpatialOffsets" ("spatialOffsetsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "RelatedResults" ADD CONSTRAINT "FK_ResultID"
	FOREIGN KEY ("ResultID") REFERENCES "Result" ("resultID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "RelatedResults" ADD CONSTRAINT "FK_RelatedResultID"
	FOREIGN KEY ("RelatedResultID") REFERENCES "Result" ("resultID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Result" ADD CONSTRAINT "FK_FeatureActionID"
	FOREIGN KEY ("FeatureActionID") REFERENCES "FeatureActions" ("featureActionsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Result" ADD CONSTRAINT "FK_ProcessingLevelID"
	FOREIGN KEY ("ProcessingLevelID") REFERENCES "ProcessingLevels" ("processingLevelsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Result" ADD CONSTRAINT "FK_UnitsID"
	FOREIGN KEY ("UnitsID") REFERENCES "Units" ("unitsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Result" ADD CONSTRAINT "FK_VariableID"
	FOREIGN KEY ("VariableID") REFERENCES "Variables" ("variablesID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Result" ADD CONSTRAINT "FK_TaxonomicClassifierID"
	FOREIGN KEY ("TaxonomicClassifierID") REFERENCES "TaxonomicClassifiers" ("taxonomicClassifiersID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "ResultAnnotations" ADD CONSTRAINT "FK_ResultAnnotations_Annotations"
	FOREIGN KEY ("resultAnnotationsID") REFERENCES "Annotations" ("annotationsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "ResultAnnotations" ADD CONSTRAINT "FK_ResultID"
	FOREIGN KEY ("ResultID") REFERENCES "Result" ("resultID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "ResultExtensionPropertyValues" ADD CONSTRAINT "FK_ResultID"
	FOREIGN KEY ("ResultID") REFERENCES "Result" ("resultID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "ResultExtensionPropertyValues" ADD CONSTRAINT "FK_ResultExtensionPropertyValues_ExtensionProperti"
	FOREIGN KEY ("resultExtensionPropertyValuesID") REFERENCES "ExtensionProperties" ("extensionPropertiesID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "ResultSummary" ADD CONSTRAINT "FK_ResultSummary_Result"
	FOREIGN KEY ("resultSummaryID") REFERENCES "Result" ("resultID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "ResultValueAnnotations" ADD CONSTRAINT "FK_ResultValueAnnotations_Annotations"
	FOREIGN KEY ("resultValueAnnotationsID") REFERENCES "Annotations" ("annotationsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "SamplingFeatureAnnotations" ADD CONSTRAINT "FK_SamplingFeatureAnnotations_Annotations"
	FOREIGN KEY ("samplingFeatureAnnotationsID") REFERENCES "Annotations" ("annotationsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "SamplingFeatureAnnotations" ADD CONSTRAINT "FK_SamplingFeatureID"
	FOREIGN KEY ("SamplingFeatureID") REFERENCES "SamplingFeatures" ("samplingFeaturesID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "SamplingFeatureExtensionPropertyValues" ADD CONSTRAINT "FK_SamplingFeatureID"
	FOREIGN KEY ("SamplingFeatureID") REFERENCES "SamplingFeatures" ("samplingFeaturesID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "SamplingFeatureExtensionPropertyValues" ADD CONSTRAINT "FK_SamplingFeatureExtensionPropertyValues_Extensio"
	FOREIGN KEY ("samplingFeatureExtensionPropertyValuesID") REFERENCES "ExtensionProperties" ("extensionPropertiesID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "SamplingFeatureExternalIdentifiers" ADD CONSTRAINT "FK_SamplingFeatureID"
	FOREIGN KEY ("SamplingFeatureID") REFERENCES "SamplingFeatures" ("samplingFeaturesID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "SamplingFeatureExternalIdentifiers" ADD CONSTRAINT "FK_SamplingFeatureExternalIdentifiers_ExternalIden"
	FOREIGN KEY ("samplingFeatureExternalIdentifiersID") REFERENCES "ExternalIdentifierSystems" ("externalIdentifierSystemsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Sites" ADD CONSTRAINT "FK_SamplingFeatureID"
	FOREIGN KEY ("SamplingFeatureID") REFERENCES "SamplingFeatures" ("samplingFeaturesID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Sites" ADD CONSTRAINT "FK_LatLonDatumID"
	FOREIGN KEY ("LatLonDatumID") REFERENCES "SpatialReferences" ("spatialReferencesID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "SpatialReferenceExternalIdentifiers" ADD CONSTRAINT "FK_SpatialReferenceExternalIdentifiers_ExternalIde"
	FOREIGN KEY ("spatialReferenceExternalIdentifiersID") REFERENCES "ExternalIdentifierSystems" ("externalIdentifierSystemsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "SpatialReferenceExternalIdentifiers" ADD CONSTRAINT "FK_SpatialReferenceID"
	FOREIGN KEY ("SpatialReferenceID") REFERENCES "SpatialReferences" ("spatialReferencesID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Specimens" ADD CONSTRAINT "FK_SamplingFeatureID"
	FOREIGN KEY ("SamplingFeatureID") REFERENCES "SamplingFeatures" ("samplingFeaturesID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "SpecimenTaxonomicClassifiers" ADD CONSTRAINT "FK_TaxonomicClassifierID"
	FOREIGN KEY ("TaxonomicClassifierID") REFERENCES "TaxonomicClassifiers" ("taxonomicClassifiersID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "SpecimenTaxonomicClassifiers" ADD CONSTRAINT "FK_SamplingFeatureID"
	FOREIGN KEY ("SamplingFeatureID") REFERENCES "Specimens" ("specimensID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "TaxonomicClassifierExternalIdentifiers" ADD CONSTRAINT "FK_TaxonomicClassifierID"
	FOREIGN KEY ("TaxonomicClassifierID") REFERENCES "TaxonomicClassifiers" ("taxonomicClassifiersID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "TaxonomicClassifierExternalIdentifiers" ADD CONSTRAINT "FK_TaxonomicClassifierExternalIdentifiers_External"
	FOREIGN KEY ("taxonomicClassifierExternalIdentifiersID") REFERENCES "ExternalIdentifierSystems" ("externalIdentifierSystemsID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "TaxonomicClassifiers" ADD CONSTRAINT "FK_ParentTaxonomicClassifierID"
	FOREIGN KEY ("ParentTaxonomicClassifierID") REFERENCES "TaxonomicClassifiers" ("taxonomicClassifiersID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "VariableExtensionPropertyValues" ADD CONSTRAINT "FK_VariableID"
	FOREIGN KEY ("VariableID") REFERENCES "Variables" ("variablesID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "VariableExtensionPropertyValues" ADD CONSTRAINT "FK_VariableExtensionPropertyValues_ExtensionProper"
	FOREIGN KEY ("variableExtensionPropertyValuesID") REFERENCES "ExtensionProperties" ("extensionPropertiesID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "VariableExternalIdentifiers" ADD CONSTRAINT "FK_VariableID"
	FOREIGN KEY ("VariableID") REFERENCES "Variables" ("variablesID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "VariableExternalIdentifiers" ADD CONSTRAINT "FK_VariableExternalIdentifiers_ExternalIdentifierS"
	FOREIGN KEY ("variableExternalIdentifiersID") REFERENCES "ExternalIdentifierSystems" ("externalIdentifierSystemsID") ON DELETE No Action ON UPDATE No Action
;
