module ACCESSCONNECTION-SYNTAX

	syntax AccessConnection ::= AccessConnectionKeyword "access " SourceAccessReference ConnectionSymbol DestinationAccessReference
		syntax AccessConnectionKeyword ::= "bus " | "subprogram " | "subprogram ""group " | "data "
		syntax SourceAccessReference ::= AccessReference
		syntax DestinationAccessReference ::= AccessReference
		syntax ConnectionSymbol ::= "not define"
	
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
		syntax RequiresAccessIdentifier ::= "not define"
		syntax ProvidesAccessIdentifier ::= "not define"
		syntax FeatureGroupIdentifier ::= "not define"
		syntax SubcomponentIdentifier ::= "not define"
		syntax SubprogramCallIdentifier ::= "not define"
		syntax RequiresOrProvidesAccessIdentifier ::= "not define"
		syntax ProvidesSubprogramAccessIdentifier ::= "not define"
endmodule

module ACCESSCONNECTION
	
	imports ACCESSCONNECTION-SYNTAX
endmodule
