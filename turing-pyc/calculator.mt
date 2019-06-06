;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;   No bloco main, inicia-se a aplicação, então a primeira coisa a se fazer é   ;
;   verificar qual operação está sendo feita, + para soma, - para sub e x para  ;
;   multiplicação.                                                               ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
bloco main 1
    ;primeiro, encontra a operação
    1 encontra_operacao 5
    5 + -- * i 10
    5 - -- * i 15
    5 x -- * i 20
    10 soma 11
    11 * -- * i aceite
    15 sub 16
    16 * -- * i aceite
    20 mult 21
    21 * -- * i aceite
fim

bloco soma 1
    1 move_inicio 2
    2 insere_depois_igual 3
    3 move_ate_igual 4
    4 proximo_algarismo 5
    5 copiar 6
    6 transforma_numero_letra 7
    7 move_fim 8
    8 soma_numero 9
    9 transforma_numero_letra 10
    10 * -- * i retorne
fim

bloco soma_numero 1
    ; verifica o que tem na segunda fita, para indicar como será feita a soma
    1 [0] -- * i 10
    1 [1] -- * i 20
    1 [2] -- * i 30
    1 [3] -- * i 40
    1 [4] -- * i 50
    1 [5] -- * i 60
    1 [6] -- * i 70
    1 [7] -- * i 80
    1 [8] -- * i 90
    1 [9] -- * i 100
    ;se tiver 0 na segunda fita
    10 0 -- 0 i 150
    10 1 -- 1 i 150
    10 2 -- 2 i 150
    10 3 -- 3 i 150
    10 4 -- 4 i 150
    10 5 -- 5 i 150
    10 6 -- 6 i 150
    10 7 -- 7 i 150
    10 8 -- 8 i 150
    10 9 -- 9 i 150
    ;se tiver 1 na segunda fita
    20 0 -- 1 i 150
    20 1 -- 2 i 150
    20 2 -- 3 i 150
    20 3 -- 4 i 150
    20 4 -- 5 i 150
    20 5 -- 6 i 150
    20 6 -- 7 i 150
    20 7 -- 8 i 150
    20 8 -- 9 i 150
    20 9 -- 0 i 200
    ;se tiver 2 na segunda fita
    30 0 -- 2 i 150
    30 1 -- 3 i 150
    30 2 -- 4 i 150
    30 3 -- 5 i 150
    30 4 -- 6 i 150
    30 5 -- 7 i 150
    30 6 -- 8 i 150
    30 7 -- 9 i 150
    30 8 -- 0 i 200
    30 9 -- 1 i 200
    ;se tiver 3 na segunda fita
    40 0 -- 3 i 150
    40 1 -- 4 i 150
    40 2 -- 5 i 150
    40 3 -- 6 i 150
    40 4 -- 7 i 150
    40 5 -- 8 i 150
    40 6 -- 9 i 150
    40 7 -- 0 i 200
    40 8 -- 1 i 200
    40 9 -- 2 i 200
    ;se tiver 4 na segunda fita
    50 0 -- 4 i 150
    50 1 -- 5 i 150
    50 2 -- 6 i 150
    50 3 -- 7 i 150
    50 4 -- 8 i 150
    50 5 -- 9 i 150
    50 6 -- 0 i 200
    50 7 -- 1 i 200
    50 8 -- 2 i 200
    50 9 -- 3 i 200
    ;se tiver 5 na segunda fita
    60 0 -- 5 i 150
    60 1 -- 6 i 150
    60 2 -- 7 i 150
    60 3 -- 8 i 150
    60 4 -- 9 i 150
    60 5 -- 0 i 200
    60 6 -- 1 i 200
    60 7 -- 2 i 200
    60 8 -- 3 i 200
    60 9 -- 4 i 200
    ;se tiver 6 na segunda fita
    70 0 -- 6 i 150
    70 1 -- 7 i 150
    70 2 -- 8 i 150
    70 3 -- 9 i 150
    70 4 -- 0 i 200
    70 5 -- 1 i 200
    70 6 -- 2 i 200
    70 7 -- 3 i 200
    70 8 -- 4 i 200
    70 9 -- 5 i 200
    ; se tiver 7 na segunda fita
    80 0 -- 7 i 150
    80 1 -- 8 i 150
    80 2 -- 9 i 150
    80 3 -- 0 i 200
    80 4 -- 1 i 200
    80 5 -- 2 i 200
    80 6 -- 3 i 200
    80 7 -- 4 i 200
    80 8 -- 5 i 200
    80 9 -- 6 i 200
    ; se tiver 8 na segunda fita
    90 0 -- 8 i 150
    90 1 -- 9 i 150
    90 2 -- 0 i 200
    90 3 -- 1 i 200
    90 4 -- 2 i 200
    90 5 -- 3 i 200
    90 6 -- 4 i 200
    90 7 -- 5 i 200
    90 8 -- 6 i 200
    90 9 -- 7 i 200
    ; se tiver 9 na segunda fita
    100 0 -- 9 i 150
    100 1 -- 0 i 200
    100 2 -- 1 i 200
    100 3 -- 2 i 200
    100 4 -- 3 i 200
    100 5 -- 4 i 200
    100 6 -- 5 i 200
    100 7 -- 6 i 200
    100 8 -- 7 i 200
    100 9 -- 8 i 200
    150 * -- * i retorne
    200 * -- * i retorne
    ; trata o vai um a partir do 200
fim

; TZ+22D=30


bloco transforma_numero_letra 1
    1 0 -- Z i retorne
    1 1 -- U i retorne
    1 2 -- D i retorne
    1 3 -- T i retorne
    1 4 -- Q i retorne
    1 5 -- C i retorne
    1 6 -- S i retorne
    1 7 -- L i retorne
    1 8 -- O i retorne
    1 9 -- N i retorne
fim

bloco encontra_operacao 1
    1 + -- * i retorne
    1 - -- * i retorne
    1 x -- * i retorne
    1 * -- * d 1
fim

bloco move_ate_igual 1
    1 = -- * i retorne
    1 * -- * d 1
fim

bloco move_inicio 1
    1 _ -- * d retorne
    1 * -- * e 1
fim

bloco move_fim 1
    1 _ -- * e retorne
    1 * -- * d 1
fim

bloco insere_depois_igual 1
    1 copiar 5
    5 [0] -- Z i 10
    5 [1] -- U i 10
    5 [2] -- D i 10
    5 [3] -- T i 10
    5 [4] -- Q i 10
    5 [5] -- C i 10
    5 [6] -- S i 10
    5 [7] -- L i 10
    5 [8] -- O i 10
    5 [9] -- N i 10
    10 move_fim 15
    15 * -- * d 16
    16 colar 20
    20 move_inicio 25
    25 procura_numero 30
    30 + -- * d retorne
    30 - -- * d retorne
    30 x -- * d retorne
    30 * -- * i 1
fim

bloco procura_numero 1
    1 0  -- * i retorne
    1 1  -- * i retorne
    1 2  -- * i retorne
    1 3  -- * i retorne
    1 4  -- * i retorne
    1 5  -- * i retorne
    1 6  -- * i retorne
    1 7  -- * i retorne
    1 8  -- * i retorne
    1 9  -- * i retorne
    1 +  -- * i retorne
    1 -  -- * i retorne
    1 x  -- * i retorne
    1 *  -- * d 1
fim

bloco proximo_algarismo 1
    1 = -- * e 5
    1 * -- * e 1
    5 0 -- * i retorne
    5 1 -- * i retorne
    5 2 -- * i retorne
    5 3 -- * i retorne
    5 4 -- * i retorne
    5 5 -- * i retorne
    5 6 -- * i retorne
    5 7 -- * i retorne
    5 8 -- * i retorne
    5 9 -- * i retorne
    5 + -- * i retorne
    5 - -- * i retorne
    5 x -- * i retorne
    5 * -- * e 5
fim