module FEATURESHAREACCESS-SYNTAX
	syntax Feature ::= AbstractPortGroupAccessParameter ArrayDimensionFeatrueContrained ";"	
		syntax ArrayDimensionFeatrueContrained ::= ArrayDimension 
							| "{" FeatrueContrainedPropertyAssociation "}"
							| ArrayDimension "{" FeatrueContrainedPropertyAssociation /* + */ "}"
							| NoneStatement

		syntax AbstractPortGroupAccessParameter ::= AbstractFeatureSpec
							 |  PortSpec
							 |  FeatureGroupSpec
							 |  SubcomponentAccessSpec
							 |  ParameterSpec
			syntax AbstractFeatureSpec ::= "not define"
			syntax PortSpec ::= "not define"
			syntax FeatureGroupSpec ::= "not define"
			syntax SubcomponentAccessSpec ::= SubprogramAccessSpec 
							| SubprogramGroupAccessSpec 
							| DataAccessSpec
							| BusAccessSpec
				syntax SubprogramAccessSpec ::= "not define"
				syntax SubprogramGroupAccessSpec ::= "not define"
				syntax DataAccessSpec ::= "not define"
				syntax BusAccessSpec ::= "not define"
			syntax ParameterSpec ::= "not define"
		syntax ArrayDimension ::= "not define"
		syntax FeatrueContrainedPropertyAssociation ::= FeatrueContrainedPropertyAssociation FeatrueContrainedPropertyAssociation // +
		syntax FeatrueContrainedPropertyAssociation ::= "not define"

	syntax FeatureRefinement ::= AbstractFeatureRefinement ArrayDimensionFeatrueContrained
				  |  ProtRefinement ArrayDimensionFeatrueContrained
				  |  FeatureGroupRefinement ArrayDimensionFeatrueContrained
				  |  SubcomponentAccessRefinement ArrayDimensionFeatrueContrained
				  |  ParameterRefinement ArrayDimensionFeatrueContrained
		syntax AbstractFeatureRefinement ::= "not define"
		syntax ProtRefinement ::=  "not define"
		syntax FeatureGroupRefinement ::= "not define"
		syntax ParameterRefinement ::= "not define"
		syntax SubcomponentAccessRefinement ::= SubprogramAccessRefinement
						     |  SubprogramGroupAccessRefinement
						     |  DataAccessRefinement
						     |  BusAccessRefinement
			syntax SubprogramAccessRefinement ::= "not define"
			syntax SubprogramGroupAccessRefinement ::= "not define"
			syntax DataAccessRefinement ::= "not define"
			syntax BusAccessRefinement ::= "not define"
		
endmodule

module FEATURESHAREACCESS

	imports FEATURESHAREACCESS-SYNTAX
endmodule