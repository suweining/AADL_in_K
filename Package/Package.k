module PACKAGE-SYNTAX

	syntax PackageSpec ::= "package" PackageName PackageDecls "end" PackageName ";"
			    |  "package" PackageName PackageDecls PropertyDecls "end" PackageName ";"
		syntax PackageName ::= Id | Id"."Id | Id"_"Id
		syntax PackageName ::= PackageIdentifier "::" PackageName
			syntax PackageIdentifier ::= "not define"
		syntax PackageDecls ::= "public" PackageDeclations 
					| "public" PackageDeclations "private" PackageDeclations
					| "private" PackageDeclations
			syntax PackageDeclations ::= NameVisibilityDeclaration AADLDeclaration
				syntax NameVisibilityDeclaration ::= ImportDeclaration | AliasDeclaration
					syntax ImportDeclaration ::= "with" PackageName ImportDeclarationPlus | "with" PropertySetIdentifier ImportDeclarationPlus
						syntax ImportDeclarationPlus ::= "," PackageName | "," PropertySetIdentifier
						syntax ImportDeclarationPlus ::= ImportDeclarationPlus ImportDeclarationPlus
						//	syntax PackageName ::= Id | Id.Id |Id"_"Id
							syntax PropertySetIdentifier ::= "not define"
					syntax AliasDeclaration ::= DefiningIdentifier "renames package" PackageName ";"
								  | DefiningIdentifier "renames" ComponentCategory UniqueCompentTypeReference ";"
								  | DefiningIdentifier "renames" "feartur""group" UniqueFeatureGroupTypeReference ";"
								  | "renames" ComponentCategory UniqueCompentTypeReference ";"
								  | "renames" "feartur group" UniqueFeatureGroupTypeReference ";"
								  | "renames" PackageName "::" "all" ";"
						syntax DefiningIdentifier ::= Id | Id"."Id | Id"_"Id
						syntax ComponentCategory ::= "not define"
						syntax UniqueCompentTypeReference ::=  "not define"
						syntax UniqueFeatureGroupTypeReference ::= "not define"

				syntax AADLDeclaration ::= ClassifierDeclaration | AnnexLibrary
					syntax ClassifierDeclaration ::= ComponentClassifierDeclaration | FeatureGroupClassifierDeclaration
						syntax ComponentClassifierDeclaration ::= ComponentType 
											| ComponentTypeExtension
											| ComponentImplementation
											| ComponentImplementationExtension
							syntax ComponentType ::= "not define"
							syntax ComponentTypeExtension ::= "not define"
							syntax ComponentImplementation ::= "not define"
							syntax ComponentImplementationExtension ::= "not define"
						syntax FeatureGroupClassifierDeclaration ::= FeatureGroupType | FeatureGroupTypeExtension
							syntax FeatureGroupType ::= "not define"
							syntax FeatureGroupTypeExtension ::= "not define"
					syntax AnnexLibrary ::= "not define"

		syntax PropertyDecls ::= PropertyAssociation | NoneStatement
			syntax NoneStatement ::= "none"
			syntax PropertyAssociation ::= "not define"

endmodule

module PACKAGE

	imports  PACKAGE-SYNTAX

endmodule