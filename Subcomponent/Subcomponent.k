module SUBCOMPONENT-SYNTAX
	syntax Subcomponent ::= SubcomponentIdentifier ":" ComponentCategory SubcomponentAssocDefination ";"
		syntax SubcomponentIdentifier ::= Id | Id "." Id | Id "_" Id
		syntax ComponentCategory ::= "define in ComponentType.k"
		syntax SubcomponentAssocDefination ::= UniqueComponentClassReference ProtoTypeBindings
						     | UniqueComponentClassReference
						     | PrototypeIdentifier
						     | ArrayDimensions ArrayelementImplementionList
						     | ArrayDimensions
						     | "{" SubcomponentProtertyAssociation "}" // +
						     | "{" ContainedPropertyAssociation "}"// +
						     | ComponentInModes 
			syntax UniqueComponentClassReference ::= 
			syntax ProtoTypeBindings ::= "not define"
			syntax PrototypeIdentifier ::= "not define"
			syntax ArrayDimensions ::= ArrayDimension // + but in 8.0,it is just [ArrayDimension]...i think here should be change
				syntax ArrayDimension ::= ArrayDimension ArrayDimension 
				syntax ArrayDimension ::= "[" ArrayDimensionSize "]"// [[...]]
					syntax ArrayDimensionSize ::= Numberal | UniquePropertyConstantIdentifier  | UniquePropertyIdentifier
						syntax Numeral ::= "not define"
						syntax UniquePropertyConstantIdentifier ::= "not define"
						syntax UniquePropertyIdentifier ::= "not define"
			syntax ArrayelementImplementionList ::= "("ArrayelementImplementionListTmp")"
							      | "("ArrayelementImplementionListTmp "," ArrayelementImplementionListTmp ")"
				syntax ArrayelementImplementionListTmp ::= UniqueComponentImplementationReference PrototypeBindings
								        |  UniqueComponentImplementationReference
					syntax UniqueComponentImplementationReference ::= "not define"
					syntax PrototypeBindings ::= "not define"				    
			syntax SubcomponentProtertyAssociation ::= SubcomponentProtertyAssociation SubcomponentProtertyAssociation
			syntax SubcomponentProtertyAssociation ::= 'not define'
			syntax ContainedPropertyAssociation ::= ContainedPropertyAssociation ContainedPropertyAssociation
			syntax ContainedPropertyAssociation ::= "not define"
			syntax ComponentInModes ::= "not define"
	syntax ArraySelectionName ::= Identifier ArraySelection
		syntax Identifier ::= Id | Id"."Id | Id "_" Id 
		syntax ArraySelection ::= ArraySelection ArraySelection // +
		syntax ArraySelection ::= "[" SelectionRange "]"
			syntax SelectionRange ::= Numberal | Numberal ".." Numberal
		
endmodule

module SUBCOMPONENT

	imports SUBCOMPONENT-SYNTAX
endmodule