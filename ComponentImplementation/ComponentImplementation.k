module COMPONENT-IMPLEMENTATION-SYNTAX
	syntax ComponentImplementation ::= ComponentCategory "implementation" ComponentImplementationName ComponentImplementationAssocDefination "end" ComponentImplementationName ";"
		syntax ComponentCategory ::= "define in ComponentType.k"
		syntax ComponentImplementationName ::= ComponentTypeIdentifier"."ComponentImplementationIdentifier
		syntax ComponentImplementationIdentifier ::= Id | Id"."Id | Id"_"Id
		syntax ComponentTypeIdentifier ::= "define in CompentType.k"
		syntax ComponentImplementationAssocDefination ::= ComponentImplementationAssocDefination ComponentImplementationAssocDefination
		syntax ComponentImplementationAssocDefination ::= ProtoTypeBindings 
								| "prototypes" ProtoType 
								| "prototypes" NoneStatement
								| "subcomponents" Subcomponent
								| "subcomponents" NoneStatement
								| "calls" SubprogramCallSequence
								| "calls" NoneStatement
								| "connections" Connection
								| "connections" NoneStatement
								| "flows" FlowImplementation
								| "flows" EndToEndFlowSpec
								| "flows" NoneStatement
								| ModesSubclause
								| "properties" PropertyAssociation
								| "properties" ContainedPropertyAssociation
								| "properties" NoneStatement
								| AnnexSubclause
			syntax ProtoTypeBindings ::= "not define"
			syntax ProtoType ::= ProtoType ProtoType  // "+"
			syntax ProtoType ::= "not define"
			syntax Subcomponent ::= Subcomponent Subcomponent
			syntax Subcomponent ::= "not define"
			syntax SubprogramCallSequence ::= SubprogramCallSequence SubprogramCallSequence
			syntax SubprogramCallSequence ::= "not define"
			syntax Connection ::= Connection Connection
			syntax Connection ::= "not define"
			syntax FlowImplementation ::= FlowImplementation FlowImplementation
			syntax FlowImplementation ::= "not define"
			syntax EndToEndFlowSpec ::= EndToEndFlowSpec EndToEndFlowSpec
			syntax EndToEndFlowSpec ::= "not define"
			syntax ModesSubclause ::= "not define"
			syntax PropertyAssociation ::= PropertyAssociation PropertyAssociation
			syntax PropertyAssociation ::= "not define"
			syntax ContainedPropertyAssociation ::= ContainedPropertyAssociation ContainedPropertyAssociation
			syntax ContainedPropertyAssociation ::= "not define"
			syntax AnnexSubclause ::= "not define"
			syntax AnnexSubclause ::= AnnexSubclause AnnexSubclause
			syntax AnnexSubclause ::= NoneStatement
	syntax ComponetImplementExtention ::= ComponentCategory "implementation" ComponentImplementionName "extends" UniqueComponentImplementReference ComponentImplementationAssocDefination "end" ComponentImplementionName ";"
		syntax 	ComponentImplementionName ::= Id | Id "." Id | Id "_" Id
		syntax  UniqueComponentImplementReference ::= ComponentImplementName | PackageName "::" ComponentImplementName
		syntax  ComponentImplementName ::= "define in Packages.k"
	syntax NoneStatement ::= "none" | " "

endmodule

module COMPONENT-IMPLEMENTATION

	imports  COMPONENT-IMPLEMENTATION-SYNTAX

endmodule