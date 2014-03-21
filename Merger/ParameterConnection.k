module PARAMETERCONNECTION-SYNTAX
// 9.3	check
	syntax ParamenterConnection ::= "parameter" SourceParameterReference DirectionalConnectionSymbol DestinationParameterReference
		syntax SourceParameterReference ::= "not define"
		syntax DirectionalConnectionSymbol ::= "not define"
		syntax DestinationParameterReference ::= "not define"

	syntax ParamentConnectionRefinement ::= "paramenter"
	syntax ParamenterReference ::= ComponentTypeParameterIdentifier 
				    |  ComponentTypeParameterIdentifier "." DataSubcomponentIdentifier
				    |  SubprogramCallIdentifier "." ParameterIdentifier
				    |  ComponentTypePortIdentifier
				    |  ComponentTypePortIdentifier "." DataSubcomponentIdentifier
				    |  DataSubcomponentIdentifier
				    |  RequiresDataAccessIdentifier
				    |  ComponentTypeFeatureGroupIdentifier "." ElementDataAccessIdentifier
				    |  ComponentTypeFeatureFeatureGroupIdentifier "." ElementPortOrParameterIdentifier
		
		syntax ComponentTypeParameterIdentifier ::= Id | Id "." Id | Id "_" Id
		syntax RequiresDataAccessIdentifier ::= Id | Id "." Id | Id "_" Id
		syntax ComponentTypeFeatureFeatureGroupIdentifier ::= Id | Id "." Id | Id "_" Id
		syntax ElementPortOrParameterIdentifier ::= Id | Id "." Id | Id "_" Id
		
endmodule

module PARAMETERCONNECTION
	
	imports PARAMETERCONNECTION-SYNTAX

endmodule