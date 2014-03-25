module PACKAGE-SYNTAX
// 4.2  check
	syntax PackageSpec ::= "package" PackageName PackageDecls "end" PackageName ";"
			    |  "package" PackageName PackageDecls PropertyDecls "end" PackageName ";"
		syntax PackageName ::= Id | Id"."Id | Id"_"Id
		syntax PackageName ::= PackageIdentifier "::" PackageName
			syntax PackageIdentifier ::= Id | Id"."Id | Id"_"Id
		syntax PackageDecls ::= "public" PackageDeclations 
					| "public" PackageDeclations "private" PackageDeclations
					| "private" PackageDeclations
			syntax PackageDeclations ::= NameVisibilityDeclarationList AADLDeclarationList
				syntax NameVisibilityDeclarationList ::= NoneStatement 
								      |  NameVisibilityDeclaration
								      |  NameVisibilityDeclaration NameVisibilityDeclarationList
				syntax AADLDeclarationList ::= NoneStatement
							    |  AADLDeclaration
							    |  AADLDeclaration AADLDeclarationList
				syntax NameVisibilityDeclaration ::= ImportDeclaration | AliasDeclaration
					syntax ImportDeclaration ::= "with" PackageName ImportDeclarationPlus | "with" PropertySetIdentifier ImportDeclarationPlus
						syntax ImportDeclarationPlus ::= "," PackageName | "," PropertySetIdentifier
						syntax ImportDeclarationPlus ::= ImportDeclarationPlus ImportDeclarationPlus
							syntax PropertySetIdentifier ::= Id | Id"."Id | Id"_"Id
					syntax AliasDeclaration ::= DefiningIdentifier "renames package" PackageName ";"
								  | DefiningIdentifier "renames" ComponentCategory UniqueComponentTypeReference ";"
								  | DefiningIdentifier "renames" "feartur""group" UniqueFeatureGroupTypeReference ";"
								  | "renames" ComponentCategory UniqueComponentTypeReference ";"
								  | "renames" "feartur group" UniqueFeatureGroupTypeReference ";"
								  | "renames" PackageName "::" "all" ";"
						syntax DefiningIdentifier ::= Id | Id"."Id | Id"_"Id
					//	syntax UniqueCompenentTypeReference ::=  "not define"

				syntax AADLDeclaration ::= ClassifierDeclaration | AnnexLibrary
					syntax ClassifierDeclaration ::= ComponentClassifierDeclaration | FeatureGroupClassifierDeclaration
						syntax ComponentClassifierDeclaration ::= ComponentType 
											| ComponentTypeExtension
											| ComponentImplementation
											| ComponentImplementationExtension
						syntax FeatureGroupClassifierDeclaration ::= FeatureGroupType | FeatureGroupTypeExtension

		syntax PropertyDecls ::= PropertyAssociation | NoneStatement
			syntax NoneStatement ::= "none" | " "

endmodule