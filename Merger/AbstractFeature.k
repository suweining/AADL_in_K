module ABSTRACTFEATURE-SYNTAX

	syntax AbstractFeatureSpec ::= AbstractFeatureIdentifier ":" "in" "feature" FeatureProtoTypeIdentifier
				    |  AbstractFeatureIdentifier ":" "in" "feature" 
				    |  AbstractFeatureIdentifier ":" "out" "feature" FeatureProtoTypeIdentifier
				    |  AbstractFeatureIdentifier ":" "out" "feature" 
		syntax AbstractFeatureIdentifier ::= Id | Id "." Id | Id "_" Id
		syntax FeatureProtoTypeIdentifier ::= Id | Id "." Id | Id "_" Id
	syntax AbstractFeatureRefinement ::= PortRefinement 
					  |  FeatureGroupRefinement
					  |  SubcomponentAccessRefinement
					  |  ParameterRefinement
					  |  AbstractFeatureIndentifier ":" "refined" "to" "in" "feature" FeatureProtoTypeIdentifier
					  |  AbstractFeatureIndentifier ":" "refined" "to" "in" "feature" 
					  |  AbstractFeatureIndentifier ":" "refined" "to" "out" "feature" FeatureProtoTypeIdentifier
					  |  AbstractFeatureIndentifier ":" "refined" "to" "out" "feature" 
//		syntax FeatureProtoTypeIdentifier ::= "not define"
		syntax AbstractFeatureIndentifier ::= "not define"
		syntax PortRefinement ::= "not define"
		syntax FeatureGroupRefinement ::= "not define"
		syntax SubcomponentAccessRefinement ::= "not define"
		syntax ParameterRefinement ::= "not define"
endmodule