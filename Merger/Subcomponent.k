module SUBCOMPONENT-SYNTAX
// 4.5 check
	syntax Subcomponent ::= SubcomponentIdentifier ":" ComponentCategory SubcomponentAssocDefination ";"
		syntax SubcomponentIdentifier ::= Id | Id "." Id | Id "_" Id
		syntax SubcomponentAssocDefination ::= UniqueComponentClassifierReference ProtoTypeBindings
						     | UniqueComponentClassifierReference
						     | PrototypeIdentifier
						     | ArrayDimensions ArrayelementImplementionList
						     | ArrayDimensions
						     | "{" SubcomponentProtertyAssociation "}" // +
						     | "{" ContainedPropertyAssociation "}"// +
						     | ComponentInModes 
			syntax UniqueComponentClassifierReference ::= UniqueComponentTypeReference
								   |  UniqueComponentImplementationReference
			syntax PrototypeIdentifier ::= Id | Id "." Id | Id "_" Id
			syntax ArrayDimensions ::= ArrayDimension // + but in 8.0,it is just [ArrayDimension]...i think here should be change
				syntax ArrayDimension ::= ArrayDimension ArrayDimension 
				syntax ArrayDimension ::= "[" ArrayDimensionSize "]"// [[...]]
					syntax ArrayDimensionSize ::= Numberal | UniquePropertyConstantIdentifier  | UniquePropertyIdentifier
						syntax Numberal ::= "not define"
			syntax ArrayelementImplementionList ::= "("ArrayelementImplementionListTmp")"
							      | "("ArrayelementImplementionListTmp "," ArrayelementImplementionListTmp ")"
				syntax ArrayelementImplementionListTmp ::= UniqueComponentImplementationReference ProtoTypeBindings
								        |  UniqueComponentImplementationReference
					syntax UniqueComponentImplementationReference ::= "not define"				    
			syntax SubcomponentProtertyAssociation ::= SubcomponentProtertyAssociation SubcomponentProtertyAssociation
			syntax SubcomponentProtertyAssociation ::= "not define"
	syntax ArraySelectionName ::= Identifier ArraySelection
		syntax Identifier ::= Id | Id"."Id | Id "_" Id 
		syntax ArraySelection ::= ArraySelection ArraySelection // +
		syntax ArraySelection ::= "[" SelectionRange "]"
			syntax SelectionRange ::= Numberal | Numberal ".." Numberal
		
endmodule