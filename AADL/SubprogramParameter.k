module SUBPROGRAMPARAMETER-SYNTAX
// 8.5 check
	syntax ParameterSpec ::= ParameterIdentifier ":" SubprogramParameterSamePart 
		syntax ParameterIdentifier ::= Id | Id "." Id | Id "_" Id
		syntax SubprogramParameterSamePart ::= InOut "parameter " DataUniqureProtoType
			syntax InOut ::= "in " | "out " | "in ""out "
			syntax DataUniqureProtoType ::= DataUniqueComponentClassifierReference | ProtoTypeIdentifier | NoneStatement

	syntax ParameterRefinement ::= ParameterIdentifier ":" "refined ""to " SubprogramParameterSamePart
	
endmodule

module SUBPROGRAMPARAMETER

	imports SUBPROGRAMPARAMETER-SYNTAX 

endmodule