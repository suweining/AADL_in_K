module MODESANDMODETRANSITION-SYNTAX

	syntax ModesSubclause ::= "modes" "(" ModeTransitionList ")"
		syntax ModeTransitionList ::= NoneStatement
					   |  Mode
					   |  ModeTransition
					   |  ModeTransitionList ModeTransitionList
			syntax Mode ::=  ModeIdentifier ":" "initial" "mode" "{" ModePropertyAssociationList "}"";"
				     |   ModeIdentifier ":"  "mode" "{" ModePropertyAssociationList "}"";"
				     |   ModeIdentifier ":" "initial" "mode"";"
				     |   ModeIdentifier ":" "mode" ";"
				syntax ModeIdentifier ::= "not define"
				syntax ModePropertyAssociationList ::= ModePropertyAssociation | ModePropertyAssociation ModePropertyAssociationList
					syntax ModePropertyAssociation ::= "not define"

	syntax RequirsModesSubclause ::= "requirs""modes" "(" ModeList")"
		syntax ModeList ::= NoneStatement
				 |  Mode
				 |  Mode ModeList
	
	syntax ModeTransition ::= ModeTransitionIdnetifier ":" SourceModeTrigger "-[" ModeTransitionList "]->" DestinationModeIdentifier ModeTransitionPropertyAssociationList ";"
				| ModeTransitionIdnetifier ":" SourceModeTrigger "-[" ModeTransitionList "]->" DestinationModeIdentifier ";"
				| SourceModeTrigger "-[" ModeTransitionList "]->" DestinationModeIdentifier ModeTransitionPropertyAssociationList ";"
				| SourceModeTrigger "-[" ModeTransitionList "]->" DestinationModeIdentifier ";"  
		syntax ModeTransitionIdnetifier ::= "not define"
		syntax SourceModeTrigger ::= UniquePortIdentifier 
					  |  "self""."EventSourceIdentifier
					  |  "processor""."PortIdentifier
			syntax UniquePortIdentifier ::= PortIdentifier | SubcomponentFeatureGroupOrSubprogramCallIdentifier "." PortIdentifier
				syntax SubcomponentFeatureGroupOrSubprogramCallIdentifier ::= "not define"
			syntax EventSourceIdentifier ::= "not define"
//			syntax PortIdentifier ::= "not define"
		syntax DestinationModeIdentifier ::= "not define"
		syntax ModeTransitionPropertyAssociationList ::=  ModeTransitionPropertyAssociation |  ModeTransitionPropertyAssociation  ModeTransitionPropertyAssociationList
			syntax ModeTransitionPropertyAssociation ::= "not define"

	syntax InModes ::= "in" " modes ""(" ModeIdentifierList ")"
		syntax ModeIdentifierList ::= ModeIdentifier | ModeIdentifier "," ModeIdentifierList

	syntax ComponentInModes ::= "in ""modes " "("ModeNameList")"
		syntax ModeNameList ::= ModeName | ModeName "," ModeNameList
			syntax ModeName ::= LocalModeIdentifier | LocalModeIdentifier "=>" SubcomponentModeIdentifier
				syntax LocalModeIdentifier ::= "not define"
				syntax SubcomponentModeIdentifier ::= "not define"
				
	syntax InModesAndTransitions ::= "in ""modes ""(" ModeOrTransitionList")"
		syntax ModeOrTransitionList ::= ModeOrTransition | ModeOrTransition "," ModeOrTransitionList 
			syntax ModeOrTransition ::= "not define"
	
//	syntax NoneStatement ::= "not define"
endmodule

module MODESANDMODETRANSITION

	imports MODESANDMODETRANSITION-SYNTAX

endmodule