module PARAMETERCONNECTION-SYNTAX
	
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
		syntax ComponentTypeParameterIdentifier ::= "not define"
//		syntax DataSubcomponentIdentifier ::= "not define"
//		syntax SubprogramCallIdentifier ::= "not define"
//		syntax ParameterIdentifier ::= "not define"
//		syntax ComponentTypePortIdentifier ::= "not define"
		syntax RequiresDataAccessIdentifier ::= "not define"
//		syntax ComponentTypeFeatureGroupIdentifier ::= "not define"
//		syntax ElementDataAccessIdentifier ::= "not define"
		syntax ComponentTypeFeatureFeatureGroupIdentifier ::= "not define"
		syntax ElementPortOrParameterIdentifier ::= "not define"
endmodule

module PARAMETERCONNECTION
	
	imports PARAMETERCONNECTION-SYNTAX

endmodule