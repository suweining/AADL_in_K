

//4.2 
require "Package.k"

//  4.3
require "ComponentType.k"
//4.4

require "ComponentImplementation.k"

// 4.5 

require "Subcomponent.k"

// 4.7

require "ProtoType.k"


//4.8 

require "AnnexSubclauseLibrary.k"

// 5.2
require "SubprogramCall.k" 

// 8.0 error

 require "FeatureShareAccess.k"

// 8.1 

 require "AbstractFeature.k"


// 8.2 error

 require "FeatureGroupType.k"

// 8.3 error
 require "Port.k"

// 8.4
require "SubprogramGroupAccess.k"

// 8.5
 require "SubprogramParameter.k"

// 8.6
 require "DataComponentAccess.k"

// no check

//8.7
require "BusComponentAccess.k"

//9.0
require "Connection.k"

// 9.1
require "FeatureConnection.k"

// 9.2
require "PortConnection.k"

// 9.3
require "ParameterConnection.k"

// 9.4
require "AccessConnection.k"

// 9.5
require "FeatureGroupConnection.k"

// 10.1
require "FlowSpecification.k"

// 10.2
require "FlowImplementation1.k"

//10.3

require "EndToEndFlow.k"

// 11.1
require "PropertySet.k"

// 11.1.1
require "PropertyType.k"

// 11.1.2
require "PropertyDefination.k"

// 11.1.3
require "PropertyConstant.k"

// 11.3
require "PropertyAssociation.k"

// 11.4
require "PropertyExpression.k"

//12.0
require "ModesAndModeTransition.k"

// 15.0
require "LexicalElement.k"

module MERGER
	imports  PACKAGE-SYNTAX
	imports  COMPONENTTYPE-SYNTAX
	imports  COMPONENTIMPLEMENTATION-SYNTAX
	imports  SUBCOMPONENT-SYNTAX
	imports  PROTOTYPE-SYNTAX
	imports  ANNEXSUBCLAUSELIBRARY-SYNTAX
	imports  SUBPROGRAMCALL-SYNTAX
	imports  FEATURESHAREACCESS-SYNTAX

	// new 
	imports ABSTRACTFEATURE-SYNTAX
	imports FEATUREGROUPTYPE-SYNATX
	imports PORT-SYNTAX
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
	imports FLOWSPECIFICATION-SYNTAX
	imports FLOWIMPLEMENTATION-SYNTAX
	imports ENDTOENDFLOW-SYNTAX
	imports PROPERTYTYPE-SYNTAX
	imports PROPERTYDEFINATION-SYNTAX
	imports  PROPERTYCONSTANT-SYNTAX
	imports  PROPERTYSET-SYNTAX
	imports PROPERTYASSOCIATION-SYNTAX
	imports PROPERTYEXPRESSION-SYNTAX
	imports MODESANDMODETRANSITION-SYNTAX
	imports LEXICALELEMENT-SYNTAX

endmodule




