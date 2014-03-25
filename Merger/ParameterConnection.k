module PARAMETERCONNECTION-SYNTAX
// 9.3	check
	syntax ParameterConnection ::= "parameter" SourceParameterReference DirectionalConnectionSymbol DestinationParameterReference
		syntax SourceParameterReference ::= ParameterReference // need rules
		syntax DirectionalConnectionSymbol ::= ParameterReference
		syntax DestinationParameterReference ::= ParameterReference

	syntax ParameterConnectionRefinement ::= "paramenter"
	syntax ParameterReference ::= ComponentTypeParameterIdentifier 
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