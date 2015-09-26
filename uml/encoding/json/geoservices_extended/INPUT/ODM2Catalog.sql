CREATE TABLE taxonomicclassifierexternalidentifiers (

	_id bigserial NOT NULL PRIMARY KEY,
	bridgeid integer NOT NULL,   -- 
	taxonomicclassifierexternalidentifier text NOT NULL,   -- 
	taxonomicclassifierexternalidentifieruri text,   -- 
	taxonomicclassifierid bigserial NOT NULL   -- 
);

CREATE TABLE methodexternalidentifiers (

	_id bigserial NOT NULL PRIMARY KEY,
	bridgeid integer NOT NULL,   -- 
	methodexternalidentifier text NOT NULL,   -- 
	methodexternalidentifieruri text,   -- 
	methodid bigserial NOT NULL   -- 
);

CREATE TABLE specimentaxonomicclassifiers (

	_id bigserial NOT NULL PRIMARY KEY,
	bridgeid integer NOT NULL,   -- 
	citationid integer,   -- 
	taxonomicclassifierid bigserial NOT NULL,   -- 
	samplingfeatureid bigserial NOT NULL   -- 
);

CREATE TABLE cvterms (

	_id bigserial NOT NULL PRIMARY KEY,
	definition text,   -- 
	odmvocabulary text NOT NULL,   -- 
	sourcevocabulary text,   -- 
	term text NOT NULL,   -- 
	termid integer NOT NULL   -- 
);

CREATE TABLE datasetcitations (

	_id bigserial NOT NULL PRIMARY KEY,
	bridgeid integer NOT NULL,   -- 
	relationshiptypecv text NOT NULL,   -- 
	citationid bigserial NOT NULL,   -- 
	datasetid bigserial NOT NULL   -- 
);

CREATE TABLE taxonomicclassifiers (

	_id bigserial NOT NULL PRIMARY KEY,
	taxonomicclassifiercommonname text,   -- 
	taxonomicclassifierdescription text,   -- 
	taxonomicclassifierid integer NOT NULL,   -- 
	taxonomicclassifiername text NOT NULL,   -- 
	taxonomicclassifiertypecv text NOT NULL,   -- 
	parenttaxonomicclassifierid bigserial NOT NULL   -- 
);

CREATE TABLE datasets (

	_id bigserial NOT NULL PRIMARY KEY,
	datasetabstract text NOT NULL,   -- 
	datasetcode text NOT NULL,   -- 
	datasetid integer NOT NULL,   -- 
	datasettitle text NOT NULL,   -- 
	datasettypecv text NOT NULL,   -- 
	datasetuuid text NOT NULL   -- 
);

CREATE TABLE samplingfeatureextensionpropertyvalues (

	_id bigserial NOT NULL PRIMARY KEY,
	bridgeid integer NOT NULL,   -- 
	propertyvalue text NOT NULL,   -- 
	samplingfeatureid bigserial NOT NULL   -- 
);

CREATE TABLE samplingfeatureexternalidentifiers (

	_id bigserial NOT NULL PRIMARY KEY,
	bridgeid integer NOT NULL,   -- 
	samplingfeatureexternalidentiferuri text,   -- 
	samplingfeatureexternalidentifier text NOT NULL,   -- 
	samplingfeatureid bigserial NOT NULL   -- 
);

CREATE TABLE spatialreferenceexternalidentifiers (

	_id bigserial NOT NULL PRIMARY KEY,
	bridgeid integer NOT NULL,   -- 
	spatialreferenceexternalidentifier text NOT NULL,   -- 
	spatialreferenceexternalidentifieruri text,   -- 
	spatialreferenceid bigserial NOT NULL   -- 
);

CREATE TABLE result (

	_id bigserial NOT NULL PRIMARY KEY,
	intendedobservationspacing text,   -- 
	resultdatetime timestamp with timezone,   -- 
	resultdatetimeutcoffset integer,   -- 
	resultid integer NOT NULL,   -- 
	resulttypecv text NOT NULL,   -- 
	resultuuid text NOT NULL,   -- 
	sampledmediumcv text NOT NULL,   -- 
	statuscv text,   -- 
	validdatetime timestamp with timezone,   -- 
	validdatetimeutcoffset integer,   -- 
	valuecount integer NOT NULL,   -- 
	processinglevelid bigserial NOT NULL,   -- 
	featureactionid bigserial NOT NULL,   -- 
	taxonomicclassifierid bigserial NOT NULL,   -- 
	unitsid bigserial NOT NULL,   -- 
	variableid bigserial NOT NULL   -- 
);

CREATE TABLE variables (

	_id bigserial NOT NULL PRIMARY KEY,
	nodatavalue numeric NOT NULL,   -- 
	speciationcv text,   -- 
	variablecode text NOT NULL,   -- 
	variabledefinition text,   -- 
	variableid integer NOT NULL,   -- 
	variablenamecv text NOT NULL,   -- 
	variabletypecv text NOT NULL   -- 
);

CREATE TABLE relatedfeatures (

	_id bigserial NOT NULL PRIMARY KEY,
	relationid integer NOT NULL,   -- 
	relationshiptypecv text NOT NULL,   -- 
	relatedfeatureid bigserial NOT NULL,   -- 
	samplingfeatureid bigserial NOT NULL,   -- 
	spatialoffsetid bigserial NOT NULL   -- 
);

CREATE TABLE datasetsresults (

	_id bigserial NOT NULL PRIMARY KEY,
	bridgeid integer NOT NULL,   -- 
	datasetid bigserial NOT NULL,   -- 
	resultid bigserial NOT NULL   -- 
);

CREATE TABLE actionextensionpropertyvalues (

	_id bigserial NOT NULL PRIMARY KEY,
	bridgeid integer NOT NULL,   -- 
	propertyvalue text NOT NULL,   -- 
	actionid bigserial NOT NULL   -- 
);

CREATE TABLE extensionproperties (

	_id bigserial NOT NULL PRIMARY KEY,
	propertydatatypecv text NOT NULL,   -- 
	propertydescription text,   -- 
	propertyid integer NOT NULL,   -- 
	propertyname text NOT NULL,   -- 
	propertyunitsid bigserial NOT NULL   -- 
);

CREATE TABLE variableexternalidentifiers (

	_id bigserial NOT NULL PRIMARY KEY,
	bridgeid integer NOT NULL,   -- 
	variableexternalidentifer text NOT NULL,   -- 
	variableexternalidentifieruri text,   -- 
	variableid bigserial NOT NULL   -- 
);

CREATE TABLE spatialoffsets (

	_id bigserial NOT NULL PRIMARY KEY,
	offset1unitid integer NOT NULL,   -- 
	offset1value numeric NOT NULL,   -- 
	offset2unitid integer,   -- 
	offset2value numeric,   -- 
	offset3unitid integer,   -- 
	offset3value numeric,   -- 
	spatialoffsetid integer NOT NULL,   -- 
	spatialoffsettypecv text NOT NULL   -- 
);

CREATE TABLE relatedresults (

	_id bigserial NOT NULL PRIMARY KEY,
	relatedresultsequencenumber integer,   -- 
	relationid integer NOT NULL,   -- 
	relationshiptypecv text NOT NULL,   -- 
	versioncode text,   -- 
	resultid bigserial NOT NULL,   -- 
	relatedresultid bigserial NOT NULL   -- 
);

CREATE TABLE processinglevels (

	_id bigserial NOT NULL PRIMARY KEY,
	definition text,   -- 
	explanation text,   -- 
	processinglevelcode text NOT NULL,   -- 
	processinglevelid integer NOT NULL   -- 
);

CREATE TABLE resultderivationequations (

	_id bigserial NOT NULL PRIMARY KEY,
	resultid bigserial NOT NULL   -- 
);

CREATE TABLE externalidentifiersystems (

	_id bigserial NOT NULL PRIMARY KEY,
	externalidentifiersystemdescription text,   -- 
	externalidentifiersystemid integer NOT NULL,   -- 
	externalidentifiersystemname text NOT NULL,   -- 
	externalidentifiersystemurl text,   -- 
	identifiersystemorganizationid bigserial NOT NULL   -- 
);

CREATE TABLE spatialreferences (

	_id bigserial NOT NULL PRIMARY KEY,
	spatialreferenceid integer NOT NULL,   -- 
	srscode text,   -- 
	srsdescription text,   -- 
	srsname text NOT NULL   -- 
);

CREATE TABLE actions (

	_id bigserial NOT NULL PRIMARY KEY,
	actiondescription text,   -- 
	actionfilelink text,   -- 
	actionid integer NOT NULL,   -- 
	actiontypecv text NOT NULL,   -- 
	begindatetime timestamp with timezone NOT NULL,   -- 
	begindatetimeutcoffset integer NOT NULL,   -- 
	enddatetime timestamp with timezone,   -- 
	enddatetimeutcoffset integer,   -- 
	methodid bigserial NOT NULL   -- 
);

CREATE TABLE featureactions (

	_id bigserial NOT NULL PRIMARY KEY,
	featureactionid integer NOT NULL,   -- 
	samplingfeatureid bigserial NOT NULL,   -- 
	actionid bigserial NOT NULL   -- 
);

CREATE TABLE relateddatasets (

	_id bigserial NOT NULL PRIMARY KEY,
	relationid integer NOT NULL,   -- 
	relationshiptypecv text NOT NULL,   -- 
	versioncode text,   -- 
	relateddatasetid bigserial NOT NULL,   -- 
	datasetid bigserial NOT NULL   -- 
);

CREATE TABLE resultextensionpropertyvalues (

	_id bigserial NOT NULL PRIMARY KEY,
	bridgeid integer NOT NULL,   -- 
	propertyvalue text NOT NULL,   -- 
	resultid bigserial NOT NULL   -- 
);

CREATE TABLE people (

	_id bigserial NOT NULL PRIMARY KEY,
	personfirstname text NOT NULL,   -- 
	personid integer NOT NULL,   -- 
	personlastname text NOT NULL,   -- 
	personmiddlename text   -- 
);

CREATE TABLE samplingfeatures (

	_id bigserial NOT NULL PRIMARY KEY,
	elevation_m numeric,   -- 
	elevationdatumccv text,   -- 
	featuregeometry geometry(POINT,31467),   -- 
	samplingfeaturecode text NOT NULL,   -- 
	samplingfeaturedescription text,   -- 
	samplingfeaturegeotypecv text,   -- 
	samplingfeatureid integer NOT NULL,   -- 
	samplingfeaturename text,   -- 
	samplingfeaturetypecv text NOT NULL   -- 
);

CREATE TABLE variableextensionpropertyvalues (

	_id bigserial NOT NULL PRIMARY KEY,
	bridgeid integer NOT NULL,   -- 
	propertyvalue text NOT NULL,   -- 
	variableid bigserial NOT NULL   -- 
);

CREATE TABLE actionby (

	_id bigserial NOT NULL PRIMARY KEY,
	bridgeid integer NOT NULL,   -- 
	isactionlead text NOT NULL,   -- 
	roledescription text,   -- 
	affiliationid bigserial NOT NULL,   -- 
	actionid bigserial NOT NULL   -- 
);

CREATE TABLE units (

	_id bigserial NOT NULL PRIMARY KEY,
	unitsabbreviation text NOT NULL,   -- 
	unitsid integer NOT NULL,   -- 
	unitsname text NOT NULL,   -- 
	unitstypecv text NOT NULL   -- 
);

CREATE TABLE sites (

	_id bigserial NOT NULL PRIMARY KEY,
	latitude numeric NOT NULL,   -- 
	longitude numeric NOT NULL,   -- 
	sitetypecv text NOT NULL,   -- 
	samplingfeatureid bigserial NOT NULL,   -- 
	latlondatumid bigserial NOT NULL   -- 
);

CREATE TABLE authorlists (

	_id bigserial NOT NULL PRIMARY KEY,
	authororder integer NOT NULL,   -- 
	bridgeid integer NOT NULL,   -- 
	personid bigserial NOT NULL,   -- 
	citationid bigserial NOT NULL   -- 
);

CREATE TABLE citationextensionpropertyvalues (

	_id bigserial NOT NULL PRIMARY KEY,
	bridgeid integer NOT NULL,   -- 
	propertyvalue text NOT NULL,   -- 
	citationid bigserial NOT NULL   -- 
);

CREATE TABLE personexternalidentifiers (

	_id bigserial NOT NULL PRIMARY KEY,
	bridgeid integer NOT NULL,   -- 
	personexternalidenifieruri text,   -- 
	personexternalidentifier text NOT NULL,   -- 
	personid bigserial NOT NULL   -- 
);

CREATE TABLE affiliations (

	_id bigserial NOT NULL PRIMARY KEY,
	affiliationenddate date,   -- 
	affiliationid integer NOT NULL,   -- 
	affiliationstartdate date NOT NULL,   -- 
	isprimaryorganizationcontact text,   -- 
	personlink text,   -- 
	primaryaddress text,   -- 
	primaryemail text NOT NULL,   -- 
	primaryphone text,   -- 
	personid bigserial NOT NULL,   -- 
	organizationid bigserial NOT NULL   -- 
);

CREATE TABLE catalogrecord (

	_id bigserial NOT NULL PRIMARY KEY,
	createddate timestamp with timezone NOT NULL,   -- 
	updateddate timestamp with timezone NOT NULL,   -- 
	source text NOT NULL   -- 
);

CREATE TABLE organizations (

	_id bigserial NOT NULL PRIMARY KEY,
	organizationcode text NOT NULL,   -- 
	organizationdescription text,   -- 
	organizationid integer NOT NULL,   -- 
	organizationlink text,   -- 
	organizationname text NOT NULL,   -- 
	organizationtypecv text NOT NULL,   -- 
	parentorganizationid bigserial NOT NULL   -- 
);

CREATE TABLE specimens (

	_id bigserial NOT NULL PRIMARY KEY,
	isfieldspecimen text NOT NULL,   -- 
	specimenmediumcv text NOT NULL,   -- 
	specimentypecv text NOT NULL,   -- 
	samplingfeatureid bigserial NOT NULL   -- 
);

CREATE TABLE referencematerialexternalidentifiers (

	_id bigserial NOT NULL PRIMARY KEY,
	bridgeid integer NOT NULL,   -- 
	referencematerialexternalidentifier text NOT NULL,   -- 
	referencematerialexternalidentifieruri text   -- 
);

CREATE TABLE relatedactions (

	_id bigserial NOT NULL PRIMARY KEY,
	relationid integer NOT NULL,   -- 
	relationshiptypecv text NOT NULL,   -- 
	relatedactionid bigserial NOT NULL,   -- 
	actionid bigserial NOT NULL   -- 
);

CREATE TABLE methodextensionpropertyvalues (

	_id bigserial NOT NULL PRIMARY KEY,
	bridgeid integer NOT NULL,   -- 
	propertyvalue text NOT NULL,   -- 
	methodid bigserial NOT NULL   -- 
);

CREATE TABLE relatedcitations (

	_id bigserial NOT NULL PRIMARY KEY,
	relationid integer NOT NULL,   -- 
	relationshiptypecv integer NOT NULL,   -- 
	relatedcitationid bigserial NOT NULL,   -- 
	citationid bigserial NOT NULL   -- 
);

CREATE TABLE citations (

	_id bigserial NOT NULL PRIMARY KEY,
	citationid integer NOT NULL,   -- 
	citationlink text,   -- 
	publicationyear integer NOT NULL,   -- 
	publisher text NOT NULL,   -- 
	title text NOT NULL   -- 
);

CREATE TABLE methods (

	_id bigserial NOT NULL PRIMARY KEY,
	methodcode text NOT NULL,   -- 
	methoddescription text,   -- 
	methodid integer NOT NULL,   -- 
	methodlink text,   -- 
	methodname text NOT NULL,   -- 
	methodtypecv text NOT NULL,   -- 
	organizationid bigserial NOT NULL   -- 
);

CREATE TABLE citationexternalidentifiers (

	_id bigserial NOT NULL PRIMARY KEY,
	bridgeid integer NOT NULL,   -- 
	citationexternalidentifer text NOT NULL,   -- 
	citationexternalidentiferuri text,   -- 
	citationid bigserial NOT NULL   -- 
);

CREATE TABLE methodcitations (

	_id bigserial NOT NULL PRIMARY KEY,
	bridgeid integer NOT NULL,   -- 
	relationshiptypecv text NOT NULL,   -- 
	methodid bigserial NOT NULL,   -- 
	citationid bigserial NOT NULL   -- 
);



ALTER TABLE taxonomicclassifierexternalidentifiers ADD CONSTRAINT fk_taxonomicclassifierexternalidentifiers_taxonomicclassifierid_to_taxonomicclassifiers FOREIGN KEY (taxonomicclassifierid) REFERENCES taxonomicclassifiers;
ALTER TABLE methodexternalidentifiers ADD CONSTRAINT fk_methodexternalidentifiers_methodid_to_methods FOREIGN KEY (methodid) REFERENCES methods;
ALTER TABLE specimentaxonomicclassifiers ADD CONSTRAINT fk_specimentaxonomicclassifiers_taxonomicclassifierid_to_taxonomicclassifiers FOREIGN KEY (taxonomicclassifierid) REFERENCES taxonomicclassifiers;
ALTER TABLE specimentaxonomicclassifiers ADD CONSTRAINT fk_specimentaxonomicclassifiers_samplingfeatureid_to_specimens FOREIGN KEY (samplingfeatureid) REFERENCES specimens;
ALTER TABLE datasetcitations ADD CONSTRAINT fk_datasetcitations_citationid_to_citations FOREIGN KEY (citationid) REFERENCES citations;
ALTER TABLE datasetcitations ADD CONSTRAINT fk_datasetcitations_datasetid_to_datasets FOREIGN KEY (datasetid) REFERENCES datasets;
ALTER TABLE taxonomicclassifiers ADD CONSTRAINT fk_taxonomicclassifiers_parenttaxonomicclassifierid_to_taxonomicclassifiers FOREIGN KEY (parenttaxonomicclassifierid) REFERENCES taxonomicclassifiers;
ALTER TABLE samplingfeatureextensionpropertyvalues ADD CONSTRAINT fk_samplingfeatureextensionpropertyvalues_samplingfeatureid_to_samplingfeatures FOREIGN KEY (samplingfeatureid) REFERENCES samplingfeatures;
ALTER TABLE samplingfeatureexternalidentifiers ADD CONSTRAINT fk_samplingfeatureexternalidentifiers_samplingfeatureid_to_samplingfeatures FOREIGN KEY (samplingfeatureid) REFERENCES samplingfeatures;
ALTER TABLE spatialreferenceexternalidentifiers ADD CONSTRAINT fk_spatialreferenceexternalidentifiers_spatialreferenceid_to_spatialreferences FOREIGN KEY (spatialreferenceid) REFERENCES spatialreferences;
ALTER TABLE result ADD CONSTRAINT fk_result_processinglevelid_to_processinglevels FOREIGN KEY (processinglevelid) REFERENCES processinglevels;
ALTER TABLE result ADD CONSTRAINT fk_result_featureactionid_to_featureactions FOREIGN KEY (featureactionid) REFERENCES featureactions;
ALTER TABLE result ADD CONSTRAINT fk_result_taxonomicclassifierid_to_taxonomicclassifiers FOREIGN KEY (taxonomicclassifierid) REFERENCES taxonomicclassifiers;
ALTER TABLE result ADD CONSTRAINT fk_result_unitsid_to_units FOREIGN KEY (unitsid) REFERENCES units;
ALTER TABLE result ADD CONSTRAINT fk_result_variableid_to_variables FOREIGN KEY (variableid) REFERENCES variables;
ALTER TABLE relatedfeatures ADD CONSTRAINT fk_relatedfeatures_relatedfeatureid_to_samplingfeatures FOREIGN KEY (relatedfeatureid) REFERENCES samplingfeatures;
ALTER TABLE relatedfeatures ADD CONSTRAINT fk_relatedfeatures_samplingfeatureid_to_samplingfeatures FOREIGN KEY (samplingfeatureid) REFERENCES samplingfeatures;
ALTER TABLE relatedfeatures ADD CONSTRAINT fk_relatedfeatures_spatialoffsetid_to_spatialoffsets FOREIGN KEY (spatialoffsetid) REFERENCES spatialoffsets;
ALTER TABLE datasetsresults ADD CONSTRAINT fk_datasetsresults_datasetid_to_datasets FOREIGN KEY (datasetid) REFERENCES datasets;
ALTER TABLE datasetsresults ADD CONSTRAINT fk_datasetsresults_resultid_to_result FOREIGN KEY (resultid) REFERENCES result;
ALTER TABLE actionextensionpropertyvalues ADD CONSTRAINT fk_actionextensionpropertyvalues_actionid_to_actions FOREIGN KEY (actionid) REFERENCES actions;
ALTER TABLE extensionproperties ADD CONSTRAINT fk_extensionproperties_propertyunitsid_to_units FOREIGN KEY (propertyunitsid) REFERENCES units;
ALTER TABLE variableexternalidentifiers ADD CONSTRAINT fk_variableexternalidentifiers_variableid_to_variables FOREIGN KEY (variableid) REFERENCES variables;
ALTER TABLE relatedresults ADD CONSTRAINT fk_relatedresults_resultid_to_result FOREIGN KEY (resultid) REFERENCES result;
ALTER TABLE relatedresults ADD CONSTRAINT fk_relatedresults_relatedresultid_to_result FOREIGN KEY (relatedresultid) REFERENCES result;
ALTER TABLE resultderivationequations ADD CONSTRAINT fk_resultderivationequations_resultid_to_result FOREIGN KEY (resultid) REFERENCES result;
ALTER TABLE externalidentifiersystems ADD CONSTRAINT fk_externalidentifiersystems_identifiersystemorganizationid_to_organizations FOREIGN KEY (identifiersystemorganizationid) REFERENCES organizations;
ALTER TABLE actions ADD CONSTRAINT fk_actions_methodid_to_methods FOREIGN KEY (methodid) REFERENCES methods;
ALTER TABLE featureactions ADD CONSTRAINT fk_featureactions_samplingfeatureid_to_samplingfeatures FOREIGN KEY (samplingfeatureid) REFERENCES samplingfeatures;
ALTER TABLE featureactions ADD CONSTRAINT fk_featureactions_actionid_to_actions FOREIGN KEY (actionid) REFERENCES actions;
ALTER TABLE relateddatasets ADD CONSTRAINT fk_relateddatasets_relateddatasetid_to_datasets FOREIGN KEY (relateddatasetid) REFERENCES datasets;
ALTER TABLE relateddatasets ADD CONSTRAINT fk_relateddatasets_datasetid_to_datasets FOREIGN KEY (datasetid) REFERENCES datasets;
ALTER TABLE resultextensionpropertyvalues ADD CONSTRAINT fk_resultextensionpropertyvalues_resultid_to_result FOREIGN KEY (resultid) REFERENCES result;
ALTER TABLE variableextensionpropertyvalues ADD CONSTRAINT fk_variableextensionpropertyvalues_variableid_to_variables FOREIGN KEY (variableid) REFERENCES variables;
ALTER TABLE actionby ADD CONSTRAINT fk_actionby_affiliationid_to_affiliations FOREIGN KEY (affiliationid) REFERENCES affiliations;
ALTER TABLE actionby ADD CONSTRAINT fk_actionby_actionid_to_actions FOREIGN KEY (actionid) REFERENCES actions;
ALTER TABLE sites ADD CONSTRAINT fk_sites_samplingfeatureid_to_samplingfeatures FOREIGN KEY (samplingfeatureid) REFERENCES samplingfeatures;
ALTER TABLE sites ADD CONSTRAINT fk_sites_latlondatumid_to_spatialreferences FOREIGN KEY (latlondatumid) REFERENCES spatialreferences;
ALTER TABLE authorlists ADD CONSTRAINT fk_authorlists_personid_to_people FOREIGN KEY (personid) REFERENCES people;
ALTER TABLE authorlists ADD CONSTRAINT fk_authorlists_citationid_to_citations FOREIGN KEY (citationid) REFERENCES citations;
ALTER TABLE citationextensionpropertyvalues ADD CONSTRAINT fk_citationextensionpropertyvalues_citationid_to_citations FOREIGN KEY (citationid) REFERENCES citations;
ALTER TABLE personexternalidentifiers ADD CONSTRAINT fk_personexternalidentifiers_personid_to_people FOREIGN KEY (personid) REFERENCES people;
ALTER TABLE affiliations ADD CONSTRAINT fk_affiliations_personid_to_people FOREIGN KEY (personid) REFERENCES people;
ALTER TABLE affiliations ADD CONSTRAINT fk_affiliations_organizationid_to_organizations FOREIGN KEY (organizationid) REFERENCES organizations;
ALTER TABLE organizations ADD CONSTRAINT fk_organizations_parentorganizationid_to_organizations FOREIGN KEY (parentorganizationid) REFERENCES organizations;
ALTER TABLE specimens ADD CONSTRAINT fk_specimens_samplingfeatureid_to_samplingfeatures FOREIGN KEY (samplingfeatureid) REFERENCES samplingfeatures;
ALTER TABLE relatedactions ADD CONSTRAINT fk_relatedactions_relatedactionid_to_actions FOREIGN KEY (relatedactionid) REFERENCES actions;
ALTER TABLE relatedactions ADD CONSTRAINT fk_relatedactions_actionid_to_actions FOREIGN KEY (actionid) REFERENCES actions;
ALTER TABLE methodextensionpropertyvalues ADD CONSTRAINT fk_methodextensionpropertyvalues_methodid_to_methods FOREIGN KEY (methodid) REFERENCES methods;
ALTER TABLE relatedcitations ADD CONSTRAINT fk_relatedcitations_relatedcitationid_to_citations FOREIGN KEY (relatedcitationid) REFERENCES citations;
ALTER TABLE relatedcitations ADD CONSTRAINT fk_relatedcitations_citationid_to_citations FOREIGN KEY (citationid) REFERENCES citations;
ALTER TABLE methods ADD CONSTRAINT fk_methods_organizationid_to_organizations FOREIGN KEY (organizationid) REFERENCES organizations;
ALTER TABLE citationexternalidentifiers ADD CONSTRAINT fk_citationexternalidentifiers_citationid_to_citations FOREIGN KEY (citationid) REFERENCES citations;
ALTER TABLE methodcitations ADD CONSTRAINT fk_methodcitations_methodid_to_methods FOREIGN KEY (methodid) REFERENCES methods;
ALTER TABLE methodcitations ADD CONSTRAINT fk_methodcitations_citationid_to_citations FOREIGN KEY (citationid) REFERENCES citations;


CREATE INDEX idx_samplingfeatures_featuregeometry ON samplingfeatures USING GIST (featuregeometry);

