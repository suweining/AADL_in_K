module PROPERTYCONSTANT-SYNTAX
// 11.1.3 check
	syntax PropertyConstant ::= SigleValuedPropertyConstant | MultiValuedPropertyConstant 
		syntax SigleValuedPropertyConstant ::= PropertyConstantIdentifier ":" "constant " PropertyTypeDesigntor "=>" ConstantPropertyExpression ";"
			syntax PropertyConstantIdentifier ::= Id | Id "." Id | Id "_" Id
			syntax PropertyTypeDesigntor ::= "not define"
			syntax ConstantPropertyExpression ::= "not define"
		syntax MultiValuedPropertyConstant ::= PropertyConstantIdentifier ":" "constant " ListOf  PropertyTypeDesigntor "=>" ConstantPropertyListValue ";"
			syntax ConstantPropertyListValue ::= "not define"
		syntax UniquePropertyConstantIdentifier ::= PropertyConstantIdentifier | PropertySetIdentifier "::" PropertyConstantIdentifier
endmodule

module PROPERTYCONSTANT

	imports  PROPERTYCONSTANT-SYNTAX
endmodule