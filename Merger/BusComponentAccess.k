module  BUSCOMPONENTACCESS-SYNTAX
// 8.7
	syntax BusAccessSpec ::= DataComponentAccessIdentifier ":" BusComponentAccessSamePart
//		syntax DataComponentAccessIdentifier ::= "not define"
		syntax BusComponentAccessSamePart ::= "provides " "bus ""access " BusUniqueProtoType
						   |  "requires " "bus ""access " BusUniqueProtoType
			syntax BusUniqueProtoType ::= BusUniqueComponentClassifierReference | ProtoTypeIdentifier | NoneStatement
				syntax BusUniqueComponentClassifierReference ::= "not define"
//				syntax ProtoTypeIdentifier ::= "not define"


	syntax BusAccessRefinement ::= DataComponentAccessIdentifier ": " "refined ""to "BusComponentAccessSamePart
//	syntax NoneStatement ::= "none" | " "	

endmodule

module BUSCOMPONENTACCESS

	imports BUSCOMPONENTACCESS-SYNTAX

endmodule