module PROPERTUASSOCIATION-SYNTAX

	syntax PropertyAssociation ::= UniquePropertyIdentifier "=>" "constant" Assignment InBinding ";"
				    |  UniquePropertyIdentifier "=>" "constant" Assignment  ";"
				    |  UniquePropertyIdentifier "=>"  Assignment InBinding ";"
				    |  UniquePropertyIdentifier "+=>" "constant" Assignment InBinding ";"
				    |  UniquePropertyIdentifier "+=>" "constant" Assignment  ";"
				    |  UniquePropertyIdentifier "+=>"  Assignment InBinding ";"
		syntax UniquePropertyIdentifier ::=  PropertySetIdentifier "::" PropertyNameIdentifier 
			syntax PropertySetIdentifier ::= "not define"
			syntax PropertyNameIdentifier ::= "not define"
		syntax Assignment ::= PropertyValue | ModalPropertyValue
			syntax PropertyValue ::= SinglePropertyValue  |  PropertyListValue
				syntax SinglePropertyValue ::= PropertyExpression
					syntax PropertyExpression ::= "not define"
				syntax PropertyListValue ::=  NoneStatement  // funny
							  | PropertyExpression
							  | PropertyListValue "," PropertyListValue

			syntax ModalPropertyValue ::= PropertyValue InModes |  PropertyValue InModes "," ModalPropertyValue 
				syntax InModes ::= "not define"
		syntax InBinding ::= "in ""binding " PlatformClassifierReferenceList 
			syntax PlatformClassifierReferenceList ::= PlatformClassifierReference | PlatformClassifierReference "," PlatformClassifierReferenceList
				syntax PlatformClassifierReference ::= ProcessorUniqueComponentClassifierReference
								    |  VirtualProcessorUniqueComponentClassifierReference
								    |  BusUniqueComponentClassifierReference
								    |  VirtualBusUniqueComponentClassifierReference
								    |  MemoryUniqueComponentClassifierReference
					syntax ProcessorUniqueComponentClassifierReference ::= "not define"
					syntax VirtualProcessorUniqueComponentClassifierReference ::= "not define"
					syntax BusUniqueComponentClassifierReference ::= "not define"
					syntax VirtualBusUniqueComponentClassifierReference ::= "not define"
					syntax MemoryUniqueComponentClassifierReference ::= "not define"
	syntax ContainedPropertyAssociation ::= UniquePropertyIdentifier "=>" "constant" Assignment "applies ""to " ContainedModelElementPathList InBinding ";"
					     |  UniquePropertyIdentifier "=>"  Assignment "applies ""to " ContainedModelElementPathList InBinding ";"
		syntax ContainedModelElementPathList ::= ContainedModelElementPath | ContainedModelElementPath "," ContainedModelElementPathList
			syntax ContainedModelElementPath ::= AnnexPath 
							  |  ContainedModelElementList AnnexPath
							  |  ContainedModelElementList
				syntax AnnexPath ::= "annex " AnnexIdentifier "{**" AnnexSpecificPath "**}"
					syntax AnnexIdentifier ::= "not define"
					syntax AnnexSpecificPath ::= "defined by annex"
				syntax ContainedModelElementList ::= ContainedModelElement | ContainedModelElement "." ContainedModelElementList
					syntax ContainedModelElement ::=  NamedElementIdentifier | NamedElementArraySelectionName
						syntax NamedElementIdentifier ::= "not define"
						syntax NamedElementArraySelectionName ::= "not define"
endmodule

module PROPERTUASSOCIATION
	
	imports PROPERTUASSOCIATION-SYNTAX

endmodule