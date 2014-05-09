module SUBPROGRAMGROUPACCESS-SYNTAX
// 8.4 check
	syntax SubprogramAccessSpec ::= SubprogramAccessIdentifier ":" "provides ""subprogram ""access " SubprogramAccessSpecAssocTmp
				     |  SubprogramAccessIdentifier ":" "requires ""subprogram ""access " SubprogramAccessSpecAssocTmp
		syntax SubprogramAccessIdentifier ::= Id | Id "." Id | Id "_" Id
		syntax SubprogramAccessSpecAssocTmp ::= SubprogramUniqueComponentClassifierReference
						     |  ProtoTypeIdentifier
						     |	NoneStatement



	syntax SubprogramAccessRefinement ::= SubprogramAccessIdentifier ":" "refined " "to ""provides ""subprogram ""access " SubprogramAccessSpecAssocTmp
					   |  SubprogramAccessIdentifier ":" "refined " "to ""requires ""subprogram ""access " SubprogramAccessSpecAssocTmp
	


	syntax SubprogramGroupAccessSpec ::= SubprogramGroupAccessIdentifier ":" "provides ""subprogram ""group ""access " SubprogramAccessSpecAssocTmp
				          |  SubprogramGroupAccessIdentifier ":" "requires ""subprogram ""group ""access " SubprogramAccessSpecAssocTmp
			syntax SubprogramGroupAccessIdentifier ::= Id | Id "." Id | Id "_" Id

	syntax SubprogramGroupAccessRefinement ::= SubprogramGroupAccessIdentifier ":" "refined " "to ""provides ""subprogram ""group ""access " SubprogramAccessSpecAssocTmp
						|  SubprogramGroupAccessIdentifier ":" "refined " "to ""requires ""subprogram ""group ""access " SubprogramAccessSpecAssocTmp

endmodule