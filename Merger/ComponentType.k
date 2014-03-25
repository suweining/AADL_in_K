module COMPONENTTYPE-SYNTAX
// 4.3 check
	syntax ComponentType ::= ComponentCategory ComponentTypeIdentifier ComponentAssocDefination "end" ComponentTypeIdentifier ";"
		syntax ComponentCategory ::= AbstractComponentCategory | SoftwareCategory | ExecutionPlateformCategory | CompositeCategory
			syntax AbstractComponentCategory ::= "abstract"
			syntax SoftwareCategory ::= "data" | "subprogram" | "subprogram" "group" | "thread" | "thread" "group" | "process"
			syntax ExecutionPlateformCategory ::= "memory" | "processor" | "bus" | "device" | "virtual" "processor" | "virtrual bus" 
			syntax CompositeCategory ::= "system"
		syntax ComponentTypeIdentifier ::= Id | Id "." Id | Id "_" Id
		syntax ComponentAssocDefination ::= ComponentAssocDefination ComponentAssocDefination
		syntax ComponentAssocDefination ::= "prototypes" ProtoType | "prototypes" NoneStatement
						  | "features" Feature | "features" NoneStatement
						  | "flows" FlowSpec | "flows" NoneStatement
						  | ModesSubclause 
						  | RequiresModesSubclause
						  | "properties" ComponentTypePropertyAssociation
						  | "properties" ContainedPropertyAssociation
						  | "properties" NoneStatement
						  | AnnexSubclause 

			// syntax RequiresModesSubclause ::= "not define"
			syntax ComponentTypePropertyAssociation ::=  "not define"
			syntax AnnexSubclause ::= AnnexSubclause AnnexSubclause
			syntax AnnexSubclause ::= NoneStatement
		
	syntax ComponentTypeExtension ::= ComponentCategory ComponentTypeIdentifier "extends" UniqueComponentTypeReference  ComponentAssocDefination "end" ComponentTypeIdentifier ";"
					| ComponentCategory ComponentTypeIdentifier "extends" UniqueComponentTypeReference  ProtoTypeBindings ComponentAssocDefination "end" ComponentTypeIdentifier ";"

		syntax UniqueComponentTypeReference ::= PackageName "::" ComponentTypeIdentifier |  ComponentTypeIdentifier
		syntax PackageName ::= "from Package.k"
	


endmodule