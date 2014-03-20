module CONNECTION-SYNTAX
// 9.0
	syntax Connection ::= ConnectionIdentifier ":" SomeConnections PropertyInMode ";"
		syntax ConnectionIdentifier ::= "not define"
		syntax SomeConnections ::= FeatureConnection 
					|  PortConnection
					|  ParameterConnection
					|  AccessConnection
					|  FeatureGroupConnection
			syntax FeatureConnection ::= "not define"
			syntax PortConnection ::= "not define"
			syntax ParameterConnection ::= "not define"
			syntax AccessConnection ::= "not define"
			syntax FeatureGroupConnection ::= "not define"
		syntax PropertyInMode ::= "{" PropertyAssociationList "}" InModesAndTranstitions
					| "{" PropertyAssociationList "}"
					| InModesAndTranstitions
					| NoneStatement
			syntax InModesAndTranstitions ::= "not define"
			syntax PropertyAssociationList ::= PropertyAssociation | PropertyAssociation PropertyAssociationList
//				syntax PropertyAssociation ::= "not define"


	syntax ConnectionRefinement ::= ConnectionIdentifier ":" "refined ""to " SomeRefinements PropertyInMode ";"
		syntax SomeRefinements ::=  FeatureConnectionRefinement 
					|  PortConnectionRefinement
					|  ParameterConnectionRefinement
					|  AccessConnectionRefinement
					|  FeatureGroupConnectionRefinement
			syntax FeatureConnectionRefinement ::= "not define"
			syntax PortConnectionRefinement ::= "not define"
			syntax ParameterConnectionRefinement ::= "not define"
			syntax AccessConnectionRefinement ::= "not define"
			syntax FeatureGroupConnectionRefinement ::= "not define"
	
//	syntax NoneStatement ::= "none" | " "
 
endmodule

module CONNECTION 

	imports CONNECTION-SYNTAX

endmodule