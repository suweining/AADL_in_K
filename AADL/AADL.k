require "Commondef.k"
require "Package.k"
require "ComponentType.k"
require "ComponentImplementation.k"
require "Subcomponent.k"
require "ProtoType.k"
require "AnnexSubclauseLibrary.k"
require "SubprogramCall.k" 
require "FeatureShareAccess.k"
require "AbstractFeature.k"
require "FeatureGroupType.k"
require "Port.k"
require "SubprogramGroupAccess.k"
require "SubprogramParameter.k"
require "DataComponentAccess.k"
require "BusComponentAccess.k"
require "Connection.k"
require "FeatureConnection.k"
require "PortConnection.k"
require "ParameterConnection.k"
require "AccessConnection.k"
require "FeatureGroupConnection.k"
require "FlowSpecification.k"
require "FlowImplementation1.k"
require "EndToEndFlow.k"
require "PropertySet.k"
require "PropertyType.k"
require "PropertyDefination.k"
require "PropertyConstant.k"
require "PropertyAssociation.k"
require "PropertyExpression.k"
require "ModesAndModeTransition.k"
require "LexicalElement.k"

module AADL-SYNTAX
/*
  At first, we define the Core AAdl, includes Package,Component,Component Implementation
  In Core, we can not handle SubComponent, Prototype
*/
  imports COMMONDEF
  imports PACKAGE-SYNTAX
  imports COMPONENTTYPE-SYNTAX
  imports COMPONENTIMPLEMENTATION-SYNTAX

  imports ANNEXSUBCLAUSELIBRARY-SYNTAX
  imports FEATURESHAREACCESS-SYNTAX
  imports ABSTRACTFEATURE-SYNTAX
  imports FEATUREGROUPTYPE-SYNATX
  imports PORT-SYNTAX
 
  imports FLOWSPECIFICATION-SYNTAX
  imports FLOWIMPLEMENTATION-SYNTAX
  imports LEXICALELEMENT-SYNTAX

/*
   Here is the extension of Core AADL.
 */ 

  
/*
  
  imports PROTOTYPE-SYNTAX
  
  imports SUBCOMPONENT-SYNTAX
  
  imports SUBPROGRAMCALL-SYNTAX
  
  imports ENDTOENDFLOW-SYNTAX
  imports SUBPROGRAMGROUPACCESS-SYNTAX
  imports SUBPROGRAMPARAMETER-SYNTAX 
  imports DATACOMPONENTACCESS-SYNTAX
  imports BUSCOMPONENTACCESS-SYNTAX
  imports CONNECTION-SYNTAX
  imports FEATURECONNECTION-SYNTAX
  imports PORTCONNECTION-SYNTAX
  imports PARAMETERCONNECTION-SYNTAX
  imports ACCESSCONNECTION-SYNTAX
  imports FEATUREGROUPCONNECTION-SYNTAX



  imports MODESANDMODETRANSITION-SYNTAX
  
*/
endmodule

module AADL
  imports AADL-SYNTAX
  syntax AADLSpecification ::= PackageSpecPropertySetList
  syntax PackageSpecPropertySetList ::= PackageSpec | PropertySet
				   |  PackageSpec PackageSpecPropertySetList
				   |  PropertySet PackageSpecPropertySetList
endmodule



