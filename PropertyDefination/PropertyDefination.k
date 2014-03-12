module PROPERTYDEFINATION-SYNTAX

	syntax PropertyDefinationDeclaration ::= PropertyNameIdentifier ":" PropertyDefinationDeclarationAssocDefination ";"
		syntax PropertyNameIdentifier ::= "not define"
		syntax PropertyDefinationDeclarationAssocDefination ::= "inherit " SingleValuedProperty "applies ""to " PropertyOwnerList 
								     |  "inherit " MultiValuedProperty "applies ""to " PropertyOwnerList 
								     |   SingleValuedProperty "applies ""to " PropertyOwnerList 
								     |	 MultiValuedProperty "applies ""to " PropertyOwnerList 
			syntax SingleValuedProperty ::= PropertyTypeDesignator | PropertyTypeDesignator "=>" DefaultPropertyExpression
				syntax PropertyTypeDesignator ::= "not define"
				syntax DefaultPropertyExpression ::= "not define"
			syntax MultiValuedProperty ::= ListOf PropertyTypeDesignator "=>" DefaultPropertyListValue
						    | ListOf PropertyTypeDesignator 
				syntax ListOf ::= "list ""of " |  "list ""of " ListOf 
				syntax PropertyTypeDesignator ::= "not define"
				syntax DefaultPropertyListValue ::= "not define"
			syntax PropertyOwnerList ::= PropertyOwner | PropertyOwner "," PropertyOwnerList
				syntax PropertyOwner ::= NamedElementQualifiedMetaModelIdentifier | UniqueClassifierReference
					syntax NamedElementQualifiedMetaModelIdentifier ::= "not define"
					syntax UniqueClassifierReference ::= UniqueComponentClassifierReference | UniqueFeatureGroupTypeReference
						syntax UniqueComponentClassifierReference ::= "not define"
						syntax UniqueFeatureGroupTypeReference ::= "not define"


endmodule

module PROPERTYDEFINATION

	imports PROPERTYDEFINATION-SYNTAX
endmodule