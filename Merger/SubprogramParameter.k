module SUBPROGRAMPARAMETER-SYNTAX
	syntax ParameterSpec ::= ParameterIdentifier ":" SubprogramParameterSamePart 
		syntax ParameterIdentifier ::= "not define"
		syntax SubprogramParameterSamePart ::= InOut "parameter " DataUniqureProtoType
			syntax InOut ::= "in " | "out " | "in ""out "
			syntax DataUniqureProtoType ::= DataUniqueComponentClassifierReference | ProtoTypeIdentifier | NoneStatement
//				syntax DataUniqueComponentClassifierReference ::= "not define"
//				syntax ProtoTypeIdentifier ::= "not define"
	syntax ParameterRefinement ::= ParameterIdentifier ":" "refined ""to " SubprogramParameterSamePart
	
//	syntax NoneStatement ::= "none" | " "
endmodule

module SUBPROGRAMPARAMETER

	imports SUBPROGRAMPARAMETER-SYNTAX 

endmodule