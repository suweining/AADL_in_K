module COMPONENTIMPLEMENTATION-SYNTAX
// 4.4 check
	syntax ComponentImplementation ::= ComponentCategory "implementation" ComponentImplementationName ComponentImplementationAssocDefination "end" ComponentImplementationName ";"
		syntax ComponentImplementationName ::= ComponentTypeIdentifier"."ComponentImplementationIdentifier
		syntax ComponentImplementationIdentifier ::= Id | Id"."Id | Id"_"Id
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
			syntax ProtoType ::= ProtoType ProtoType  // "+"
			syntax Subcomponent ::= Subcomponent Subcomponent
			syntax SubprogramCallSequence ::= SubprogramCallSequence SubprogramCallSequence
			syntax Connection ::= Connection Connection
			syntax FlowImplementation ::= FlowImplementation FlowImplementation
			syntax EndToEndFlowSpec ::= EndToEndFlowSpec EndToEndFlowSpec
			syntax PropertyAssociation ::= PropertyAssociation PropertyAssociation
			syntax ContainedPropertyAssociation ::= ContainedPropertyAssociation ContainedPropertyAssociation

	syntax ComponentImplementationExtension ::= ComponentCategory "implementation" ComponentImplementionName "extends" UniqueComponentImplementReference ComponentImplementationAssocDefination "end" ComponentImplementionName ";"
		syntax 	ComponentImplementionName ::= Id | Id "." Id | Id "_" Id
		syntax  UniqueComponentImplementReference ::= ComponentImplementName | PackageName "::" ComponentImplementName
		syntax  ComponentImplementName ::=  Id | Id "." Id | Id "_" Id


endmodule