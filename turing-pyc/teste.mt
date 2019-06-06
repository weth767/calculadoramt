;--------------------------------------------------------------
;  Teste do simulador de MT
;
;  Objetivo: copia uma frase substituindo vogais por inteiros.
;            a=1, e=2, i=3, o=4, u=5
;
;  Entrada: uma frase no alfabeto [a-zA-Z] terminada com .
;  Saida:   segue a frase clonada, com vogais substituidas
;
;  ATENCAO: o programa nao trata entradas invalidas!!
;
;  Exemplo:
;      ENTRADA: Este exemplo funciona.
;      SAIDA:   Este exemplo funciona.2st2 2x2mpl4 f5nc34n1.
;--------------------------------------------------------------


;------------------------
;   INICIA: cabecote no 1o car da entrada
;   TERMINA: cabecote no ultimo car da entrada
;
bloco main 1   
   1 acertaBrancos 2
   2 copiar 5      ; copia car
   5 * -- # i 10   ; marca #
   10 clonaCar 15  ; vai, cola, volta
   15 colar 20     ; restaura car
   20 . -- . i 30  ; loop termina no .
   20 * -- * d 2   ; continua loop
   30 restauraBrancos 35
   35 * -- * i aceite
fim 

;------------------------
;   INICIA: cabecote no 1o car da entrada
;   TERMINA: cabecote no 1o car da entrada
; >> 
;   substitui branco por ~ 
;
bloco acertaBrancos 1
   1 . -- * i 5
   1 _ -- ~ d 1
   1 * -- * d 1
   5 * -- * e 10
   10 _ -- * d retorne
   10 * -- * e 10
fim 

;------------------------
;   INICIA: cabecote no 1o .
;   TERMINA: cabecote no 1o .
; >> 
;   substitui ~ por branco 
;
bloco restauraBrancos 1
   1 . -- . d 2
   2 . -- * e 5   ; restaura lado dir
   2 ~ -- _ d 2
   2 * -- * d 2
   5 . -- . e 6   ; volta pro 1o .
   5 * -- * e 5  
   6 _ -- * d 8   ; restaura lado esq
   6 ~ -- _ e 6
   6 * -- * e 6
   8 . -- . i retorne
   8 * -- * d 8
fim 
  
;------------------------
;   INICIA: cabecote no #, car na 2a fita
;   TERMINA: cabecote no #, car na 2a fita
; >> 
;   move ate branco onde colar car da 2a fita
;   move ate . e depois ate branco
;   cola car, volta pro #
;
bloco clonaCar 1
   1 [.] -- * d 5 ; procura branco
   1 [*] -- * i 3 ; precisa . antes
   ; procura .
   3 . -- * d 5    
   3 * -- * d 3
   ; procura branco depois do .
   5 _ -- * i 10
   5 * -- * d 5
   ; chegou no local da copia
   10 fazCopia 15
   15 voltaRef 20
   20 # -- # i retorne
fim 

;------------------------
;   INICIA: cabecote no branco onde colar, car na 2a fita
;   TERMINA: cabecote no car colado
; >> 
;   cola alterando vogais
;
bloco fazCopia 1
   1 [a] -- 1 i 10
   1 [e] -- 2 i 10
   1 [i] -- 3 i 10
   1 [o] -- 4 i 10
   1 [u] -- 5 i 10
   1 [A] -- 1 i 10
   1 [E] -- 2 i 10
   1 [I] -- 3 i 10
   1 [O] -- 4 i 10
   1 [U] -- 5 i 10
   1 colar 10
   10 * -- * i retorne
fim 

;------------------------
;   INICIA: cabecote no car colado, car na 2a fita
;   TERMINA: cabecote no #, car na 2a fita
; >> 
;   move ate #
;
bloco voltaRef 1
   1 # -- * i retorne
   1 * -- * e 1
fim 
