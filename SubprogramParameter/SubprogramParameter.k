module SUBPROGRAMPARAMETER-SYNTAX
	syntax ParameterSpec ::= ParameterIdentifier ":" SubprogramParameterSamePart 
		syntax ParameterIdentifier ::= "not define"
		syntax SubprogramParameterSamePart ::= InOut "parameter " DataUniqureProtoType
			syntax InOut ::= "in " | "out " | "in ""out "
			syntax DataUniqureProtoType ::= DataUniqueComponentClassifierReference | ProtoTypeIdentifier | NoneStatement
	
	syntax ParameterRefinement ::= ParameterIdentifier ":" "refined ""to " SubprogramParameterSamePart

endmodule

module SUBPROGRAMPARAMETER

	imports SUBPROGRAMPARAMETER-SYNTAX 

endmodule