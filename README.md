# static-site-generator
This is a golang project converting markdown to html
I started working on this becauze I wanted to create something similar to compiler.
(For me this is also a good practice getting used to vim, wanna be more productive!)

This project is work-in-progress.


# BNF (at the moment)
```
<html> ::= <html> | <h1> | <h2> | <h3> | <ul> | <p> | <br>

<h1> ::= "# " <rowtext> <newline>
<h2> ::= "## " <rowtext> <newline>
<h3> ::= "### " <rowtext> <newline>

<ul> ::= <li>
<li> ::= <li> <li> | <li> <ul>
<li> ::= "- " <rowtext> <newline> | "* " <rowtext> <newline>
<p> ::= <rowtext> <newline>
<br> ::= <newline>

<i> ::= "*" <rowtext> "*"| "_" <rowtext> "_" 
<b> ::= "**" <rowtext> "**" | "__" <rowtext> "__" 
<rowtext> :: = <text> | <b> | <i> | <rowtext> 


<text> ::= <character> | <text> 
<character> ::= <letter> | <digit> | <symbol>

<letter> ::= "A" | "B" | "C" | "D" | "E" | "F" 
            | "G" | "H" | "I" | "J" | "K" | "L"
             | "M" | "N" | "O" | "P" | "Q" | "R"
              | "S" | "T" | "U" | "V" | "W" | "X" | "Y" | "Z"
               | "a" | "b" | "c" | "d" | "e" | "f"
                | "g" | "h" | "i" | "j" | "k" | "l"
                 | "m" | "n" | "o" | "p" | "q" | "r" 
                  | "s" | "t" | "u" | "v" | "w" | "x" | "y" | "z"
<digit> ::= "0" | "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9"
<symbol> ::= "#" | "*" | "-" | "[" | "]" | "(" | ")"  
<newline> ::= "\n" | "\r\n"
```

