module PROPERTYEXPRESSION-SYNTAX

	syntax PropertyExpression ::= BooleanTerm 
				   |  RealTerm
				   |  IntegerTerm
				   |  StringTerm
				   |  EnumerationTerm
				   |  UnitTerm
				   |  RealRangeTerm
				   |  IntegerRangeTerm
				   |  PropertyTerm
				   |  ComponentClassifierTerm 
				   |  ReferenceTerm
				   |  RecordTerm
				   |  ComputedTerm
		syntax BooleanTerm ::= BooleanValue
				    |  BooleanPropertyConstantTerm
				    |  "not "BooleanTerm
				    |  BooleanTerm "and"BooleanTerm
				    |  BooleanTerm "or"BooleanTerm
			syntax BooleanValue ::= "true" | "false"
			syntax BooleanPropertyConstantTerm ::= "not define"
		syntax RealTerm::= SignedAadlrealOrConstant
			syntax SignedAadlrealOrConstant ::= "not define"
		syntax IntegerTerm ::= SignedAadlintegerOrConstant
			syntax SignedAadlintegerOrConstant ::= "not define" 
		syntax StringTerm ::= StringLiteral | StringPropertyConstantTerm
			syntax StringLiteral ::= "not define"
			syntax StringPropertyConstantTerm ::=  "not define"
		syntax EnumerationTerm ::= EnumerationIdentifier | EnumerationPropertyConstantTerm
			syntax EnumerationIdentifier ::= "not define"
			syntax EnumerationPropertyConstantTerm ::= "not define" 
		syntax UnitTerm ::= UnitIdentifier | UnitPropertyConstantTerm
//			syntax UnitIdentifier ::= "not define"
			syntax UnitPropertyConstantTerm ::= "not define"
		syntax IntegerRangeTerm ::= IntegerTerm ".." IntegerTerm 
				      |  IntegerTerm ".." IntegerTerm "delta" IntegerTerm
				      |  IntegerRangePropertyConstantTerm
			syntax IntegerRangePropertyConstantTerm ::= "not define"
		syntax RealRangeTerm ::= RealTerm ".." RealTerm
					 |  RealTerm ".." RealTerm "delta" RealTerm
					 |  RealRangePropertyConstantTerm
			syntax RealRangePropertyConstantTerm ::= "not define"
		syntax PropertyTerm ::= PropertyNameIdentifier
				      | PropertySetIdentifier "::" PropertyNameIdentifier
//			syntax PropertyNameIdentifier ::= "not define"
//			syntax PropertySetIdentifier ::= "not define"
		syntax ComponentClassifierTerm ::= "classifier" "(" UniqueComponentTypeReference ")"
						|  "classifier" "(" UniqueComponentImplementationReference ")"
			syntax UniqueComponentTypeReference ::= "not define"
//			syntax UniqueComponentImplementationReference ::= "not define"
		syntax ReferenceTerm ::= "reference" "(" ContainedModelElementPath ")"
			syntax ContainedModelElementPath ::= "not define"
		syntax RecordTerm ::= "(" RecordFieldIdentifierIdentifierList ")"
			syntax RecordFieldIdentifierIdentifierList ::= RecordFieldIdentifierIdentifier "=>" PropertyValue ";"
								    |  RecordFieldIdentifierIdentifier "=>" PropertyValue ";" RecordFieldIdentifierIdentifierList 
				syntax RecordFieldIdentifierIdentifier ::= "not define"
				syntax PropertyValue ::= "not define"
		syntax ComputedTerm ::= "compute" "(" FunctionIdentifier ")"
			syntax FunctionIdentifier ::= "not define"
	syntax PropertyConstantTerm ::= PropertyConstantIdentifier 
				     |  PropertySetIdentifier "::" PropertyConstantIdentifier
//		syntax PropertyConstantIdentifier ::= "not define"
				 

endmodule

module PROPERTYEXPRESSION

	imports PROPERTYEXPRESSION-SYNTAX
endmodule