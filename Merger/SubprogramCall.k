module SUBPROGRAMCALL-SYNTAX
// 5.2 check
	syntax SubprogramCallSequence ::= CallSequenceIdentifier ":" "{" SubprogramCall /* + */ "}" InModes ";"
				       |  CallSequenceIdentifier ":" "{" SubprogramCall /* + */ "}" "{" CallSequencePropertyAssociation /* + */ "}" InModes ";"
		syntax CallSequenceIdentifier ::= Id | Id"."Id | Id "_" Id
		syntax SubprogramCall ::= CallIdentifier ":" "subprogram" CalledSubprogram ";"
		syntax SubprogramCall ::= CallIdentifier ":" "subprogram" CalledSubprogram "{" CallSequencePropertyAssociation /* + */"}"";"
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
				syntax DataProvidesSubprogramAccessIdentifier ::= Id | Id "." Id | Id "_" Id
				syntax SubprogramGroupUniqueComponentTypeReference ::= "not define"
				syntax ProvidesSubprogramAccessIdentifier ::= Id | Id "." Id | Id "_" Id
				syntax AbstractUniqueComponentTypeReference ::= "not define"
				syntax FeatureGroupIdentifier ::=  Id | Id "." Id | Id "_" Id
				syntax RequiresSubprogramAccessIdentifier ::=  Id | Id "." Id | Id "_" Id
				syntax ComponentProtoTypeIdentifier ::=  Id | Id "." Id | Id "_" Id
				syntax SubprogramGoupSubcomponentIdentifier ::=  Id | Id "." Id | Id "_" Id
				syntax RequiresSubprogramGroupAccessIdentifier ::=  Id | Id "." Id | Id "_" Id
			syntax CallSequencePropertyAssociation ::= CallSequencePropertyAssociation CallSequencePropertyAssociation // +


endmodule