module ANNEXSUBCLAUSELIBRART-SYNTAX
// 4.8
	syntax AnnexSubclause ::= "annex" AnnexIdentifier AnnexSubclauseAssocDefination ";"
		syntax AnnexIdentifier ::= Id | Id"."Id | Id"_"Id
		syntax AnnexSubclauseAssocDefination ::= "{**" AnnexSpecificLanguageConstructs "**}" // **} i do not know
						      |  NoneStatement
						      |  "{**" AnnexSpecificLanguageConstructs "**}" InModes
						      |  InModes
			syntax AnnexSpecificLanguageConstructs ::= "not define"
			syntax InModes ::= "not define"
			syntax NoneStatement ::= "none" | " "
	
	syntax AnnexLibrary ::= "annex" AnnexIdentifier AnnexLibraryAssocDefination ";"
		syntax AnnexIdentifier ::= Id | Id"."Id | Id"_"Id
		syntax AnnexLibraryAssocDefination ::= "{**" AnnexSpecificReusableConstructs "**}"
						    | NoneStatement
						    | "{**" AnnexSpecificReusableConstructs "**}" InModes
						    | InModes
			syntax AnnexSpecificReusableConstructs ::= "not define"
endmodul

module ANNEXSUBCLAUSELIBRART
	
	imports ANNEXSUBCLAUSELIBRART-SYNTAX

endmodule