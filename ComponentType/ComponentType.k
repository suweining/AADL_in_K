module AADL-COMPONET-TYPE-SYNTAX

	syntax ComponentType ::= ComponentCategory ComponentTypeIdentifier ComponentAssocDefination "end" ComponentTypeIdentifier;
		syntax ComponentCategory ::= "not define"
		syntax ComponentTypeIdentifier ::= Id | Id "." Id | Id "_" Id
		syntax ComponentAssocDefination ::= ComponentAssocDefination ComponentAssocDefination
		syntax ComponentAssocDefination ::= "prototypes" ProtoType | "prototypes" NoneStatement
						  | "features" 
			


end AADL-COMPONET-TYPE-SYNTAX

module COMPONETTYPE


end COMPONETTYPE;
