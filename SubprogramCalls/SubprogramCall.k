module SUBPROGRAMCALL-SYNTAX
// 5.2
	syntax SubprogramCallSequence ::= CallSequenceIdentifier ":" "{" SubprogramCall /* + */ "}" InModes ";"
				       |  CallSequenceIdentifier ":" "{" SubprogramCall /* + */ "}" "{" CallSequencePropertyAssociation /* + */ "}" InModes ";"
		syntax CallSequenceIdentifier ::= Id | Id"."Id | Id "_" Id
		syntax SubprogramCall ::= CallIdentifier ":" Subprogram CalledSubprogram ";"
		syntax SubprogramCall ::= CallIdentifier ":" Subprogram CalledSubprogram "{" CallSequencePropertyAssociation /* + */"}"";"
			syntax CallIdentifier ::= Id | Id "." Id | Id "_" Id
			syntax CalledSubprogram ::= SubprogramUniqueComponentClassifierReference
						  | DataUniqueComponentTypeReference "." DataProvidesSubprogramAccessIdentifier
						  | SubprogramGroupUniqueComponentTypeReference "." ProvidesSubprogramAccessIdentifier
						  | AbstractUniqueComponentTypeReference "." ProvidesSubprogramAccessIdentifier
						  | FeatureGroupIdentifier "." RequiresSubprogramAccessIdentifier
						  | ComponentProtoTypeIdentifier
						  | "processor" "." ProvidesSubprogramAccessIdentifier
						  | SubprogramGoupSubcomponentIdentifier "." ProvidesSubprogramAccessIdentifier
						  | RequiresSubprogramAccessIdentifier
						  | RequiresSubprogramGroupAccessIdentifier "." ProvidesSubprogramAccessIdentifier
				syntax SubprogramUniqueComponentClassifierReference ::= "not define"
				syntax DataUniqueComponentTypeReference ::= "not define"
				syntax DataProvidesSubprogramAccessIdentifier ::= "not define"
				syntax SubprogramGroupUniqueComponentTypeReference ::= "not define"
				syntax ProvidesSubprogramAccessIdentifier ::= "not define"
				syntax AbstractUniqueComponentTypeReference ::= "not define"
				syntax FeatureGroupIdentifier ::= "not define"
				syntax RequiresSubprogramAccessIdentifier ::= "not define" 
				syntax ComponentProtoTypeIdentifier ::= "not define"
				syntax SubprogramGoupSubcomponentIdentifier ::= "not define"
				syntax RequiresSubprogramGroupAccessIdentifier ::= "not define"
			syntax CallSequencePropertyAssociation ::= CallSequencePropertyAssociation CallSequencePropertyAssociation // +
			syntax CallSequencePropertyAssociation ::= "not define"
		syntax CallSequencePropertyAssociation ::= "not define"
		syntax InModes ::= "not define" 
endmodule

module SUBPROGRAMCALL

	imports SUBPROGRAMCALL-SYNTAX

endmodule