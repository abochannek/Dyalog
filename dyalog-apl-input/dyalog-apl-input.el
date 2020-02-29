;;; dyalog-apl.el --- Quail package for inputting APL characters using the Dyalog RIDE key mappings  -*-coding: utf-8;-*-

;; Keywords: mule, multilingual, apl, input method

(require 'quail)

(quail-define-package
 "dyalog-apl-prefix" "Dyalog APL prefix" "⍞>" t
 "Dyalog APL RIDE input method with en_US layout and \\=`-key (backquote) prefix

   sequence | glyph | name
 -----------+-------+------------------------------ 
     \\=`[     |   ←   | left arrow
            |       |
      +     |   +   | plus
      -     |   -   | minus
     \\=`-     |   ×   | times
     \\=`=     |   ÷   | divide
      *     |   *   | star
     \\=`*     |   ⍟   | log
     \\=`+     |   ⌹   | domino
     \\=`o     |   ○   | circle
      !     |   !   | exclamation mark
     \\=`q     |   ?   | question mark
            |       |
     \\=`m     |   \\=|   | stile 
     \\=`s     |   ⌈   | upstile
     \\=`d     |   ⌊   | downstile
     \\=`b     |   ⊥   | up tack
     \\=`n     |   ⊤   | down tack
     \\=`|     |   ⊣   | left tack
     \\=`\\     |   ⊢   | right tack

     \\=`5     |   =   | equal
     \\=`8     |   ≠   | not equal
     \\=`4     |   ≤   | less than or equal to
     \\=`3     |   <   | less than
     \\=`7     |   >   | greater than
     \\=`6     |   ≥   | greater than or equal to
     \\=`:     |   ≡   | equal underbar
     \\=`\"     |   ≢   | equal underbar slash
            |       |
     \\=`9     |   ∨   | logical or
     \\=`0     |   ∧   | logical and
     \\=`)     |   ⍲   | logical nand
     \\=`(     |   ⍱   | logical nor
            |       |
     \\=`y     |   ↑   | up arrow
     \\=`u     |   ↓   | down arrow
     \\=`z     |   ⊂   | left shoe
     \\=`x     |   ⊃   | right shoe
     \\=`Z     |   ⊆   | left shoe underbar
     \\=`L     |   ⌷   | squad
     \\=`$     |   ⍋   | grade up
     \\=`#     |   ⍒   | grade down
            |       |
     \\=`i     |   ⍳   | iota
     \\=`I     |   ⍸   | iota underbar
     \\=`e     |   ∊   | epsilon
     \\=`E     |   ⍷   | epsilon underbar
     \\=`c     |   ∩   | up shoe
     \\=`v     |   ∪   | down shoe
     \\=`t     |   ~   | tilde
            |       |
      /     |   /   | slash
      \\     |   \\   | backslash
     \\=`/     |   ⌿   | slash bar
     \\=`.     |   ⍀   | backslash bar
            |       |
      ,     |   ,   | comma
     \\=`<     |   ⍪   | comma bar
     \\=`r     |   ⍴   | rho
     \\=`%     |   ⌽   | circle stile
     \\=`&     |   ⊖   | circle bar
     \\=`^     |   ⍉   | circle backslash
            |       |
     \\=`1     |   ¨   | diaeresis
     \\=`T     |   ⍨   | tilde diaeresis
     \\=`P     |   ⍣   | star diaeresis
      .     |   .   | dot
     \\=`j     |   ∘   | jot
     \\=`J     |   ⍤   | jot diaeresis
      @     |   @   | at
            |       |
     \\=`{     |   ⍞   | quote quad
     \\=`l     |   ⎕   | quad
     \\=`K     |   ⌸   | quad equal
     \\=`?     |   ⍠   | quad colon
     \\=`~     |   ⌺   | quad diamond
     \\=`!     |   ⌶   | i-beam
     \\=`;     |   ⍎   | hydrant
     \\=`'     |   ⍕   | thorn
            |       |
     \\=``     |   ⋄   | diamond
     \\=`,     |   ⍝   | lamp
     \\=`]     |   →   | right arrow
     \\=`w     |   ⍵   | omega
     \\=`a     |   ⍺   | alpha
     \\=`g     |   ∇   | del
      &     |   &   | ampersand
            |       |
     \\=`2     |   ¯   | high minus
     \\=`}     |   ⍬   | zilde

" nil t nil nil nil nil nil nil nil nil t)

(quail-define-rules
 ("``" ?\N{DIAMOND OPERATOR}) ; ⋄
 ("`1" ?\N{DIAERESIS}) ; ¨
 ("`2" ?\N{MACRON}) ; ¯
 ("`3" ?\N{LESS-THAN SIGN}) ; <
 ("`4" ?\N{LESS-THAN OR EQUAL TO}) ; ≤
 ("`5" ?\N{EQUALS SIGN}) ; 
 ("`6" ?\N{GREATER-THAN OR EQUAL TO}) ; ≥
 ("`7" ?\N{GREATER-THAN SIGN}) ; >
 ("`8" ?\N{NOT EQUAL TO}) ; ≠
 ("`9" ?\N{LOGICAL OR}) ; ∨
 ("`0" ?\N{LOGICAL AND}) ; ∧
 ("`-" ?\N{MULTIPLICATION SIGN}) ; ×
 ("`=" ?\N{DIVISION SIGN}) ; ÷
 ("`~" ?\N{APL FUNCTIONAL SYMBOL QUAD DIAMOND}) ; ⌺
 ("`!" ?\N{APL FUNCTIONAL SYMBOL I-BEAM}) ; ⌶
 ("`@" ?\N{APL FUNCTIONAL SYMBOL DEL TILDE}) ; ⍫
 ("`#" ?\N{APL FUNCTIONAL SYMBOL DEL STILE}) ; ⍒
 ("`$" ?\N{APL FUNCTIONAL SYMBOL DELTA STILE}) ; ⍋
 ("`%" ?\N{APL FUNCTIONAL SYMBOL CIRCLE STILE}) ; ⌽
 ("`^" ?\N{APL FUNCTIONAL SYMBOL CIRCLE BACKSLASH}) ; ⍉
 ("`&" ?\N{CIRCLED MINUS}) ; ⊖
 ("`*" ?\N{APL FUNCTIONAL SYMBOL CIRCLE STAR}) ; ⍟
 ("`(" ?\N{APL FUNCTIONAL SYMBOL DOWN CARET TILDE}) ; ⍱
 ("`)" ?\N{APL FUNCTIONAL SYMBOL UP CARET TILDE}) ; ⍲
 ("`_" ?\N{EXCLAMATION MARK}) ; !
 ("`+" ?\N{APL FUNCTIONAL SYMBOL QUAD DIVIDE}) ; ⌹
 ("`q" ?\N{QUESTION MARK}) ; ?
 ("`w" ?\N{APL FUNCTIONAL SYMBOL OMEGA}) ; ⍵
 ("`e" ?\N{SMALL ELEMENT OF}) ; ∊
 ("`r" ?\N{APL FUNCTIONAL SYMBOL RHO}) ; ⍴
 ("`t" ?\N{TILDE}) ; ~
 ("`y" ?\N{UPWARDS ARROW}) ; ↑
 ("`u" ?\N{DOWNWARDS ARROW}) ; ↓
 ("`i" ?\N{APL FUNCTIONAL SYMBOL IOTA}) ; ⍳
 ("`o" ?\N{WHITE CIRCLE}) ; ○
 ("`p" ?\N{ASTERISK}) ; 
 ("`[" ?\N{LEFTWARDS ARROW}) ; ←
 ("`]" ?\N{RIGHTWARDS ARROW}) ; →
 ("`\\" ?\N{RIGHT TACK}) ; ⊢
 ("`E" ?\N{APL FUNCTIONAL SYMBOL EPSILON UNDERBAR}) ; ⍷
 ("`T" ?\N{APL FUNCTIONAL SYMBOL TILDE DIAERESIS}) ; ⍨
 ("`I" ?\N{APL FUNCTIONAL SYMBOL IOTA UNDERBAR}) ; ⍸
 ("`O" ?\N{APL FUNCTIONAL SYMBOL CIRCLE DIAERESIS}) ; ⍥
 ("`P" ?\N{APL FUNCTIONAL SYMBOL STAR DIAERESIS}) ; ⍣
 ("`{" ?\N{APL FUNCTIONAL SYMBOL QUOTE QUAD}) ; ⍞
 ("`}" ?\N{APL FUNCTIONAL SYMBOL ZILDE}) ; ⍬
 ("`|" ?\N{LEFT TACK}) ; ⊣
 ("`a" ?\N{APL FUNCTIONAL SYMBOL ALPHA}) ; ⍺
 ("`s" ?\N{LEFT CEILING}) ; ⌈
 ("`d" ?\N{LEFT FLOOR}) ; ⌊
 ("`f" ?\N{LOW LINE}) ; _
 ("`g" ?\N{NABLA}) ; ∇
 ("`h" ?\N{INCREMENT}) ; ∆
 ("`j" ?\N{RING OPERATOR}) ; ∘
 ("`k" ?\N{APOSTROPHE}) ; '
 ("`l" ?\N{APL FUNCTIONAL SYMBOL QUAD}) ; ⎕
 ("`;" ?\N{APL FUNCTIONAL SYMBOL DOWN TACK JOT}) ; ⍎
 ("`'" ?\N{APL FUNCTIONAL SYMBOL UP TACK JOT}) ; ⍕
 ("`J" ?\N{APL FUNCTIONAL SYMBOL JOT DIAERESIS}) ; ⍤
 ("`K" ?\N{APL FUNCTIONAL SYMBOL QUAD EQUAL}) ; ⌸
 ("`L" ?\N{APL FUNCTIONAL SYMBOL SQUISH QUAD}) ; ⌷
 ("`:" ?\N{IDENTICAL TO}) ; ≡
 ("`\"" ?\N{NOT IDENTICAL TO}) ; ≢
 ("`z" ?\N{SUBSET OF}) ; ⊂
 ("`x" ?\N{SUPERSET OF}) ; ⊃
 ("`c" ?\N{INTERSECTION}) ; ∩
 ("`v" ?\N{UNION}) ; ∪
 ("`b" ?\N{UP TACK}) ; ⊥
 ("`n" ?\N{DOWN TACK}) ; ⊤
 ("`m" ?\N{VERTICAL LINE}) ; |
 ("`," ?\N{APL FUNCTIONAL SYMBOL UP SHOE JOT}) ; ⍝
 ("`." ?\N{APL FUNCTIONAL SYMBOL BACKSLASH BAR}) ; ⍀
 ("`/" ?\N{APL FUNCTIONAL SYMBOL SLASH BAR}) ; ⌿
 ("`Z" ?\N{SUBSET OF OR EQUAL TO}) ; ⊆
 ("`<" ?\N{APL FUNCTIONAL SYMBOL COMMA BAR}) ; ⍪
 ("`>" ?\N{APL FUNCTIONAL SYMBOL DELTA UNDERBAR}) ; ⍙
 ("`?" ?\N{APL FUNCTIONAL SYMBOL QUAD COLON}) ; ⍠
)

(provide 'dyalog-apl-input)
