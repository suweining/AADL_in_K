module PROPERTYCONSTANT-SYNTAX

	syntax PropertyConstant ::= SigleValuedPropertyConstant | MultiValuedPropertyConstant 
		syntax SigleValuedPropertyConstant ::= PropertyConstantIdentifier ":" "constant " PropertyTypeDesigntor "=>" ConstantPropertyExpression ";"
			syntax PropertyConstantIdentifier ::= "not define"
			syntax PropertyTypeDesigntor ::= "not define"
			syntax ConstantPropertyExpression ::= "not define"
		syntax MultiValuedPropertyConstant ::= PropertyConstantIdentifier ":" "constant " ListOf  PropertyTypeDesigntor "=>" ConstantPropertyListValue ";"
			syntax ConstantPropertyListValue ::= "not define"

		syntax UniquePropertyConstantIdentifier ::= PropertyConstantIdentifier | PropertySetIdentifier "::" PropertyConstantIdentifier
			syntax PropertyConstantIdentifier ::= "not define"
			syntax PropertySetIdentifier ::= "not define"
endmodule

module PROPERTYCONSTANT

	imports  PROPERTYCONSTANT-SYNTAX
endmodule