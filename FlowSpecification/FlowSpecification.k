module FOWSPECIFICATION-SYNTAX

	syntax FlowSpec ::= FlowSourceSpec | FlowSinkSpec | FlowPathSpec 
		syntax FlowSourceSpec ::=  FlowIdentifier ":" "flow " "source " OutFlowFeatureIdentifier FlowSourceSpecAssocDefination ";"
			syntax FlowIdentifier ::= "not define"
			syntax OutFlowFeatureIdentifier ::= "not define"
			syntax FlowSourceSpecAssocDefination ::= "{" PropertyAssociationList "}" InModes ";"
							      | "{"PropertyAssociationList "}" ";"
							      | InModes ";"
				syntax InModes ::= "not define"
				syntax PropertyAssociationList ::= PropertyAssociation | PropertyAssociation PropertyAssociationList
					syntax PropertyAssociation ::= "not define"
		syntax FlowSinkSpec ::= FlowIdentifier ":" "flow ""sink " InFlowFeatureIdentifier FlowSinkSpecAssocDefination ";"
			syntax InFlowFeatureIdentifier ::= "not define"
			syntax FlowSinkSpecAssocDefination ::= FlowSourceSpecAssocDefination
		
		syntax FlowPathSpec ::= FlowIdentifier ":" "flow " "path " InFlowFeatureIdentifier "->" OutFlowFeatureIdentifier  FlowPathSpecAssocDefination ";"
			syntax FlowPathSpecAssocDefination ::= FlowSourceSpecAssocDefination

	syntax FlowSpecRefinement ::= FlowSourceSpecRefinement | FlowSinkSpecRefinement | FlowPathSpecRefinement
		syntax FlowSourceSpecRefinement ::= FlowIdentifier ":" "refined ""to ""flow ""source " FlowSourceSpecRefinementAssocDefination ";"
			syntax FlowSourceSpecRefinementAssocDefination ::= "{" PropertyAssociationList "}" InModesAndTransitions 
									|  "{" PropertyAssociationList "}" 
									|   InModesAndTransitions
				syntax InModesAndTransitions ::= "not define"
		syntax FlowSinkSpecRefinement ::=  FlowIdentifier ":" "refined ""to ""flow ""sink "  FlowSinkSpecRefinementAssocDefination ";"
			syntax FlowSinkSpecRefinementAssocDefination ::= FlowSourceSpecRefinementAssocDefination

		syntax FlowPathSpecRefinement ::=   FlowIdentifier ":" "refined ""to ""flow ""path "  FlowPathSpecRefinementAssocDefination ";"
			syntax FlowPathSpecRefinementAssocDefination ::= FlowSourceSpecRefinementAssocDefination
		
		syntax FlowFeatureIdentifer ::= FeatureIdentifier | FeatureGroupIdentifier
					     |  FeatureGroupIdentifier "." FeatureIdentifier
					     |  FeatureGroupIdentifier "." FeatureGroupIdentifier
			syntax FeatureIdentifier ::= "not define"
			syntax FeatureGroupIdentifier ::= "not define"


endmodule

module  FOWSPECIFICATION

	imports FOWSPECIFICATION-SYNTAX

endmodule