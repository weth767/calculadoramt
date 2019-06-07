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
    10 soma 30
    15 sub 30
    20 mult 30

    ; Transforma tudo para numero
    30 transforma_para_numero 31
    31 * -- * i aceite
fim

bloco soma 1
    1 move_inicio 2
    2 insere_depois_igual 3
    3 move_ate_igual 4
    4 proximo_algarismo 5
    5 copiar 6
    6 transforma_numero_letra 7
    7 move_fim 8
    8 soma_numero 10
    10 proximo_algarismo 11
    11 + -- * i retorne
    11 0 -- * i 5
    11 1 -- * i 5
    11 2 -- * i 5
    11 3 -- * i 5
    11 4 -- * i 5
    11 5 -- * i 5
    11 6 -- * i 5
    11 7 -- * i 5
    11 8 -- * i 5
    11 9 -- * i 5
fim

bloco soma_numero 1
    ;verifica se na fita principal tem letra (indica que numero ja foi somado)
    1 Z -- * e 1
    1 U -- * e 1
    1 D -- * e 1
    1 T -- * e 1
    1 Q -- * e 1
    1 C -- * e 1
    1 S -- * e 1
    1 L -- * e 1
    1 O -- * e 1
    1 N -- * e 1
    ;verifica se na fita principal tem o = indica que deve ser movido para frente
    1 = -- * i 2
    ;caso seja um valor a ser somado simplesmente soma
    1 * -- * i 5
    ;caso necessario mover os numeros para frente
    2 move_frente 4
    ;troca espaco em branco pelo numero 0 e executa soma
    4 _ -- 0 i 5
    ; verifica o que tem na segunda fita, para indicar como será feita a soma
    5 [0] -- * i 10
    5 [1] -- * i 20
    5 [2] -- * i 30
    5 [3] -- * i 40
    5 [4] -- * i 50
    5 [5] -- * i 60
    5 [6] -- * i 70
    5 [7] -- * i 80
    5 [8] -- * i 90
    5 [9] -- * i 100
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

    150 transforma_numero_letra 151
    151 * -- * i retorne

    ; trata o vai um a partir do 200
    200 transforma_numero_letra 201
	201 soma_vai_um 202
	202 * -- * i retorne
fim

;
; TC+3S=9U
;

bloco soma_vai_um 1
	
	1 = -- * i 5
	1 0 -- * i 10
    1 1 -- * i 10
    1 2 -- * i 10
    1 3 -- * i 10
    1 4 -- * i 10
    1 5 -- * i 10
    1 6 -- * i 10
    1 7 -- * i 10
    1 8 -- * i 10
    1 9 -- * i 10
	1 * -- * e 1

	5 move_frente 6
	6 * -- 1 i retorne

	10 0 -- U i retorne
    10 1 -- D i retorne
    10 2 -- T i retorne
    10 3 -- Q i retorne
    10 4 -- C i retorne
    10 5 -- S i retorne
    10 6 -- L i retorne
    10 7 -- O i retorne
    10 8 -- N i retorne
    10 9 -- Z i 11
    11 soma_vai_um 12

    12 * -- * i retorne
fim

bloco procura_algarismo_vai_um 1
	
	1 move_fim 2
	2 0 -- * i retorne
    2 1 -- * i retorne
    2 2 -- * i retorne
    2 3 -- * i retorne
    2 4 -- * i retorne
    2 5 -- * i retorne
    2 6 -- * i retorne
    2 7 -- * i retorne
    2 8 -- * i retorne
    2 9 -- * i retorne
	2 * -- * e 2
fim

bloco move_frente 1
    1 move_fim 5
    5 = -- * d retorne
    5 _ -- * e 10
    5 X -- * e 5
    5 * -- * i 10
    ;Caso for copiar o 0
    10 Z -- * i 15
    10 0 -- * i 15
    ;Caso for copiar o 1
    10 U -- * i 20
    10 1 -- * i 20
    ;Caso for copiar o 2
    10 D -- * i 25
    10 2 -- * i 25
    ;Caso for copiar o 3
    10 T -- * i 30
    10 3 -- * i 30
    ;Caso for copiar o 4
    10 Q -- * i 35
    10 4 -- * i 35
    ;Caso for copiar o 5
    10 C -- * i 40
    10 5 -- * i 40
    ;Caso for copiar o 6
    10 S -- * i 45
    10 6 -- * i 45
    ;Caso for copiar o 7
    10 L -- * i 50
    10 7 -- * i 50
    ;Caso for copiar o 8
    10 O -- * i 55
    10 8 -- * i 55
    ;Caso for copiar o 9
    10 N -- * i 60
    10 9 -- * i 60
    ;Insere Marca para facilitar a copia
    15 * -- X d 65
    ;Realiza copia do 0
    65 * -- Z i 120
    ;Repete procedimento para todos os demais numeros (IGUAL O 0)
    20 * -- X d 70
    70 * -- U i 120
    
    25 * -- X d 75
    75 * -- D i 120

    30 * -- X d 80
    80 * -- T i 120

    35 * -- X d 85
    85 * -- Q i 120

    40 * -- X d 90
    90 * -- C i 120

    45 * -- X d 95
    95 * -- S i 120

    50 * -- X d 100
    100 * -- L i 120

    55 * -- X d 105
    105 * -- O i 120

    60 * -- X d 110
    110 * -- N i 120
    
    120 X -- _ e 5
    120 * -- * e 120
fim

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

bloco transforma_para_numero 1	
	1 move_inicio 2
	2 Z -- 0 d 2
    2 U -- 1 d 2
    2 D -- 2 d 2
    2 T -- 3 d 2
    2 Q -- 4 d 2
    2 C -- 5 d 2
    2 S -- 6 d 2
    2 L -- 7 d 2
    2 O -- 8 d 2
    2 N -- 9 d 2
    2 _ -- * i retorne
    2 * -- * d 2
fim