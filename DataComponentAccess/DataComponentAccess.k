module DATACOMPONENTACCESS-SYNTAX

	syntax DataAccessSpec ::= DataComponentAccessIdentifier ":" DataComponentAccessSamePart
		syntax DataComponentAccessIdentifier ::= "not define"
		syntax DataComponentAccessSamePart ::= "provides " "data ""access " DataUniqueProtoType
						    |  "requires " "data ""access " DataUniqueProtoType
			syntax DataUniqueProtoType ::= DataUniqueComponentClassifierReference | ProtoTypeIdentifier
				syntax DataUniqueComponentClassifierReference ::= "not define"
				syntax ProtoTypeIdentifier ::= "not define"

	syntax DataAccessRefinement ::= DataComponentAccessIdentifier ":" "refined ""to " DataComponentAccessSamePart
endmodule

module DATACOMPONENTACCESS

	imports DATACOMPONENTACCESS-SYNTAX
endmodule