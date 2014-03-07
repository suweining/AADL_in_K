module SUBPROGRAMGROUPACCESS-SYNTAX
// 8.4
	syntax SubprogramAccessSpec ::= SubprogramAccessIdentifier ":" "provides ""subprogram ""access " SubprogramAccessSpecAssocTmp
				     |  SubprogramAccessIdentifier ":" "requires ""subprogram ""access " SubprogramAccessSpecAssocTmp
		syntax SubprogramAccessIdentifier ::= "not define"
		syntax SubprogramAccessSpecAssocTmp ::= SubprogramUniqueComponentClassifierReference
						     |  ProtoTypeIdentifier
						     |	NoneStatement
			syntax ProtoTypeIdentifier ::= "not define"
			syntax SubprogramUniqueComponentClassifierReference ::= "not define"


	syntax SubprogramAccessRefinement ::= SubprogramAccessIdentifier ":" "refined " "to ""provides ""subprogram ""access " SubprogramAccessSpecAssocTmp
					   |  SubprogramAccessIdentifier ":" "refined " "to ""requires ""subprogram ""access " SubprogramAccessSpecAssocTmp
	


	syntax SubprogramGroupAccessSpec ::= SubprogramGroupAccessIdentifier ":" "provides ""subprogram ""group ""access " SubprogramAccessSpecAssocTmp
				          |  SubprogramGroupAccessIdentifier ":" "requires ""subprogram ""group ""access " SubprogramAccessSpecAssocTmp
			syntax SubprogramGroupAccessIdentifier ::= "not define"

	syntax SubprogramGroupAccessRefinement ::= SubprogramGroupAccessIdentifier ":" "refined " "to ""provides ""subprogram ""group ""access " SubprogramAccessSpecAssocTmp
						|  SubprogramGroupAccessIdentifier ":" "refined " "to ""requires ""subprogram ""group ""access " SubprogramAccessSpecAssocTmp


endmodule

module SUBPROGRAMGROUPACCESS

	imports SUBPROGRAMGROUPACCESS-SYNTAX
endmodule