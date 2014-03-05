module PROTOTYPE-SYNTAX
	syntax ProtoType ::= ProtoTypeIdentifier ":" ProtoTypeAssocDefination ";"
		syntax ProtoTypeIdentifier ::= Id | Id"."Id | Id "_" Id
		syntax ProtoTypeAssocDefination ::= ComponentProtoType ProtoTypePropertyAssociation 
						  | FeatureGroupTypeProtoType ProtoTypePropertyAssociation
						  | FeatureProtoType ProtoTypePropertyAssociation 
			syntax ProtoTypePropertyAssociation ::= NoneStatement
			syntax ProtoTypePropertyAssociation ::= "not define"
			syntax ComponentProtoType ::= ComponentCategory UniqueComponentClassifierReference // [[]] ?
				syntax ComponentCategory ::=  "define in ComponentType.k"
				syntax UniqueComponentClassifierReference ::= "not define"
				syntax UniqueComponentClassifierReference ::= NoneStatement // because of '[...]'
			syntax FeatureGroupTypeProtoType ::= "feature" "group" | "feature" "group" UniqueFeatureGroupTypeReference
				syntax UniqueFeatureGroupTypeReference ::= "not define"
			syntax FeatureProtoType ::= "in" "feature" UniqueComponentClassifierReference
						  | "out" "feature" UniqueComponentClassifierReference
						  | "feature" UniqueComponentClassifierReference
				syntax UniqueComponentClassifierReference ::= "not define"
				syntax UniqueComponentClassifierReference ::= NoneStatement // because of '[...]' ....this is not right
	syntax ProtoTypeRefinement ::= ProtoTypeIdentifier ":" "refined " "to" ProtoTypeAssocDefination ";"
	syntax ProtoTypeBindings ::= ProtoTypeBinding
	syntax ProtoTypeBindings ::= ProtoTypeBindings "," ProtoTypeBindings
		syntax ProtoTypeBinding ::= ProtoTypeIdentifier "=>" ComponentProtoTypeActual
					 |  ProtoTypeIdentifier "=>" ComponentProtoTypeActualList
					 |  ProtoTypeIdentifier "=>" FeatureGroupTypeProtoTypeActual
					 |  ProtoTypeIdentifier "=>" FeatureProtoTypeActual
			syntax ComponentProtoTypeActual ::= ComponentCategory UniqueComponentClassifierReference ProtoTypeBindings
							  | ComponentCategory UniqueComponentClassifierReference
							  | ComponentCategory ProtoTypeIdentifier
			syntax ComponentProtoTypeActualList ::= ComponentProtoTypeActual
			syntax ComponentProtoTypeActualList ::= ComponentProtoTypeActualList "," ComponentProtoTypeActualList
			syntax FeatureGroupTypeProtoTypeActual ::= "feature " "group" UniqueFeatureGroupTypeReference
								|   "feature " "group" UniqueFeatureGroupTypeReference ProtoTypeBindings
								|   "feature " "group" FeatureGroupTypeProtoTypeIdentifier
				syntax FeatureGroupTypeProtoTypeIdentifier ::= "not define"
			syntax FeatureProtoTypeActual ::= InOut EventData "port"
							| "requires" BusDataSubprogram "access"
							| InOut EventData "port" UniqueComponentClassifierReference
							| "requires" BusDataSubprogram "access" UniqueComponentClassifierReference
							| "in" "feature" FeatureProtoTypeIdentifier
							| "out" "feature" FeatureProtoTypeIdentifier
				syntax InOut ::= "in" | "out" | "in " "out"
				syntax EventData ::= "event" | "data" | "event " "data"
				syntax BusDataSubprogram ::= "bus" | "data" | "subprogram " "group" | "subprogram"
				syntax BusDataSubprogram ::= "not define"
endmodule

module PROTOTYPE

	imports PROTOTYPE-SYNTAX
endmodule