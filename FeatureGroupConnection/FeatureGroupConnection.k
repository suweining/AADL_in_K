module FEATUREGROUPCONNETCTION-SYNTAX
	syntax FeatureGroupConnection ::= "feature " "group" SourceFeatureGroupReference ConnectionSymbol DestinationFeatureGroupReference
		syntax SourceFeatureGroupReference ::= FeatureGroupReference
		syntax DestinationFeatureGroupReference ::= FeatureGroupReference
		syntax ConnectionSymbol ::= "not define"
	syntax FeatureGroupConnectionRefinement ::= "feature " "group "

	syntax FeatureGroupReference ::= ComponentTypeFeatureGroupIdentifier
				      |  SubcomponentIdentifier "." FeatureGroupIdentifier
				      |  ComponentTypeFeatureGroupIdentifier "." ElementFeatureGroupIdentifier
		syntax ComponentTypeFeatureGroupIdentifier ::= "not define"
		syntax SubcomponentIdentifier ::= "not define"
		syntax FeatureGroupIdentifier ::= "not define"
		syntax ElementFeatureGroupIdentifier ::= "not define"

	


endmodule

module FEATUREGROUPCONNETCTION

	imports FEATUREGROUPCONNETCTION-SYNTAX

endmodule