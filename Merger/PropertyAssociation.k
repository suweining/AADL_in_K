module PROPERTYASSOCIATION-SYNTAX
// 11.3 check
	syntax PropertyAssociation ::= UniquePropertyIdentifier "=>" "constant" Assignment InBinding ";"
				    |  UniquePropertyIdentifier "=>" "constant" Assignment  ";"
				    |  UniquePropertyIdentifier "=>"  Assignment InBinding ";"
				    |  UniquePropertyIdentifier "+=>" "constant" Assignment InBinding ";"
				    |  UniquePropertyIdentifier "+=>" "constant" Assignment  ";"
				    |  UniquePropertyIdentifier "+=>"  Assignment InBinding ";"
		syntax UniquePropertyIdentifier ::=  PropertySetIdentifier "::" PropertyNameIdentifier 
		syntax Assignment ::= PropertyValue | ModalPropertyValue
			syntax PropertyValue ::= SinglePropertyValue  |  PropertyListValue
				syntax SinglePropertyValue ::= PropertyExpression
					syntax PropertyExpression ::= "not define"
				syntax PropertyListValue ::=  NoneStatement  // funny
							  | PropertyExpression
							  | PropertyListValue "," PropertyListValue

			syntax ModalPropertyValue ::= PropertyValue InModes |  PropertyValue InModes "," ModalPropertyValue 
		syntax InBinding ::= "in ""binding " PlatformClassifierReferenceList 
			syntax PlatformClassifierReferenceList ::= PlatformClassifierReference | PlatformClassifierReference "," PlatformClassifierReferenceList
				syntax PlatformClassifierReference ::= ProcessorUniqueComponentClassifierReference
								    |  VirtualProcessorUniqueComponentClassifierReference
								    |  BusUniqueComponentClassifierReference
								    |  VirtualBusUniqueComponentClassifierReference
								    |  MemoryUniqueComponentClassifierReference
					syntax ProcessorUniqueComponentClassifierReference ::= "not define"
					syntax VirtualProcessorUniqueComponentClassifierReference ::= "not define"
					syntax VirtualBusUniqueComponentClassifierReference ::= "not define"
					syntax MemoryUniqueComponentClassifierReference ::= "not define"
	syntax ContainedPropertyAssociation ::= UniquePropertyIdentifier "=>" "constant" Assignment "applies ""to " ContainedModelElementPathList InBinding ";"
					     |  UniquePropertyIdentifier "=>"  Assignment "applies ""to " ContainedModelElementPathList InBinding ";"
		syntax ContainedModelElementPathList ::= ContainedModelElementPath | ContainedModelElementPath "," ContainedModelElementPathList
			syntax ContainedModelElementPath ::= AnnexPath 
							  |  ContainedModelElementList AnnexPath
							  |  ContainedModelElementList
				syntax AnnexPath ::= "annex " AnnexIdentifier "{**" AnnexSpecificPath "**}"
					syntax AnnexSpecificPath ::= "defined by annex"
				syntax ContainedModelElementList ::= ContainedModelElement | ContainedModelElement "." ContainedModelElementList
					syntax ContainedModelElement ::=  NamedElementIdentifier | NamedElementArraySelectionName
						syntax NamedElementIdentifier ::= Id | Id "." Id | Id "_" Id
						syntax NamedElementArraySelectionName ::= "not define"
endmodule

module PROPERTYASSOCIATION
	
	imports PROPERTYASSOCIATION-SYNTAX

endmodule