# ODM2 Catalog Schema
The Observations Data Model Catalog

* Catalog of searchable ODM2Core Results as a managed searchable aggregation of multiple ODM2 Data Sources
* Manage information about Sources that can be harvested from an Organizations using the ODM2 data model and harvested using ODM2 Web Services

The ODM2 Catalog focuses on the discovery of results providing a search of an action which produces a result. It utilizes the ODM2Core, ODM2CV (Controlled Vocabulary) and ODM2 SamplingFeatures schemas, and provides methods of summarizing diverse results. It itself is an extension to the ODM2 schema, providing mechanisms to maintain harvest source, and harvested record provenance information, and a mechanism to summarize results.  

The ODM2 Catalog focused on ODM2 Observations which are defined a one to one relationship between an ODM2Core.FeatureAction, and one or more ODM2Core.Result records. The ODM2 Catalog is a simplified to only include actions that produce a result, and not a full hierarchy of 'actions' which can be document by the ODM2 data model.  

## Cataloging  Result Information
An ODM2 Catalog does not hold detailed information about Results (which are contained in the results schema). The ODM2Core.Result contains information about the observation (Result Type, Variable/Property Observed, Units, and Value Count).  The ODM2 Catalog add a summary object to describe of the result, like Aggregation Type, and Spacing between observations time series result. In addition, it may be used to store statistical properties, such as minimum and maximum values for a time series result, or exceeds regulatory limit for environmental observations.
We anticipate extending the summary object to contain more data cube like summaries, like yearly and monthly summaries of properties, which will allow for discovery of results with values of specified characteristics. 

## Cataloging Sampling Features
The Catalog only includes Features directly related to the observed result, ODM2SamplingFeatures.Sites, and ODM2SamplingFeatures.Specimens. 

## Discovering information stored in Extensions:
An ExtensionSummary record allows for information from an 'extension' such as equipment, lab analyses and simulation to be summarized by using a text description, or named property fields. This would allow for items like equipment descriptions and manufacturers to be discoverable. 

## Harvesting:
Methods to allow for harvesting of result and result summaries are planned for the ODM2 Web Services.
- Catalog/SourceDescription - A description of the source, listing of the responsible party, and summary of the number of results 
- Catalog/Results - Returns an observation with a summary of the result. 
The harvest will also use existing methods to harvest Site/SamplingFeatures, Methods, and Dataset listings.

## Possible Performance issues:
If performance issues arise, it may be desirable to reduce the number of joins.
The ODM2 Catalog could simplify the core Actions-FeatureActions-Result tables into a single record.
