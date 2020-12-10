(* This file was auto-generated based on "parser.messages". *)

(* Please note that the function [message] can raise [Not_found]. *)

let message s =
  match s with
  | 0 -> "expected a law heading, a law article, some text of the declaration of a master file\n"
  | 1 ->
      "expected an inclusion of a Catala file, since this file is a master file which can only \
       contain inclusions of other Catala files\n"
  | 7 ->
      "expected another inclusion of a Catala file, since this file is a master file which can \
       only contain inclusions of other Catala files\n"
  | 317 -> "expected some text, another heading or a law article\n"
  | 322 -> "expected a code block, a metadata block, more law text or a heading\n"
  | 329 -> "expected a code block, a metadata block, more law text or a heading\n"
  | 324 -> "expected a declaration or a scope use\n"
  | 21 -> "expected the name of the scope you want to use\n"
  | 23 -> "expected a scope use precondition or a colon\n"
  | 24 -> "expected an expression which will act as the condition\n"
  | 25 -> "expected the first component of the date literal\n"
  | 27 -> "expected a \"/\"\n"
  | 28 -> "expected the second component of the date literal\n"
  | 29 -> "expected a \"/\"\n"
  | 30 -> "expected the third component of the date literal\n"
  | 31 -> "expected a delimiter to finish the date literal\n"
  | 56 -> "expected an operator to compose the expression on the left with\n"
  | 62 -> "expected an enum constructor to test if the expression on the left\n"
  | 61 -> "expected an operator to compose the expression on the left with\n"
  | 117 -> "expected an expression on the right side of the sum or minus operator\n"
  | 145 -> "expected an expression on the right side of the logical operator\n"
  | 64 -> "expected an expression for the argument of this function call\n"
  | 105 -> "expected an expression on the right side of the comparison operator\n"
  | 126 -> "expected an expression on the right side of the multiplication or division operator\n"
  | 119 -> "expected an operator to compose the expression on the left\n"
  | 155 -> "expected an expression standing for the set you want to test for membership\n"
  | 57 -> "expected an identifier standing for a struct field or a subscope name\n"
  | 197 -> "expected a colon after the scope use precondition\n"
  | 59 -> "expected a constructor, to get the payload of this enum case\n"
  | 129 -> "expected the \"for\" keyword to spell the aggregation\n"
  | 130 -> "expected an identifier for the aggregation bound variable\n"
  | 131 -> "expected the \"in\" keyword\n"
  | 132 ->
      "expected an expression standing for the set over which to compute the aggregation operation\n"
  | 134 -> "expected the \"for\" keyword and the expression to compute the aggregate\n"
  | 135 -> "expected an expression to compute its aggregation over the set\n"
  | 139 -> "expected an expression to take the negation of\n"
  | 53 -> "expected an expression to take the opposite of\n"
  | 42 -> "expected an expression to match with\n"
  | 181 -> "expected a pattern matching case\n"
  | 182 -> "expected the name of the constructor for the enum case in the pattern matching\n"
  | 188 ->
      "expected a binding for the constructor payload, or a colon and the matching case expression\n"
  | 189 -> "expected an identifier for this enum case binding\n"
  | 185 -> "expected a colon and then the expression for this matching case\n"
  | 191 -> "expected a colon or a binding for the enum constructor payload\n"
  | 186 -> "expected an expression for this pattern matching case\n"
  | 183 ->
      "expected another match case or the rest of the expression since the previous match case is \
       complete\n"
  | 180 -> "expected the \"with patter\" keyword to complete the pattern matching expression\n"
  | 43 -> "expected an expression inside the parenthesis\n"
  | 178 -> "unmatched parenthesis that should have been closed by here\n"
  | 65 -> "expected a unit for this literal, or a valid operator to complete the expression \n"
  | 45 -> "expected an expression for the test of the conditional\n"
  | 174 -> "expected an expression the for the \"then\" branch of the conditiona\n"
  | 175 ->
      "expected the \"else\" branch of this conditional expression as the \"then\" branch is \
       complete\n"
  | 176 -> "expected an expression for the \"else\" branch of this conditional construction\n"
  | 173 -> "expected the \"then\" keyword as the conditional expression is complete\n"
  | 47 ->
      "expected the \"all\" keyword to mean the \"for all\" construction of the universal test\n"
  | 159 -> "expected an identifier for the bound variable of the universal test\n"
  | 160 -> "expected the \"in\" keyword for the rest of the universal test\n"
  | 161 -> "expected the expression designating the set on which to perform the universal test\n"
  | 162 -> "expected the \"we have\" keyword for this universal test\n"
  | 158 -> "expected an expression for the universal test\n"
  | 167 -> "expected an identifier that will designate the existential witness for the test\n"
  | 168 -> "expected the \"in\" keyword to continue this existential test\n"
  | 169 -> "expected an expression that designates the set subject to the existential test\n"
  | 170 -> "expected a keyword to form the \"such that\" expression for the existential test\n"
  | 171 -> "expected a keyword to complete the \"such that\" construction\n"
  | 165 -> "expected an expression for the existential test\n"
  | 74 ->
      "expected a payload for the enum case constructor, or the rest of the expression (with an \
       operator ?)\n"
  | 149 -> "expected an expression for the content of this enum case\n"
  | 150 ->
      "the expression for the content of the enum case is already well-formed, expected an \
       operator to form a bigger expression\n"
  | 52 -> "expected the keyword following cardinal to compute the number of elements in a set\n"
  | 198 -> "expected a scope use item: a rule, definition or assertion\n"
  | 199 -> "expected the name of the variable subject to the rule\n"
  | 218 ->
      "expected a condition or a consequence for this rule, or the rest of the variable qualified \
       name\n"
  | 213 -> "expected a condition or a consequence for this rule\n"
  | 204 -> "expected filled or not filled for a rule consequence\n"
  | 214 -> "expected the name of the parameter for this dependent variable \n"
  | 201 -> "expected the expression of the rule\n"
  | 207 -> "expected the filled keyword the this rule \n"
  | 219 -> "expected a struct field or a sub-scope context item after the dot\n"
  | 221 -> "expected the name of the variable you want to define\n"
  | 222 -> "expected the defined as keyword to introduce the definition of this variable\n"
  | 224 -> "expected an expression for the consequence of this definition under condition\n"
  | 223 ->
      "expected a expression for defining this function, introduced by the defined as keyword\n"
  | 225 -> "expected an expression for the definition\n"
  | 228 -> "expected an expression that shoud be asserted during execution\n"
  | 229 -> "expecting the name of the varying variable\n"
  | 231 -> "the variable varies with an expression that was expected here\n"
  | 232 -> "expected an indication about the variation sense of the variable, or a new scope item\n"
  | 230 -> "expected an indication about what this variable varies with\n"
  | 202 -> "expected an expression for this condition\n"
  | 210 -> "expected a consequence for this definition under condition\n"
  | 241 -> "expected an expression for this definition under condition\n"
  | 237 -> "expected the name of the variable that should be fixed\n"
  | 238 -> "expected the legislative text by which the value of the variable is fixed\n"
  | 239 -> "expected the legislative text by which the value of the variable is fixed\n"
  | 245 -> "expected a new scope use item \n"
  | 248 -> "expected the kind of the declaration (struct, scope or enum)\n"
  | 249 -> "expected the struct name\n"
  | 250 -> "expected a colon\n"
  | 251 -> "expected struct data or condition\n"
  | 252 -> "expected the name of this struct data \n"
  | 253 -> "expected the type of this struct data, introduced by the content keyword\n"
  | 254 -> "expected the type of this struct data\n"
  | 279 -> "expected the name of this struct condition\n"
  | 272 -> "expected a new struct data, or another declaration or scope use\n"
  | 273 -> "expected the type of the parameter of this struct data function\n"
  | 277 -> "expected a new struct data, or another declaration or scope use\n"
  | 266 -> "expected a new struct data, or another declaration or scope use\n"
  | 269 -> "expected a new struct data, or another declaration or scope use\n"
  | 282 -> "expected the name of the scope you are declaring\n"
  | 283 -> "expected a colon followed by the list of context items of this scope\n"
  | 284 -> "expected a context item introduced by \"context\"\n"
  | 285 -> "expected the name of this new context item\n"
  | 286 -> "expected the kind of this context item: is it a condition, a sub-scope or a data?\n"
  | 287 -> "expected the name of the subscope for this context item\n"
  | 294 -> "expected the next context item, or another declaration or scope use\n"
  | 289 -> "expected the type of this context item\n"
  | 290 -> "expected the next context item or a dependency declaration for this item\n"
  | 292 -> "expected the next context item or a dependency declaration for this item\n"
  | 297 -> "expected the name of your enum\n"
  | 298 -> "expected a colon\n"
  | 299 -> "expected an enum case\n"
  | 300 -> "expected the name of an enum case \n"
  | 301 -> "expected a payload for your enum case, or another case or declaration \n"
  | 302 -> "expected a content type\n"
  | 307 -> "expected another enum case, or a new declaration or scope use\n"
  | 17 -> "expected a declaration or a scope use\n"
  | 19 -> "expected a declaration or a scope use\n"
  | 313 ->
      "should not happen, please file an issue at https://github.com/CatalaLang/catala/issues\n"
  | _ -> raise Not_found
