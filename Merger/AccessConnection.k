module ACCESSCONNECTION-SYNTAX
// 9.4 check
	syntax AccessConnection ::= AccessConnectionKeyword "access " SourceAccessReference ConnectionSymbol DestinationAccessReference
		syntax AccessConnectionKeyword ::= "bus " | "subprogram " | "subprogram ""group " | "data "
		syntax SourceAccessReference ::= AccessReference
		syntax DestinationAccessReference ::= AccessReference
	
	syntax AccessConnectionRefinement ::= AccessConnectionKeyword "access "
	syntax AccessReference ::= RequiresAccessIdentifier
				|  ProvidesAccessIdentifier
				|  FeatureGroupIdentifier "." RequiresAccessIdentifier
				|  FeatureGroupIdentifier "." ProvidesAccessIdentifier
				|  SubcomponentIdentifier "." ProvidesAccessIdentifier
				|  SubcomponentIdentifier "." RequiresAccessIdentifier
				|  SubprogramCallIdentifier "." RequiresOrProvidesAccessIdentifier
				|  SubcomponentIdentifier
				|  "processor" "." ProvidesSubprogramAccessIdentifier
		syntax RequiresAccessIdentifier ::= Id | Id "." Id | Id "_" Id
		syntax ProvidesAccessIdentifier ::= Id | Id "." Id | Id "_" Id
		syntax RequiresOrProvidesAccessIdentifier ::= Id | Id "." Id | Id "_" Id
endmodule

module ACCESSCONNECTION
	
	imports ACCESSCONNECTION-SYNTAX
endmodule
