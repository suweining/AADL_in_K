module PROPERTYSET-SYNTAX

	syntax PropertySet ::= "property ""set " PropertySetIdentifier "is "PropertySetAssocDefination "end "PropertySetIdentifier";"
		syntax PropertySetIdentifier ::= "not define"
		syntax PropertySetAssocDefination ::= ImportDeclarationList PropertyTypeDeclarationList 
						   |  ImportDeclarationList PropertyDefinitionDeclarationList
						   |  ImportDeclarationList PropertyConstantList
			syntax ImportDeclarationList ::= NoneStatement 
						      |  ImportDeclaration
						      |  ImportDeclarationList ImportDeclarationList
			syntax PropertyTypeDeclarationList ::= NoneStatement
							     | PropertyTypeDeclaration
							     | PropertyTypeDeclarationList PropertyTypeDeclarationList
			syntax PropertyDefinitionDeclarationList ::= NoneStatement
								   | PropertyDefinitionDeclaration
								   | PropertyDefinitionDeclarationList PropertyDefinitionDeclarationList
			syntax PropertyConstantList ::= NoneStatement
						     |  PropertyConstant
						     |  PropertyConstantList PropertyConstantList
				syntax ImportDeclaration ::= "not define"
				syntax PropertyTypeDeclaration ::= "not define"
				syntax PropertyDefinitionDeclaration ::= "not define"
				syntax PropertyConstant ::= "not define"
endmodule

module PROPERTYSET

	imports  PROPERTYSET-SYNTAX
endmodule