module FEATURECONNECTION-SYNTAX
// 9.1 check
	syntax FeatureConnection ::= "feature " SourceFeatureReference ConnectionSymbol DestinationFeatureReference
		syntax SourceFeatureReference ::= FeatureReference
		syntax ConnectionSymbol ::= DirectionalConnectSymbol | BidirectionalConnectSymbol
			syntax DirectionalConnectSymbol ::= "->"
			syntax BidirectionalConnectSymbol ::= "<->"
		syntax DestinationFeatureReference ::= FeatureReference

	syntax FeatureReference ::= ComponentTypeFeatureIdentifier
				  | ComponentTypeFeatureGroupIdentifier "." FeatureIdentifier
				  | SubcomponentIdentifier "." FeatureIdentifier
				  | SubprogramCallIdentifier "." FeatureIdentifier
		syntax ComponentTypeFeatureIdentifier ::= Id | Id "." Id | Id "_" Id
		syntax ComponentTypeFeatureGroupIdentifier ::=  Id | Id "." Id | Id "_" Id
		syntax FeatureIdentifier ::= Id | Id "." Id | Id "_" Id
		syntax SubprogramCallIdentifier ::= Id | Id "." Id | Id "_" Id

	syntax FeatureConnectionRefinement ::= "feature"

endmodule

module  FEATURECONNECTION

	imports FEATURECONNECTION-SYNTAX

endmodule