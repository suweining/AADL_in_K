module PORTCONNECTION-SYNTAX
// 9.2	
	syntax PortConnection ::= "port" SourcePortConnectionRefer ConnectionSymbol DesitinationPortConnectionReference
		syntax SourcePortConnectionRefer ::= PortConnectionRefence
		syntax DesitinationPortConnectionReference ::= PortConnectionRefence
		syntax ConnectionSymbol ::= "define in 9.1"

	syntax PortConnectionRefinement ::= "port"
	syntax PortConnectionRefence ::= ComponentTypePortIdentifier
				      |  SubcomponentIdentifier "." PortIdentifier
				      |  ComponentTypeFeatureGroupIdentifier "." ElementPortIdentifier
				      |  ComponentTypePortIdentifier "." DataSubcomponentIdentifier
				      |  ComponentTypeRequiresDataAccessIdentifier
				      |  DataSubcomponentIdentifier
				      |  SubcomponentIdentifier "." ProvidesDataAccessIdentifier
				      |  ComponentTypeFeatureGroupIdentifier "."ElementDataAccessIdentifier
				      |  DataSubcomponentIdentifier "." DataSubcomponentIdentifier
				      |  "processor" "." ProcessorPortIdentifier
				      |  "self" "." EventOrEventDataSourceIdentifier

		syntax ComponentTypePortIdentifier ::= "not define"
		syntax SubcomponentIdentifier ::= "not define"
		syntax PortIdentifier ::= "not define"
		syntax ComponentTypeFeatureGroupIdentifier ::= "not define" 
		syntax ElementPortIdentifier ::= "not define"
		syntax DataSubcomponentIdentifier ::= "not define"
		syntax ComponentTypeRequiresDataAccessIdentifier ::= "not define"
		syntax ProvidesDataAccessIdentifier ::= "not define"
		syntax ElementDataAccessIdentifier ::= "not define"
		syntax ProcessorPortIdentifier ::= "not define"
		syntax EventOrEventDataSourceIdentifier ::= "not define"
	
endmodule

module PORTCONNECTION
	
	imports PORTCONNECTION-SYNTAX

endmodule