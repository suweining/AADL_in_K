module ENDTOENDFLOW-SYNTAX
	
	syntax EndToEndFlowSpec ::= EndToEndFlowIdentifier ":" "end ""to ""end ""flow " StartSubcomponentFlowOrEtefIdentifier ConnectionIdentifierFlowPathList  EndToEndFlowSpecAssocDefault ";"
		syntax EndToEndFlowIdentifier ::= "not define"
		syntax StartSubcomponentFlowOrEtefIdentifier ::= SubcomponentFlowOrEtefIdentifier
		syntax ConnectionIdentifierFlowPathList ::= "->" ConnectionIdentifier "->" FlowPathSubcomponentFlowOrEtefIdentifier
							  | ConnectionIdentifierFlowPathList ConnectionIdentifierFlowPathList
//			syntax ConnectionIdentifier ::= "not define"
			syntax FlowPathSubcomponentFlowOrEtefIdentifier ::= "not define"
		syntax EndToEndFlowSpecAssocDefault ::=  "{" PropertyAssociationList "}" InModesAndTransitions
						    |  "{" PropertyAssociationList "}"
						    |  InModesAndTransitions
						    |  NoneStatement
//			syntax InModesAndTransitions ::= "not define"
//			syntax PropertyAssociationList ::= PropertyAssociation | PropertyAssociationList PropertyAssociationList
//				syntax PropertyAssociation ::= "not define"

	syntax EndToEndSpecRefinement ::= EndToEndIdentifier ":" "refined ""to ""end ""to ""end ""flow " EndToEndSpecRefinementDefault ";"
		syntax EndToEndIdentifier ::= "not define"
		syntax EndToEndSpecRefinementDefault ::= "{" PropertyAssociationList "}" InModesAndTransitions
						    |  "{" PropertyAssociationList "}"
						    |  InModesAndTransitions
	syntax SubcomponentFlowOrEtefIdentifier ::= SubcomponentFlowIdentifier | EndToEndFlowIdentifier
//		syntax SubcomponentFlowIdentifier ::= "not define"
//	syntax NoneStatement ::= "none" | " "
endmodule

module ENDTOENDFLOW
	
	imports ENDTOENDFLOW-SYNTAX

endmodule