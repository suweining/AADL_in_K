module CONNECT-SYNTAX
// 9.0
	syntax Connection ::= ConnectionIdentifier ":" SomeConnections PropertyInMode ";"
		syntax ConnectionIdentifier ::= "not define"
		syntax SomeConnections ::= FeatureConnection 
					|  PortConnection
					|  ParameterConnection
					|  AccessConnection
					|  FeatureGroupConnection
		syntax PropertyInMode ::= "{" PropertyAssociationList "}" InModesAndTranstitions
					| "{" PropertyAssociationList "}"
					| InModesAndTranstitions
					| NoneStatement
			syntax InModesAndTranstitions ::= "not define"
			syntax PropertyAssociationList ::= PropertyAssociation | PropertyAssociation PropertyAssociationList
				syntax PropertyAssociation ::= "not define"


	syntax ConnectionRefinement ::= ConnectionIdentifier ":" "refined ""to " SomeRefinements PropertyInMode ";"
		syntax SomeRefinements ::=  FeatureConnectionRefinement 
					|  PortConnectionRefinement
					|  ParameterConnectionRefinement
					|  AccessConnectionRefinement
					|  FeatureGroupConnectionRefinement
	
	syntax NoneStatement ::= "none" | " "
 
endmodule

module CONNECT 

	imports CONNECT-SYNTAX

endmodule