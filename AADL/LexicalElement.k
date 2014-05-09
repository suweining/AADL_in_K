module LEXICALELEMENT-SYNTAX
// 15
	syntax Character ::= GraphicCharacter | FormatEffector | OtherControlCharacter
		syntax GraphicCharacter ::= IdentifierLetter | Digit | SpaceCharacter | SpecialCharacter
			syntax IdentifierLetter ::= NODEF 
			syntax Digit ::= NODEF
			syntax SpaceCharacter ::= NODEF
			syntax SpecialCharacter ::= NODEF
		syntax FormatEffector ::= NODEF
		syntax OtherControlCharacter ::= "not define "
	syntax Identifier ::= IdentifierLeter LetterOrDigitList 
		syntax IdentifierLeter ::= NODEF
		syntax LetterOrDigitList ::= NoneStatement
					  |  LetterOrDigit
					  |  UnderLine LetterOrDigit
					  |  LetterOrDigitList LetterOrDigitList
			syntax LetterOrDigit ::= IdentifierLetter | Digit
			syntax UnderLine ::= NODEF
	syntax NumericLiteral ::= IntegerLiteral | RealLiteral
		syntax IntegerLiteral ::= DecimalIntegerLiteral | BasedIntegerLiteral
			syntax DecimalIntegerLiteral ::= Numeral | Numeral PrositiveExponent
				syntax Numeral ::= Digit | Digit  DigitList
					syntax DigitList ::= NoneStatement 
							  | Digit 
							  | UnderLine Digit 
							  | DigitList DigitList 
				syntax PrositiveExponent ::= "E" Numberal | "E" "+" Numberal
					syntax Numberal ::=NoneStatement |  "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9" | "0"
							  | Numberal Numberal 
			syntax BasedIntegerLiteral ::= Base "#" BasedNumberal "#" 
						    |  Base "#" BasedNumberal "#" PrositiveExponent
				syntax Base ::= Digit | Digit Digit
				syntax BasedNumberal ::= ExtendedDigit ExtendedDigitList
					syntax ExtendedDigitList ::= NoneStatement
								  |  ExtendedDigit
								  |  UnderLine ExtendedDigit
								  |  ExtendedDigitList ExtendedDigitList
					syntax ExtendedDigit ::= Digit 
		syntax RealLiteral ::= DecimalRealLiteral
			syntax DecimalRealLiteral ::= Numeral "." Numeral 
						   | Numeral"." Numeral Exponent
				syntax Exponent ::= "E" Numberal | "E" "+" Numberal

		syntax StringLiteral ::= "\"" StringElementList "\""
			syntax StringElementList ::= NoneStatement
						  |  StringElement
						  |  StringElementList StringElementList
				syntax StringElement ::= "\"" "\"" | NonQuotationMarkGraphicCharacter
					syntax NonQuotationMarkGraphicCharacter ::= NODEF

		syntax Comment ::= "-"NonEndOfLineCharacterList
			syntax NonEndOfLineCharacterList ::= NoneStatement
							  |  NonEndOfLineCharacter
							  |  NonEndOfLineCharacterList NonEndOfLineCharacterList
				syntax NonEndOfLineCharacter ::= NODEF
endmodule

module  LEXICALELEMENT
	
	imports LEXICALELEMENT-SYNTAX

endmodule