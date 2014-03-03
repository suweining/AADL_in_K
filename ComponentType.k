module COMPONENTTYPE
 // 4.3

 syntax ComponentType ::=
		ComponentCategory ComponentTypeIdentifier ComponentAssocDef "end" ComponentTypeIdentifier ";"
 syntax ComponentType ::= ComponentType ComponentType
 syntax ComponentTypeIdentifier ::= Identifier
 syntax ComponentCategory ::=	"thread" | 
				"thread group" | 
				"data" | 
				"subprogram" | 
				"memory" | 
				"processor" | 
				"bus" | 
				"device" |
				"system" |
				"process"

 syntax ComponentAssocDef ::=	ProtoTypeDefList |
				FeatureDefList |
				FlowDefList |
				ProperTypeDefList |
				ModeDefList |
				AnnexSubclauseDef |
				NoneStatement
 syntax ComponentAssocDef ::=	ComponentAssocDef ComponentAssocDef

 syntax ProtoTypeDefList ::=	"prototypes" ProtoTypeDef |"prototypes" NoneStatement 
 syntax ProtoTypeDef ::=	ProtoTypeDefIdentifier ":" ProtoTypeFiness ProtoTypeDefIdentifier ";" // ProtoTypeFiness are "data" in the example  and ProtoTypeFinessIdentity is null
 syntax ProtoTypeDef ::=	ProtoTypeDef ProtoTypeDef
  syntax ProtoTypeDefIdentifier ::=	Identifier 
 syntax ProtoTypeFiness ::=	"data" | "out data port prototype"// need extension

 // syntax ProtoTypeFinessIdentifier ::=   Identifier 


 syntax FeatureDefList ::=	"features" FeatureDef | "features" NoneStatement
 syntax FeatureDef ::=	FeatureDefIdentifier ":" FeatureDefFiness FeatureDefIdentifier ";"
 syntax FeatureDef ::= FeatureDef FeatureDef 
 syntax FeatureDefIdentifier ::=	Identifier
 syntax FeatureDefFiness ::=	"out data port"|"requires data access" | "in data port" | "out data port prototype" | "in data port prototype"//need extension

 syntax FlowDefList ::=	"flows" FlowSpecDef | "flows" NoneStatement
 syntax FlowSpecDef ::=	FlowSpecDefIdentifier ":" FlowSpecDefFiness FlowSpecDefIdentifier ";"
 syntax FlowSpecDef ::= FlowSpecDef FlowSpecDef
 syntax FlowSpecDefIdentifier ::= Identifier
 syntax FlowSpecDefFiness ::= "in port" | "out port"

 syntax ModeDefList ::=	ModesSubclause | RequirModeSubclause
 syntax ModesSubclause ::= NoneStatement // need add
 syntax RequirModeSubclause ::= NoneStatement // need add

 syntax ProperTypeDefList ::= 	"properties" ComponentTypePropertyDef | "properties" NoneStatement
 syntax ComponentTypePropertyDef ::=	CompenentTypePropertyAssoc | ContainedPropertyAssoc | ComponentTypePropertyDef
 syntax CompenentTypePropertyAssoc ::=	NoneStatement // need add
 syntax ContainedPropertyAssoc ::=	NoneStatement // need add
 syntax ComponentTypePropertyDef ::=	NoneStatement // need add

 syntax AnnexSubDefList ::= NoneStatement

           
 syntax AnnexSubclauseDef  ::=	NoneStatement // need add

 syntax NoneStatement ::= " "
 syntax Identifier ::= Id | Id"_"Id | Id"."Id | " "

endmodule