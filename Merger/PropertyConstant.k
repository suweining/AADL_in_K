module PROPERTYCONSTANT-SYNTAX

	syntax PropertyConstant ::= SigleValuedPropertyConstant | MultiValuedPropertyConstant 
		syntax SigleValuedPropertyConstant ::= PropertyConstantIdentifier ":" "constant " PropertyTypeDesigntor "=>" ConstantPropertyExpression ";"
			syntax PropertyConstantIdentifier ::= "not define"
			syntax PropertyTypeDesigntor ::= "not define"
			syntax ConstantPropertyExpression ::= "not define"
		syntax MultiValuedPropertyConstant ::= PropertyConstantIdentifier ":" "constant " ListOf  PropertyTypeDesigntor "=>" ConstantPropertyListValue ";"
			syntax ConstantPropertyListValue ::= "not define"
//			syntax ListOf ::= "list ""of " | "list ""of " ListOf
		syntax UniquePropertyConstantIdentifier ::= PropertyConstantIdentifier | PropertySetIdentifier "::" PropertyConstantIdentifier
//			syntax PropertySetIdentifier ::= "not define"
endmodule

module PROPERTYCONSTANT

	imports  PROPERTYCONSTANT-SYNTAX
endmodule