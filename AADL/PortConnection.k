module PORTCONNECTION-SYNTAX
// 9.2	check
	syntax PortConnection ::= "port" SourcePortConnectionRefer ConnectionSymbol DesitinationPortConnectionReference
		syntax SourcePortConnectionRefer ::= PortConnectionRefence
		syntax DesitinationPortConnectionReference ::= PortConnectionRefence	

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

		syntax ComponentTypePortIdentifier ::= Id | Id "." Id | Id "_" Id
		syntax PortIdentifier ::= Id | Id "." Id | Id "_" Id
		syntax ElementPortIdentifier ::=  Id | Id "." Id | Id "_" Id
		syntax DataSubcomponentIdentifier ::=  Id | Id "." Id | Id "_" Id
		syntax ComponentTypeRequiresDataAccessIdentifier ::=  Id | Id "." Id | Id "_" Id
		syntax ProvidesDataAccessIdentifier ::= Id | Id "." Id | Id "_" Id
		syntax ElementDataAccessIdentifier ::= Id | Id "." Id | Id "_" Id
		syntax ProcessorPortIdentifier ::= Id | Id "." Id | Id "_" Id
		syntax EventOrEventDataSourceIdentifier ::= Id | Id "." Id | Id "_" Id
	
endmodule

module PORTCONNECTION
	
	imports PORTCONNECTION-SYNTAX

endmodule