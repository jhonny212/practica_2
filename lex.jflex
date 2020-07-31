
import java_cup.runtime.Symbol;
%%
%class decimal
%cup
%cupdebug
%line
%column
%full
%char
%public
/*Identifiers*/


%{
    private Symbol symbol(int type, Object value) {
        return new Symbol(type, yyline+1, yycolumn+1, value);
    }
%}
%%
<YYINITIAL>{
("1")|("0")                                            {return symbol(sym.num,new Integer(yytext()));}
(".")                                                  {return symbol(sym.dat,new String(yytext()));}
("\n")|("\t")|(" ")                                    {}
.                                                      {return symbol(sym.ERR,new String(yytext()));}

}

