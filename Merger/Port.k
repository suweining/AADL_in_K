module PORT-SYNTAX
// 8.3 check
	syntax PortSpec ::= PortIdentifer ":" "in" PortType
			  | PortIdentifer ":" "out" PortType
			  | PortIdentifer ":" "in " "out" PortType
	syntax PortRefinement ::= PortIdentifer ":" "refined " "to " "in" PortType
				|  PortIdentifer ":" "refined " "to " "out" PortType
				|  PortIdentifer ":" "refined " "to " "in " "out"  PortType
		syntax PortIdentifer ::= Id | Id "." Id | Id "_" Id
		syntax PortType ::= "data " "port" DataUniqueComponentClassifierReference
				 |  "data " "port" DataComponentProtoTypeIdentifier
				 |  "event " "data " "port" DataUniqueComponentClassifierReference
				 |  "event " "data " "port" DataComponentProtoTypeIdentifier
				 |  "event " "port"
			syntax DataUniqueComponentClassifierReference ::= "not define"
			syntax DataComponentProtoTypeIdentifier ::= Id | Id "." Id | Id "_" Id

endmodule