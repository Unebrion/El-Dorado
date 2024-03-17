function onload()

  Var_Promo = 0
  Usar_Tokens_Exp = 0

  self.createButton({ index = 0, label="ROUTE 1", click_function="Circuito1", function_owner=self,
  position={0,1,0}, rotation={0,0,0}, height=600, width=1300, font_size = 200, font_color={0,0,0}   })

  self.createButton({ index = 1, label="ROUTE 2", click_function="Circuito2", function_owner=self,
  position={0,1,1.5}, rotation={0,0,0}, height=600, width=1300, font_size = 200, font_color={0,0,0}   })

  self.createButton({ index = 2, label="ROUTE 3", click_function="Circuito3", function_owner=self,
  position={0,1,3}, rotation={0,0,0}, height=600, width=1300, font_size = 200, font_color={0,0,0}   })

  self.createButton({ index = 3, label="ROUTE 4", click_function="Circuito4", function_owner=self,
  position={0,1,4.5}, rotation={0,0,0}, height=600, width=1300, font_size = 200, font_color={0,0,0}   })

  self.createButton({ index = 4, label="ROUTE 5", click_function="Circuito5", function_owner=self,
  position={0,1,6}, rotation={0,0,0}, height=600, width=1300, font_size = 200, font_color={0,0,0}   })

  self.createButton({ index = 5, label="ROUTE 6", click_function="Circuito6", function_owner=self,
  position={0,1,7.5}, rotation={0,0,0}, height=600, width=1300, font_size = 200, font_color={0,0,0}   })

  self.createButton({ index = 6, label="RANDOM\n1-6", click_function="Circuito_Aleatorio", function_owner=self,
  position={0,1,9}, rotation={0,0,0}, height=600, width=1300, font_size = 200, font_color={0,0,0}   })

  self.createButton({ index = 7, label="Random \nAssembly 1", click_function="Circuito7", function_owner=self,
  position={0,1,10.5}, rotation={0,0,0}, height=600, width=1300, font_size = 200, font_color={0,0,0}   })

  self.createButton({ index = 8, label="Random\nAssembly 2", click_function="Circuito8", function_owner=self,
  position={0,1,12}, rotation={0,0,0}, height=600, width=1300, font_size = 200, font_color={0,0,0}   })

  self.createButton({ index = 9, label="Promo Pack\n[DA1A18]DISABLED", click_function="Add_Promo", function_owner=self,
  position={6,1,0}, rotation={0,0,0}, height=600, width=1300, font_size = 200, font_color={0,0,0}, color={0.85,0.85,0.6}   })
  if Var_Promo == 1 then  self.editButton({ index = 9, label="Promo Pack\n[057000]ENABLED"}) end

  self.createButton({ index = 10, label="Manual\nAssembly", click_function="Circuito0", function_owner=self,
  position={0,1,13.5}, rotation={0,0,0}, height=600, width=1300, font_size = 200, font_color={0,0,0}   })

  self.createButton({ index = 10, label="Heroes &\nHexes Deck", click_function="Prepara_Cartas_Exp", function_owner=self,
  position={6,1,3}, rotation={0,0,0}, height=600, width=1300, font_size = 180, font_color={0,0,0}   })

  self.createButton({ index = 10, label="Random\nDecks", click_function="Deck_Aleatorio", function_owner=self,
  position={6,1,4.5}, rotation={0,0,0}, height=600, width=1300, font_size = 200, font_color={0,0,0}   })

  self.createButton({ index = 10, label="Original\nDecks", click_function="Decks_Original", function_owner=self,
  position={6,1,6}, rotation={0,0,0}, height=600, width=1300, font_size = 200, font_color={0,0,0}   })

  self.createButton({ index = 10, label="Homebrew\n Deck", click_function="Decks_Malmattos", function_owner=self,
  position={6,1,1.5}, rotation={0,0,0}, height=600, width=1300, font_size = 200, font_color={0,0,0}   })

  self.createButton({ index = 11, label="Expansion\nRoute 1", click_function="Circuito_Exp1", function_owner=self,
  position={3,1,0}, rotation={0,0,0}, height=600, width=1300, font_size = 200, font_color={0,0,0}   })

  self.createButton({ index = 12, label="Expansion\nRoute 2", click_function="Circuito_Exp2", function_owner=self,
  position={3,1,1.5}, rotation={0,0,0}, height=600, width=1300, font_size = 200, font_color={0,0,0}   })

  self.createButton({ index = 13, label="Expansion\nRoute 3", click_function="Circuito_Exp3", function_owner=self,
  position={3,1,3}, rotation={0,0,0}, height=600, width=1300, font_size = 200, font_color={0,0,0}   })

  self.createButton({ index = 14, label="Expansion\nRoute 4", click_function="Circuito_Exp4", function_owner=self,
  position={3,1,4.5}, rotation={0,0,0}, height=600, width=1300, font_size = 200, font_color={0,0,0}   })

  self.createButton({ index = 15, label="Expansion\nRoute 5", click_function="Circuito_Exp5", function_owner=self,
  position={3,1,6}, rotation={0,0,0}, height=600, width=1300, font_size = 200, font_color={0,0,0}   })

  self.createButton({ index = 16, label="Expansion\nRoute 6", click_function="Circuito_Exp6", function_owner=self,
  position={3,1,7.5}, rotation={0,0,0}, height=600, width=1300, font_size = 200, font_color={0,0,0}   })

  self.createButton({ index = 17, label="Random\n1-6", click_function="Sorteia_Circuito_exp", function_owner=self,
  position={3,1,9}, rotation={0,0,0}, height=600, width=1300, font_size = 200, font_color={0,0,0}   })

  self.createButton({ index = 17, label="Random Map\nBase+Expansion 1", click_function="Circuito_Exp7", function_owner=self,
  position={3,1,10.5}, rotation={0,0,0}, height=600, width=1300, font_size = 170, font_color={0,0,0}   })

  self.createButton({ index = 17, label="Random Map 2\n(6 Tiles)", click_function="Circuito_Exp8", function_owner=self,
  position={3,1,12}, rotation={0,0,0}, height=600, width=1300, font_size = 170, font_color={0,0,0}   })

  self.createButton({ index = 17, label="Random Map 3\n(7 Tiles)", click_function="Circuito_Exp9", function_owner=self,
  position={3,1,13.5}, rotation={0,0,0}, height=600, width=1300, font_size = 170, font_color={0,0,0}   })

  self.createButton({ index = 20, label="Base\nGame", click_function="vazio", function_owner=self,
  position={0,1,-1.50}, rotation={0,0,0}, height=0, width=0, font_size = 250, font_color={1,1,1}   })

  self.createButton({ index = 20, label="Heroes &\nHexes", click_function="vazio", function_owner=self,
  position={3,1,-1.50}, rotation={0,0,0}, height=0, width=0, font_size = 250, font_color={1,1,1}     })

  self.createButton({ index = 20, label="Options ", click_function="vazio", function_owner=self,
  position={6,1,-1.50}, rotation={0,0,0}, height=0, width=0, font_size = 250, font_color={1,1,1}     })

x_bar = 0
n_bar = 1

Barreira1 = getObjectFromGUID("ae5585")
Barreira2 = getObjectFromGUID("b55fc5")
Barreira3 = getObjectFromGUID("cf2968")
Barreira4 = getObjectFromGUID("28f252")
Barreira5 = getObjectFromGUID("64fd64")
Barreira6 = getObjectFromGUID("e13477")

Barreira7 = getObjectFromGUID("2e6e75")
Barreira8 = getObjectFromGUID("bc8dda")

Bag_caverna = getObjectFromGUID("02a357")
Bag_Barreiras_exp = getObjectFromGUID("39fbe2")

getObjectFromGUID("6565c7").setValue("  ")

identidade_pecas()

Esconde_controle_pos()

Var_Promo = 0

end
-----------------------------------------------------------------------------------------------------------------------------
function identidade_pecas()

Peca_A = getObjectFromGUID("ab86e2")
Peca_B = getObjectFromGUID("56389d")
Peca_C = getObjectFromGUID("28371c")
Peca_D = getObjectFromGUID("762fbe")
Peca_E = getObjectFromGUID("396726")
Peca_F = getObjectFromGUID("3bb2ec")
Peca_G = getObjectFromGUID("f39e09")
Peca_H = getObjectFromGUID("124edf")
Peca_I = getObjectFromGUID("6d3ea6")
Peca_J = getObjectFromGUID("11e867")

Peca_K = getObjectFromGUID("e73ecb")
Peca_L = getObjectFromGUID("dab71b")
Peca_M = getObjectFromGUID("3debdb")
Peca_N = getObjectFromGUID("7749c2")
Peca_O = getObjectFromGUID("326ad3")
Peca_Q = getObjectFromGUID("3412d8")
Peca_R = getObjectFromGUID("2d45d4")

--Expanção - tiles com maldição
--Peca_S = getObjectFromGUID("8514c9") Peca_T = getObjectFromGUID("0968d5") Peca_U = getObjectFromGUID("3e696d") Peca_V = getObjectFromGUID("725f8d") Peca_W = getObjectFromGUID("0f2986") Peca_X = getObjectFromGUID("b0d0fc")
Peca_S2 = getObjectFromGUID("dceade")
Peca_T2 = getObjectFromGUID("43879b")
Peca_U2 = getObjectFromGUID("1b900d")
Peca_V2 = getObjectFromGUID("c86919")
Peca_W2 = getObjectFromGUID("914604")
Peca_X2 = getObjectFromGUID("e7dd18")


Peca_FIM = getObjectFromGUID("a7743a")
Peca_FIM2 = getObjectFromGUID("307c70")

Peca_Heros1 = getObjectFromGUID("389860")
Peca_Heros2 = getObjectFromGUID("548649")

Peca_O.setScale({1.58, 1.00, 1.58})

end
-------------------------------------------------------------------------------------------------------------------------------

function guarda_barreiras()

Bag_Barreiras = getObjectFromGUID("5ed5a2")
Bag_Barreiras_exp = getObjectFromGUID("39fbe2")

Barreira1 = getObjectFromGUID("ae5585")
Barreira2 = getObjectFromGUID("b55fc5")
Barreira3 = getObjectFromGUID("cf2968")
Barreira4 = getObjectFromGUID("28f252")
Barreira5 = getObjectFromGUID("64fd64")
Barreira6 = getObjectFromGUID("e13477")
Barreira7 = getObjectFromGUID("2e6e75")
Barreira8 = getObjectFromGUID("bc8dda")

Bag_Barreiras.putObject(Barreira1)
Bag_Barreiras.putObject(Barreira2)
Bag_Barreiras.putObject(Barreira3)
Bag_Barreiras.putObject(Barreira4)
Bag_Barreiras.putObject(Barreira5)
Bag_Barreiras.putObject(Barreira6)
----
Bag_Barreiras_exp.putObject(Barreira7)
Bag_Barreiras_exp.putObject(Barreira8)

x_bar = 0
n_bar = 1

end
----------------------------------------------------------------------------------------------------------------------------------------------------

function Guarda_cavernas()

Usar_Tokens_Exp = 0
Bag_caverna_exp = getObjectFromGUID("1d7d2d")
Bag_caverna = getObjectFromGUID("02a357")

  local Zona = getObjectFromGUID("da222d")
  for i=1, 1, 1 do
  local OBJ = Zona.getObjects()
    for j=1, #OBJ, 1 do

    --cor = playerColorClicked
    NOME = OBJ[j].getName()
    if(NOME == "Cave")   then -- OBJ[j].setPositionSmooth({-17.19, 8, 16.32}) end
    Bag_caverna.putObject(OBJ[j]) end

    if(NOME == "CavernaEXP")   then -- OBJ[j].setPositionSmooth({-17.19, 8, 16.32}) end
    Bag_caverna_exp.putObject(OBJ[j]) end

    end
  end
--
end
----------------------------------------------------------------------------------------------------------------------------------------------------

function Guarda_Cartas_Exp_()

Bag_Cartas_Exp = getObjectFromGUID("c892f0")

if getObjectFromGUID("d709d6") then Bag_Cartas_Exp.putObject(getObjectFromGUID("d709d6")) end --Geologo
if getObjectFromGUID("7e2dec") then Bag_Cartas_Exp.putObject(getObjectFromGUID("7e2dec")) end --Tokens
if getObjectFromGUID("e18c95") then Bag_Cartas_Exp.putObject(getObjectFromGUID("e18c95")) end --Xamã
if getObjectFromGUID("3275b3") then Bag_Cartas_Exp.putObject(getObjectFromGUID("3275b3")) end --Herois
if getObjectFromGUID("72d26b") then Bag_Cartas_Exp.putObject(getObjectFromGUID("72d26b")) end --Animais
if getObjectFromGUID("1505c3") then Bag_Cartas_Exp.putObject(getObjectFromGUID("1505c3")) end --Desbravadora

end
-------------------------------------------------------------------------------------------------------------------------------

function posicao_inicial()

identidade_pecas()

getObjectFromGUID("6565c7").setValue(" ")

Peca_A.setPosition({-15,-40.1, 30}) Peca_A.setRotation({ 0,   0,  0}) Peca_A.setLock(true)
Peca_B.setPosition({-15,-40.2, 30}) Peca_B.setRotation({ 0,   0,  0}) Peca_B.setLock(true)
Peca_C.setPosition({-15,-40.3, 30}) Peca_C.setRotation({ 0,   0,  0}) Peca_C.setLock(true)
Peca_D.setPosition({-15,-40.4, 30}) Peca_D.setRotation({ 0,   0,  0}) Peca_D.setLock(true)
Peca_E.setPosition({-15,-40.5, 30}) Peca_E.setRotation({ 0,   0,  0}) Peca_E.setLock(true)
Peca_F.setPosition({-15,-40.6, 30}) Peca_F.setRotation({ 0,   0,  0}) Peca_F.setLock(true)
Peca_G.setPosition({-15,-40.7, 30}) Peca_G.setRotation({ 0,   0,  0}) Peca_G.setLock(true)
Peca_H.setPosition({-15,-40.8, 30}) Peca_H.setRotation({ 0,   0,  0}) Peca_H.setLock(true)
Peca_I.setPosition({-15,-40.9, 30}) Peca_I.setRotation({ 0,   0,  0}) Peca_I.setLock(true)
Peca_J.setPosition({-15,-41.0, 30}) Peca_J.setRotation({ 0,   0,  0}) Peca_J.setLock(true)
Peca_K.setPosition({ 0, -40.1, 30}) Peca_K.setRotation({ 0,   0,  0}) Peca_K.setLock(true)
Peca_L.setPosition({ 0, -40.2, 30}) Peca_L.setRotation({ 0,   0,  0}) Peca_L.setLock(true)
Peca_M.setPosition({ 0, -40.3, 30}) Peca_M.setRotation({ 0,   0,  0}) Peca_M.setLock(true)
Peca_N.setPosition({ 0, -40.4, 30}) Peca_N.setRotation({ 0,   0,  0}) Peca_N.setLock(true)
Peca_O.setPosition({ 0, -40.5, 30}) Peca_O.setRotation({ 0,   0,  0}) Peca_O.setLock(true)
--Peca_P.setPosition({ 0, -21, 30}) Peca_P.setRotation({ 0,   0,  0}) Peca_P.setLock(true)
Peca_Q.setPosition({ 0, -40.6, 30}) Peca_Q.setRotation({ 0,   0,  0}) Peca_Q.setLock(true)
Peca_R.setPosition({ 0, -40.7, 30}) Peca_R.setRotation({ 0,   0,  0}) Peca_R.setLock(true)
--Peca_S.setPosition({ 0, -40.8, 30}) Peca_S.setRotation({ 0,   0,  0}) Peca_S.setLock(true)
--Peca_T.setPosition({ 0, -40.9, 30}) Peca_T.setRotation({ 0,   0,  0}) Peca_T.setLock(true)
--Peca_U.setPosition({ 0, -41.0, 30}) Peca_U.setRotation({ 0,   0,  0}) Peca_U.setLock(true)
--Peca_V.setPosition({ 0, -41.1, 30}) Peca_V.setRotation({ 0,   0,  0}) Peca_V.setLock(true)
--Peca_W.setPosition({15, -41.2, 30}) Peca_W.setRotation({ 0,   0,  0}) Peca_W.setLock(true)
--Peca_X.setPosition({15, -41.3, 30}) Peca_X.setRotation({ 0,   0,  0}) Peca_X.setLock(true)
--Peca_Y.setPosition({15, -23, 30}) Peca_Y.setRotation({ 0,   0,  0}) Peca_Y.setLock(true)
--Peca_Z.setPosition({15, -22, 30}) Peca_Z.setRotation({ 0,   0,  0}) Peca_Z.setLock(true)
Peca_FIM.setPosition ({15, -41.0, 30}) Peca_FIM.setRotation({ 0,   0,  0}) Peca_FIM.setLock(true)
Peca_FIM2.setPosition({15, -41.1, 30}) Peca_FIM2.setRotation({ 0,   0,  0}) Peca_FIM2.setLock(true)

Peca_Heros1.setPosition({15, -41.2, 30}) Peca_Heros1.setRotation({ 0,   0,  0}) Peca_Heros1.setLock(true)
Peca_Heros2.setPosition({15, -41.3, 30}) Peca_Heros2.setRotation({ 0,   0,  0}) Peca_Heros2.setLock(true)

Peca_S2.setPosition({ 0, -41.4, 30}) Peca_S2.setRotation({ 0,   0,  0}) Peca_S2.setLock(true)
Peca_T2.setPosition({ 0, -41.5, 30}) Peca_T2.setRotation({ 0,   0,  0}) Peca_T2.setLock(true)
Peca_U2.setPosition({ 0, -41.6, 30}) Peca_U2.setRotation({ 0,   0,  0}) Peca_U2.setLock(true)
Peca_V2.setPosition({ 0, -41.7, 30}) Peca_V2.setRotation({ 0,   0,  0}) Peca_V2.setLock(true)
Peca_W2.setPosition({15, -41.8, 30}) Peca_W2.setRotation({ 0,   0,  0}) Peca_W2.setLock(true)
Peca_X2.setPosition({15, -41.9, 30}) Peca_X2.setRotation({ 0,   0,  0}) Peca_X2.setLock(true)


end
----------------------------------------------------------------------------------------------------

function Prepara_Cartas_Exp()

Tab_Cartas = getObjectFromGUID("d019e1")
Bag_Cartas_Exp = getObjectFromGUID("c892f0")
N_decks = Bag_Cartas_Exp.getQuantity()
Pos_Tab = Tab_Cartas.getPosition()

    if N_decks == 6 then
    Bag_Cartas_Exp.takeObject({position= {26.00, 1.55, 14.00}})
    Bag_Cartas_Exp.takeObject({position= {28.00, 1.55, 14.00}})
    Bag_Cartas_Exp.takeObject({position= {30.00, 1.55, 14.00}})
    Bag_Cartas_Exp.takeObject({position= {32.00, 1.55, 14.00}})
    Bag_Cartas_Exp.takeObject({position= {34.00, 1.55, 14.00}})
    Bag_Cartas_Exp.takeObject({position= {36.00, 1.55, 14.00}})

    getObjectFromGUID("7e2dec").setPosition(Pos_Tab + vector( -1.10, 1, 6.6)) --Tokens
    getObjectFromGUID("e18c95").setPosition(Pos_Tab + vector(  0.95, 1, 6.6)) --Xamã
    getObjectFromGUID("d709d6").setPosition(Pos_Tab + vector(  3.00, 1, 6.6)) --Geologo
    getObjectFromGUID("1505c3").setPosition(Pos_Tab + vector(  5.10, 1, 6.6)) --Desbravadora
    getObjectFromGUID("72d26b").setPosition(Pos_Tab + vector(  8.15, 1, 3.4)) --Animais
    getObjectFromGUID("3275b3").setPosition(Pos_Tab + vector( 10.15, 1, 3.4))  --Herois

  elseif N_decks == 5 then
    Bag_Cartas_Exp.takeObject({position= {26.00, 1.55, 14.00}})
    Bag_Cartas_Exp.takeObject({position= {28.00, 1.55, 14.00}})
    Bag_Cartas_Exp.takeObject({position= {30.00, 1.55, 14.00}})
    Bag_Cartas_Exp.takeObject({position= {32.00, 1.55, 14.00}})
    Bag_Cartas_Exp.takeObject({position= {34.00, 1.55, 14.00}})

    getObjectFromGUID("7e2dec").setPosition(Pos_Tab + vector( -1.10, 1, 6.6)) --Tokens
    getObjectFromGUID("e18c95").setPosition(Pos_Tab + vector(  0.95, 1, 6.6)) --Xamã
    getObjectFromGUID("d709d6").setPosition(Pos_Tab + vector(  3.00, 1, 6.6)) --Geologo
    getObjectFromGUID("1505c3").setPosition(Pos_Tab + vector(  5.10, 1, 6.6)) --Desbravadora
    getObjectFromGUID("72d26b").setPosition(Pos_Tab + vector(  8.15, 1, 3.4)) --Animais
    --getObjectFromGUID("3275b3").setPosition(Pos_Tab + vector( 10.15, 1, 3.4))  --Herois

    else
    getObjectFromGUID("7e2dec").setPosition(Pos_Tab + vector( -1.10, 1, 6.6)) --Tokens
    getObjectFromGUID("e18c95").setPosition(Pos_Tab + vector(  0.95, 1, 6.6)) --Xamã
    getObjectFromGUID("d709d6").setPosition(Pos_Tab + vector(  3.00, 1, 6.6)) --Geologo
    getObjectFromGUID("1505c3").setPosition(Pos_Tab + vector(  5.10, 1, 6.6)) --Desbravadora
    getObjectFromGUID("72d26b").setPosition(Pos_Tab + vector(  8.15, 1, 3.4)) --Animais
    getObjectFromGUID("3275b3").setPosition(Pos_Tab + vector( 10.15, 1, 3.4))  --Herois
    end

end
----------------------------------------------------------------------------------------------------

function Sorteia_Circuito_exp()
N_SORT2 = (math.random(1,6))
if N_SORT2 == 1 then Circuito_Exp1() end
if N_SORT2 == 2 then Circuito_Exp2() end
if N_SORT2 == 3 then Circuito_Exp3() end
if N_SORT2 == 4 then Circuito_Exp4() end
if N_SORT2 == 5 then Circuito_Exp5() end
if N_SORT2 == 5 then Circuito_Exp6() end
end
----------------------------------------------------------------------------------------------------
function Circuito_Aleatorio()
N_SORT = (math.random(1,6))
if N_SORT == 1 then Circuito1() end
if N_SORT == 2 then Circuito2() end
if N_SORT == 3 then Circuito3() end
if N_SORT == 4 then Circuito4() end
if N_SORT == 5 then Circuito5() end
if N_SORT == 5 then Circuito6() end
end
---------------------------------------------------------------------------------------------------------------------------------------------------
--###################################### CIRCUITOS ##############################################################################################
----------------------------------------------------------------------------------------------------------------------------------------------------
function Circuito0()
broadcastToAll(">>> Collecting Previous Map <<<", "White")
getObjectFromGUID("8008a7").call("Some_botoes_exp")
Guarda_Cartas_Exp_()
guarda_barreiras()
Guarda_cavernas()
Wait.time(posicao_inicial, 1)
Wait.time(poe_pista_0, 2)
Wait.time(|| broadcastToAll("Assembly Complete!", "White"), 4)
end
----------------------------------
function Circuito1()
broadcastToAll(">>> Collecting Previous Map <<<", "White")
getObjectFromGUID("8008a7").call("Some_botoes_exp")
Guarda_Cartas_Exp_()
guarda_barreiras()
Guarda_cavernas()
Wait.time(posicao_inicial, 1)
Wait.time(poe_pista_1, 2)
Wait.time(|| broadcastToAll("Assembly Complete!", "White"), 4)
end
----------------------------------
function Circuito2()
broadcastToAll(">>> Collecting Previous Map <<<", "White")
getObjectFromGUID("8008a7").call("Some_botoes_exp")
Guarda_Cartas_Exp_()
guarda_barreiras()
Guarda_cavernas()
Wait.time(posicao_inicial, 1)
Wait.time(poe_pista_2, 2)
Wait.time(|| broadcastToAll("Assembly Complete!", "White"), 4)
end
----------------------------------
function Circuito3()
broadcastToAll(">>> Collecting Previous Map <<<", "White")
getObjectFromGUID("8008a7").call("Some_botoes_exp")
Guarda_Cartas_Exp_()
guarda_barreiras()
Guarda_cavernas()
Wait.time(posicao_inicial, 1)
Wait.time(poe_pista_3, 2)
Wait.time(|| broadcastToAll("Assembly Complete!", "White"), 4)
end
----------------------------------
function Circuito4()
broadcastToAll(">>> Collecting Previous Map <<<", "White")
getObjectFromGUID("8008a7").call("Some_botoes_exp")
Guarda_Cartas_Exp_()
guarda_barreiras()
Guarda_cavernas()
Wait.time(posicao_inicial, 1)
Wait.time(poe_pista_4, 2)
Wait.time(|| broadcastToAll("Assembly Complete!", "White"), 4)
end
----------------------------------
function Circuito5()
broadcastToAll(">>> Collecting Previous Map <<<", "White")
getObjectFromGUID("8008a7").call("Some_botoes_exp")
Guarda_Cartas_Exp_()
guarda_barreiras()
Guarda_cavernas()
Wait.time(posicao_inicial, 1)
Wait.time(poe_pista_5, 2)
Wait.time(|| broadcastToAll("Assembly Complete!", "White"), 4)
end
----------------------------------
function Circuito6()
broadcastToAll(">>> Collecting Previous Map <<<", "White")
getObjectFromGUID("8008a7").call("Some_botoes_exp")
Guarda_Cartas_Exp_()
guarda_barreiras()
Guarda_cavernas()
Wait.time(posicao_inicial, 1)
Wait.time(poe_pista_6, 2)
Wait.time(|| broadcastToAll("Assembly Complete!", "White"), 4)
end
----------------------------------
function Circuito7()
broadcastToAll(">>> Collecting Previous Map <<<", "White")
getObjectFromGUID("8008a7").call("Some_botoes_exp")
Guarda_Cartas_Exp_()
guarda_barreiras()
Guarda_cavernas()
Wait.time(posicao_inicial, 1)
Wait.time(poe_pista_7, 2)
Wait.time(|| broadcastToAll("Assembly Complete!", "White"), 4)
Mostra_controle_pos()
end
----------------------------------
function Circuito8()
broadcastToAll(">>> Collecting Previous Map <<<", "White")
getObjectFromGUID("8008a7").call("Some_botoes_exp")
Guarda_Cartas_Exp_()
guarda_barreiras()
Guarda_cavernas()
Wait.time(posicao_inicial, 1)
Wait.time(poe_pista_8, 2)
Wait.time(|| broadcastToAll("Assembly Complete!", "White"), 4)
Mostra_controle_pos()
end
----------------------------------
function Circuito_Exp1()
broadcastToAll(">>> Collecting Previous Map <<<", "White")
getObjectFromGUID("8008a7").call("Mostra_botoes_exp")
Prepara_Cartas_Exp()
guarda_barreiras()
Guarda_cavernas()
Wait.time(posicao_inicial, 1)
Wait.time(poe_pista_Exp1, 2)
Wait.time(|| broadcastToAll("Assembly Complete!", "White"), 4)
end
----------------------------------
function Circuito_Exp2()
broadcastToAll(">>> Collecting Previous Map <<<", "White")
getObjectFromGUID("8008a7").call("Mostra_botoes_exp")
Prepara_Cartas_Exp()
guarda_barreiras()
Guarda_cavernas()
Wait.time(posicao_inicial, 1)
Wait.time(poe_pista_Exp2, 2)
Wait.time(|| broadcastToAll("Assembly Complete!", "White"), 4)
end
----------------------------------
function Circuito_Exp3()
broadcastToAll(">>> Collecting Previous Map <<<", "White")
getObjectFromGUID("8008a7").call("Mostra_botoes_exp")
Prepara_Cartas_Exp()
guarda_barreiras()
Guarda_cavernas()
Wait.time(posicao_inicial, 1)
Wait.time(poe_pista_Exp3, 2)
Wait.time(|| broadcastToAll("Assembly Complete!", "White"), 4)
end
----------------------------------
function Circuito_Exp4()
broadcastToAll(">>> Collecting Previous Map <<<", "White")
getObjectFromGUID("8008a7").call("Mostra_botoes_exp")
Prepara_Cartas_Exp()
guarda_barreiras()
Guarda_cavernas()
Wait.time(posicao_inicial, 1)
Wait.time(poe_pista_Exp4, 2)
Wait.time(|| broadcastToAll("Assembly Complete!", "White"), 4)
end
----------------------------------
function Circuito_Exp5()
broadcastToAll(">>> Collecting Previous Map <<<", "White")
getObjectFromGUID("8008a7").call("Mostra_botoes_exp")
Prepara_Cartas_Exp()
guarda_barreiras()
Guarda_cavernas()
Wait.time(posicao_inicial, 1)
Wait.time(poe_pista_Exp5, 2)
Wait.time(|| broadcastToAll("Assembly Complete!", "White"), 4)
end
----------------------------------
function Circuito_Exp6()
broadcastToAll(">>> Collecting Previous Map <<<", "White")
getObjectFromGUID("8008a7").call("Mostra_botoes_exp")
Prepara_Cartas_Exp()
guarda_barreiras()
Guarda_cavernas()
Wait.time(posicao_inicial, 1)
Wait.time(poe_pista_Exp6, 2)
Wait.time(|| broadcastToAll("Assembly Complete!", "White"), 4)
end
----------------------------------
function Circuito_Exp7()
broadcastToAll(">>> Collecting Previous Map <<<", "White")
getObjectFromGUID("8008a7").call("Mostra_botoes_exp")
Prepara_Cartas_Exp()
guarda_barreiras()
Guarda_cavernas()
Wait.time(posicao_inicial, 1)
Wait.time(poe_pista_Exp7, 2)
Wait.time(|| broadcastToAll("Assembly Complete!", "White"), 4)
Mostra_controle_pos()
end
----------------------------------
function Circuito_Exp8()
broadcastToAll(">>> Collecting Previous Map <<<", "White")
getObjectFromGUID("8008a7").call("Mostra_botoes_exp")
Prepara_Cartas_Exp()
guarda_barreiras()
Guarda_cavernas()
--Wait.time(posicao_inicial, 1)
Wait.time(poe_pista_Exp8, 2)
Wait.time(|| broadcastToAll("Assembly Complete!", "White"), 4)
Mostra_controle_pos()
end
----------------------------------
function Circuito_Exp9()
broadcastToAll(">>> Collecting Previous Map <<<", "White")
getObjectFromGUID("8008a7").call("Mostra_botoes_exp")
Prepara_Cartas_Exp()
guarda_barreiras()
Guarda_cavernas()
--Wait.time(posicao_inicial, 1)
Wait.time(poe_pista_Exp9, 2)
Wait.time(|| broadcastToAll("Assembly Complete!", "White"), 4)
Mostra_controle_pos()
end

-------------------------------------------------------------------------------------------------------------------------
function Mostra_controle_pos()
getObjectFromGUID("d52bc5").setPosition({-19.20, 1.53, -11.30})
getObjectFromGUID("d52bc5").setRotation({0.00, 180.0, 0.00})
end
--------------------------------
function Esconde_controle_pos()
getObjectFromGUID("d52bc5").setPosition({-19.20, -10, -11.30})
getObjectFromGUID("d52bc5").setRotation({0.00, 180.0, 180.00})
getObjectFromGUID("d52bc5").setLock(true)
end
-------------------------------------------------------------------------------------------------------------------------
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Circuitos %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Circuitos %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
--------------------------------------------------------------------------------------------------------------------------

function poe_pista_0()
getObjectFromGUID("b5fb7e").setPosition({0.00, -2.9, 0.00})
broadcastToAll("<<< Preparando Montagem Manual >>>", "White")
getObjectFromGUID("6565c7").setValue("The quest for El Dorado")

X_ini = 64
Y_ini = 1.6
Z_ini = 30

Y_Inc = 0.0
Z_Inc = -7.5

Peca_A.setPosition({X_ini, Y_ini+ 0*Y_Inc, Z_ini+0*Z_Inc}) Peca_A.setRotation({ 0,   0,  0}) Peca_A.setLock(false)
Peca_B.setPosition({X_ini, Y_ini+ 1*Y_Inc, Z_ini+1*Z_Inc}) Peca_B.setRotation({ 0,   0,  0}) Peca_B.setLock(false)
Peca_C.setPosition({X_ini, Y_ini+ 2*Y_Inc, Z_ini+2*Z_Inc}) Peca_C.setRotation({ 0,   0,  0}) Peca_C.setLock(false)
Peca_D.setPosition({X_ini, Y_ini+ 3*Y_Inc, Z_ini+3*Z_Inc}) Peca_D.setRotation({ 0,   0,  0}) Peca_D.setLock(false)
Peca_E.setPosition({X_ini, Y_ini+ 4*Y_Inc, Z_ini+4*Z_Inc}) Peca_E.setRotation({ 0,   0,  0}) Peca_E.setLock(false)
Peca_F.setPosition({X_ini, Y_ini+ 5*Y_Inc, Z_ini+5*Z_Inc}) Peca_F.setRotation({ 0,   0,  0}) Peca_F.setLock(false)
Peca_G.setPosition({X_ini, Y_ini+ 6*Y_Inc, Z_ini+6*Z_Inc}) Peca_G.setRotation({ 0,   0,  0}) Peca_G.setLock(false)
Peca_H.setPosition({X_ini, Y_ini+ 7*Y_Inc, Z_ini+7*Z_Inc}) Peca_H.setRotation({ 0,   0,  0}) Peca_H.setLock(false)
Peca_I.setPosition({X_ini+9, Y_ini+ 8*Y_Inc, Z_ini+0*Z_Inc}) Peca_I.setRotation({ 0,   0,  0}) Peca_I.setLock(false)
Peca_J.setPosition({X_ini+9, Y_ini+ 9*Y_Inc, Z_ini+1*Z_Inc}) Peca_J.setRotation({ 0,   0,  0}) Peca_J.setLock(false)
Peca_K.setPosition({X_ini+9, Y_ini+10*Y_Inc, Z_ini+2*Z_Inc}) Peca_K.setRotation({ 0,   0,  0}) Peca_K.setLock(false)
Peca_L.setPosition({X_ini+9, Y_ini+11*Y_Inc, Z_ini+3*Z_Inc}) Peca_L.setRotation({ 0,   0,  0}) Peca_L.setLock(false)
Peca_M.setPosition({X_ini+9, Y_ini+12*Y_Inc, Z_ini+4*Z_Inc}) Peca_M.setRotation({ 0,   0,  0}) Peca_M.setLock(false)
Peca_N.setPosition({X_ini+9, Y_ini+13*Y_Inc, Z_ini+5*Z_Inc}) Peca_N.setRotation({ 0,   0,  0}) Peca_N.setLock(false)

Peca_O.setPosition({X_ini+9, Y_ini+14*Y_Inc, Z_ini+5.8*Z_Inc}) Peca_O.setRotation({ 0,   0,  0}) Peca_O.setLock(false)
Peca_Q.setPosition({X_ini+9, Y_ini+16*Y_Inc, Z_ini+6.3*Z_Inc}) Peca_Q.setRotation({ 0,   0,  0}) Peca_Q.setLock(false)
Peca_R.setPosition({X_ini+9, Y_ini+17*Y_Inc, Z_ini+6.8*Z_Inc}) Peca_R.setRotation({ 0,   0,  0}) Peca_R.setLock(false)
Peca_FIM.setPosition({X_ini+9, Y_ini+18*Y_Inc, Z_ini+7.3*Z_Inc}) Peca_FIM.setRotation({ 0,   270,  0}) Peca_FIM.setLock(false)
Peca_FIM2.setPosition({X_ini+9, Y_ini+19*Y_Inc, Z_ini+7.8*Z_Inc}) Peca_FIM2.setRotation({ 0,   270,  0}) Peca_FIM2.setLock(false)

--Peca_S.setPosition({X_ini+27, Y_ini+18*Y_Inc, Z_ini+0*Z_Inc}) Peca_S.setRotation({ 0,   150,  0}) Peca_S.setLock(false)
--Peca_T.setPosition({X_ini+27, Y_ini+19*Y_Inc, Z_ini+1*Z_Inc}) Peca_T.setRotation({ 0,   150,  0}) Peca_T.setLock(false)
--Peca_U.setPosition({X_ini+27, Y_ini+20*Y_Inc, Z_ini+2*Z_Inc}) Peca_U.setRotation({ 0,   150,  0}) Peca_U.setLock(false)
--Peca_V.setPosition({X_ini+27, Y_ini+21*Y_Inc, Z_ini+3*Z_Inc}) Peca_V.setRotation({ 0,   150,  0}) Peca_V.setLock(false)
--Peca_W.setPosition({X_ini+27, Y_ini+22*Y_Inc, Z_ini+4*Z_Inc}) Peca_W.setRotation({ 0,   150,  0}) Peca_W.setLock(false)
--Peca_X.setPosition({X_ini+27, Y_ini+23*Y_Inc, Z_ini+5*Z_Inc}) Peca_X.setRotation({ 0,   150,  0}) Peca_X.setLock(false)

Peca_S2.setPosition({X_ini+18, Y_ini+18*Y_Inc, Z_ini+0*Z_Inc}) Peca_S2.setRotation({ 0,   0,  0}) Peca_S2.setLock(false)
Peca_T2.setPosition({X_ini+18, Y_ini+19*Y_Inc, Z_ini+1*Z_Inc}) Peca_T2.setRotation({ 0,   0,  0}) Peca_T2.setLock(false)
Peca_U2.setPosition({X_ini+18, Y_ini+20*Y_Inc, Z_ini+2*Z_Inc}) Peca_U2.setRotation({ 0,   0,  0}) Peca_U2.setLock(false)
Peca_V2.setPosition({X_ini+18, Y_ini+21*Y_Inc, Z_ini+3*Z_Inc}) Peca_V2.setRotation({ 0,   0,  0}) Peca_V2.setLock(false)
Peca_W2.setPosition({X_ini+18, Y_ini+22*Y_Inc, Z_ini+4*Z_Inc}) Peca_W2.setRotation({ 0,   0,  0}) Peca_W2.setLock(false)
Peca_X2.setPosition({X_ini+18, Y_ini+23*Y_Inc, Z_ini+5*Z_Inc}) Peca_X2.setRotation({ 0,   0,  0}) Peca_X2.setLock(false)

--Peca_Y.setPosition({15, -23, 30}) Peca_Y.setRotation({ 0,   0,  0}) Peca_Y.setLock(false)
--Peca_Z.setPosition({15, -22, 30}) Peca_Z.setRotation({ 0,   0,  0}) Peca_Z.setLock(false)

Peca_Heros1.setPosition({X_ini+18, Y_ini+24*Y_Inc, Z_ini+5.8*Z_Inc}) Peca_Heros1.setRotation({ 0,   180,  0}) Peca_Heros1.setLock(false)
Peca_Heros2.setPosition({X_ini+18, Y_ini+25*Y_Inc, Z_ini+6.3*Z_Inc}) Peca_Heros2.setRotation({ 0,   180,  0}) Peca_Heros2.setLock(false)

Bag_Barreiras.shuffle()
parametros =  { position = {46.00, 1.6, 30.00}, smooth = true, callback_function = take_callback2, rotation={0,0,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {47.00, 1.6, 30.00}, smooth = true, callback_function = take_callback2, rotation={0,0,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {48.00, 1.6, 30.00}, smooth = true, callback_function = take_callback2, rotation={0,0,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {49.00, 1.6, 30.00}, smooth = true, callback_function = take_callback2, rotation={0,0,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {50.00, 1.6, 30.00}, smooth = true, callback_function = take_callback2, rotation={0,0,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {51.00, 1.6, 30.00}, smooth = true, callback_function = take_callback2, rotation={0,0,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras_exp.shuffle()
parametros =  { position = {52.00, 1.6, 30.00}, smooth = true, callback_function = take_callback2, rotation={0,0,0} }
Bag_Barreiras_exp.takeObject(parametros)

Bag_Barreiras_exp.shuffle()
parametros =  { position = {53.00, 1.6, 30.00}, smooth = true, callback_function = take_callback2, rotation={0,0,0} }
Bag_Barreiras_exp.takeObject(parametros)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% pistas jogo base %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function poe_pista_1()

getObjectFromGUID("b5fb7e").setPosition({0.00, -33, 0.00})
broadcastToAll("<<< Preparing Map 1 >>>", "White")
getObjectFromGUID("6565c7").setValue("Map 1: Hills of Gold \nDifficulty: Easy")
Peca_B.setPosition({-10.10, 1.58, 0.87})   Peca_B.setRotation({0,265,0})      Peca_B.setLock(true)
Peca_C.setPosition({-7.74, 1.58, 7.26})    Peca_C.setRotation({0,85,0})       Peca_C.setLock(true)
Peca_G.setPosition({-4.36, 1.58, 13.11})   Peca_G.setRotation({0,84.21,0})    Peca_G.setLock(true)
Peca_K.setPosition({-0.08, 1.58, 7.98})    Peca_K.setRotation({0,262.4,0})    Peca_K.setLock(true)
Peca_J.setPosition({3.49, 1.58, 2.25})     Peca_J.setRotation({0,263.8,0})    Peca_J.setLock(true)
Peca_N.setPosition({10.21, 1.58, 2.58})    Peca_N.setRotation({0,261.31,0})   Peca_N.setLock(true)
Peca_FIM2.setPosition({14.42, 1.58, 0.82}) Peca_FIM2.setRotation({0,23.1,0}) Peca_FIM2.setLock(true)

Bag_Barreiras.shuffle()
parametros =  { position = {-8.74, 1.75, 4.06}, smooth = true, callback_function = take_callback, rotation={0,115,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {-6.22, 1.75, 10.4}, smooth = true, callback_function = take_callback, rotation={0,115,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {-2.02, 1.75, 10.55}, smooth = true, callback_function = take_callback, rotation={0,55,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {1.71, 1.75, 4.94}, smooth = true, callback_function = take_callback, rotation={0,54,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {8, -3, 20}, smooth = true, callback_function = take_callback, rotation={0,0,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {7.02, 1.75, 2.12}, smooth = true, callback_function = take_callback, rotation={0,352,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras_exp.shuffle()
parametros =  { position = {0.00, -30, 30.00}, smooth = false, callback_function = take_callback2, rotation={0,0,0} }
Bag_Barreiras_exp.takeObject(parametros)

Bag_Barreiras_exp.shuffle()
parametros =  { position = {0.00, -31, 30.00}, smooth = false, callback_function = take_callback2, rotation={0,0,0} }
Bag_Barreiras_exp.takeObject(parametros)

Cavernas_P1()

end
---------------------------------------------------------------------------------------------------------------------------

function poe_pista_2()

getObjectFromGUID("b5fb7e").setPosition({0.00, -33, 0.00})
broadcastToAll("<<< Preparing Map 2 >>>", "White")
getObjectFromGUID("6565c7").setValue("Map 2: Home Stretch \nDifficulty: Easy")
Peca_B.setPosition({-13.62, 1.58, -2.31})   Peca_B.setRotation({0,270,0})      Peca_B.setLock(true)
Peca_J.setPosition({-9.85, 1.58, 3.26})    Peca_J.setRotation({0,149,0})       Peca_J.setLock(true)
Peca_Q.setPosition({-5.15, 1.58, 3.31})   Peca_Q.setRotation({0,268.39,0})    Peca_Q.setLock(true)
Peca_K.setPosition({-0.48, 1.58, 3.46})    Peca_K.setRotation({0,26.52,0})    Peca_K.setLock(true)
Peca_M.setPosition({6.19, 1.58, 4.27})     Peca_M.setRotation({0,88.08,0})    Peca_M.setLock(true)
Peca_C.setPosition({12.97, 1.58, 4.01})    Peca_C.setRotation({0,207.41,0})   Peca_C.setLock(true)
Peca_FIM2.setPosition({16.84, 1.58, 6.47}) Peca_FIM2.setRotation({0,326.96,0}) Peca_FIM2.setLock(true)

Bag_Barreiras.shuffle()
parametros =  { position = {-11.89, 1.75, 0.68}, smooth = true, callback_function = take_callback, rotation={0,120,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {-6.41, 1.75, 3.29}, smooth = true, callback_function = take_callback, rotation={0,180,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {-3.67, 1.75, 3.33}, smooth = true, callback_function = take_callback, rotation={0,0,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {2.92, 1.75, 3.65}, smooth = true, callback_function = take_callback, rotation={0,180,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {9.7, 1.75, 4.39}, smooth = true, callback_function = take_callback, rotation={0,178,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {0, -14, 0}, smooth = true, callback_function = take_callback, rotation={0,178,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras_exp.shuffle()
parametros =  { position = {0.00, -30, 30.00}, smooth = false, callback_function = take_callback2, rotation={0,0,0} }
Bag_Barreiras_exp.takeObject(parametros)

Bag_Barreiras_exp.shuffle()
parametros =  { position = {0.00, -31, 30.00}, smooth = false, callback_function = take_callback2, rotation={0,0,0} }
Bag_Barreiras_exp.takeObject(parametros)

Cavernas_P2()

end
---------------------------------------------------------------------------------------------------------------------------

function poe_pista_3()

getObjectFromGUID("b5fb7e").setPosition({0.00, -33, 0.00})
broadcastToAll("<<< Preparing Map 3 >>>", "White")
getObjectFromGUID("6565c7").setValue("Map 3: Winding Paths \nDifficulty: Moderate")
Peca_B.setPosition({-11.43, 1.58, 2.78})    Peca_B.setRotation({0,275.16,0})  Peca_B.setLock(true)
Peca_I.setPosition({-7.94, 1.58, 8.65})     Peca_I.setRotation({0,34.8,0})    Peca_I.setLock(true)
Peca_F.setPosition({-1.18, 1.58, 8.55})     Peca_F.setRotation({0,34.86,0})   Peca_F.setLock(true)
Peca_G.setPosition({2.04, 1.58, 2.68})      Peca_G.setRotation({0,274.80,0})  Peca_G.setLock(true)
Peca_C.setPosition({6.41, 1.58, 7.87})      Peca_C.setRotation({0,214.8,0})   Peca_C.setLock(true)
Peca_N.setPosition({13.23, 1.58, 7.82})     Peca_N.setRotation({0,275.04,0})  Peca_N.setLock(true)
Peca_FIM.setPosition({17.39, 1.58, 9.65})   Peca_FIM.setRotation({0,336,0})   Peca_FIM.setLock(true)

Bag_Barreiras.shuffle()
parametros =  { position = {-9.47, 1.75, 5.68}, smooth = true, callback_function = take_callback, rotation={0,125,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {-4.35, 1.75, 8.3}, smooth = true, callback_function = take_callback, rotation={0,185,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {0.24, 1.75, 5.36}, smooth = true, callback_function = take_callback, rotation={0,245,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {4.16, 1.75, 5.46}, smooth = true, callback_function = take_callback, rotation={0,126,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {9.92, 1.75, 7.63}, smooth = true, callback_function = take_callback, rotation={0,184,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {10, -3, 20}, smooth = true, callback_function = take_callback, rotation={0,0,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras_exp.shuffle()
parametros =  { position = {0.00, -30, 30.00}, smooth = false, callback_function = take_callback2, rotation={0,0,0} }
Bag_Barreiras_exp.takeObject(parametros)

Bag_Barreiras_exp.shuffle()
parametros =  { position = {0.00, -31, 30.00}, smooth = false, callback_function = take_callback2, rotation={0,0,0} }
Bag_Barreiras_exp.takeObject(parametros)

Cavernas_P3()

end
---------------------------------------------------------------------------------------------------------------------------

function poe_pista_4()

getObjectFromGUID("b5fb7e").setPosition({0.00, -33, 0.00})
broadcastToAll("<<< Preparing Map 4 >>>", "White")
getObjectFromGUID("6565c7").setValue("Map 4: Serpentine \nDifficulty: Moderate")
Peca_A.setPosition({-9.76, 1.58, 8.44})   Peca_A.setRotation({0,270,0})      Peca_A.setLock(true)
Peca_C.setPosition({-5.91, 1.58, 2.83})    Peca_C.setRotation({0,90.02,0})       Peca_C.setLock(true)
Peca_E.setPosition({0.82, 1.58, 3.35})   Peca_E.setRotation({0,270.07,0})    Peca_E.setLock(true)
Peca_G.setPosition({-1.96, 1.58, 9.43})    Peca_G.setRotation({0,30.14,0})    Peca_G.setLock(true)
Peca_J.setPosition({4.71, 1.58, 9.94})     Peca_J.setRotation({0,30.08,0})    Peca_J.setLock(true)
Peca_M.setPosition({8.5, 1.58, 4.4})    Peca_M.setRotation({0,149.91,0})   Peca_M.setLock(true)
Peca_FIM.setPosition({8.54, 1.58, -0.13}) Peca_FIM.setRotation({0,89.86,0}) Peca_FIM.setLock(true)

Bag_Barreiras.shuffle()
parametros =  { position = {-7.56, 1.75, 5.60}, smooth = true, callback_function = take_callback, rotation={0,60,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {-2.4, 1.75, 2.85}, smooth = true, callback_function = take_callback, rotation={0,179,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {-0.84, 1.75, 6.37}, smooth = true, callback_function = take_callback, rotation={0,61.5,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {1.53, 1.75, 9.9}, smooth = true, callback_function = take_callback, rotation={0,0,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {6.83, 1.75, 7.14}, smooth = true, callback_function = take_callback, rotation={0,59.5,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {10, -3, 20}, smooth = true, callback_function = take_callback, rotation={0,0,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras_exp.shuffle()
parametros =  { position = {0.00, -30, 30.00}, smooth = false, callback_function = take_callback2, rotation={0,0,0} }
Bag_Barreiras_exp.takeObject(parametros)

Bag_Barreiras_exp.shuffle()
parametros =  { position = {0.00, -31, 30.00}, smooth = false, callback_function = take_callback2, rotation={0,0,0} }
Bag_Barreiras_exp.takeObject(parametros)

Cavernas_P4()

end
-----------------------------------------------------------------------------------------------------------------------------------

function poe_pista_5()

getObjectFromGUID("b5fb7e").setPosition({0.00, -33, 0.00})
broadcastToAll("<<< Preparing Map 5 >>>", "White")
getObjectFromGUID("6565c7").setValue("Map 5: Swamplands \nDifficulty: Difficult")
Peca_A.setPosition({-8.02, 1.58, 1.66})   Peca_A.setRotation({0,135.41,0})  Peca_A.setLock(true)
Peca_R.setPosition({-6.66, 1.58, 6.29})   Peca_R.setRotation({0,194.45,0})  Peca_R.setLock(true)
Peca_D.setPosition({-5.41, 1.58, 10.85})  Peca_D.setRotation({0,255.65,0})  Peca_D.setLock(true)
Peca_H.setPosition({0.95, 1.58, 13.01})   Peca_H.setRotation({0,255.18,0})  Peca_H.setLock(true)
Peca_E.setPosition({7.54, 1.58, 14.13})   Peca_E.setRotation({0,194.31,0})  Peca_E.setLock(true)
Peca_O.setPosition({7.42, 1.58, 9.33})    Peca_O.setRotation({0,194.52,0})  Peca_O.setLock(true)
Peca_K.setPosition({6.15, 1.58, 4.81})    Peca_K.setRotation({0,135.55,0})   Peca_K.setLock(true)
Peca_FIM.setPosition({7.23, 1.58, 0.43})  Peca_FIM.setRotation({0,75.11,0}) Peca_FIM.setLock(true)

Bag_Barreiras.shuffle()
parametros =  { position = {-7.06, 1.75, 5.12}, smooth = true, callback_function = take_callback, rotation={0,105,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {-6.29, 1.75, 7.75}, smooth = true, callback_function = take_callback, rotation={0,285,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {-1.89, 1.75, 11.76}, smooth = true, callback_function = take_callback, rotation={0,165,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {4.38, 1.75, 13.92}, smooth = true, callback_function = take_callback, rotation={0,165,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {7.21, 1.75, 10.71}, smooth = true, callback_function = take_callback, rotation={0,105,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {7.09, 1.75, 7.89}, smooth = true, callback_function = take_callback, rotation={0,105,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras_exp.shuffle()
parametros =  { position = {0.00, -30, 30.00}, smooth = false, callback_function = take_callback2, rotation={0,0,0} }
Bag_Barreiras_exp.takeObject(parametros)

Bag_Barreiras_exp.shuffle()
parametros =  { position = {0.00, -31, 30.00}, smooth = false, callback_function = take_callback2, rotation={0,0,0} }
Bag_Barreiras_exp.takeObject(parametros)

Cavernas_P5()

end

-------------------------------------------------------------------------------------------------------------------------------------

function poe_pista_6()

getObjectFromGUID("b5fb7e").setPosition({0.00, -33, 0.00})
broadcastToAll("<<< Preparing Map 6 >>>", "White")
getObjectFromGUID("6565c7").setValue("Map 6: Witch's Cauldron \nDifficulty: Difficult")
Peca_A.setPosition({-7.89, 1.58, 12.88})   Peca_A.setRotation({0,214.05,0})  Peca_A.setLock(true)
Peca_L.setPosition({-1.11, 1.58, 12.85})   Peca_L.setRotation({0,153.99,0})  Peca_L.setLock(true)
Peca_G.setPosition({5.64, 1.58, 12.83})  Peca_G.setRotation({0,94,0})  Peca_G.setLock(true)
Peca_D.setPosition({9.04, 1.58, 6.99})   Peca_D.setRotation({0,94,0})  Peca_D.setLock(true)
Peca_M.setPosition({4.83, 1.58, 1.7})   Peca_M.setRotation({0,214.02,0})  Peca_M.setLock(true)
Peca_I.setPosition({-1.86, 1.58, 1.75})    Peca_I.setRotation({0,153.94,0})  Peca_I.setLock(true)
Peca_FIM.setPosition({-5.66, 1.58, 4.44})  Peca_FIM.setRotation({0,214,0}) Peca_FIM.setLock(true)

Bag_Barreiras.shuffle()
parametros =  { position = {-4.32, 1.75, 12.63}, smooth = true, callback_function = take_callback, rotation={0,185,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {2.32, 1.75, 12.58}, smooth = true, callback_function = take_callback, rotation={0,185,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {7.11, 1.75, 9.66}, smooth = true, callback_function = take_callback, rotation={0,245,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {7.03, 1.75, 4.16}, smooth = true, callback_function = take_callback, rotation={0,307,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {1.4, 1.75, 1.91}, smooth = true, callback_function = take_callback, rotation={0,3,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {10, -3, 20}, smooth = true, callback_function = take_callback, rotation={0,0,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras_exp.shuffle()
parametros =  { position = {0.00, -30, 30.00}, smooth = false, callback_function = take_callback2, rotation={0,0,0} }
Bag_Barreiras_exp.takeObject(parametros)

Bag_Barreiras_exp.shuffle()
parametros =  { position = {0.00, -31, 30.00}, smooth = false, callback_function = take_callback2, rotation={0,0,0} }
Bag_Barreiras_exp.takeObject(parametros)

Cavernas_P6()

end

-------------------------------------------------------------------------------------------------------------------------------------

function poe_pista_7()

getObjectFromGUID("b5fb7e").setPosition({0.00, -33, 0.00})
broadcastToAll("<<< Preparing Map 7 >>>", "White")
getObjectFromGUID("6565c7").setValue("Circuito 7: Montagem Aleatória")

       N_SORT1 = (math.random(1,2))
    if N_SORT1 == 1 then Peca_A.setPosition({-9.76, 1.58, 8.44})   Peca_A.setRotation({0.00, 270.00, 0.00})  Peca_A.setLock(true)
elseif N_SORT1 == 2 then Peca_B.setPosition({-9.80, 1.58, 8.43})   Peca_B.setRotation({0.00, 30.00, 0.00})  Peca_B.setLock(true) end

      Sort_Rot()
       N_SORT2 = (math.random(1,3))
    if N_SORT2 == 1 then Peca_I.setPosition({-6.85, 1.58, 2.25})   Peca_I.setRotation(Rotacao)  Peca_I.setLock(true) Peca_I.setDescription(N_rot)
elseif N_SORT2 == 2 then Peca_F.setPosition({-6.85, 1.58, 2.25})   Peca_F.setRotation(Rotacao)  Peca_F.setLock(true) Peca_F.setDescription(N_rot)
elseif N_SORT2 == 3 then Peca_C.setPosition({-6.85, 1.58, 2.25})   Peca_C.setRotation(Rotacao)  Peca_C.setLock(true) Peca_C.setDescription(N_rot) end

       Sort_Rot()
       N_SORT3 = (math.random(1,3))
    if N_SORT3 == 1 then Peca_J.setPosition({0.03, 1.58, 1.60})   Peca_J.setRotation(Rotacao)  Peca_J.setLock(true) Peca_J.setDescription(N_rot)
elseif N_SORT3 == 2 then Peca_K.setPosition({0.03, 1.58, 1.60})   Peca_K.setRotation(Rotacao)  Peca_K.setLock(true) Peca_K.setDescription(N_rot)
elseif N_SORT3 == 3 then Peca_E.setPosition({0.03, 1.58, 1.60})   Peca_E.setRotation(Rotacao)  Peca_E.setLock(true) Peca_E.setDescription(N_rot) end

       Sort_Rot2()
       N_SORT4 = (math.random(1,3))
    if N_SORT4 == 1 then Peca_R.setPosition({4.80, 1.58, 1.55})   Peca_R.setRotation(Rotacao)  Peca_R.setLock(true) Peca_R.setDescription(N_rot)
elseif N_SORT4 == 2 then Peca_O.setPosition({4.80, 1.58, 1.55})   Peca_O.setRotation(Rotacao)  Peca_O.setLock(true) Peca_O.setDescription(N_rot)
elseif N_SORT4 == 3 then Peca_Q.setPosition({4.80, 1.58, 1.55})   Peca_Q.setRotation(Rotacao)  Peca_Q.setLock(true) Peca_Q.setDescription(N_rot) end

       Sort_Rot()
       N_SORT5 = (math.random(1,3))
    if N_SORT5 == 1 then Peca_D.setPosition({9.60, 1.58, 1.48})   Peca_D.setRotation(Rotacao)  Peca_D.setLock(true) Peca_D.setDescription(N_rot)
elseif N_SORT5 == 2 then Peca_G.setPosition({9.60, 1.58, 1.48})   Peca_G.setRotation(Rotacao)  Peca_G.setLock(true) Peca_G.setDescription(N_rot)
elseif N_SORT5 == 3 then Peca_M.setPosition({9.60, 1.58, 1.48})   Peca_M.setRotation(Rotacao)  Peca_M.setLock(true) Peca_M.setDescription(N_rot) end

       Sort_Rot()
       N_SORT6 = (math.random(1,3))
    if N_SORT6 == 1 then Peca_N.setPosition({16.32, 1.58, 1.93})   Peca_N.setRotation(Rotacao)  Peca_N.setLock(true) Peca_N.setDescription(N_rot)
elseif N_SORT6 == 2 then Peca_L.setPosition({16.32, 1.58, 1.93})   Peca_L.setRotation(Rotacao)  Peca_L.setLock(true) Peca_L.setDescription(N_rot)
elseif N_SORT6 == 3 then Peca_H.setPosition({16.32, 1.58, 1.93})   Peca_H.setRotation(Rotacao)  Peca_H.setLock(true) Peca_H.setDescription(N_rot) end

       N_SORT7 = (math.random(1,2))
    if N_SORT7 == 1 then Peca_FIM.setPosition({20.30, 1.58, 4.18})   Peca_FIM.setRotation({0.00, 330.03, 0.00})  Peca_FIM.setLock(true)
elseif N_SORT7 == 2 then Peca_FIM2.setPosition({20.30, 1.58, 4.18})   Peca_FIM2.setRotation({0.00, 330.03, 0.00})  Peca_FIM2.setLock(true)  end

Bag_Barreiras.shuffle()
parametros =  { position = {-8.32, 1.75, 5.19}, smooth = true, callback_function = take_callback, rotation={0,60,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {-3.32, 1.75, 1.78}, smooth = true, callback_function = take_callback, rotation={0,0,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {3.40, 1.75, 1.53}, smooth = true, callback_function = take_callback, rotation={0,180,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {6.24, 1.75, 1.46}, smooth = true, callback_function = take_callback, rotation={0,0,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {13.02, 1.75, 1.56}, smooth = true, callback_function = take_callback, rotation={0,180,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {10, -3, 20}, smooth = true, callback_function = take_callback, rotation={0,0,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras_exp.shuffle()
parametros =  { position = {0.00, -30, 30.00}, smooth = false, callback_function = take_callback2, rotation={0,0,0} }
Bag_Barreiras_exp.takeObject(parametros)

Bag_Barreiras_exp.shuffle()
parametros =  { position = {0.00, -31, 30.00}, smooth = false, callback_function = take_callback2, rotation={0,0,0} }
Bag_Barreiras_exp.takeObject(parametros)

startLuaCoroutine(self, 'Cavernas_PA')

end

-------------------------------------------------------------------------------------------------------------------------------------

function poe_pista_8()

getObjectFromGUID("b5fb7e").setPosition({0.00, -33, 0.00})
broadcastToAll("<<< Preparing Map 8 >>>", "White")
getObjectFromGUID("6565c7").setValue("Circuito 8: Montagem Aleatória 2")

--pode colocar mais opções
       N_SORT1 = (math.random(1,2))
    if N_SORT1 == 1 then Peca_A.setPosition({0.16, 1.58, 12.85})   Peca_A.setRotation({0.00, 330, 0.00})  Peca_A.setLock(true) POS_INI = "A"
elseif N_SORT1 == 2 then Peca_B.setPosition({-7.66, 1.58, 12.90})   Peca_B.setRotation({0.00, 30, 0.00})  Peca_B.setLock(true) POS_INI = "B" end

      Sort_Rot()
       N_SORT2 = (math.random(1,3))
    if N_SORT2 == 1 then Peca_J.setPosition({-3.79, 1.58, 7.22})   Peca_J.setRotation(Rotacao)  Peca_J.setLock(true) Peca_J.setDescription(N_rot)
elseif N_SORT2 == 2 then Peca_K.setPosition({-3.79, 1.58, 7.22})   Peca_K.setRotation(Rotacao)  Peca_K.setLock(true) Peca_K.setDescription(N_rot)
elseif N_SORT2 == 3 then Peca_E.setPosition({-3.79, 1.58, 7.22})   Peca_E.setRotation(Rotacao)  Peca_E.setLock(true) Peca_E.setDescription(N_rot) end

       Sort_Rot()
       N_SORT3 = (math.random(1,3))
    if N_SORT3 == 1 then Peca_I.setPosition({0.03, 1.58, 1.60})   Peca_I.setRotation(Rotacao)  Peca_I.setLock(true) Peca_I.setDescription(N_rot)
elseif N_SORT3 == 2 then Peca_F.setPosition({0.03, 1.58, 1.60})   Peca_F.setRotation(Rotacao)  Peca_F.setLock(true) Peca_F.setDescription(N_rot)
elseif N_SORT3 == 3 then Peca_C.setPosition({0.03, 1.58, 1.60})   Peca_C.setRotation(Rotacao)  Peca_C.setLock(true) Peca_C.setDescription(N_rot) end

       Sort_Rot2()
       N_SORT4 = (math.random(1,3))
    if N_SORT4 == 1 then Peca_R.setPosition({4.80, 1.58, 1.55})   Peca_R.setRotation(Rotacao)  Peca_R.setLock(true) Peca_R.setDescription(N_rot)
elseif N_SORT4 == 2 then Peca_O.setPosition({4.80, 1.58, 1.55})   Peca_O.setRotation(Rotacao)  Peca_O.setLock(true) Peca_O.setDescription(N_rot)
elseif N_SORT4 == 3 then Peca_Q.setPosition({4.80, 1.58, 1.55})   Peca_Q.setRotation(Rotacao)  Peca_Q.setLock(true) Peca_Q.setDescription(N_rot) end

       Sort_Rot()
       N_SORT5 = (math.random(1,3))
    if N_SORT5 == 1 then Peca_N.setPosition({9.60, 1.58, 1.48})   Peca_N.setRotation(Rotacao)  Peca_N.setLock(true) Peca_N.setDescription(N_rot)
elseif N_SORT5 == 2 then Peca_L.setPosition({9.60, 1.58, 1.48})   Peca_L.setRotation(Rotacao)  Peca_L.setLock(true) Peca_L.setDescription(N_rot)
elseif N_SORT5 == 3 then Peca_H.setPosition({9.60, 1.58, 1.48})   Peca_H.setRotation(Rotacao)  Peca_H.setLock(true) Peca_H.setDescription(N_rot) end

       Sort_Rot()
       N_SORT6 = (math.random(1,3))
    if N_SORT6 == 1 then Peca_D.setPosition({12.53, 1.58, 7.55})   Peca_D.setRotation(Rotacao)  Peca_D.setLock(true) Peca_D.setDescription(N_rot)
elseif N_SORT6 == 2 then Peca_G.setPosition({12.53, 1.58, 7.55})   Peca_G.setRotation(Rotacao)  Peca_G.setLock(true) Peca_G.setDescription(N_rot)
elseif N_SORT6 == 3 then Peca_M.setPosition({12.53, 1.58, 7.55})   Peca_M.setRotation(Rotacao)  Peca_M.setLock(true) Peca_M.setDescription(N_rot) end

       N_SORT7 = (math.random(1,2))
    if N_SORT7 == 1 then Peca_FIM.setPosition({16.48, 1.58, 9.77})   Peca_FIM.setRotation({0.00, 330.03, 0.00})  Peca_FIM.setLock(true)
elseif N_SORT7 == 2 then Peca_FIM2.setPosition({16.48, 1.58, 9.77})   Peca_FIM2.setRotation({0.00, 330.03, 0.00})  Peca_FIM2.setLock(true)  end

Bag_Barreiras.shuffle()
if POS_INI == "A" then parametros =  { position = {-1.70, 1.75, 9.74}, smooth = true, callback_function = take_callback, rotation={0,300,0} } end
if POS_INI == "B" then parametros =  { position = {-5.43, 1.75, 10.10}, smooth = true, callback_function = take_callback, rotation={0,60,0} } end
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {3.63, 1.73, 1.53}, smooth = true, callback_function = take_callback, rotation={0,180,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {-1.71, 1.74, 4.32}, smooth = true, callback_function = take_callback, rotation={0,60,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {6.24, 1.75, 1.46}, smooth = true, callback_function = take_callback, rotation={0,0,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {11.31, 1.74, 4.46}, smooth = true, callback_function = take_callback, rotation={0,120,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras.shuffle()
parametros =  { position = {10, -3, 20}, smooth = true, callback_function = take_callback, rotation={0,0,0} }
Bag_Barreiras.takeObject(parametros)

Bag_Barreiras_exp.shuffle()
parametros =  { position = {0.00, -30, 30.00}, smooth = false, callback_function = take_callback2, rotation={0,0,0} }
Bag_Barreiras_exp.takeObject(parametros)

Bag_Barreiras_exp.shuffle()
parametros =  { position = {0.00, -31, 30.00}, smooth = false, callback_function = take_callback2, rotation={0,0,0} }
Bag_Barreiras_exp.takeObject(parametros)

startLuaCoroutine(self, 'Cavernas_PA2')

end

-------------------------------------------------------------------------------------------------------------------------------------
function poe_pista_Exp1()

--Move o Piso
getObjectFromGUID("b5fb7e").setPosition({0.00, -33, 0.00})

--Set textos
broadcastToAll("<<< Preparing Map 1 >>>", "White")
getObjectFromGUID("6565c7").setValue("[Exp] Circuito 1: Viagem ao Desconhecido \nDificuldade: Média")

--Set posicionamento dos tiles   --4: 30° / 5: 330° / 6: 270° / 1: 210° / 2: 150° /3: 90°
Peca_B.setPosition({13.78, 1.58, 6.72})       Peca_B.setRotation({0, 150, 0})       Peca_B.setDescription(2)      Peca_B.setLock(true)
Peca_N.setPosition({7.08, 1.58, 7.30})        Peca_N.setRotation({0, 330, 0})       Peca_N.setDescription(5)      Peca_N.setLock(true)
Peca_Heros2.setPosition({9.23, 1.58, 10.89})  Peca_Heros2.setRotation({0, 210, 0})  Peca_Heros2.setDescription(1) Peca_Heros2.setLock(true)
Peca_T2.setPosition({3.37, 1.58, 12.95})      Peca_T2.setRotation({0, 30, 0})       Peca_T2.setDescription(4)     Peca_T2.setLock(true)
Peca_X2.setPosition({-3.30, 1.58, 13.57})     Peca_X2.setRotation({0, 210, 0})      Peca_X2.setDescription(1)     Peca_X2.setLock(true)
Peca_C.setPosition({-7.07, 1.58, 8.07})       Peca_C.setRotation({0, 150, 0})       Peca_C.setDescription(2)      Peca_C.setLock(true)
Peca_U2.setPosition({-10.94, 1.58, 2.56})     Peca_U2.setRotation({0, 330, 0})      Peca_U2.setDescription(5)     Peca_U2.setLock(true)
Peca_FIM2.setPosition({-10.93, 1.58, -2.00})  Peca_FIM2.setRotation({0, 90, 0})     Peca_FIM2.setDescription(3)   Peca_FIM2.setLock(true)

--Adiciona as 2 barreiras da expanção ao bag comum
Bag_Barreiras.putObject(Bag_Barreiras_exp.takeObject())
Bag_Barreiras.putObject(Bag_Barreiras_exp.takeObject())

--Sorteia e posiciona as barreiras
Bag_Barreiras.shuffle()
Bag_Barreiras.takeObject({ position = {10.22, 1.73, 7.24}, smooth = true, callback_function = take_callback, rotation={0.00, 179.99, 0.00} })
Bag_Barreiras.takeObject({ position = {5.34, 1.73, 10.31}, smooth = true, callback_function = take_callback, rotation={0.00, 60, 0.00} })
Bag_Barreiras.takeObject({ position = {-0.09, 1.73, 13.10}, smooth = true, callback_function = take_callback, rotation={0,0,0} })
Bag_Barreiras.takeObject({ position = {-5.43, 1.73, 10.78}, smooth = true, callback_function = take_callback, rotation={0,120,0} })
Bag_Barreiras.takeObject({ position = {-9.21, 1.73, 5.21}, smooth = true, callback_function = take_callback, rotation={0,120,0} })
--barreiras q sobram
Bag_Barreiras.takeObject({ position =  {35.84, 1.55, 19.88}, smooth = true, callback_function = take_callback, rotation={0.00, 90.0, 0.00} })
Bag_Barreiras.takeObject({ position = {35.84, 1.55, 19.24}, smooth = true, callback_function = take_callback, rotation={0.00, 90.0, 0.00} })
Bag_Barreiras.takeObject({ position = {35.84, 1.55, 20.24}, smooth = true, callback_function = take_callback, rotation={0.00, 90.0, 0.00} })

--Tokens de Caverna
Bag_caverna_exp = getObjectFromGUID("1d7d2d")
Bag_caverna_exp.shuffle()

--Define o bag dos tokens
Usar_Tokens_Exp = 1
startLuaCoroutine(self, 'Cavernas_Ale')

--POSICIONA DECK Herois
getObjectFromGUID("3275b3").setPositionSmooth({10.33, 2, 12.71})
getObjectFromGUID("3275b3").setRotation({0.00, 180.00, 180.00})
getObjectFromGUID("3275b3").shuffle()

end

-------------------------------------------------------------------------------------------------------------------------------------

function poe_pista_Exp2()

--Move o Piso
getObjectFromGUID("b5fb7e").setPosition({0.00, -33, 0.00})

--Set textos
broadcastToAll("<<< Preparing Map 2 >>>", "White")
getObjectFromGUID("6565c7").setValue("[Exp] Circuito 2: Atravéz dos demônios \nDificuldade: Média")

--Set posicionamento dos tiles                                                 -- 1: 210° / 2: 150° /3: 90° / 4: 30° / 5: 330° / 6: 270° /
Peca_A.setPosition({-10.79, 1.58, 0.36})        Peca_A.setRotation({0.00, 210.00, 0.00})         Peca_A.setLock(true)       Peca_A.setDescription(1)
Peca_X2.setPosition({-4.03, 1.58, -0.20})       Peca_X2.setRotation({0.00, 330.00, 0.00})        Peca_X2.setLock(true)      Peca_X2.setDescription(5)
Peca_Heros2.setPosition({-6.10, 1.58, -3.84})   Peca_Heros2.setRotation({360.00, 30.00, 0.00})   Peca_Heros2.setLock(true)  Peca_Heros2.setDescription(4)
Peca_H.setPosition({2.69, 1.58, -0.87})         Peca_H.setRotation({0.00, 150.01, 0.00})         Peca_H.setLock(true)       Peca_H.setDescription(2)
Peca_I.setPosition({9.42, 1.58, -0.38})         Peca_I.setRotation({0.00, 268.92, 0.00})         Peca_I.setLock(true)       Peca_I.setDescription(6)
Peca_S2.setPosition({6.51, 1.58, 5.67})         Peca_S2.setRotation({0.00, 330, 0.00})           Peca_S2.setLock(true)      Peca_S2.setDescription(5)
Peca_U2.setPosition({-0.13, 1.58, 6.21})         Peca_U2.setRotation({0.00, 330, 0.00})          Peca_U2.setLock(true)      Peca_U2.setDescription(5)
Peca_FIM.setPosition({-3.99, 1.58, 8.45})       Peca_FIM.setRotation({0.00, 210.00, 0.00})       Peca_FIM.setLock(true)     Peca_FIM.setDescription(1)

--Adiciona as 2 barreiras da expanção ao bag comum
Bag_Barreiras.putObject(Bag_Barreiras_exp.takeObject())
Bag_Barreiras.putObject(Bag_Barreiras_exp.takeObject())

--Sorteia e posiciona as barreiras
Bag_Barreiras.shuffle()
Bag_Barreiras.takeObject({ position = {-7.20, 1.73, -0.24}, smooth = true, callback_function = take_callback, rotation={0.00, 359.99, 0.00} })
Bag_Barreiras.takeObject({ position = {-0.45, 1.73, -0.82}, smooth = true, callback_function = take_callback, rotation={0.00, 359.99, 0.00} })
Bag_Barreiras.takeObject({ position = {6.24, 1.73, -0.45}, smooth = true, callback_function = take_callback, rotation={0.00, 359.98, 0.00} })
Bag_Barreiras.takeObject({ position = {7.66, 1.73, 2.71}, smooth = true, callback_function = take_callback, rotation={0.00, 62.13, 0.00} })
Bag_Barreiras.takeObject({ position = {3.17, 1.73, 5.81}, smooth = true, callback_function = take_callback, rotation={0.00, 2.48, 0.00} })
--barreiras q sobram
Bag_Barreiras.takeObject({ position =  {35.84, 1.55, 19.88}, smooth = true, callback_function = take_callback, rotation={0.00, 90.0, 0.00} })
Bag_Barreiras.takeObject({ position = {35.84, 1.55, 19.24}, smooth = true, callback_function = take_callback, rotation={0.00, 90.0, 0.00} })
Bag_Barreiras.takeObject({ position = {35.84, 1.55, 20.24}, smooth = true, callback_function = take_callback, rotation={0.00, 90.0, 0.00} })

--Tokens de Caverna
Bag_caverna_exp = getObjectFromGUID("1d7d2d")
Bag_caverna_exp.shuffle()

--Define o bag dos tokens
Usar_Tokens_Exp = 1
--startLuaCoroutine(self, 'Cavernas_Ale')

--Usar incrmento na cordenada Y -> +1*i
for i = 1, 4, 1 do Bag_caverna_exp.takeObject({ position = {-11.75, 1.88+1*i, 2.00}, smooth = true, callback_function = nil, rotation={0.00, 180.00, 180.00} }) end
for i = 1, 4, 1 do Bag_caverna_exp.takeObject({ position = {-3.09, 1.88+1*i, 1.43}, smooth = true, callback_function = nil, rotation={0.00, 180.01, 180.00} }) end
for i = 1, 4, 1 do Bag_caverna_exp.takeObject({ position = {0.77, 1.88+1*i, -1.99}, smooth = true, callback_function = nil, rotation={0.00, 180.01, 180.00} }) end
for i = 1, 4, 1 do Bag_caverna_exp.takeObject({ position = {9.43, 1.88+1*i, -3.72}, smooth = true, callback_function = nil, rotation={0.00, 180.01, 180.00} }) end
for i = 1, 4, 1 do Bag_caverna_exp.takeObject({ position = {6.59, 1.88+1*i, 5.72}, smooth = true, callback_function = nil, rotation={0.00, 180.01, 180.00} }) end
for i = 1, 4, 1 do Bag_caverna_exp.takeObject({ position = {-0.04, 1.88+1*i, 6.33}, smooth = true, callback_function = nil, rotation={0.00, 180.01, 180.00} }) end

--POSICIONA DECK Herois
getObjectFromGUID("3275b3").setPositionSmooth({-8.69, 1.50, -4.91})
getObjectFromGUID("3275b3").setRotation({0.00, 180.00, 180.00})
getObjectFromGUID("3275b3").shuffle()

end
-------------------------------------------------------------------------------------------------------------------------------------

function poe_pista_Exp3()
--Move o Piso
getObjectFromGUID("b5fb7e").setPosition({0.00, -33, 0.00})

--Set textos
broadcastToAll("<<< Preparing Map 3 >>>", "White")
getObjectFromGUID("6565c7").setValue("[Exp] Circuito 3: A ROTA DOS PEREGRINOS \nDificuldade: Média")

--Set posicionamento dos tiles
Peca_B.setPosition({-11.20, 1.58, -1.01})         Peca_B.setRotation({0.00, 269.99, 0.00})            Peca_B.setLock(true)
Peca_R.setPosition({-7.93, 1.58, 2.57})           Peca_R.setRotation({0.01, 30.12, 0.00})             Peca_R.setLock(true)
Peca_Heros1.setPosition({-7.46, 1.58, 10.34})     Peca_Heros1.setRotation({0.06, 150.98, 359.97})       Peca_Heros1.setLock(true)
Peca_T2.setPosition({-5.48, 1.58, 6.61})           Peca_T2.setRotation({0, 212, 0})          Peca_T2.setLock(true)
Peca_L.setPosition({1.21, 1.58, 5.88})            Peca_L.setRotation({0.00, 30.25, 0.00})             Peca_L.setLock(true)
Peca_F.setPosition({7.80, 1.58, 5.27})            Peca_F.setRotation({0.00, 210.16, 0.00})            Peca_F.setLock(true)
Peca_V2.setPosition({14.42, 1.58, 4.54})           Peca_V2.setRotation({0.00, 211.69, 0.00})            Peca_V2.setLock(true)
Peca_X2.setPosition({18.20, 1.58, -1.07})          Peca_X2.setRotation({0.00, 150.50, 0.00})            Peca_X2.setLock(true)
Peca_FIM2.setPosition({14.23, 1.58, -3.25})       Peca_FIM2.setRotation({0.00, 149.43, 0.00})       Peca_FIM2.setLock(true)

--Adiciona as 2 barreiras da expanção ao bag comum
Bag_Barreiras.putObject(Bag_Barreiras_exp.takeObject())
Bag_Barreiras.putObject(Bag_Barreiras_exp.takeObject())

--Sorteia e posiciona as barreiras
Bag_Barreiras.shuffle()
Bag_Barreiras.takeObject({ position = {-9.36, 1.73, 2.08}, smooth = true, callback_function = take_callback, rotation={0.00, 119.99, 0.00} })
Bag_Barreiras.takeObject({ position = {-7.04, 1.73, 3.88}, smooth = true, callback_function = take_callback, rotation={359.99, 300.02, 0.00} })
Bag_Barreiras.takeObject({ position = {-1.99, 1.73, 5.98}, smooth = true, callback_function = take_callback, rotation={0.00, 359.99, -0.01} })
Bag_Barreiras.takeObject({ position = {4.63, 1.73, 5.28}, smooth = true, callback_function = take_callback, rotation={0.00, 0.00, 0.00} })
Bag_Barreiras.takeObject({ position = {11.24, 1.73, 4.67}, smooth = true, callback_function = take_callback, rotation={0.00, 359.99, 0.00} })
Bag_Barreiras.takeObject({ position = {16.49, 1.73, 1.73}, smooth = true, callback_function = take_callback, rotation={0.00, 60.01, 0.00} })
--barreiras q sobram
Bag_Barreiras.takeObject({ position = {35.84, 1.55, 19.24}, smooth = true, callback_function = take_callback, rotation={0.00, 90.0, 0.00} })
Bag_Barreiras.takeObject({ position = {35.84, 1.55, 20.24}, smooth = true, callback_function = take_callback, rotation={0.00, 90.0, 0.00} })

--Tokens de Caverna
Bag_caverna_exp = getObjectFromGUID("1d7d2d")
Bag_caverna_exp.shuffle()
--Usar incrmento na cordenada Y -> +1*i
for i = 1, 4, 1 do Bag_caverna_exp.takeObject({ position = {-9.29, 1.88+1*i, -2.11}, smooth = true, callback_function = nil, rotation={0.00, 180.00, 180.00} }) end
for i = 1, 4, 1 do Bag_caverna_exp.takeObject({ position = {-5.55, 1.88+1*i, 4.35}, smooth = true, callback_function = nil, rotation={0.00, 180.01, 180.00} }) end
for i = 1, 4, 1 do Bag_caverna_exp.takeObject({ position = {-5.52, 1.88+1*i, 8.79}, smooth = true, callback_function = nil, rotation={0.00, 180.01, 180.00} }) end
for i = 1, 4, 1 do Bag_caverna_exp.takeObject({ position = {0.23, 1.88+1*i, 6.47}, smooth = true, callback_function = nil, rotation={0.00, 180.01, 180.00} }) end
for i = 1, 4, 1 do Bag_caverna_exp.takeObject({ position = {9.76, 1.88+1*i, 7.53}, smooth = true, callback_function = nil, rotation={0.00, 180.01, 180.00} }) end
for i = 1, 4, 1 do Bag_caverna_exp.takeObject({ position = {13.37, 1.88+1*i, 3.03}, smooth = true, callback_function = nil, rotation={0.00, 180.01, 180.00} }) end
for i = 1, 4, 1 do Bag_caverna_exp.takeObject({ position = {17.19, 1.88+1*i, -2.67}, smooth = true, callback_function = nil, rotation={0.00, 180.01, 180.00} }) end

--POSICIONA DECK Herois
getObjectFromGUID("3275b3").setPositionSmooth({-8.35, 2, 13.24})
getObjectFromGUID("3275b3").setRotation({0.00, 180.00, 180.00})
getObjectFromGUID("3275b3").shuffle()

end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function poe_pista_Exp4()
--Mpve o Piso
getObjectFromGUID("b5fb7e").setPosition({0.00, -33, 0.00})

--Set textos
broadcastToAll("<<< Preparing Map 4 >>>", "White")
getObjectFromGUID("6565c7").setValue("[Exp] Circuito 4: Foz do Grande Rio \nDificuldade: Difícil")

--Set posicionamento dos tiles
Peca_A.setPosition({-3.42, 1.58, 5.30})        Peca_A.setRotation({0,180,0})                   Peca_A.setLock(true)
Peca_I.setPosition({2.23, 1.58, 9.16})         Peca_I.setRotation({0.00, 359.52, 0.15})        Peca_I.setLock(true)
Peca_Heros1.setPosition({-1.42, 1.58, 11.31})  Peca_Heros1.setRotation({0.00, 119.97, 0.00})   Peca_Heros1.setLock(true)
Peca_S2.setPosition({8.34, 1.58, 6.25})        Peca_S2.setRotation({0.00, 120.03, 0.00})       Peca_S2.setLock(true)
Peca_D.setPosition({8.89, 1.59, 12.94})        Peca_D.setRotation({0.21, 0.85, 180.01})        Peca_D.setLock(true)
Peca_X2.setPosition({14.91, 1.58, 10.07})       Peca_X2.setRotation({0.00, 0, 0.00})         Peca_X2.setLock(true)
Peca_Q.setPosition({15.96, 1.58, 5.30})       Peca_Q.setRotation({359.99, 359.60, 0.00})       Peca_Q.setLock(true)
Peca_V2.setPosition({15.99, 1.58, 0.57})       Peca_V2.setRotation({0.00, 60.05, 0.00})        Peca_V2.setLock(true)
Peca_FIM2.setPosition({18.21, 1.58, -3.33})    Peca_FIM2.setRotation({0.00, 60.03, 0.00})      Peca_FIM2.setLock(true)

--Adiciona as 2 barreiras da expanção ao bag comum
Bag_Barreiras.putObject(Bag_Barreiras_exp.takeObject())
Bag_Barreiras.putObject(Bag_Barreiras_exp.takeObject())

--Sorteia e posiciona as barreiras
Bag_Barreiras.shuffle()
Bag_Barreiras.takeObject({ position = {-0.31, 1.72, 7.08}, smooth = true, callback_function = take_callback, rotation={359.93, 149.99, 359.87} })
Bag_Barreiras.takeObject({ position = {5.33, 1.73, 7.34}, smooth = true, callback_function = take_callback, rotation={0.00, 210.02, 0.00} })
Bag_Barreiras.takeObject({ position = {8.37, 1.73, 9.74}, smooth = true, callback_function = take_callback, rotation={0.00, 89.99, 0.00} })
Bag_Barreiras.takeObject({ position = {12.21, 1.73, 11.57}, smooth = true, callback_function = take_callback, rotation={0.00, 29.07, 0.00} })
Bag_Barreiras.takeObject({ position = {15.40, 1.73, 6.46}, smooth = true, callback_function = take_callback, rotation={0.00, 90.00, 0.00} })
Bag_Barreiras.takeObject({ position = {15.93, 1.73, 3.72}, smooth = true, callback_function = take_callback, rotation={0.00, 90.10, 0.00} })

--barreiras q sobram
Bag_Barreiras.takeObject({ position =  {35.84, 1.55, 19.88}, smooth = true, callback_function = take_callback, rotation={0.00, 90.0, 0.00} })
Bag_Barreiras.takeObject({ position = {35.84, 1.55, 19.24}, smooth = true, callback_function = take_callback, rotation={0.00, 90.0, 0.00} })

--Tokens de Caverna
Bag_caverna_exp = getObjectFromGUID("1d7d2d")
Bag_caverna_exp.shuffle()
--Usar incrmento na cordenada Y -> +1*i
for i = 1, 4, 1 do Bag_caverna_exp.takeObject({ position = {-5.08, 1.88+1*i, 6.20}, smooth = true, callback_function = nil, rotation={0.00, 150.00, 180.00} }) end
for i = 1, 4, 1 do Bag_caverna_exp.takeObject({ position = {-1.14, 2+1*i, 9.15}, smooth = true, callback_function = nil, rotation={359.92, 150.04, 179.89} }) end
for i = 1, 4, 1 do Bag_caverna_exp.takeObject({ position = {8.37, 1.88+1*i, 6.18}, smooth = true, callback_function = nil, rotation={0.00, 210.01, 180.00} }) end
for i = 1, 4, 1 do Bag_caverna_exp.takeObject({ position = {8.9, 1.88+1*i, 12.95}, smooth = true, callback_function = nil, rotation={0.00, 149.98, 180.00} }) end
for i = 1, 4, 1 do Bag_caverna_exp.takeObject({ position = {16.64, 1.88+1*i, 10.95}, smooth = true, callback_function = nil, rotation={0.00, 149.98, 180.00} }) end
for i = 1, 4, 1 do Bag_caverna_exp.takeObject({ position = {17.65, 1.88+1*i, 1.46}, smooth = true, callback_function = nil, rotation={0.00, 210.02, 180.00} }) end

--POSICIONA DECK Herois
getObjectFromGUID("3275b3").setPositionSmooth({-3.55, 2, 13.39})
getObjectFromGUID("3275b3").setRotation({0.00, 180.00, 180.00})
getObjectFromGUID("3275b3").shuffle()

end

-------------------------------------------------------------------------------------------------------------------------------------

function poe_pista_Exp5()
--Mpve o Piso
getObjectFromGUID("b5fb7e").setPosition({0.00, -33, 0.00})

--Set textos
broadcastToAll("<<< Preparing Map 5 >>>", "White")
getObjectFromGUID("6565c7").setValue("[Exp] Circuito 5: Fim da Linha \nDificuldade: Difícil")

--Set posicionamento dos tiles
Peca_A.setPosition({-5.70, 1.58, 12.02})        Peca_A.setRotation({0.00, 254.89, 0.00})        Peca_A.setLock(true)
Peca_U2.setPosition({-0.53, 1.58, 7.65})         Peca_U2.setRotation({0.00, 193.84, 0.00})        Peca_U2.setLock(true)
Peca_Heros2.setPosition({0.51, 1.58, 11.66})    Peca_Heros2.setRotation({0.0, 196.37, 0}) Peca_Heros2.setLock(true)
Peca_Q.setPosition({-0.45, 1.58, 2.89})         Peca_Q.setRotation({0.00, 192.85, 0.00})        Peca_Q.setLock(true)
Peca_K.setPosition({5.43, 1.58, 4.33})          Peca_K.setRotation({0.00, 13.24, 0.00})         Peca_K.setLock(true)
Peca_T2.setPosition({10.57, 1.58, 0.02})         Peca_T2.setRotation({0.00, 194.00, 0.00})        Peca_T2.setLock(true)
Peca_W2.setPosition({16.90, 1.58, 2.45})         Peca_W2.setRotation({0.00, 134.02, 0.00})        Peca_W2.setLock(true)
Peca_H.setPosition({18.04, 1.58, 9.03})         Peca_H.setRotation({0.00, 254.20, 0.00})      Peca_H.setLock(true)
Peca_FIM2.setPosition({16.83, 1.58, 13.34})     Peca_FIM2.setRotation({0.00, 253.76, 0}) Peca_FIM2.setLock(true)

--Adiciona as 2 barreiras da expanção ao bag comum
Bag_Barreiras.putObject(Bag_Barreiras_exp.takeObject())
Bag_Barreiras.putObject(Bag_Barreiras_exp.takeObject())

--Sorteia e posiciona as barreiras
Bag_Barreiras.shuffle()
Bag_Barreiras.takeObject({ position = {-2.84, 1.73, 9.85}, smooth = true, callback_function = take_callback, rotation={0.00, 43.46, 0.00} })
Bag_Barreiras.takeObject({ position = {-1.32, 1.73, 4.30}, smooth = true, callback_function = take_callback, rotation={0.00, 281.07, 0.00} })
Bag_Barreiras.takeObject({ position = {3.14, 1.73, 6.48}, smooth = true, callback_function = take_callback, rotation={0.00, 45.01, 0.00} })
Bag_Barreiras.takeObject({ position = {8.29, 1.73, 2.27}, smooth = true, callback_function = take_callback, rotation={0.00, 43.08, 0.00} })
Bag_Barreiras.takeObject({ position = {13.92, 1.73, 0.98}, smooth = true, callback_function = take_callback, rotation={0.00, 165.01, 0.00} })
Bag_Barreiras.takeObject({ position = {17.69, 1.73, 5.88}, smooth = true, callback_function = take_callback, rotation={0.00, 102.0, 0.0} })
--barreiras q sobram
Bag_Barreiras.takeObject({ position = {35.84, 1.55, 19.88}, smooth = true, callback_function = take_callback, rotation={0.00, 90.0, 0.00} })
Bag_Barreiras.takeObject({ position = {35.84, 1.55, 19.24}, smooth = true, callback_function = take_callback, rotation={0.00, 90.0, 0.00} })

--Coloca os tokens
Bag_caverna_exp = getObjectFromGUID("1d7d2d")
Bag_caverna_exp.shuffle()
--Usar incrmento na cordenada Y -> +1*i
for i = 1, 4, 1 do Bag_caverna_exp.takeObject({ position = {-5.22, 1.88+1*i, 13.87}, smooth = true, callback_function = nil, rotation={0.00, 165.02, 180.00} }) end
for i = 1, 4, 1 do Bag_caverna_exp.takeObject({ position = {-0.42, 1.88+1*i, 7.65}, smooth = true, callback_function = nil, rotation={0.00, 165.01, 180.00} }) end
for i = 1, 4, 1 do Bag_caverna_exp.takeObject({ position = {10.03, 1.88+1*i, 2.21}, smooth = true, callback_function = nil, rotation={0.00, 165.02, 180.00} }) end
for i = 1, 4, 1 do Bag_caverna_exp.takeObject({ position = {11.28, 1.88+1*i, -2.15}, smooth = true, callback_function = nil, rotation={0.00, 225.01, 180.00} }) end
for i = 1, 4, 1 do Bag_caverna_exp.takeObject({ position = {13.72, 1.96+1*i, 3.26 }, smooth = true, callback_function = nil, rotation={0.00, 164.84, 180.00} }) end
for i = 1, 4, 1 do Bag_caverna_exp.takeObject({ position ={17.5, 1.88+1*i, 11.17}, smooth = true, callback_function = nil, rotation={359.92, 225.02, 180.05} }) end

--POSICIONA DECK Herois
getObjectFromGUID("3275b3").setPositionSmooth({1.57, 2, 14.47})
getObjectFromGUID("3275b3").setRotation({0.00, 180.00, 180.00})
getObjectFromGUID("3275b3").shuffle()

end
------------------------------------------------------------------------------------------------------------------------

function poe_pista_Exp6()
--Mpve o Piso
getObjectFromGUID("b5fb7e").setPosition({0.00, -33, 0.00})

--Set textos
broadcastToAll("<<< Preparing Map 6 >>>", "White")
getObjectFromGUID("6565c7").setValue("[Exp] Circuito 6: Cruzando o caminho \nDificuldade: Difícil")

--Set posicionamento dos tiles
Peca_O.setScale({1.65, 1.00, 1.65})
Peca_B.setPosition({-11.93, 1.58, -0.52})       Peca_B.setRotation({0.00, 270.01, 0.00})        Peca_B.setLock(true)
Peca_R.setPosition({-9.59, 1.58, 3.61})         Peca_R.setRotation({0.00, 30.35, 0.00})         Peca_R.setLock(true)
Peca_M.setPosition({-7.10, 1.58, 7.65})         Peca_M.setRotation({0.00, 31.53, 0.00})         Peca_M.setLock(true)
Peca_Heros1.setPosition({-5.12, 1.58, 4.00})    Peca_Heros1.setRotation({0.04, 330.72, 0.13})   Peca_Heros1.setLock(true)
Peca_W2.setPosition({-3.21, 1.58, 13.09})        Peca_W2.setRotation({0.00, 28.08, 0.00})         Peca_W2.setLock(true)
Peca_D.setPosition({0.69, 1.58, 7.64})          Peca_D.setRotation({0.00, 148.08, 0.00})        Peca_D.setLock(true)
Peca_O.setPosition({2.96, 1.58, 11.79})         Peca_O.setRotation({0.00, 29.39, 0.00})         Peca_O.setLock(true)
Peca_T2.setPosition({10.51, 1.58, 1.32})         Peca_T2.setRotation({0.00, 208.47, 0.00})        Peca_T2.setLock(true)
Peca_U2.setPosition({7.43, 1.58, 7.29})          Peca_U2.setRotation({0.00, 87.32, 0.00})        Peca_U2.setLock(true)
Peca_FIM.setPosition({10.62, 1.58, -3.21})      Peca_FIM.setRotation({0.00, 88.71, 0.00})   Peca_FIM.setLock(true)

--Adiciona as 2 barreiras da expanção ao bag comum
Bag_Barreiras.putObject(Bag_Barreiras_exp.takeObject())
Bag_Barreiras.putObject(Bag_Barreiras_exp.takeObject())

--Sorteia e posiciona as barreiras
Bag_Barreiras.shuffle()
Bag_Barreiras.takeObject({ position = {-10.20, 1.73, 2.58}, smooth = true, callback_function = take_callback, rotation={0.00, 120.03, 0.00} })
Bag_Barreiras.takeObject({ position = {-5.02, 1.73, 10.30}, smooth = true, callback_function = take_callback, rotation={0.00, 297.97, 0.00} })
Bag_Barreiras.takeObject({ position = {0.32, 1.73, 13.73}, smooth = true, callback_function = take_callback, rotation={0.00, 0.06, 0.00} })
Bag_Barreiras.takeObject({ position = {-0.91, 1.73, 10.30}, smooth = true, callback_function = take_callback, rotation={0.00, 60.01, 0.00} })
Bag_Barreiras.takeObject({ position = {4.18, 1.73, 6.79}, smooth = true, callback_function = take_callback, rotation={0.00, 180.01, 0.00} })
Bag_Barreiras.takeObject({ position = {5.76, 1.80, 9.93}, smooth = true, callback_function = take_callback, rotation={1.62, 56.39, 359.33} })
Bag_Barreiras.takeObject({ position = {8.92, 1.73, 4.11}, smooth = true, callback_function = take_callback, rotation={0.00, 57.09, 0.00} })

--barreiras q sobram
Bag_Barreiras.takeObject({ position = {35.84, 1.55, 19.24}, smooth = true, callback_function = take_callback, rotation={0.00, 90.0, 0.00} })

--Coloca os tokens
Bag_caverna_exp = getObjectFromGUID("1d7d2d")
Bag_caverna_exp.shuffle()
--Usar incrmento na cordenada Y -> +1*i
for i = 1, 4, 1 do Bag_caverna_exp.takeObject({ position = {-10.01, 1.88+1*i, -1.63}, smooth = true, callback_function = nil, rotation= {0.00, 179.99, 180.00} }) end
for i = 1, 4, 1 do Bag_caverna_exp.takeObject({ position = {-9.93, 1.88+1*i, 8.25}, smooth = true, callback_function = nil, rotation= {0.00, 179.99, 180.00} }) end
for i = 1, 4, 1 do Bag_caverna_exp.takeObject({ position = {-3.31, 1.99+1*i, 9.75}, smooth = true, callback_function = nil, rotation= {0.00, 179.99, 180.00} }) end
for i = 1, 4, 1 do Bag_caverna_exp.takeObject({ position = {0.67, 1.88+1*i, 7.69}, smooth = true, callback_function = nil, rotation= {0.00, 179.99, 180.00} }) end
for i = 1, 4, 1 do Bag_caverna_exp.takeObject({ position = {7.39, 1.88+1*i, 7.40}, smooth = true, callback_function = nil, rotation= {0.00, 179.99, 180.00} }) end
for i = 1, 4, 1 do Bag_caverna_exp.takeObject({ position = {10.47, 1.88+1*i, 3.54}, smooth = true, callback_function = nil, rotation= {0.00, 179.99, 180.00} }) end
for i = 1, 4, 1 do Bag_caverna_exp.takeObject({ position = {10.58, 1.88+1*i, -0.96}, smooth = true, callback_function = nil, rotation= {0.00, 179.99, 180.00} }) end

--POSICIONA DECK Herois
getObjectFromGUID("3275b3").setPositionSmooth({-3.33, 1.55, 1.74})
getObjectFromGUID("3275b3").setRotation({0.00, 180.00, 180.00})
getObjectFromGUID("3275b3").shuffle()

end
------------------------------------------------------------------------------------------------------------------------

function poe_pista_Exp7()
startLuaCoroutine(self, 'Cor_poe_pista_Exp7')
end
function Cor_poe_pista_Exp7()
  getObjectFromGUID("b5fb7e").setPosition({0.00, -33, 0.00})
broadcastToAll("<<< Preparing Map 7 >>>", "White")
getObjectFromGUID("6565c7").setValue("Circuito 7: Montagem Aleatória")

Poe_pistas_nas_bags()

T_Pausa = 0.2

--Coloca as peças
       Espera(T_Pausa)
       N_SORT1 = (math.random(1,2))
    if N_SORT1 == 1 then Peca_A.setPosition({-13.82, 1.58, 4.00})   Peca_A.setRotation({0.00, 210.00, 0.00})  Peca_A.setLock(true) Peca_A.setDescription("210")
elseif N_SORT1 == 2 then Peca_B.setPosition({-13.82, 1.58, 4.00})   Peca_B.setRotation({0.00, 330.00, 0.00})  Peca_B.setLock(true) Peca_B.setDescription("330")  end

Espera(T_Pausa) Sort_Rot()
Bag_pistas_exp.takeObject({  position = {-7.05, 1.58, 4.47}, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas })

Espera(T_Pausa)
N_SORT2 = (math.random(1,2))
    if N_SORT2 == 1 then  Peca_Heros1.setPosition({-2.88, 1.58, 4.46})    Peca_Heros1.setRotation({0.00, 270.00, 0.00})   Peca_Heros1.setLock(true)
elseif N_SORT2 == 2 then  Peca_Heros2.setPosition({-2.88, 1.58, 4.46})    Peca_Heros2.setRotation({0.00, 270.00, 0.00})   Peca_Heros2.setLock(true)  end

Espera(T_Pausa) Sort_Rot()  Bag_pistas.takeObject({  position = {-4.23, 1.58, 10.64}, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas })
Espera(T_Pausa) Sort_Rot()  Bag_pistas.takeObject({  position = {-4.23, 1.58, -1.62}, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas })
Espera(T_Pausa) Sort_Rot3() Bag_pistas_pqn.takeObject({  position = {1.93, 1.58, 10.26}, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas })
Espera(T_Pausa) Sort_Rot4() Bag_pistas_pqn.takeObject({  position = {1.85, 1.58, -1.35}, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas })
Espera(T_Pausa) Sort_Rot()  Bag_pistas_exp.takeObject({  position = {4.20, 1.58, 4.41}, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas })
Espera(T_Pausa) Sort_Rot()  Bag_pistas.takeObject({  position = {8.06, 1.58, 9.93}, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas })
Espera(T_Pausa) Sort_Rot()  Bag_pistas.takeObject({  position = {7.99, 1.58, -1.12}, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas })
Espera(T_Pausa) Sort_Rot()  Bag_pistas_exp.takeObject({  position = {11.81, 1.58, 4.43}, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas })
Espera(T_Pausa) Sort_Rot2() Bag_pistas_pqn.takeObject({  position = {16.56, 1.58, 4.40}, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas })
Espera(T_Pausa) Sort_Rot()  Bag_pistas_exp.takeObject({  position = {21.29, 1.58, 4.42}, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas })
Espera(T_Pausa) Sort_Rot()  Bag_pistas_exp.takeObject({  position = {24.14, 1.58, 10.53}, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas })
Espera(T_Pausa) Sort_Rot()  Bag_pistas_exp.takeObject({  position = {24.23, 1.58, -1.67}, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas })

    Espera(T_Pausa)
    N_SORT3 = (math.random(1,2))
    if N_SORT3 == 1 then Peca_FIM.setPosition({24.19, 1.58, 14.99})   Peca_FIM.setRotation({0.00, 270, 0.00})   Peca_FIM.setLock(true)
                         Peca_FIM2.setPosition({24.15, 1.58, -6.19})  Peca_FIM2.setRotation({0.00, 90, 0.00})   Peca_FIM2.setLock(true)
elseif N_SORT3 == 2 then Peca_FIM2.setPosition({24.19, 1.58, 14.99})  Peca_FIM2.setRotation({0.00, 270, 0.00})  Peca_FIM2.setLock(true)
                         Peca_FIM.setPosition({24.15, 1.58, -6.19})   Peca_FIM.setRotation({0.00, 90, 0.00})    Peca_FIM.setLock(true)    end

Espera(T_Pausa)
--tira peças q sobraqram das bags
Bag_pistas.takeObject({  position = { 0, -141.0, 30}, smooth = false, rotation = {0,0,0}, callback_function = callback_Pistas })
Bag_pistas.takeObject({  position = { 0, -141.1, 30}, smooth = false, rotation = {0,0,0}, callback_function = callback_Pistas })
Bag_pistas.takeObject({  position = { 0, -141.2, 30}, smooth = false, rotation = {0,0,0}, callback_function = callback_Pistas })
Bag_pistas.takeObject({  position = { 0, -141.3, 30}, smooth = false, rotation = {0,0,0}, callback_function = callback_Pistas })
Bag_pistas.takeObject({  position = { 0, -141.4, 30}, smooth = false, rotation = {0,0,0}, callback_function = callback_Pistas })
Bag_pistas.takeObject({  position = { 0, -141.5, 30}, smooth = false, rotation = {0,0,0}, callback_function = callback_Pistas })
Bag_pistas.takeObject({  position = { 0, -141.6, 30}, smooth = false, rotation = {0,0,0}, callback_function = callback_Pistas })
Bag_pistas.takeObject({  position = { 0, -141.7, 30}, smooth = false, rotation = {0,0,0}, callback_function = callback_Pistas })

--Barreiras
Espera(T_Pausa)
Bag_Barreiras.shuffle()
Bag_Barreiras.takeObject({ position = {-5.70, 1.73, 1.22}, smooth = true, callback_function = take_callback, rotation={0,60,0} })
Bag_Barreiras.takeObject({ position = {-5.49, 1.73, 7.52}, smooth = true, callback_function = take_callback, rotation={0,120,0} })
Bag_Barreiras.takeObject({ position = {10.22, 1.73, 7.14}, smooth = true, callback_function = take_callback, rotation={0,60,0} })
Bag_Barreiras.takeObject({ position = {9.84, 1.73, 1.81}, smooth = true, callback_function = take_callback, rotation={0,120,0} })
Bag_Barreiras.takeObject({ position = {22.68, 1.73, 1.15}, smooth = true, callback_function = take_callback, rotation={0,60,0} })
Bag_Barreiras.takeObject({ position = {22.99, 1.73, 7.43}, smooth = true, callback_function = take_callback, rotation={0,120,0} })

Bag_Barreiras_exp.shuffle()
Bag_Barreiras_exp.takeObject( { position = {18.11, 1.73, 4.42}, smooth = false, callback_function = take_callback2, rotation={0,0,0} })
Bag_Barreiras_exp.takeObject({ position = {-10.38, 1.73, 4.44}, smooth = false, callback_function = take_callback2, rotation={0,0,0} })

--POSICIONA DECK Herois
getObjectFromGUID("3275b3").setPositionSmooth({-0.71, 1.55, 4.65})
getObjectFromGUID("3275b3").setRotation({0.00, 180.00, 180.00})
getObjectFromGUID("3275b3").shuffle()

Espera(1)
broadcastToAll("<<< Aguardando carregamento para posicionar os tokens.  >>>", "White")
Espera(2)

--Define o bag dos tokens
Usar_Tokens_Exp = 1
startLuaCoroutine(self, 'Cavernas_Ale')

return 1
end
-------------------------------------------------------------------------------------------------------------------------------------

function poe_pista_Exp8()
startLuaCoroutine(self, 'Cor_poe_pista_Exp8')
end
function Cor_poe_pista_Exp8()
  getObjectFromGUID("b5fb7e").setPosition({0.00, -33, 0.00})
broadcastToAll("<<< Preparing Map 8 >>>", "White")
getObjectFromGUID("6565c7").setValue("Ateatório - 6 Peças")

Espera(1)

Peca_A.setPosition({-15,-40.1, 30}) Peca_A.setRotation({ 0,   0,  0}) Peca_A.setLock(true)
Peca_B.setPosition({-15,-40.2, 30}) Peca_B.setRotation({ 0,   0,  0}) Peca_B.setLock(true)
Peca_FIM.setPosition ({15, -41.0, 30}) Peca_FIM.setRotation({ 0,   0,  0}) Peca_FIM.setLock(true)
Peca_FIM2.setPosition({15, -41.1, 30}) Peca_FIM2.setRotation({ 0,   0,  0}) Peca_FIM2.setLock(true)
Peca_Heros1.setPosition({15, -41.2, 30}) Peca_Heros1.setRotation({ 0,   0,  0}) Peca_Heros1.setLock(true)
Peca_Heros2.setPosition({15, -41.3, 30}) Peca_Heros2.setRotation({ 0,   0,  0}) Peca_Heros2.setLock(true)

Poe_pistas_nas_bags()
Espera(1)

T_Pausa = 0.1

--Coloca PEÇA 1
       Espera(T_Pausa)
       N_SORT1 = (math.random(1,2))
    if N_SORT1 == 1 then Peca_A.setPosition({-13.82, 1.58, 4.00})   Peca_A.setRotation({0.00, 210.00, 0.00})  Peca_A.setLock(true) Peca_A.setDescription("210")
elseif N_SORT1 == 2 then Peca_B.setPosition({-13.82, 1.58, 4.00})   Peca_B.setRotation({0.00, 330.00, 0.00})  Peca_B.setLock(true) Peca_B.setDescription("5")  end

--Coloca PEÇA 2
Espera(T_Pausa) Sort_Rot()
Bag_pistas_exp.takeObject({  position = {-7.05, 1.58, 4.47}, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas })
--Barreira 1
Bag_Barreiras_exp.shuffle() Bag_Barreiras_exp.takeObject({ position = {-10.38, 1.73, 4.44}, smooth = false, callback_function = take_callback, rotation={0,0,0} })

--Coloca PEÇA 3
Espera(T_Pausa) Sort_Rot()
Pos_Tile_Anterior = {-7.05, 1.58, 4.47}
Pos_Tile_1 = {Pos_Tile_Anterior[1]-2.91, Pos_Tile_Anterior[2], Pos_Tile_Anterior[3]+6.11}
Pos_Tile_2 = {Pos_Tile_Anterior[1]+3.81, Pos_Tile_Anterior[2], Pos_Tile_Anterior[3]+5.58}
Pos_Tile_3 = {Pos_Tile_Anterior[1]+6.68, Pos_Tile_Anterior[2], Pos_Tile_Anterior[3]+0.54}
Pos_Tile_4 = {Pos_Tile_Anterior[1]+3.81, Pos_Tile_Anterior[2], Pos_Tile_Anterior[3]-5.48}

       N_SORT2 = (math.random(1,4))
    if N_SORT2 == 1 then Bag_pistas_exp.takeObject({  position = Pos_Tile_1, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas }) Pos_Tile_Anterior = Pos_Tile_1
elseif N_SORT2 == 2 then Bag_pistas_exp.takeObject({  position = Pos_Tile_2, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas }) Pos_Tile_Anterior = Pos_Tile_2
elseif N_SORT2 == 3 then Bag_pistas_exp.takeObject({  position = Pos_Tile_3, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas }) Pos_Tile_Anterior = Pos_Tile_3
elseif N_SORT2 == 4 then Bag_pistas_exp.takeObject({  position = Pos_Tile_4, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas }) Pos_Tile_Anterior = Pos_Tile_4  end
    --Peça heroi em função do lugar da peça 3
    if N_SORT2 == 1 then Peca_Heros2.setPosition({-5.01, 1.58, 0.85})    Peca_Heros2.setRotation({0, 330, 0})   Peca_Heros2.setLock(true)
elseif N_SORT2 == 2 then Peca_Heros1.setPosition({-9.12, 1.58, 8.13})    Peca_Heros1.setRotation({0, 150, 0})   Peca_Heros1.setLock(true)
elseif N_SORT2 == 3 then Peca_Heros2.setPosition({-5.01, 1.58, 0.85})    Peca_Heros2.setRotation({0, 330, 0})   Peca_Heros2.setLock(true)
elseif N_SORT2 == 4 then Peca_Heros1.setPosition({-4.90, 1.58, 8.10})    Peca_Heros1.setRotation({0, 210, 0})   Peca_Heros1.setLock(true)  end

--Barreira 2
Pos_Barreira_1 = {Pos_Tile_Anterior[1]+1.66, Pos_Tile_Anterior[2]+0.15, Pos_Tile_Anterior[3]-2.85}  Rot_Barr_1 = {0,240,0}
Pos_Barreira_2 = {Pos_Tile_Anterior[1]-1.69, Pos_Tile_Anterior[2]+0.15, Pos_Tile_Anterior[3]-2.91}  Rot_Barr_2 = {0,300,0}
Pos_Barreira_3 = {Pos_Tile_Anterior[1]-3.33, Pos_Tile_Anterior[2]+0.15, Pos_Tile_Anterior[3]-0.00}  Rot_Barr_3 = {0,180,0}
Pos_Barreira_4 = {Pos_Tile_Anterior[1]-1.70, Pos_Tile_Anterior[2]+0.15, Pos_Tile_Anterior[3]+2.89}  Rot_Barr_4 = {0, 60,0}

    if N_SORT2 == 1 then Bag_Barreiras_exp.takeObject({ position = Pos_Barreira_1, rotation=Rot_Barr_1, smooth = false, callback_function = take_callback  })
elseif N_SORT2 == 2 then Bag_Barreiras_exp.takeObject({ position = Pos_Barreira_2, rotation=Rot_Barr_2, smooth = false, callback_function = take_callback  })
elseif N_SORT2 == 3 then Bag_Barreiras_exp.takeObject({ position = Pos_Barreira_3, rotation=Rot_Barr_3, smooth = false, callback_function = take_callback  })
elseif N_SORT2 == 4 then Bag_Barreiras_exp.takeObject({ position = Pos_Barreira_4, rotation=Rot_Barr_4, smooth = false, callback_function = take_callback  })  end

--Coloca PEÇA 4
Espera(T_Pausa) Sort_Rot()
Pos_Tile_2 = {Pos_Tile_Anterior[1]+3.81, Pos_Tile_Anterior[2], Pos_Tile_Anterior[3]+5.58}
Pos_Tile_3 = {Pos_Tile_Anterior[1]+6.68, Pos_Tile_Anterior[2], Pos_Tile_Anterior[3]+0.54}

       N_SORT2 = (math.random(2,3))
    if N_SORT2 == 2 then Bag_pistas.takeObject({  position = Pos_Tile_2, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas }) Pos_Tile_Anterior = Pos_Tile_2
elseif N_SORT2 == 3 then Bag_pistas.takeObject({  position = Pos_Tile_3, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas }) Pos_Tile_Anterior = Pos_Tile_3  end

--Barreira 3
Bag_Barreiras.shuffle()
Pos_Barreira_2 = {Pos_Tile_Anterior[1]-1.69, Pos_Tile_Anterior[2]+0.15, Pos_Tile_Anterior[3]-2.91}  Rot_Barr_2 = {0,300,0}
Pos_Barreira_3 = {Pos_Tile_Anterior[1]-3.33, Pos_Tile_Anterior[2]+0.15, Pos_Tile_Anterior[3]-0.00}  Rot_Barr_3 = {0,180,0}

    if N_SORT2 == 2 then Bag_Barreiras.takeObject({ position = Pos_Barreira_2, rotation=Rot_Barr_2, smooth = false, callback_function = take_callback  })
elseif N_SORT2 == 3 then Bag_Barreiras.takeObject({ position = Pos_Barreira_3, rotation=Rot_Barr_3, smooth = false, callback_function = take_callback  })  end

--Coloca PEÇA 5
Espera(T_Pausa) Sort_Rot()
Pos_Tile_2 = {Pos_Tile_Anterior[1]+3.81, Pos_Tile_Anterior[2], Pos_Tile_Anterior[3]+5.58}
Pos_Tile_3 = {Pos_Tile_Anterior[1]+6.68, Pos_Tile_Anterior[2], Pos_Tile_Anterior[3]+0.54}
Pos_Tile_4 = {Pos_Tile_Anterior[1]+3.81, Pos_Tile_Anterior[2], Pos_Tile_Anterior[3]-5.48}


if Pos_Tile_4[3] < -6 then Lim_Baixo = 3 else Lim_Baixo = 4 end
if Pos_Tile_2[3] > 17 then Lim_Cima = 3 else Lim_Cima = 2 end

       N_SORT2 = (math.random(Lim_Cima,Lim_Baixo))
    if N_SORT2 == 2 then Bag_pistas_exp.takeObject({  position = Pos_Tile_2, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas }) Pos_Tile_Anterior = Pos_Tile_2
elseif N_SORT2 == 3 then Bag_pistas_exp.takeObject({  position = Pos_Tile_3, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas }) Pos_Tile_Anterior = Pos_Tile_3
elseif N_SORT2 == 4 then Bag_pistas_exp.takeObject({  position = Pos_Tile_4, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas }) Pos_Tile_Anterior = Pos_Tile_4 end

--Barreira 4
Pos_Barreira_2 = {Pos_Tile_Anterior[1]-1.69, Pos_Tile_Anterior[2]+0.15, Pos_Tile_Anterior[3]-2.91}  Rot_Barr_2 = {0,300,0}
Pos_Barreira_3 = {Pos_Tile_Anterior[1]-3.33, Pos_Tile_Anterior[2]+0.15, Pos_Tile_Anterior[3]-0.00}  Rot_Barr_3 = {0,180,0}
Pos_Barreira_4 = {Pos_Tile_Anterior[1]-1.70, Pos_Tile_Anterior[2]+0.15, Pos_Tile_Anterior[3]+2.89}  Rot_Barr_4 = {0, 60,0}

    if N_SORT2 == 2 then Bag_Barreiras.takeObject({ position = Pos_Barreira_2, rotation=Rot_Barr_2, smooth = false, callback_function = take_callback  })
elseif N_SORT2 == 3 then Bag_Barreiras.takeObject({ position = Pos_Barreira_3, rotation=Rot_Barr_3, smooth = false, callback_function = take_callback  })
elseif N_SORT2 == 4 then Bag_Barreiras.takeObject({ position = Pos_Barreira_4, rotation=Rot_Barr_4, smooth = false, callback_function = take_callback  })  end

--Coloca PEÇA 6
Espera(T_Pausa) Sort_Rot()
Pos_Tile_2 = {Pos_Tile_Anterior[1]+3.81, Pos_Tile_Anterior[2], Pos_Tile_Anterior[3]+5.58}
Pos_Tile_3 = {Pos_Tile_Anterior[1]+6.68, Pos_Tile_Anterior[2], Pos_Tile_Anterior[3]+0.54}
Pos_Tile_4 = {Pos_Tile_Anterior[1]+3.81, Pos_Tile_Anterior[2], Pos_Tile_Anterior[3]-5.48}

if Pos_Tile_4[3] < -6 then Lim_Baixo = 3 else Lim_Baixo = 4 end
if Pos_Tile_2[3] > 17 then Lim_Cima = 3 else Lim_Cima = 2 end

       N_SORT2 = (math.random(Lim_Cima,Lim_Baixo))
    if N_SORT2 == 2 then Bag_pistas_exp.takeObject({  position = Pos_Tile_2, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas }) Pos_Tile_Anterior = Pos_Tile_2
elseif N_SORT2 == 3 then Bag_pistas_exp.takeObject({  position = Pos_Tile_3, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas }) Pos_Tile_Anterior = Pos_Tile_3
elseif N_SORT2 == 4 then Bag_pistas_exp.takeObject({  position = Pos_Tile_4, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas }) Pos_Tile_Anterior = Pos_Tile_4 end

--Barreira 5
Pos_Barreira_2 = {Pos_Tile_Anterior[1]-1.69, Pos_Tile_Anterior[2]+0.15, Pos_Tile_Anterior[3]-2.91}  Rot_Barr_2 = {0,300,0}
Pos_Barreira_3 = {Pos_Tile_Anterior[1]-3.33, Pos_Tile_Anterior[2]+0.15, Pos_Tile_Anterior[3]-0.00}  Rot_Barr_3 = {0,180,0}
Pos_Barreira_4 = {Pos_Tile_Anterior[1]-1.70, Pos_Tile_Anterior[2]+0.15, Pos_Tile_Anterior[3]+2.89}  Rot_Barr_4 = {0, 60,0}

    if N_SORT2 == 2 then Bag_Barreiras.takeObject({ position = Pos_Barreira_2, rotation=Rot_Barr_2, smooth = false, callback_function = take_callback  })
elseif N_SORT2 == 3 then Bag_Barreiras.takeObject({ position = Pos_Barreira_3, rotation=Rot_Barr_3, smooth = false, callback_function = take_callback  })
elseif N_SORT2 == 4 then Bag_Barreiras.takeObject({ position = Pos_Barreira_4, rotation=Rot_Barr_4, smooth = false, callback_function = take_callback  })  end

--Coloca PEÇA Fim
Espera(T_Pausa) Sort_Rot()
Pos_Tile_2 = {Pos_Tile_Anterior[1]+3.93, Pos_Tile_Anterior[2], Pos_Tile_Anterior[3]+2.22}

       N_SORT1 = (math.random(1,2))
    if N_SORT1 == 1 then Peca_final = Peca_FIM
elseif N_SORT1 == 2 then Peca_final = Peca_FIM2 end

       N_SORT2 = (math.random(2,2))
    if N_SORT2 == 2 then Peca_final.setPosition(Pos_Tile_2) Peca_final.setRotation({0.00, 330, 0.00})   Peca_final.setLock(true)
end

Espera(T_Pausa)
--tira peças q sobraqram das bags
Bag_pistas.takeObject({  position = { 0, -141.0, 30}, smooth = false, rotation = {0,0,0}, callback_function = callback_Pistas })
Bag_pistas.takeObject({  position = { 0, -141.1, 30}, smooth = false, rotation = {0,0,0}, callback_function = callback_Pistas })
Bag_pistas.takeObject({  position = { 0, -141.2, 30}, smooth = false, rotation = {0,0,0}, callback_function = callback_Pistas })
Bag_pistas.takeObject({  position = { 0, -141.3, 30}, smooth = false, rotation = {0,0,0}, callback_function = callback_Pistas })
Bag_pistas.takeObject({  position = { 0, -141.4, 30}, smooth = false, rotation = {0,0,0}, callback_function = callback_Pistas })
Bag_pistas.takeObject({  position = { 0, -141.5, 30}, smooth = false, rotation = {0,0,0}, callback_function = callback_Pistas })
Bag_pistas.takeObject({  position = { 0, -141.6, 30}, smooth = false, rotation = {0,0,0}, callback_function = callback_Pistas })
Bag_pistas.takeObject({  position = { 0, -141.7, 30}, smooth = false, rotation = {0,0,0}, callback_function = callback_Pistas })
Bag_pistas.takeObject({  position = { 0, -141.8, 30}, smooth = false, rotation = {0,0,0}, callback_function = callback_Pistas })
Bag_pistas.takeObject({  position = { 0, -141.9, 30}, smooth = false, rotation = {0,0,0}, callback_function = callback_Pistas })
Bag_pistas.takeObject({  position = { 0, -142.0, 30}, smooth = false, rotation = {0,0,0}, callback_function = callback_Pistas })

Bag_pistas_pqn.takeObject({  position = { 0, -142.3, 30}, smooth = false, rotation = {0,0,0}, callback_function = callback_Pistas })
Bag_pistas_pqn.takeObject({  position = { 0, -142.1, 30}, smooth = false, rotation = {0,0,0}, callback_function = callback_Pistas })
Bag_pistas_pqn.takeObject({  position = { 0, -142.2, 30}, smooth = false, rotation = {0,0,0}, callback_function = callback_Pistas })

Bag_pistas_exp.takeObject({  position = { 0, -142.4, 30}, smooth = false, rotation = {0,0,0}, callback_function = callback_Pistas })
Bag_pistas_exp.takeObject({  position = { 0, -142.5, 30}, smooth = false, rotation = {0,0,0}, callback_function = callback_Pistas })

--Barreiras q sobra
Espera(T_Pausa)
Bag_Barreiras.takeObject({ position = {33.89, 1.53, 22.36}, smooth = true, callback_function = take_callback, rotation={0,90,0} })
Bag_Barreiras.takeObject({ position = {33.89, 1.53, 23.36}, smooth = true, callback_function = take_callback, rotation={0,90,0} })
Bag_Barreiras.takeObject({ position = {33.89, 1.53, 24.36}, smooth = true, callback_function = take_callback, rotation={0,90,0} })
--Bag_Barreiras.takeObject({ position = {33.89, 1.53, 25.36}, smooth = true, callback_function = take_callback, rotation={0,90,0} })

--POSICIONA DECK Herois
getObjectFromGUID("3275b3").setPositionSmooth({-13.47, 1.50, -1.99})
getObjectFromGUID("3275b3").setRotation({0.00, 180.00, 180.00})
getObjectFromGUID("3275b3").shuffle()

Espera(1)
broadcastToAll("<<< Aguardando carregamento para posicionar os tokens.  >>>", "White")
Espera(2)

--Define o bag dos tokens
Usar_Tokens_Exp = 1
startLuaCoroutine(self, 'Cavernas_Ale')

return 1
end
-------------------------------------------------------------------------------------------------------------------------------------

function poe_pista_Exp9()
startLuaCoroutine(self, 'Cor_poe_pista_Exp9')
end
function Cor_poe_pista_Exp9()
  getObjectFromGUID("b5fb7e").setPosition({0.00, -33, 0.00})
broadcastToAll("<<< Preparing Map 9 >>>", "White")
getObjectFromGUID("6565c7").setValue("Ateatório - 7 Peças")

Espera(1)

Peca_A.setPosition({-15,-40.1, 30}) Peca_A.setRotation({ 0,   0,  0}) Peca_A.setLock(true)
Peca_B.setPosition({-15,-40.2, 30}) Peca_B.setRotation({ 0,   0,  0}) Peca_B.setLock(true)
Peca_FIM.setPosition ({15, -41.0, 30}) Peca_FIM.setRotation({ 0,   0,  0}) Peca_FIM.setLock(true)
Peca_FIM2.setPosition({15, -41.1, 30}) Peca_FIM2.setRotation({ 0,   0,  0}) Peca_FIM2.setLock(true)
Peca_Heros1.setPosition({15, -41.2, 30}) Peca_Heros1.setRotation({ 0,   0,  0}) Peca_Heros1.setLock(true)
Peca_Heros2.setPosition({15, -41.3, 30}) Peca_Heros2.setRotation({ 0,   0,  0}) Peca_Heros2.setLock(true)

Poe_pistas_nas_bags()
Espera(1)

T_Pausa = 0.1

--Coloca PEÇA 1
       Espera(T_Pausa)
       N_SORT1 = (math.random(1,2))
    if N_SORT1 == 1 then Peca_A.setPosition({-13.82, 1.58, 4.00})   Peca_A.setRotation({0.00, 210.00, 0.00})  Peca_A.setLock(true) Peca_A.setDescription("210")
elseif N_SORT1 == 2 then Peca_B.setPosition({-13.82, 1.58, 4.00})   Peca_B.setRotation({0.00, 330.00, 0.00})  Peca_B.setLock(true) Peca_B.setDescription("330")  end

--Coloca PEÇA 2
Espera(T_Pausa) Sort_Rot()
Bag_pistas_exp.takeObject({  position = {-7.05, 1.58, 4.47}, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas })
--Barreira 1
Bag_Barreiras_exp.shuffle() Bag_Barreiras_exp.takeObject({ position = {-10.38, 1.73, 4.44}, smooth = false, callback_function = take_callback, rotation={0,0,0} })

--Coloca PEÇA 3
Espera(T_Pausa) Sort_Rot()
Pos_Tile_Anterior = {-7.05, 1.58, 4.47}
Pos_Tile_1 = {Pos_Tile_Anterior[1]-2.91, Pos_Tile_Anterior[2], Pos_Tile_Anterior[3]+6.11}
Pos_Tile_2 = {Pos_Tile_Anterior[1]+3.81, Pos_Tile_Anterior[2], Pos_Tile_Anterior[3]+5.58}
Pos_Tile_3 = {Pos_Tile_Anterior[1]+6.68, Pos_Tile_Anterior[2], Pos_Tile_Anterior[3]+0.54}
Pos_Tile_4 = {Pos_Tile_Anterior[1]+3.81, Pos_Tile_Anterior[2], Pos_Tile_Anterior[3]-5.48}

       N_SORT2 = (math.random(1,4))
    if N_SORT2 == 1 then Bag_pistas_exp.takeObject({  position = Pos_Tile_1, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas }) Pos_Tile_Anterior = Pos_Tile_1
elseif N_SORT2 == 2 then Bag_pistas_exp.takeObject({  position = Pos_Tile_2, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas }) Pos_Tile_Anterior = Pos_Tile_2
elseif N_SORT2 == 3 then Bag_pistas_exp.takeObject({  position = Pos_Tile_3, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas }) Pos_Tile_Anterior = Pos_Tile_3
elseif N_SORT2 == 4 then Bag_pistas_exp.takeObject({  position = Pos_Tile_4, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas }) Pos_Tile_Anterior = Pos_Tile_4  end
    --Peça heroi em função do lugar da peça 3
    if N_SORT2 == 1 then Peca_Heros2.setPosition({-5.01, 1.58, 0.85})    Peca_Heros2.setRotation({0, 330, 0})   Peca_Heros2.setLock(true)
elseif N_SORT2 == 2 then Peca_Heros1.setPosition({-9.12, 1.58, 8.13})    Peca_Heros1.setRotation({0, 150, 0})   Peca_Heros1.setLock(true)
elseif N_SORT2 == 3 then Peca_Heros2.setPosition({-5.01, 1.58, 0.85})    Peca_Heros2.setRotation({0, 330, 0})   Peca_Heros2.setLock(true)
elseif N_SORT2 == 4 then Peca_Heros1.setPosition({-4.90, 1.58, 8.10})    Peca_Heros1.setRotation({0, 210, 0})   Peca_Heros1.setLock(true)  end

--Barreira 2
Pos_Barreira_1 = {Pos_Tile_Anterior[1]+1.66, Pos_Tile_Anterior[2]+0.15, Pos_Tile_Anterior[3]-2.85}  Rot_Barr_1 = {0,240,0}
Pos_Barreira_2 = {Pos_Tile_Anterior[1]-1.69, Pos_Tile_Anterior[2]+0.15, Pos_Tile_Anterior[3]-2.91}  Rot_Barr_2 = {0,300,0}
Pos_Barreira_3 = {Pos_Tile_Anterior[1]-3.33, Pos_Tile_Anterior[2]+0.15, Pos_Tile_Anterior[3]-0.00}  Rot_Barr_3 = {0,180,0}
Pos_Barreira_4 = {Pos_Tile_Anterior[1]-1.70, Pos_Tile_Anterior[2]+0.15, Pos_Tile_Anterior[3]+2.89}  Rot_Barr_4 = {0, 60,0}

    if N_SORT2 == 1 then Bag_Barreiras_exp.takeObject({ position = Pos_Barreira_1, rotation=Rot_Barr_1, smooth = false, callback_function = take_callback  })
elseif N_SORT2 == 2 then Bag_Barreiras_exp.takeObject({ position = Pos_Barreira_2, rotation=Rot_Barr_2, smooth = false, callback_function = take_callback  })
elseif N_SORT2 == 3 then Bag_Barreiras_exp.takeObject({ position = Pos_Barreira_3, rotation=Rot_Barr_3, smooth = false, callback_function = take_callback  })
elseif N_SORT2 == 4 then Bag_Barreiras_exp.takeObject({ position = Pos_Barreira_4, rotation=Rot_Barr_4, smooth = false, callback_function = take_callback  })  end

--Coloca PEÇA 4
Espera(T_Pausa) Sort_Rot()
Pos_Tile_2 = {Pos_Tile_Anterior[1]+3.81, Pos_Tile_Anterior[2], Pos_Tile_Anterior[3]+5.58}
Pos_Tile_3 = {Pos_Tile_Anterior[1]+6.68, Pos_Tile_Anterior[2], Pos_Tile_Anterior[3]+0.54}

       N_SORT2 = (math.random(2,3))
    if N_SORT2 == 2 then Bag_pistas.takeObject({  position = Pos_Tile_2, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas }) Pos_Tile_Anterior = Pos_Tile_2
elseif N_SORT2 == 3 then Bag_pistas.takeObject({  position = Pos_Tile_3, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas }) Pos_Tile_Anterior = Pos_Tile_3  end

--Barreira 3
Bag_Barreiras.shuffle()
Pos_Barreira_2 = {Pos_Tile_Anterior[1]-1.69, Pos_Tile_Anterior[2]+0.15, Pos_Tile_Anterior[3]-2.91}  Rot_Barr_2 = {0,300,0}
Pos_Barreira_3 = {Pos_Tile_Anterior[1]-3.33, Pos_Tile_Anterior[2]+0.15, Pos_Tile_Anterior[3]-0.00}  Rot_Barr_3 = {0,180,0}

    if N_SORT2 == 2 then Bag_Barreiras.takeObject({ position = Pos_Barreira_2, rotation=Rot_Barr_2, smooth = false, callback_function = take_callback  })
elseif N_SORT2 == 3 then Bag_Barreiras.takeObject({ position = Pos_Barreira_3, rotation=Rot_Barr_3, smooth = false, callback_function = take_callback  })  end

--Coloca PEÇA 5
Espera(T_Pausa) Sort_Rot()
Pos_Tile_2 = {Pos_Tile_Anterior[1]+3.81, Pos_Tile_Anterior[2], Pos_Tile_Anterior[3]+5.58}
Pos_Tile_3 = {Pos_Tile_Anterior[1]+6.68, Pos_Tile_Anterior[2], Pos_Tile_Anterior[3]+0.54}
Pos_Tile_4 = {Pos_Tile_Anterior[1]+3.81, Pos_Tile_Anterior[2], Pos_Tile_Anterior[3]-5.48}


if Pos_Tile_4[3] < -6 then Lim_Baixo = 3 else Lim_Baixo = 4 end
if Pos_Tile_2[3] > 17 then Lim_Cima = 3 else Lim_Cima = 2 end

       N_SORT2 = (math.random(Lim_Cima,Lim_Baixo))
    if N_SORT2 == 2 then Bag_pistas_exp.takeObject({  position = Pos_Tile_2, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas }) Pos_Tile_Anterior = Pos_Tile_2
elseif N_SORT2 == 3 then Bag_pistas_exp.takeObject({  position = Pos_Tile_3, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas }) Pos_Tile_Anterior = Pos_Tile_3
elseif N_SORT2 == 4 then Bag_pistas_exp.takeObject({  position = Pos_Tile_4, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas }) Pos_Tile_Anterior = Pos_Tile_4 end

--Barreira 4
Pos_Barreira_2 = {Pos_Tile_Anterior[1]-1.69, Pos_Tile_Anterior[2]+0.15, Pos_Tile_Anterior[3]-2.91}  Rot_Barr_2 = {0,300,0}
Pos_Barreira_3 = {Pos_Tile_Anterior[1]-3.33, Pos_Tile_Anterior[2]+0.15, Pos_Tile_Anterior[3]-0.00}  Rot_Barr_3 = {0,180,0}
Pos_Barreira_4 = {Pos_Tile_Anterior[1]-1.70, Pos_Tile_Anterior[2]+0.15, Pos_Tile_Anterior[3]+2.89}  Rot_Barr_4 = {0, 60,0}

    if N_SORT2 == 2 then Bag_Barreiras.takeObject({ position = Pos_Barreira_2, rotation=Rot_Barr_2, smooth = false, callback_function = take_callback  })
elseif N_SORT2 == 3 then Bag_Barreiras.takeObject({ position = Pos_Barreira_3, rotation=Rot_Barr_3, smooth = false, callback_function = take_callback  })
elseif N_SORT2 == 4 then Bag_Barreiras.takeObject({ position = Pos_Barreira_4, rotation=Rot_Barr_4, smooth = false, callback_function = take_callback  })  end

--Coloca PEÇA 6
Espera(T_Pausa) Sort_Rot()
Pos_Tile_2 = {Pos_Tile_Anterior[1]+3.81, Pos_Tile_Anterior[2], Pos_Tile_Anterior[3]+5.58}
Pos_Tile_3 = {Pos_Tile_Anterior[1]+6.68, Pos_Tile_Anterior[2], Pos_Tile_Anterior[3]+0.54}
Pos_Tile_4 = {Pos_Tile_Anterior[1]+3.81, Pos_Tile_Anterior[2], Pos_Tile_Anterior[3]-5.48}

if Pos_Tile_4[3] < -6 then Lim_Baixo = 3 else Lim_Baixo = 4 end
if Pos_Tile_2[3] > 17 then Lim_Cima = 3 else Lim_Cima = 2 end

       N_SORT2 = (math.random(Lim_Cima,Lim_Baixo))
    if N_SORT2 == 2 then Bag_pistas_exp.takeObject({  position = Pos_Tile_2, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas }) Pos_Tile_Anterior = Pos_Tile_2
elseif N_SORT2 == 3 then Bag_pistas_exp.takeObject({  position = Pos_Tile_3, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas }) Pos_Tile_Anterior = Pos_Tile_3
elseif N_SORT2 == 4 then Bag_pistas_exp.takeObject({  position = Pos_Tile_4, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas }) Pos_Tile_Anterior = Pos_Tile_4 end

--Barreira 5
Pos_Barreira_2 = {Pos_Tile_Anterior[1]-1.69, Pos_Tile_Anterior[2]+0.15, Pos_Tile_Anterior[3]-2.91}  Rot_Barr_2 = {0,300,0}
Pos_Barreira_3 = {Pos_Tile_Anterior[1]-3.33, Pos_Tile_Anterior[2]+0.15, Pos_Tile_Anterior[3]-0.00}  Rot_Barr_3 = {0,180,0}
Pos_Barreira_4 = {Pos_Tile_Anterior[1]-1.70, Pos_Tile_Anterior[2]+0.15, Pos_Tile_Anterior[3]+2.89}  Rot_Barr_4 = {0, 60,0}

    if N_SORT2 == 2 then Bag_Barreiras.takeObject({ position = Pos_Barreira_2, rotation=Rot_Barr_2, smooth = false, callback_function = take_callback  })
elseif N_SORT2 == 3 then Bag_Barreiras.takeObject({ position = Pos_Barreira_3, rotation=Rot_Barr_3, smooth = false, callback_function = take_callback  })
elseif N_SORT2 == 4 then Bag_Barreiras.takeObject({ position = Pos_Barreira_4, rotation=Rot_Barr_4, smooth = false, callback_function = take_callback  })  end

--Coloca PEÇA 7
Espera(T_Pausa) Sort_Rot()
Pos_Tile_2 = {Pos_Tile_Anterior[1]+3.81, Pos_Tile_Anterior[2], Pos_Tile_Anterior[3]+5.58}
Pos_Tile_3 = {Pos_Tile_Anterior[1]+6.68, Pos_Tile_Anterior[2], Pos_Tile_Anterior[3]+0.54}
Pos_Tile_4 = {Pos_Tile_Anterior[1]+3.81, Pos_Tile_Anterior[2], Pos_Tile_Anterior[3]-5.48}

if Pos_Tile_4[3] < -6 then Lim_Baixo = 3 else Lim_Baixo = 4 end
if Pos_Tile_2[3] > 17 then Lim_Cima = 3 else Lim_Cima = 2 end

       N_SORT2 = (math.random(Lim_Cima,Lim_Baixo))
    if N_SORT2 == 2 then Bag_pistas.takeObject({  position = Pos_Tile_2, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas }) Pos_Tile_Anterior = Pos_Tile_2
elseif N_SORT2 == 3 then Bag_pistas.takeObject({  position = Pos_Tile_3, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas }) Pos_Tile_Anterior = Pos_Tile_3
elseif N_SORT2 == 4 then Bag_pistas.takeObject({  position = Pos_Tile_4, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas }) Pos_Tile_Anterior = Pos_Tile_4 end

--Barreira 5
Pos_Barreira_2 = {Pos_Tile_Anterior[1]-1.69, Pos_Tile_Anterior[2]+0.15, Pos_Tile_Anterior[3]-2.91}  Rot_Barr_2 = {0,300,0}
Pos_Barreira_3 = {Pos_Tile_Anterior[1]-3.33, Pos_Tile_Anterior[2]+0.15, Pos_Tile_Anterior[3]-0.00}  Rot_Barr_3 = {0,180,0}
Pos_Barreira_4 = {Pos_Tile_Anterior[1]-1.70, Pos_Tile_Anterior[2]+0.15, Pos_Tile_Anterior[3]+2.89}  Rot_Barr_4 = {0, 60,0}

    if N_SORT2 == 2 then Bag_Barreiras.takeObject({ position = Pos_Barreira_2, rotation=Rot_Barr_2, smooth = false, callback_function = take_callback  })
elseif N_SORT2 == 3 then Bag_Barreiras.takeObject({ position = Pos_Barreira_3, rotation=Rot_Barr_3, smooth = false, callback_function = take_callback  })
elseif N_SORT2 == 4 then Bag_Barreiras.takeObject({ position = Pos_Barreira_4, rotation=Rot_Barr_4, smooth = false, callback_function = take_callback  })  end

--Coloca PEÇA Fim
Espera(T_Pausa) Sort_Rot()
Pos_Tile_2 = {Pos_Tile_Anterior[1]+3.93, Pos_Tile_Anterior[2], Pos_Tile_Anterior[3]+2.22}
--Pos_Tile_3 = {Pos_Tile_Anterior[1]+6.68, Pos_Tile_Anterior[2], Pos_Tile_Anterior[3]+0.54}
--Pos_Tile_4 = {Pos_Tile_Anterior[1]+3.81, Pos_Tile_Anterior[2], Pos_Tile_Anterior[3]-5.48}

       N_SORT1 = (math.random(1,2))
    if N_SORT1 == 1 then Peca_final = Peca_FIM
elseif N_SORT1 == 2 then Peca_final = Peca_FIM2 end

       N_SORT2 = (math.random(2,2))
    if N_SORT2 == 2 then Peca_final.setPosition(Pos_Tile_2) Peca_final.setRotation({0.00, 330, 0.00})   Peca_final.setLock(true)
--elseif N_SORT2 == 3 then Bag_pistas_exp.takeObject({  position = Pos_Tile_3, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas }) Pos_Tile_Anterior = Pos_Tile_3
--elseif N_SORT2 == 4 then Bag_pistas_exp.takeObject({  position = Pos_Tile_4, smooth = false, rotation = {Rotacao[1],Rotacao[2],Rotacao[3]}, callback_function = callback_Pistas }) Pos_Tile_Anterior = Pos_Tile_4 end
end

Espera(T_Pausa)
--tira peças q sobraqram das bags
N_Bag_pistas = Bag_pistas.getQuantity()
for i=1, N_Bag_pistas, 1 do
Bag_pistas.takeObject({  position = { 0, -141.0 + (i*0.1), 30}, smooth = false, rotation = {0,0,0}, callback_function = callback_Pistas })
end

N_Bag_pistas_exp = Bag_pistas_exp.getQuantity()
for i=1, N_Bag_pistas_exp, 1 do
Bag_pistas_exp.takeObject({  position = { 5, -141.0 + (i*0.1), 30}, smooth = false, rotation = {0,0,0}, callback_function = callback_Pistas })
end

Bag_pistas_pqn.takeObject({  position = { 0, -142.3, 30}, smooth = false, rotation = {0,0,0}, callback_function = callback_Pistas })
Bag_pistas_pqn.takeObject({  position = { 0, -142.1, 30}, smooth = false, rotation = {0,0,0}, callback_function = callback_Pistas })
Bag_pistas_pqn.takeObject({  position = { 0, -142.2, 30}, smooth = false, rotation = {0,0,0}, callback_function = callback_Pistas })

--Barreiras q sobra
Espera(T_Pausa)
Bag_Barreiras.takeObject({ position = {33.89, 1.53, 22.36}, smooth = true, callback_function = take_callback, rotation={0,90,0} })
Bag_Barreiras.takeObject({ position = {33.89, 1.53, 23.36}, smooth = true, callback_function = take_callback, rotation={0,90,0} })
--Bag_Barreiras.takeObject({ position = {33.89, 1.53, 24.36}, smooth = true, callback_function = take_callback, rotation={0,90,0} })
--Bag_Barreiras.takeObject({ position = {33.89, 1.53, 25.36}, smooth = true, callback_function = take_callback, rotation={0,90,0} })

--POSICIONA DECK Herois
getObjectFromGUID("3275b3").setPositionSmooth({-13.47, 1.50, -1.99})
getObjectFromGUID("3275b3").setRotation({0.00, 180.00, 180.00})
getObjectFromGUID("3275b3").shuffle()

Espera(1)
broadcastToAll("<<< Aguardando carregamento para posicionar os tokens.  >>>", "White")
Espera(2)

--Define o bag dos tokens
Usar_Tokens_Exp = 1
startLuaCoroutine(self, 'Cavernas_Ale')



return 1
end


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--************************************  AUXILIARES  ******************************************************************************************************************************
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function Poe_pistas_nas_bags()

Bag_pistas_exp = getObjectFromGUID("19c072")
Bag_pistas_exp.putObject(Peca_S2)
Bag_pistas_exp.putObject(Peca_T2)
Bag_pistas_exp.putObject(Peca_U2)
Bag_pistas_exp.putObject(Peca_V2)
Bag_pistas_exp.putObject(Peca_W2)
Bag_pistas_exp.putObject(Peca_X2)
Bag_pistas_exp.shuffle()

Bag_pistas = getObjectFromGUID("567680")
Bag_pistas.putObject(Peca_C)
Bag_pistas.putObject(Peca_D)
Bag_pistas.putObject(Peca_E)
Bag_pistas.putObject(Peca_F)
Bag_pistas.putObject(Peca_G)
Bag_pistas.putObject(Peca_H)
Bag_pistas.putObject(Peca_I)
Bag_pistas.putObject(Peca_J)
Bag_pistas.putObject(Peca_K)
Bag_pistas.putObject(Peca_L)
Bag_pistas.putObject(Peca_M)
Bag_pistas.putObject(Peca_N)
Bag_pistas.shuffle()

Bag_pistas_pqn = getObjectFromGUID("598a66")
Bag_pistas_pqn.putObject(Peca_O)
Bag_pistas_pqn.putObject(Peca_Q)
Bag_pistas_pqn.putObject(Peca_R)
Bag_pistas_pqn.shuffle()

end
---------------------------------------------------------------------------------------------------
function callback_Pistas(object_spawned, name)
object_spawned.setLock(true)
object_spawned.setDescription(N_rot)
end
---------------------------------------------------------------------------------------------------
function take_callback(object_spawned)
  object_spawned.setLock(true)
  object_spawned.createButton({ index = 0, label="Take\nBlockade", click_function="takeBlockade", function_owner=Global,
  position={0,0.1,1.8}, rotation={0,90,0}, height=200, width=500, font_size = 80, font_color={0,0,0}   })
  B_guid = object_spawned.getGUID()
  if n_bar == 1 then Barrier1 = getObjectFromGUID(B_guid) end
  if n_bar == 2 then Barrier2 = getObjectFromGUID(B_guid) end
  if n_bar == 3 then Barrier3 = getObjectFromGUID(B_guid) end
  if n_bar == 4 then Barrier4 = getObjectFromGUID(B_guid) end
  if n_bar == 5 then Barrier5 = getObjectFromGUID(B_guid) end
  if n_bar == 6 then Barrier6 = getObjectFromGUID(B_guid) end
  n_bar = n_bar + 1
  if n_bar == 7 then n_bar = 1 end
end
--------------------------------------------------------------------------------------------------------
function take_callback2(object_spawned, name)
object_spawned.setLock(false)
object_spawned.createButton({ index = 0, label="Take\nBlockade", click_function="takeBlockade", function_owner=Global,
position={0,0.1,1.8}, rotation={0,90,0}, height=200, width=500, font_size = 80, font_color={0,0,0}   })
B_guid = object_spawned.getGUID()
if n_bar == 1 then Barrier1 = getObjectFromGUID(B_guid) end
if n_bar == 2 then Barrier2 = getObjectFromGUID(B_guid) end
if n_bar == 3 then Barrier3 = getObjectFromGUID(B_guid) end
if n_bar == 4 then Barrier4 = getObjectFromGUID(B_guid) end
if n_bar == 5 then Barrier5 = getObjectFromGUID(B_guid) end
if n_bar == 6 then Barrier6 = getObjectFromGUID(B_guid) end
if n_bar == 7 then Barrier6 = getObjectFromGUID(B_guid) end
if n_bar == 8 then Barrier6 = getObjectFromGUID(B_guid) end
n_bar = n_bar + 1
if n_bar == 9 then n_bar = 1 end
end
-----------------------------------------------------------------------------------------------------------------------------------
function take_callback_peca(object_spawned, name)
  object_spawned.setLock(true)
end
-----------------------------------------------------------------------------------------------------------------------------------

function giveObjectToPlayer(object, player, extraDistance)
  --local hand = Player[playerColour]:getPlayerHand()
  local playerHand = Player[player].getPlayerHand();

    object.setRotationSmooth({0,playerHand["rot_y"]+0,0})
    object.setPositionSmooth({playerHand["pos_x"]+ 4.5 + x_bar +playerHand["trigger_forward_x"]*15,   1.5,   playerHand["pos_z"]-1.3+(playerHand["trigger_forward_z"]*extraDistance)*15})
end
-----------------------------------------------------------------------------------------------------------------------------------
function Sort_Rot()
    N_rot = (math.random(1,6))
    if N_rot == 1 then Rotacao = {0.00, 210, 0.00}
elseif N_rot == 2 then Rotacao = {0.00, 150, 0.00}
elseif N_rot == 3 then Rotacao = {0.00, 90, 0.00}
elseif N_rot == 4 then Rotacao = {0.00, 30, 0.00}
elseif N_rot == 5 then Rotacao = {0.00, 330, 0.00}
elseif N_rot == 6 then Rotacao = {0.00, 270, 0.00} end
--4: 30° / 5: 330° / 6: 270° / 1: 210° / 2: 150° /3: 90°
end
---------------------------------------------------------------------------------------------------
function Sort_Rot_Exp()
  N_rot = (math.random(1,6))
      if N_rot == 1 then Rotacao = {0.00, 360, 0.00}
  elseif N_rot == 2 then Rotacao = {0.00, 300, 0.00}
  elseif N_rot == 3 then Rotacao = {0.00, 240, 0.00}
  elseif N_rot == 4 then Rotacao = {0.00, 180, 0.00}
  elseif N_rot == 5 then Rotacao = {0.00, 120, 0.00}
  elseif N_rot == 6 then Rotacao = {0.00,  60, 0.00} end
end
---------------------------------------------------------------------------------------------------
function Sort_Rot2()
  N_rot = (math.random(1,2))
      if N_rot == 1 then Rotacao = {0.00, 90, 0.00}
  elseif N_rot == 2 then Rotacao = {0.00, 270, 0.00} end
end
---------------------------------------------------------------------------------------------------
function Sort_Rot3()
  N_rot = (math.random(1,2))
      if N_rot == 1 then Rotacao = {0.00, 30, 0.00}
  elseif N_rot == 2 then Rotacao = {0.00, 210, 0.00} end
end
---------------------------------------------------------------------------------------------------
function Sort_Rot4()
  N_rot = (math.random(1,2))
      if N_rot == 1 then Rotacao = {0.00, 330, 0.00}
  elseif N_rot == 2 then Rotacao = {0.00, 150, 0.00} end
end
-----------------------------------------------------------------------------------------------------------------------------------
--%%%%%%%%%%%%%%%%%%   CAVERNAS    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%-
-----------------------------------------------------------------------------------------------------------------------------------
function Cavernas_P1()

Bag_caverna.shuffle()
for i = 1, 4, 1 do
parametros =  { position = {-8.11, 2+1*i, -0.08}, smooth = true, callback_function = nil, rotation={0, 174.92, 180} }
Bag_caverna.takeObject(parametros) end

for i = 1, 4, 1 do
parametros =  { position = {-7.77, 2+1*i, 7.23}, smooth = true, callback_function = nil, rotation={0, 174.92, 180} }
Bag_caverna.takeObject(parametros) end

for i = 1, 4, 1 do
parametros =  { position = {-4.23, 2+1*i, 10.90}, smooth = true, callback_function = nil, rotation={0, 174.92, 180} }
Bag_caverna.takeObject(parametros) end

for i = 1, 4, 1 do
parametros =  { position = {1.70, 2+1*i, 0.98}, smooth = true, callback_function = nil, rotation={0, 174.92, 180} }
Bag_caverna.takeObject(parametros) end

end
-----------------------------------------------------------------------------------------------------------------------------------

function Cavernas_P2()

Bag_caverna.shuffle()
for i = 1, 4, 1 do
parametros =  { position = {-11.71, 2+1*i, -3.43}, smooth = true, callback_function = nil, rotation={0, 180, 180} }
Bag_caverna.takeObject(parametros) end

for i = 1, 4, 1 do
parametros =  { position = {-7.97, 2+1*i, 2.20}, smooth = true, callback_function = nil, rotation={0, 180, 180} }
Bag_caverna.takeObject(parametros) end

for i = 1, 4, 1 do
parametros =  { position = {5.12, 2+1*i, 7.01}, smooth = true, callback_function = nil, rotation={0, 180, 180} }
Bag_caverna.takeObject(parametros) end

for i = 1, 4, 1 do
parametros =  { position = {12.96, 2+1*i, 4.05}, smooth = true, callback_function = nil, rotation={0, 178, 180} }
Bag_caverna.takeObject(parametros) end

end
-----------------------------------------------------------------------------------------------------------------------------------

function Cavernas_P3()

Bag_caverna.shuffle()
for i = 1, 4, 1 do
parametros =  { position = {-9.62, 2+1*i, 1.49}, smooth = true, callback_function = nil, rotation={0,125.14,180} }
Bag_caverna.takeObject(parametros) end

for i = 1, 4, 1 do
parametros =  { position = {-10.67, 2+1*i, 10.61}, smooth = true, callback_function = nil, rotation={0,125.14,180} }
Bag_caverna.takeObject(parametros) end

for i = 1, 4, 1 do
parametros =  { position = {-3.29, 2+1*i, 6.50}, smooth = true, callback_function = nil, rotation={0,125.14,180} }
Bag_caverna.takeObject(parametros) end

for i = 1, 4, 1 do
parametros =  { position = {2.32, 2+1*i, 4.89}, smooth = true, callback_function = nil, rotation={0,125.14,180} }
Bag_caverna.takeObject(parametros) end

for i = 1, 4, 1 do
parametros =  { position = {6.4, 2+1*i, 7.92}, smooth = true, callback_function = nil, rotation={0,125.14,180} }
Bag_caverna.takeObject(parametros) end

end
-----------------------------------------------------------------------------------------------------------------------------------

function Cavernas_P4()

Bag_caverna.shuffle()
for i = 1, 4, 1 do
parametros =  { position = {-8.82, 2+1*i, 10.09}, smooth = true, callback_function = nil, rotation={0, 180, 180} }
Bag_caverna.takeObject(parametros) end

for i = 1, 4, 1 do
parametros =  { position = {-5.94, 2+1*i, 2.81}, smooth = true, callback_function = nil, rotation={0, 180, 180} }
Bag_caverna.takeObject(parametros) end

for i = 1, 4, 1 do
parametros =  { position = {2.77, 2+1*i, 2.25}, smooth = true, callback_function = nil, rotation={0, 180, 180} }
Bag_caverna.takeObject(parametros) end

for i = 1, 4, 1 do
parametros =  { position = {-0.09, 2+1*i, 8.25}, smooth = true, callback_function = nil, rotation={0, 178, 180} }
Bag_caverna.takeObject(parametros) end

for i = 1, 4, 1 do
parametros =  { position = {4.74, 2+1*i, 12.10}, smooth = true, callback_function = nil, rotation={0, 178, 180} }
Bag_caverna.takeObject(parametros) end

for i = 1, 4, 1 do
parametros =  { position = {10.41, 2+1*i, 6.64}, smooth = true, callback_function = nil, rotation={0, 178, 180} }
Bag_caverna.takeObject(parametros) end

end
-----------------------------------------------------------------------------------------------------------------------------------

function Cavernas_P5()

Bag_caverna.shuffle()
for i = 1, 4, 1 do
parametros =  { position = {-9.84, 2+1*i, 1.17}, smooth = true, callback_function = nil, rotation={0,165,180} }
Bag_caverna.takeObject(parametros) end

for i = 1, 4, 1 do
parametros =  { position = {-5.38, 2+1*i,10.83}, smooth = true, callback_function = nil, rotation={0,165,180} }
Bag_caverna.takeObject(parametros) end

for i = 1, 4, 1 do
parametros =  { position = {0.44, 2+1*i,15.14}, smooth = true, callback_function = nil, rotation={0,165,180} }
Bag_caverna.takeObject(parametros) end

for i = 1, 4, 1 do
parametros =  { position = {9.11, 2+1*i,15.74}, smooth = true, callback_function = nil, rotation={0,165,180} }
Bag_caverna.takeObject(parametros) end

end
-----------------------------------------------------------------------------------------------------------------------------------

function Cavernas_P6()

Bag_caverna.shuffle()
for i = 1, 4, 1 do
parametros =  { position = {-8.74, 2+1*i, 14.58}, smooth = true, callback_function = nil, rotation={0,184.84,180} }
Bag_caverna.takeObject(parametros) end

for i = 1, 4, 1 do
parametros =  { position = {-0.12, 2+1*i, 13.32}, smooth = true, callback_function = nil, rotation={0,184.84,180} }
Bag_caverna.takeObject(parametros) end

for i = 1, 4, 1 do
parametros =  { position = {5.40, 2+1*i, 10.62}, smooth = true, callback_function = nil, rotation={0,184.84,180} }
Bag_caverna.takeObject(parametros) end

for i = 1, 4, 1 do
parametros =  { position = {9.02, 2+1*i, 7}, smooth = true, callback_function = nil, rotation={0,184.84,180} }
Bag_caverna.takeObject(parametros) end

for i = 1, 4, 1 do
parametros =  { position = {7.64, 2+1*i, 0.97}, smooth = true, callback_function = nil, rotation={0,184.84,180} }
Bag_caverna.takeObject(parametros) end

for i = 1, 4, 1 do
parametros =  { position = {1.20, 2+1*i, 3.17}, smooth = true, callback_function = nil, rotation={0,184.84,180} }
Bag_caverna.takeObject(parametros) end

end
-----------------------------------------------------------------------------------------------------------------------------------

function Cavernas_PA()
Espera(2)
Zona = getObjectFromGUID("da222d")
for i=1, 1, 1 do
local OBJ = Zona.getObjects()
  for j=1, #OBJ, 1 do
  NOME = OBJ[j].getName()
  ROT = OBJ[j].getDescription()
    if NOME == "A"  then
    Pos_tok_Cave = { {-8.81, 2, 10.10}, {-8.81, 2.5, 10.10}, {-8.81, 3, 10.10},  {-8.81, 3.5, 10.10} }
    Tira_Token_Cave2()
    end

    if NOME == "B"  then
    Pos_tok_Cave = { {-11.71, 2.0, 7.34}, {-11.71, 2.5, 7.34}, {-11.71, 3.0, 7.34}, {-11.71, 3.5, 7.34} }
    Tira_Token_Cave2()
    end

    if NOME == "C"  then
    Pos_tok_Cave = { {-6.85, 2.0, 2.29}, {-6.85, 2.5, 2.29}, {-6.85, 3.0, 2.29},{-6.85, 3.5, 2.29} }
    Tira_Token_Cave2()
    end

    if NOME == "D"  then
      Pos_tok_Cave = {  {9.60, 2.0, 1.50},  {9.60, 2.5, 1.50},  {9.60, 3.0, 1.50},  {9.60, 3.5, 1.50} }
    Tira_Token_Cave2()
    end

if NOME == "F"  then
if ROT == "1" then
Pos_tok_Cave = { {-4.89, 2, 4.48}, {-4.89, 2.5, 4.48},  {-4.89, 3, 4.48},  {-4.89, 3.5, 4.48}   }
elseif ROT == "2" then
Pos_tok_Cave = { {-7.80, 2, 5.06}, {-7.80, 2.5, 5.06}, {-7.80, 3, 5.06}, {-7.80, 3.5, 5.06}  }
elseif ROT == "3" then
Pos_tok_Cave = { {-9.77, 2, 2.82},  {-9.77, 2.5, 2.82},  {-9.77, 3, 2.82},  {-9.77, 3.5, 2.82} }
elseif ROT == "4" then
Pos_tok_Cave = { {-8.82, 2.0, 0.05},  {-8.82, 2.5, 0.05}, {-8.82, 3.0, 0.05}, {-8.82, 3.5, 0.05} }
elseif ROT == "5" then
Pos_tok_Cave = { {-5.95, 2.0, -0.51},  {-5.95, 2.5, -0.51},  {-5.95, 3, -0.51},  {-5.95, 3.5, -0.51}  }
elseif ROT == "6" then
Pos_tok_Cave = { {-3.95, 2, 1.66}, {-3.95, 2.5, 1.66}, {-3.95, 3, 1.66}, {-3.95, 3.5, 1.66}  }
end
Tira_Token_Cave2()
end

if NOME == "I"  then
if ROT == "1" then
Pos_tok_Cave = { {-3.94, 2, 0.49}, {-3.94, 2.5, 0.49}, {-3.94, 3, 0.49}, {-3.94, 3.5, 0.49}  }
elseif ROT == "2" then
Pos_tok_Cave = { {-3.93, 2, 3.89}, {-3.93, 2.5, 3.89}, {-3.93, 3, 3.89}, {-3.93, 3.5, 3.89} }
elseif ROT == "3" then
Pos_tok_Cave = { {-6.81, 2, 5.66}, {-6.81, 2.5, 5.66}, {-6.81, 3, 5.66}, {-6.81, 3.5, 5.66}  }
elseif ROT == "4" then
Pos_tok_Cave = { {-9.77, 2, 3.95}, {-9.77, 2.5, 3.95},  {-9.77, 3, 3.95},  {-9.77, 3.5, 3.95} }
elseif ROT == "5" then
Pos_tok_Cave = { {-9.78, 2, 0.62}, {-9.78, 2.5, 0.62},  {-9.78, 3, 0.62},  {-9.78, 3.5, 0.62}  }
elseif ROT == "6" then
Pos_tok_Cave = { {-6.91, 2, -1.07}, {-6.91, 2.5, -1.07},  {-6.91, 3, -1.07},  {-6.91, 3.5, -1.07}   }
end
Tira_Token_Cave2()
end

if NOME == "J"  then
if ROT == "1" then
Pos_tok_Cave = {  {0.02, 2.0, -0.58},  {0.02, 2.5, -0.58},  {0.02, 3.0, -0.58},  {0.02, 3.5, -0.58} }
elseif ROT == "2" then
Pos_tok_Cave = {  {1.91, 2.0, 0.51},  {1.91, 2.5, 0.51},  {1.91, 3.0, 0.51},  {1.91, 3.5, 0.51} }
elseif ROT == "3" then
Pos_tok_Cave = {  {1.95, 2.0, 2.68},  {1.95, 2.5, 2.68},  {1.95, 3.0, 2.68},  {1.95, 3.5, 2.68} }
elseif ROT == "4" then
Pos_tok_Cave = {  {0.04, 2.0, 3.79},  {0.04, 2.5, 3.79},  {0.04, 3.0, 3.79},  {0.04, 3.5, 3.79} }
elseif ROT == "5" then
Pos_tok_Cave = {  {-1.86, 2.0, 2.73},  {-1.86, 2.5, 2.73},  {-1.86, 3.0, 2.73},  {-1.86, 3.5, 2.73} }
elseif ROT == "6" then
Pos_tok_Cave = {  {-1.87, 2.0, 0.56},  {-1.87, 2.5, 0.56},  {-1.87, 3.0, 0.56},  {-1.87, 3.5, 0.56} }
end
Tira_Token_Cave2()
end

if NOME == "E"  then
if ROT == "1" then
Pos_tok_Cave = {  {1.94, 2.0, 2.73},  {1.94, 2.5, 2.73},  {1.94, 3.0, 2.73},  {1.94, 3.5, 2.73} }
elseif ROT == "2" then
Pos_tok_Cave = {  {0.03, 2.0, 3.83},  {0.03, 2.5, 3.83},  {0.03, 3.0, 3.83},  {0.03, 3.5, 3.83} }
elseif ROT == "3" then
Pos_tok_Cave = {  {-1.90, 2.0, 2.75},  {-1.90, 2.5, 2.75},  {-1.90, 3.0, 2.75},  {-1.90, 3.5, 2.75} }
elseif ROT == "4" then
Pos_tok_Cave = {  {-1.92, 2.0, 0.54},  {-1.92, 2.5, 0.54},  {-1.92, 3.0, 0.54},  {-1.92, 3.5, 0.54} }
elseif ROT == "5" then
Pos_tok_Cave = {  {0.00, 2.0, -0.59},  {0.00, 2.5, -0.59},  {0.00, 3.0, -0.59},  {0.00, 3.5, -0.59} }
elseif ROT == "6" then
Pos_tok_Cave = {  {1.91, 2.0, 0.50},  {1.91, 2.5, 0.50},  {1.91, 3.0, 0.50},  {1.91, 3.5, 0.50} }
end
Tira_Token_Cave2()
end

if NOME == "G"  then
if ROT == "1" then
Pos_tok_Cave = {  {7.70, 2.0, 2.69},  {7.70, 2.5, 2.69},  {7.70, 3.0, 2.69},  {7.70, 3.5, 2.69} }
elseif ROT == "2" then
Pos_tok_Cave = {  {7.66, 2.0, 0.45},  {7.66, 2.5, 0.45},  {7.66, 3.0, 0.45},  {7.66, 3.5, 0.45} }
elseif ROT == "3" then
Pos_tok_Cave = {  {9.56, 2.0, -0.70},  {9.56, 2.5, -0.70},  {9.56, 3.0, -0.70},  {9.56, 3.5, -0.70} }
elseif ROT == "4" then
Pos_tok_Cave = {  {11.49, 2.0, 0.41},  {11.49, 2.5, 0.41},  {11.49, 3.0, 0.41},  {11.49, 3.5, 0.41} }
elseif ROT == "5" then
Pos_tok_Cave = {  {11.54, 2.0, 2.59},  {11.54, 2.5, 2.59},  {11.54, 3.0, 2.59},  {11.54, 3.5, 2.59} }
elseif ROT == "6" then
Pos_tok_Cave = {  {9.63, 2.0, 3.77},  {9.63, 2.5, 3.77},  {9.63, 3.0, 3.77},  {9.63, 3.5, 3.77} }
end
Tira_Token_Cave2()
end

if NOME == "M"  then
if ROT == "1" then
Pos_tok_Cave = {  {12.47, 2.0, 0.95},  {12.47, 2.5, 0.95},  {12.47, 3.0, 0.95},  {12.47, 3.5, 0.95} }
elseif ROT == "2" then
Pos_tok_Cave = {  {11.50, 2.0, 3.72},  {11.50, 2.5, 3.72},  {11.50, 3.0, 3.72},  {11.50, 3.5, 3.72} }
elseif ROT == "3" then
Pos_tok_Cave = {  {8.62, 2.0, 4.23},  {8.62, 2.5, 4.23},  {8.62, 3.0, 4.23},  {8.62, 3.5, 4.23} }
elseif ROT == "4" then
Pos_tok_Cave = {  {6.69, 2.0, 2.06},  {6.69, 2.5, 2.06},  {6.69, 3.0, 2.06},  {6.69, 3.5, 2.06} }
elseif ROT == "5" then
Pos_tok_Cave = {  {6.69, 2.0, 2.06},  {6.69, 2.5, 2.06},  {6.69, 3.0, 2.06},  {6.69, 3.5, 2.06} }
elseif ROT == "6" then
Pos_tok_Cave = {  {10.56, 2.0, -1.29},  {10.56, 2.5, -1.29},  {10.56, 3.0, -1.29},  {10.56, 3.5, -1.29} }
end
Tira_Token_Cave2()
end

if NOME == "L"  then
if ROT == "1" then
Pos_tok_Cave = {  {17.27, 2.0, 1.37},  {17.27, 2.5, 1.37},  {17.27, 3.0, 1.37},  {17.27, 3.5, 1.37} }
elseif ROT == "2" then
Pos_tok_Cave = {  {17.27, 2.0, 2.47},  {17.27, 2.5, 2.47},  {17.27, 3.0, 2.47},  {17.27, 3.5, 2.47} }
elseif ROT == "3" then
Pos_tok_Cave = {  {16.30, 2.0, 3.06},  {16.30, 2.5, 3.06},  {16.30, 3.0, 3.06},  {16.30, 3.5, 3.06} }
elseif ROT == "4" then
Pos_tok_Cave = {  {15.36, 2.0, 2.49},  {15.36, 2.5, 2.49},  {15.36, 3.0, 2.49},  {15.36, 3.5, 2.49} }
elseif ROT == "5" then
Pos_tok_Cave = {  {15.35, 2.0, 1.37},  {15.35, 2.5, 1.37},  {15.35, 3.0, 1.37},  {15.35, 3.5, 1.37} }
elseif ROT == "6" then
Pos_tok_Cave = {  {16.32, 2.0, 0.80},  {16.32, 2.5, 0.80},  {16.32, 3.0, 0.80},  {16.32, 3.5, 0.80} }
end
Tira_Token_Cave2()
end

if NOME == "H"  then
if ROT == "1" then
Pos_tok_Cave = {  {14.43, 2.0, 3.07},  {14.43, 2.5, 3.07},  {14.43, 3.0, 3.07},  {14.43, 3.5, 3.07} }
elseif ROT == "2" then
Pos_tok_Cave = {  {14.39, 2.0, 0.88},  {14.39, 2.5, 0.88},  {14.39, 3.0, 0.88},  {14.39, 3.5, 0.88} }
elseif ROT == "3" then
Pos_tok_Cave = {  {16.28, 2.0, -0.30},  {16.28, 2.5, -0.30},  {16.28, 3.0, -0.30},  {16.28, 3.5, -0.30} }
elseif ROT == "4" then
Pos_tok_Cave = {  {18.24, 2.0, 0.80},  {18.24, 2.5, 0.80},  {18.24, 3.0, 0.80},  {18.24, 3.5, 0.80} }
elseif ROT == "5" then
Pos_tok_Cave = {  {18.27, 2.0, 3.05},  {18.27, 2.5, 3.05},  {18.27, 3.0, 3.05},  {18.27, 3.5, 3.05} }
elseif ROT == "6" then
Pos_tok_Cave = {  {16.35, 2.0, 4.18},  {16.35, 2.5, 4.18},  {16.35, 3.0, 4.18},  {16.35, 3.5, 4.18} }
end
Tira_Token_Cave2()
end

  end --for
end--for
return 1
end -- func
-----------------------------------------------------------------------------------------------------------------------------------

function Cavernas_PA2()

Espera(2)
Zona = getObjectFromGUID("da222d")
for i=1, 1, 1 do
local OBJ = Zona.getObjects()
  for j=1, #OBJ, 1 do
  NOME = OBJ[j].getName()
  ROT = OBJ[j].getDescription()

if NOME == "A"  then
Pos_tok_Cave = { {2.05, 2, 12.88}, {2.05, 2.5, 12.88}, {2.05, 3, 12.88},  {2.05, 3.5, 12.88} }
Tira_Token_Cave2()
end

if NOME == "B"  then
Pos_tok_Cave = { {-9.58, 2, 11.79}, {-9.58, 2.5, 11.79}, {-9.58, 3, 11.79}, {-9.58, 3.5, 11.79} }
Tira_Token_Cave2()
end

if NOME == "C"  then Lugar = Peca_C.GetPosition() Parametros_tok_cav_C() end
if NOME == "D"  then Lugar = Peca_D.GetPosition() Parametros_tok_cav_C() end
if NOME == "E"  then Lugar = Peca_E.GetPosition() Parametros_tok_cav_E() end
if NOME == "G"  then Lugar = Peca_G.GetPosition() Parametros_tok_cav_G() end
if NOME == "J"  then Lugar = Peca_J.GetPosition() Parametros_tok_cav_J() end
if NOME == "H"  then Lugar = Peca_H.GetPosition() Parametros_tok_cav_G() end
if NOME == "M"  then Lugar = Peca_M.GetPosition() Parametros_tok_cav_M() end
if NOME == "F"  then Lugar = Peca_F.GetPosition() Parametros_tok_cav_F() end
if NOME == "L"  then Lugar = Peca_L.GetPosition() Parametros_tok_cav_L() end
if NOME == "I"  then Lugar = Peca_I.GetPosition() Parametros_tok_cav_I() end

  end --for
end--for
return 1
end -- func

-----------------------------------------------------------------------------------------------------------------------------------

function Cavernas_Ale()

identidade_pecas()
Espera(3)

Zona = getObjectFromGUID("da222d")
for i=1, 1, 1 do
local OBJ = Zona.getObjects()
  for j=1, #OBJ, 1 do
  NOME = OBJ[j].getName()
  ROT = OBJ[j].getDescription()

--  print("_______")
--  print("NOME: ".. NOME)
--  print("ROT: ".. ROT)
--print("lugar S: (".. Lugar[1] .. "," ..  Lugar[2] .. "," .. Lugar[3] .. ")" )

if NOME == "S"  then Lugar = Peca_S2.GetPosition() Parametros_tok_cav_C() end
if NOME == "U"  then Lugar = Peca_U2.GetPosition() Parametros_tok_cav_C() end
if NOME == "T"  then Lugar = Peca_T2.GetPosition() Parametros_tok_cav_T() end
if NOME == "W"  then Lugar = Peca_W2.GetPosition() Parametros_tok_cav_W() end
if NOME == "V"  then Lugar = Peca_V2.GetPosition() Parametros_tok_cav_V() end
if NOME == "X"  then Lugar = Peca_X2.GetPosition() Parametros_tok_cav_X() end

if NOME == "A"  then Lugar = Peca_A.GetPosition() Parametros_tok_cav_A() end
if NOME == "B"  then Lugar = Peca_B.GetPosition() Parametros_tok_cav_B() end

if NOME == "C"  then Lugar = Peca_C.GetPosition() Parametros_tok_cav_C() end
if NOME == "D"  then Lugar = Peca_D.GetPosition() Parametros_tok_cav_C() end
if NOME == "E"  then Lugar = Peca_E.GetPosition() Parametros_tok_cav_E() end
if NOME == "G"  then Lugar = Peca_G.GetPosition() Parametros_tok_cav_G() end
if NOME == "J"  then Lugar = Peca_J.GetPosition() Parametros_tok_cav_J() end
if NOME == "H"  then Lugar = Peca_H.GetPosition() Parametros_tok_cav_G() end
if NOME == "M"  then Lugar = Peca_M.GetPosition() Parametros_tok_cav_M() end
if NOME == "F"  then Lugar = Peca_F.GetPosition() Parametros_tok_cav_F() end
if NOME == "L"  then Lugar = Peca_L.GetPosition() Parametros_tok_cav_L() end
if NOME == "I"  then Lugar = Peca_I.GetPosition() Parametros_tok_cav_I() end

  end --for
end--for
return 1
end -- func
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Parametros_tok_cav_A()
  --1: 210° / 2: 150° /3: 90° / 4: 30° / 5: 330° / 6: 270° /
  if ROT == "1" then --0°
  Lugar1 = Lugar + vector(1.65, 1.0, -0.95)
  Lugar2 = Lugar + vector(1.65, 1.5, -0.95)
  Lugar3 = Lugar + vector(1.65, 2.0, -0.95)
  Lugar4 = Lugar + vector(1.65, 2.5, -0.95)
  Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "2" then -- 300°
  Lugar1 = Lugar + vector(1.65, 1.0, 0.95)
  Lugar2 = Lugar + vector(1.65, 1.5, 0.95)
  Lugar3 = Lugar + vector(1.65, 2.0, 0.95)
  Lugar4 = Lugar + vector(1.65, 2.5, 0.95)
  Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "3" then -- 240°
  Lugar1 = Lugar + vector(0, 1.0, 1.91)
  Lugar2 = Lugar + vector(0, 1.5, 1.91)
  Lugar3 = Lugar + vector(0, 2.0, 1.91)
  Lugar4 = Lugar + vector(0, 2.5, 1.91)
  Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
  elseif ROT == "4" then
    Lugar1 = Lugar + vector(-1.65, 1.0, 0.95)
    Lugar2 = Lugar + vector(-1.65, 1.5, 0.95)
    Lugar3 = Lugar + vector(-1.65, 2.0, 0.95)
    Lugar4 = Lugar + vector(-1.65, 2.5, 0.95)
  Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
  elseif ROT == "5" then
    Lugar1 = Lugar + vector(-1.65, 1.0, -0.95)
    Lugar2 = Lugar + vector(-1.65, 1.5, -0.95)
    Lugar3 = Lugar + vector(-1.65, 2.0, -0.95)
    Lugar4 = Lugar + vector(-1.65, 2.5, -0.95)
  Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
  elseif ROT == "6" then
    Lugar1 = Lugar + vector(0, 1.0, -1.91)
    Lugar2 = Lugar + vector(0, 1.5, -1.91)
    Lugar3 = Lugar + vector(0, 2.0, -1.91)
    Lugar4 = Lugar + vector(0, 2.5, -1.91)
  Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "210" then
  Lugar1 = Lugar + vector(-0.94, 1.0, 1.69)
  Lugar2 = Lugar + vector(-0.94, 1.5, 1.69)
  Lugar3 = Lugar + vector(-0.94, 2.0, 1.69)
  Lugar4 = Lugar + vector(-0.94, 2.5, 1.69)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
end

--print("Lugar 1: " .. Lugar1[1])
  Tira_Token_Cave2()
  end
----------------------------------------------------------------------------------------------------------
function Parametros_tok_cav_B()
  --1: 210° / 2: 150° /3: 90° / 4: 30° / 5: 330° / 6: 270° /
  if ROT == "1" then  x=1.91  z=1.11
  Lugar1 = Lugar + vector(x, 1.0, z)
  Lugar2 = Lugar + vector(x, 1.5, z)
  Lugar3 = Lugar + vector(x, 2.0, z)
  Lugar4 = Lugar + vector(x, 2.5, z)
  Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "2" then x=0  z=2.25
  Lugar1 = Lugar + vector(x, 1.0, z)
  Lugar2 = Lugar + vector(x, 1.5, z)
  Lugar3 = Lugar + vector(x, 2.0, z)
  Lugar4 = Lugar + vector(x, 2.5, z)
  Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "3" then  x=-1.95  z=1.13
    Lugar1 = Lugar + vector(x, 1.0, z)
    Lugar2 = Lugar + vector(x, 1.5, z)
    Lugar3 = Lugar + vector(x, 2.0, z)
    Lugar4 = Lugar + vector(x, 2.5, z)
  Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "4" then  x=-1.94  z=-1.09
    Lugar1 = Lugar + vector(x, 1.0, z)
    Lugar2 = Lugar + vector(x, 1.5, z)
    Lugar3 = Lugar + vector(x, 2.0, z)
    Lugar4 = Lugar + vector(x, 2.5, z)
  Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "5" then  x=0  z=-2.25
    Lugar1 = Lugar + vector(x, 1.0, z)
    Lugar2 = Lugar + vector(x, 1.5, z)
    Lugar3 = Lugar + vector(x, 2.0, z)
    Lugar4 = Lugar + vector(x, 2.5, z)
  Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "6" then  x=1.9  z=-1.1
    Lugar1 = Lugar + vector(x, 1.0, z)
    Lugar2 = Lugar + vector(x, 1.5, z)
    Lugar3 = Lugar + vector(x, 2.0, z)
    Lugar4 = Lugar + vector(x, 2.5, z)
  Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "330" then  x=0  z=-2.25
    Lugar1 = Lugar + vector(x, 1.0, z)
    Lugar2 = Lugar + vector(x, 1.5, z)
    Lugar3 = Lugar + vector(x, 2.0, z)
    Lugar4 = Lugar + vector(x, 2.5, z)
  Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
  end
  Tira_Token_Cave2()
  end
----------------------------------------------------------------------------------------------------------
function Parametros_tok_cav_C()

Lugar1 = Lugar + vector(0, 1.0, 0)
Lugar2 = Lugar + vector(0, 1.5, 0)
Lugar3 = Lugar + vector(0, 2.0, 0)
Lugar4 = Lugar + vector(0, 2.5, 0)

Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
Tira_Token_Cave2()
end
----------------------------------------------------------------------------------------------------------
function Parametros_tok_cav_E()

if ROT == "1" then
Lugar1 = Lugar + vector(1.96, 1.0, 1.16)
Lugar2 = Lugar + vector(1.96, 1.5, 1.16)
Lugar3 = Lugar + vector(1.96, 2.0, 1.16)
Lugar4 = Lugar + vector(1.96, 2.5, 1.16)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "2" then
Lugar1 = Lugar + vector(0, 1.0, 2,28)
Lugar2 = Lugar + vector(0, 1.5, 2,28)
Lugar3 = Lugar + vector(0, 2.0, 2,28)
Lugar4 = Lugar + vector(0, 2.5, 2,28)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "3" then
Lugar1 = Lugar + vector(-1.96, 1.0, 1.16)
Lugar2 = Lugar + vector(-1.96, 1.5, 1.16)
Lugar3 = Lugar + vector(-1.96, 2.0, 1.16)
Lugar4 = Lugar + vector(-1.96, 2.5, 1.16)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "4" then
Lugar1 = Lugar + vector(-1.96, 1.0, -1.16)
Lugar2 = Lugar + vector(-1.96, 1.5, -1.16)
Lugar3 = Lugar + vector(-1.96, 2.0, -1.16)
Lugar4 = Lugar + vector(-1.96, 2.5, -1.16)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "5" then
Lugar1 = Lugar + vector(0, 1.0, -2,28)
Lugar2 = Lugar + vector(0, 1.5, -2,28)
Lugar3 = Lugar + vector(0, 2.0, -2,28)
Lugar4 = Lugar + vector(0, 2.5, -2,28)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "6" then
Lugar1 = Lugar + vector(1.96, 1.0, -1.16)
Lugar2 = Lugar + vector(1.96, 1.5, -1.16)
Lugar3 = Lugar + vector(1.96, 2.0, -1.16)
Lugar4 = Lugar + vector(1.96, 2.5, -1.16)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
end
Tira_Token_Cave2()
end
----------------------------------------------------------------------------------------------------------

function Parametros_tok_cav_F()
  ROT = tonumber(ROT)+1
  if ROT > 6 then ROT = tostring(ROT - 6)
  else
  ROT = tostring(ROT)
  end

if ROT == "1" then
Lugar1 = Lugar + vector(2.93, 1.0, -0.54)
Lugar2 = Lugar + vector(2.93, 1.5, -0.54)
Lugar3 = Lugar + vector(2.93, 2.0, -0.54)
Lugar4 = Lugar + vector(2.93, 2.5, -0.54)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "2" then
Lugar1 = Lugar + vector(1.95, 1.0, 2.25)
Lugar2 = Lugar + vector(1.95, 1.5, 2.25)
Lugar3 = Lugar + vector(1.95, 2.0, 2.25)
Lugar4 = Lugar + vector(1.95, 2.5, 2.25)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "3" then
Lugar1 = Lugar + vector(-0.87, 1.0, 2.75)
Lugar2 = Lugar + vector(-0.87, 1.5, 2.75)
Lugar3 = Lugar + vector(-0.87, 2.0, 2.75)
Lugar4 = Lugar + vector(-0.87, 2.5, 2.75)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "4" then
Lugar1 = Lugar + vector(-2.80, 1.0, 0.52)
Lugar2 = Lugar + vector(-2.80, 1.5, 0.52)
Lugar3 = Lugar + vector(-2.80, 2.0, 0.52)
Lugar4 = Lugar + vector(-2.80, 2.5, 0.52)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "5" then
Lugar1 = Lugar + vector(-1.87, 1.0, -2,20)
Lugar2 = Lugar + vector(-1.87, 1.5, -2,20)
Lugar3 = Lugar + vector(-1.87, 2.0, -2,20)
Lugar4 = Lugar + vector(-1.87, 2.5, -2,20)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "6" then
Lugar1 = Lugar + vector(0.98, 1.0, -2.71)
Lugar2 = Lugar + vector(0.98, 1.5, -2.71)
Lugar3 = Lugar + vector(0.98, 2.0, -2.71)
Lugar4 = Lugar + vector(0.98, 2.5, -2.71)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
end
Tira_Token_Cave2()
end
----------------------------------------------------------------------------------------------------------

function Parametros_tok_cav_G()   --  1: 210° / 2: 150° /3: 90° / 4: 30° / 5: 330° / 6: 270° /
--serve pro G e pro H

if ROT == "1" then
Lugar1 = Lugar + vector(-1.96, 1.0, 1.16)
Lugar2 = Lugar + vector(-1.96, 1.5, 1.16)
Lugar3 = Lugar + vector(-1.96, 2.0, 1.16)
Lugar4 = Lugar + vector(-1.96, 2.5, 1.16)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "2" then
Lugar1 = Lugar + vector(-1.96, 1.0, -1.16)
Lugar2 = Lugar + vector(-1.96, 1.5, -1.16)
Lugar3 = Lugar + vector(-1.96, 2.0, -1.16)
Lugar4 = Lugar + vector(-1.96, 2.5, -1.16)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "3" then
Lugar1 = Lugar + vector(0, 1.0, -2,28)
Lugar2 = Lugar + vector(0, 1.5, -2,28)
Lugar3 = Lugar + vector(0, 2.0, -2,28)
Lugar4 = Lugar + vector(0, 2.5, -2,28)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "4" then
Lugar1 = Lugar + vector(1.96, 1.0, -1.16)
Lugar2 = Lugar + vector(1.96, 1.5, -1.16)
Lugar3 = Lugar + vector(1.96, 2.0, -1.16)
Lugar4 = Lugar + vector(1.96, 2.5, -1.16)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "5" then
  Lugar1 = Lugar + vector(1.96, 1.0, 1.16)
  Lugar2 = Lugar + vector(1.96, 1.5, 1.16)
  Lugar3 = Lugar + vector(1.96, 2.0, 1.16)
  Lugar4 = Lugar + vector(1.96, 2.5, 1.16)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "6" then
  Lugar1 = Lugar + vector(0, 1.0, 2,28)
  Lugar2 = Lugar + vector(0, 1.5, 2,28)
  Lugar3 = Lugar + vector(0, 2.0, 2,28)
  Lugar4 = Lugar + vector(0, 2.5, 2,28)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
end
Tira_Token_Cave2()
end
----------------------------------------------------------------------------------------------------------

function Parametros_tok_cav_I() --  1: 210° / 2: 150° /3: 90° / 4: 30° / 5: 330° / 6: 270° /

if ROT == "1" then
Lugar1 = Lugar + vector(2.89, 1.0, -1.7)
Lugar2 = Lugar + vector(2.89, 1.5, -1.7)
Lugar3 = Lugar + vector(2.89, 2.0, -1.7)
Lugar4 = Lugar + vector(2.89, 2.5, -1.7)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "2" then
Lugar1 = Lugar + vector(3.00, 1.0, 1.70)
Lugar2 = Lugar + vector(3.00, 1.5, 1.70)
Lugar3 = Lugar + vector(3.00, 2.0, 1.70)
Lugar4 = Lugar + vector(3.00, 2.5, 1.70)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "3" then
Lugar1 = Lugar + vector(0, 1.0, 3.4)
Lugar2 = Lugar + vector(0, 1.5, 3.4)
Lugar3 = Lugar + vector(0, 2.0, 3.4)
Lugar4 = Lugar + vector(0, 2.5, 3.4)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "4" then
Lugar1 = Lugar + vector(-2.89, 1.0, 1.7)
Lugar2 = Lugar + vector(-2.89, 1.5, 1.7)
Lugar3 = Lugar + vector(-2.89, 2.0, 1.7)
Lugar4 = Lugar + vector(-2.89, 2.5, 1.7)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "5" then
Lugar1 = Lugar + vector(-2.89, 1.0, -1.7)
Lugar2 = Lugar + vector(-2.89, 1.5, -1.7)
Lugar3 = Lugar + vector(-2.89, 2.0, -1.7)
Lugar4 = Lugar + vector(-2.89, 2.5, -1.7)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "6" then
Lugar1 = Lugar + vector(-0.1, 1.0, -3.4)
Lugar2 = Lugar + vector(-0.1, 1.5, -3.4)
Lugar3 = Lugar + vector(-0.1, 2.0, -3.4)
Lugar4 = Lugar + vector(-0.1, 2.5, -3.4)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
end
Tira_Token_Cave2()
end
----------------------------------------------------------------------------------------------------------

function Parametros_tok_cav_J()

ROT = tonumber(ROT)+4
if ROT > 6 then ROT = tostring(ROT - 6)
else
ROT = tostring(ROT)
end

if ROT == "1" then
Lugar1 = Lugar + vector(1.96, 1.0, 1.16)
Lugar2 = Lugar + vector(1.96, 1.5, 1.16)
Lugar3 = Lugar + vector(1.96, 2.0, 1.16)
Lugar4 = Lugar + vector(1.96, 2.5, 1.16)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "2" then
Lugar1 = Lugar + vector(0, 1.0, 2,28)
Lugar2 = Lugar + vector(0, 1.5, 2,28)
Lugar3 = Lugar + vector(0, 2.0, 2,28)
Lugar4 = Lugar + vector(0, 2.5, 2,28)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "3" then
Lugar1 = Lugar + vector(-1.96, 1.0, 1.16)
Lugar2 = Lugar + vector(-1.96, 1.5, 1.16)
Lugar3 = Lugar + vector(-1.96, 2.0, 1.16)
Lugar4 = Lugar + vector(-1.96, 2.5, 1.16)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "4" then
Lugar1 = Lugar + vector(-1.96, 1.0, -1.16)
Lugar2 = Lugar + vector(-1.96, 1.5, -1.16)
Lugar3 = Lugar + vector(-1.96, 2.0, -1.16)
Lugar4 = Lugar + vector(-1.96, 2.5, -1.16)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "5" then
Lugar1 = Lugar + vector(0, 1.0, -2,28)
Lugar2 = Lugar + vector(0, 1.5, -2,28)
Lugar3 = Lugar + vector(0, 2.0, -2,28)
Lugar4 = Lugar + vector(0, 2.5, -2,28)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "6" then
Lugar1 = Lugar + vector(1.96, 1.0, -1.16)
Lugar2 = Lugar + vector(1.96, 1.5, -1.16)
Lugar3 = Lugar + vector(1.96, 2.0, -1.16)
Lugar4 = Lugar + vector(1.96, 2.5, -1.16)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
end
Tira_Token_Cave2()
end
----------------------------------------------------------------------------------------------------------

function Parametros_tok_cav_L() --  1: 210° / 2: 150° /3: 90° / 4: 30° / 5: 330° / 6: 270° /

if ROT == "1" then
Lugar1 = Lugar + vector(0.95, 1.0, -0.55)
Lugar2 = Lugar + vector(0.95, 1.5, -0.55)
Lugar3 = Lugar + vector(0.95, 2.0, -0.55)
Lugar4 = Lugar + vector(0.95, 2.5, -0.55)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "2" then
Lugar1 = Lugar + vector(0.95, 1.0, 0.55)
Lugar2 = Lugar + vector(0.95, 1.5, 0.55)
Lugar3 = Lugar + vector(0.95, 2.0, 0.55)
Lugar4 = Lugar + vector(0.95, 2.5, 0.55)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "3" then
Lugar1 = Lugar + vector(0, 1.0, 1.15)
Lugar2 = Lugar + vector(0, 1.5, 1.15)
Lugar3 = Lugar + vector(0, 2.0, 1.15)
Lugar4 = Lugar + vector(0, 2.5, 1.15)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "4" then
Lugar1 = Lugar + vector(-0.95, 1.0, 0.55)
Lugar2 = Lugar + vector(-0.95, 1.5, 0.55)
Lugar3 = Lugar + vector(-0.95, 2.0, 0.55)
Lugar4 = Lugar + vector(-0.95, 2.5, 0.55)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "5" then
Lugar1 = Lugar + vector(-0.95, 1.0, -0.55)
Lugar2 = Lugar + vector(-0.95, 1.5, -0.55)
Lugar3 = Lugar + vector(-0.95, 2.0, -0.55)
Lugar4 = Lugar + vector(-0.95, 2.5, -0.55)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "6" then
Lugar1 = Lugar + vector(0, 1.0, -1.15)
Lugar2 = Lugar + vector(0, 1.5, -1.15)
Lugar3 = Lugar + vector(0, 2.0, -1.15)
Lugar4 = Lugar + vector(0, 2.5, -1.15)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
end

--print("Lugar 1 em L: " .. Lugar1[1])
--print("tira token: " .. Pos_tok_Cave[1][1])

Tira_Token_Cave2()
end
----------------------------------------------------------------------------------------------------------

function Parametros_tok_cav_M()

if ROT == "1" then
Lugar1 = Lugar + vector(2.93, 1.0, -0.54)
Lugar2 = Lugar + vector(2.93, 1.5, -0.54)
Lugar3 = Lugar + vector(2.93, 2.0, -0.54)
Lugar4 = Lugar + vector(2.93, 2.5, -0.54)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "2" then
Lugar1 = Lugar + vector(1.95, 1.0, 2.25)
Lugar2 = Lugar + vector(1.95, 1.5, 2.25)
Lugar3 = Lugar + vector(1.95, 2.0, 2.25)
Lugar4 = Lugar + vector(1.95, 2.5, 2.25)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "3" then
Lugar1 = Lugar + vector(-0.87, 1.0, 2.75)
Lugar2 = Lugar + vector(-0.87, 1.5, 2.75)
Lugar3 = Lugar + vector(-0.87, 2.0, 2.75)
Lugar4 = Lugar + vector(-0.87, 2.5, 2.75)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "4" then
Lugar1 = Lugar + vector(-2.80, 1.0, 0.52)
Lugar2 = Lugar + vector(-2.80, 1.5, 0.52)
Lugar3 = Lugar + vector(-2.80, 2.0, 0.52)
Lugar4 = Lugar + vector(-2.80, 2.5, 0.52)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "5" then
Lugar1 = Lugar + vector(-1.87, 1.0, -2,20)
Lugar2 = Lugar + vector(-1.87, 1.5, -2,20)
Lugar3 = Lugar + vector(-1.87, 2.0, -2,20)
Lugar4 = Lugar + vector(-1.87, 2.5, -2,20)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "6" then
Lugar1 = Lugar + vector(0.98, 1.0, -2.71)
Lugar2 = Lugar + vector(0.98, 1.5, -2.71)
Lugar3 = Lugar + vector(0.98, 2.0, -2.71)
Lugar4 = Lugar + vector(0.98, 2.5, -2.71)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
end
Tira_Token_Cave2()
end
----------------------------------------------------------------------------------------------------------

function Parametros_tok_cav_T()   --  1: 210° / 2: 150° /3: 90° / 4: 30° / 5: 330° / 6: 270° /

if ROT == "1" or ROT == "4" then
  Lugar1 = Lugar + vector(0, 1.0, -2,68)
  Lugar2 = Lugar + vector(0, 1.5, -2,68)
  Lugar3 = Lugar + vector(0, 2.0, -2,68)
  Lugar4 = Lugar + vector(0, 2.5, -2,68)
  Lugar5 = Lugar + vector(0, 1.0, 2,68)
  Lugar6 = Lugar + vector(0, 1.5, 2,68)
  Lugar7 = Lugar + vector(0, 2.0, 2,68)
  Lugar8 = Lugar + vector(0, 2.5, 2,68)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4, Lugar5, Lugar6, Lugar7, Lugar8  }

elseif ROT == "2" or ROT == "5" then
  Lugar1 = Lugar + vector(-1.96, 1.0, 1.16)
  Lugar2 = Lugar + vector(-1.96, 1.5, 1.16)
  Lugar3 = Lugar + vector(-1.96, 2.0, 1.16)
  Lugar4 = Lugar + vector(-1.96, 2.5, 1.16)
  Lugar5 = Lugar + vector(1.96, 1.0, -1.16)
  Lugar6 = Lugar + vector(1.96, 1.5, -1.16)
  Lugar7 = Lugar + vector(1.96, 2.0, -1.16)
  Lugar8 = Lugar + vector(1.96, 2.5, -1.16)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4, Lugar5, Lugar6, Lugar7, Lugar8  }

elseif ROT == "3" or ROT == "6" then
  Lugar1 = Lugar + vector(-1.96, 1.0, -1.16)
  Lugar2 = Lugar + vector(-1.96, 1.5, -1.16)
  Lugar3 = Lugar + vector(-1.96, 2.0, -1.16)
  Lugar4 = Lugar + vector(-1.96, 2.5, -1.16)
  Lugar5 = Lugar + vector(1.96, 1.0, 1.16)
  Lugar6 = Lugar + vector(1.96, 1.5, 1.16)
  Lugar7 = Lugar + vector(1.96, 2.0, 1.16)
  Lugar8 = Lugar + vector(1.96, 2.5, 1.16)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4, Lugar5, Lugar6, Lugar7, Lugar8  }
end

Tira_Token_Cave3()

end
----------------------------------------------------------------------------------------------------------

function Parametros_tok_cav_V()   --  1: 210° / 2: 150° /3: 90° / 4: 30° / 5: 330° / 6: 270° /

if ROT == "1" then
Lugar1 = Lugar + vector(-0.96, 1.0, -1.65)
Lugar2 = Lugar + vector(-0.96, 1.5, -1.65)
Lugar3 = Lugar + vector(-0.96, 2.0, -1.65)
Lugar4 = Lugar + vector(-0.96, 2.5, -1.65)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "2" then
  Lugar1 = Lugar + vector(0.96, 1.0, -1.65)
  Lugar2 = Lugar + vector(0.96, 1.5, -1.65)
  Lugar3 = Lugar + vector(0.96, 2.0, -1.65)
  Lugar4 = Lugar + vector(0.96, 2.5, -1.65)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "3" then
Lugar1 = Lugar + vector(1.85, 1.0, 0)
Lugar2 = Lugar + vector(1.85, 1.5, 0)
Lugar3 = Lugar + vector(1.85, 2.0, 0)
Lugar4 = Lugar + vector(1.85, 2.5, 0)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "4" then
  Lugar1 = Lugar + vector(0.96, 1.0, 1.65)
  Lugar2 = Lugar + vector(0.96, 1.5, 1.65)
  Lugar3 = Lugar + vector(0.96, 2.0, 1.65)
  Lugar4 = Lugar + vector(0.96, 2.5, 1.65)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "5" then
  Lugar1 = Lugar + vector(-0.96, 1.0, 1.65)
  Lugar2 = Lugar + vector(-0.96, 1.5, 1.65)
  Lugar3 = Lugar + vector(-0.96, 2.0, 1.65)
  Lugar4 = Lugar + vector(-0.96, 2.5, 1.65)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "6" then
  Lugar1 = Lugar + vector(-1.85, 1.0, 0)
  Lugar2 = Lugar + vector(-1.85, 1.5, 0)
  Lugar3 = Lugar + vector(-1.85, 2.0, 0)
  Lugar4 = Lugar + vector(-1.85, 2.5, 0)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
end
Tira_Token_Cave2()
end
----------------------------------------------------------------------------------------------------------

function Parametros_tok_cav_W() --  1: 210° / 2: 150° /3: 90° / 4: 30° / 5: 330° / 6: 270° /

if ROT == "5" then
Lugar1 = Lugar + vector(2.89, 1.0, -1.7)
Lugar2 = Lugar + vector(2.89, 1.5, -1.7)
Lugar3 = Lugar + vector(2.89, 2.0, -1.7)
Lugar4 = Lugar + vector(2.89, 2.5, -1.7)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "6" then
Lugar1 = Lugar + vector(3.00, 1.0, 1.70)
Lugar2 = Lugar + vector(3.00, 1.5, 1.70)
Lugar3 = Lugar + vector(3.00, 2.0, 1.70)
Lugar4 = Lugar + vector(3.00, 2.5, 1.70)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "1" then -- 90 vira  210 (3, vira 1) ( 2 vira 6)
Lugar1 = Lugar + vector(0, 1.0, 3.4)
Lugar2 = Lugar + vector(0, 1.5, 3.4)
Lugar3 = Lugar + vector(0, 2.0, 3.4)
Lugar4 = Lugar + vector(0, 2.5, 3.4)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "2" then
Lugar1 = Lugar + vector(-2.89, 1.0, 1.7)
Lugar2 = Lugar + vector(-2.89, 1.5, 1.7)
Lugar3 = Lugar + vector(-2.89, 2.0, 1.7)
Lugar4 = Lugar + vector(-2.89, 2.5, 1.7)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "3" then
Lugar1 = Lugar + vector(-2.89, 1.0, -1.7)
Lugar2 = Lugar + vector(-2.89, 1.5, -1.7)
Lugar3 = Lugar + vector(-2.89, 2.0, -1.7)
Lugar4 = Lugar + vector(-2.89, 2.5, -1.7)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "4" then
Lugar1 = Lugar + vector(-0.1, 1.0, -3.4)
Lugar2 = Lugar + vector(-0.1, 1.5, -3.4)
Lugar3 = Lugar + vector(-0.1, 2.0, -3.4)
Lugar4 = Lugar + vector(-0.1, 2.5, -3.4)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
end
Tira_Token_Cave2()
end
----------------------------------------------------------------------------------------------------------

function Parametros_tok_cav_X()   --  1: 210° / 2: 150° /3: 90° / 4: 30° / 5: 330° / 6: 270° /

if ROT == "1" then
Lugar1 = Lugar + vector(-1.91, 1.0, 0)
Lugar2 = Lugar + vector(-1.91, 1.5, 0)
Lugar3 = Lugar + vector(-1.91, 2.0, 0)
Lugar4 = Lugar + vector(-1.91, 2.5, 0)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "2" then
  Lugar1 = Lugar + vector(-0.95, 1.0, -1.65)
  Lugar2 = Lugar + vector(-0.95, 1.5, -1.65)
  Lugar3 = Lugar + vector(-0.95, 2.0, -1.65)
  Lugar4 = Lugar + vector(-0.95, 2.5, -1.65)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "3" then
  Lugar1 = Lugar + vector(0.95, 1.0, -1.65)
  Lugar2 = Lugar + vector(0.95, 1.5, -1.65)
  Lugar3 = Lugar + vector(0.95, 2.0, -1.65)
  Lugar4 = Lugar + vector(0.95, 2.5, -1.65)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "4" then
  Lugar1 = Lugar + vector(1.91, 1.0, 0)
  Lugar2 = Lugar + vector(1.91, 1.5, 0)
  Lugar3 = Lugar + vector(1.91, 2.0, 0)
  Lugar4 = Lugar + vector(1.91, 2.5, 0)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "5" then
  Lugar1 = Lugar + vector(0.95, 1.0, 1.65)
  Lugar2 = Lugar + vector(0.95, 1.5, 1.65)
  Lugar3 = Lugar + vector(0.95, 2.0, 1.65)
  Lugar4 = Lugar + vector(0.95, 2.5, 1.65)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
elseif ROT == "6" then
  Lugar1 = Lugar + vector(-0.95, 1.0, 1.65)
  Lugar2 = Lugar + vector(-0.95, 1.5, 1.65)
  Lugar3 = Lugar + vector(-0.95, 2.0, 1.65)
  Lugar4 = Lugar + vector(-0.95, 2.5, 1.65)
Pos_tok_Cave = {  Lugar1, Lugar2, Lugar3, Lugar4 }
end
Tira_Token_Cave2()
end
----------------------------------------------------------------------------------------------------------
function Tira_Token_Cave()
  Bag_caverna.shuffle()
for i = 1, 4, 1 do
  parametros =  { position = Pos_tok_Cave, smooth = true, callback_function = nil, rotation={0,165,180} }
  Bag_caverna.takeObject(parametros)
end
end
--------------------------------------------------------------------------------------------------
function Tira_Token_Cave2()

Bag_caverna = getObjectFromGUID("02a357")
Bag_caverna_exp = getObjectFromGUID("1d7d2d")

Bag_caverna.shuffle()
Bag_caverna_exp.shuffle()

for i = 1, 4, 1 do
  parametros =  { position = ( Pos_tok_Cave[i] ), rotation={0,180,180}, smooth = true, callback_function = nil }

    if Usar_Tokens_Exp == 1 then
    Bag_caverna_exp.takeObject({ position = ( Pos_tok_Cave[i] ), rotation={0,180,180}, smooth = true, callback_function = nil })
    else
    Bag_caverna.takeObject(parametros)
    end
end

end
--------------------------------------------------------------------------------------------------
function Tira_Token_Cave3() --2 tokens por tile

Bag_caverna = getObjectFromGUID("02a357")
Bag_caverna_exp = getObjectFromGUID("1d7d2d")

Bag_caverna.shuffle()
Bag_caverna_exp.shuffle()

for i = 1, 8, 1 do
  parametros =  { position = ( Pos_tok_Cave[i] ), rotation={0,180,180}, smooth = true, callback_function = nil }

    if Usar_Tokens_Exp == 1 then
    Bag_caverna_exp.takeObject({ position = ( Pos_tok_Cave[i] ), rotation={0,180,180}, smooth = true, callback_function = nil })
    else
    Bag_caverna.takeObject(parametros)
    end
end

end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------  OUTRAS -----------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function Espera(s)
    local t = os.clock()
    while os.clock() < (t + s) do
        coroutine.yield(0)
    end
end
----------------------------------------------------------------------------------------------------------------------------------

function Add_Promo()

Bag_Promo = getObjectFromGUID("ebebc4")
Tab_Cartas = getObjectFromGUID("d019e1")
Pos_Tab = Tab_Cartas.getPosition()

if Var_Promo == 0 then
--Tab_promo.setPosition({-26.23, 1.48, 13.35})
Bag_Promo.takeObject({ position = Pos_Tab + vector( 5.10, 1, 3.4), smooth = true, callback_function = nil, rotation={0, 180, 0} })
Bag_Promo.takeObject({ position = Pos_Tab + vector( 3.00, 1, 3.4), smooth = true, callback_function = nil, rotation={0, 180, 0} })
Bag_Promo.takeObject({ position = Pos_Tab + vector( 0.95, 1, 3.4), smooth = true, callback_function = nil, rotation={0, 180, 0} })
Bag_Promo.takeObject({ position = Pos_Tab + vector(-1.10, 1, 3.4), smooth = true, callback_function = nil, rotation={0, 180, 0} })
Bag_Promo.takeObject({ position = Pos_Tab + vector(-3.15, 1, 3.4), smooth = true, callback_function = nil, rotation={0, 180, 0} })
Bag_Promo.takeObject({ position = Pos_Tab + vector(-5.15, 1, 3.4), smooth = true, callback_function = nil, rotation={0, 180, 0} })

Bag_Promo.takeObject({ position = Pos_Tab + vector(-5.15, 1, 6.6), smooth = true, callback_function = nil, rotation={0, 180, 0} })
Bag_Promo.takeObject({ position = Pos_Tab + vector(-3.15, 1, 6.6), smooth = true, callback_function = nil, rotation={0, 180, 0} })
Bag_Promo.takeObject({ position = Pos_Tab + vector( 8.15, 1, 6.6), smooth = true, callback_function = nil, rotation={0, 180, 0} })
self.editButton({ index = 9, label="Promo Pack\n[057000]ENABLED"})
Var_Promo = 1
else

--Tab_promo.setPosition({-23.35, -3, 13.30})
Bag_Promo.putObject(getObjectFromGUID("48a8d8"))
Bag_Promo.putObject(getObjectFromGUID("fe1976"))
Bag_Promo.putObject(getObjectFromGUID("af9a9c"))
Bag_Promo.putObject(getObjectFromGUID("7c936e"))
Bag_Promo.putObject(getObjectFromGUID("310a27"))
Bag_Promo.putObject(getObjectFromGUID("c84478"))
Bag_Promo.putObject(getObjectFromGUID("2c6b51"))
Bag_Promo.putObject(getObjectFromGUID("f73e48"))
Bag_Promo.putObject(getObjectFromGUID("7ae28e"))

self.editButton({ index = 9, label="Promo Pack\n[DA1A18]DISABLED"})
Var_Promo = 0
end

end

----------------------------------------------------------------------------------------------------------------------------------

function  Deck_Aleatorio()
startLuaCoroutine(self, 'Cor_Deck_Aleatorio')
end
function  Cor_Deck_Aleatorio()

Bag_Decks = getObjectFromGUID("c24b98")
Tab_Cartas = getObjectFromGUID("d019e1")
Pos_Tab = Tab_Cartas.getPosition()

Decks_Fixos = { "0bdd8e", "14d2d5", "24dc8a" }

Decks_Base = { "a412fc", "075691", "f50494", "862648", "0574a4", "262278", "1a5b95", "33b7f9", "c26af9" }
Decks_Promo = { "48a8d8", "fe1976", "af9a9c", "7c936e", "310a27", "c84478", "2c6b51", "f73e48", "7ae28e" } -- 7ae28e
Decks_Exp = { "7e2dec", "e18c95", "d709d6", "1505c3", "72d26b" }
Decks_MA = { "21eb22", "742e16", "87968a", "ca12ca" }

---Coloca nas bags
for i = 1, 9, 1 do
    if getObjectFromGUID(Decks_Base[i]) then Bag_Decks.putObject(getObjectFromGUID(Decks_Base[i])) end
end

for i = 1, 9, 1 do
    if getObjectFromGUID(Decks_Promo[i]) then Bag_Decks.putObject(getObjectFromGUID(Decks_Promo[i])) end
end

for i = 1, 5, 1 do
    if getObjectFromGUID(Decks_Exp[i]) then Bag_Decks.putObject(getObjectFromGUID(Decks_Exp[i])) end
end

for i = 1, 4, 1 do
    if getObjectFromGUID(Decks_MA[i]) then Bag_Decks.putObject(getObjectFromGUID(Decks_MA[i])) end
end

Espera(0.8)

--- Decks Fixos
getObjectFromGUID("0bdd8e").setPosition( Pos_Tab + vector( 5.10, 1, -2.85)  )
getObjectFromGUID("14d2d5").setPosition( Pos_Tab + vector( 3.00, 1, -2.85)  )
getObjectFromGUID("24dc8a").setPosition( Pos_Tab + vector( 0.95, 1, -2.85)  )
-- Sorteia
Bag_Decks.shuffle() Espera(0.1)
Bag_Decks.takeObject({ position = Pos_Tab + vector(-1.10, 1, -2.85), smooth = true, callback_function = nil, rotation={0, 180, 0} }) Espera(0.1)
Bag_Decks.takeObject({ position = Pos_Tab + vector(-3.15, 1, -2.85), smooth = true, callback_function = nil, rotation={0, 180, 0} }) Espera(0.1)
Bag_Decks.takeObject({ position = Pos_Tab + vector(-5.15, 1, -2.85), smooth = true, callback_function = nil, rotation={0, 180, 0} }) Espera(0.1)

Bag_Decks.takeObject({ position = Pos_Tab + vector( 5.10, 1, 0.31), smooth = true, callback_function = nil, rotation={0, 180, 0} }) Espera(0.1)
Bag_Decks.takeObject({ position = Pos_Tab + vector( 3.00, 1, 0.31), smooth = true, callback_function = nil, rotation={0, 180, 0} }) Espera(0.1)
Bag_Decks.takeObject({ position = Pos_Tab + vector( 0.95, 1, 0.31), smooth = true, callback_function = nil, rotation={0, 180, 0} }) Espera(0.1)
Bag_Decks.takeObject({ position = Pos_Tab + vector(-1.10, 1, 0.31), smooth = true, callback_function = nil, rotation={0, 180, 0} }) Espera(0.1)
Bag_Decks.takeObject({ position = Pos_Tab + vector(-3.15, 1, 0.31), smooth = true, callback_function = nil, rotation={0, 180, 0} }) Espera(0.1)
Bag_Decks.takeObject({ position = Pos_Tab + vector(-5.15, 1, 0.31), smooth = true, callback_function = nil, rotation={0, 180, 0} }) Espera(0.1)

Quant = Bag_Decks.getQuantity()

for i = 1, Quant, 1 do
Bag_Decks.takeObject({ position = {-54.00+(i*2), 1.58, 22.5}, smooth = true, callback_function = nil, rotation={0, 180, 0} }) Espera(0.1)
end

return 1
end

----------------------------------------------------------------------------------------------------------------------------------
function Decks_Malmattos()

Bag_Decks = getObjectFromGUID("c24b98")
NQ = Bag_Decks.getQuantity()
for i = 1, NQ, 1 do
Bag_Decks.takeObject({ position = {-35+(2*i), 1.6, 22}, smooth = true, callback_function = nil, rotation={0, 180, 0}    })
end

Bag_MA = getObjectFromGUID("bb76b2")
Tab_Cartas = getObjectFromGUID("d019e1")
Pos_Tab = Tab_Cartas.getPosition()
Decks_MA = { "21eb22", "742e16", "87968a", "ca12ca" }

if getObjectFromGUID("21eb22") then
    for i = 1, 4, 1 do   if getObjectFromGUID(Decks_MA[i]) then Bag_MA.putObject(getObjectFromGUID(Decks_MA[i])) end   end
else
    for i = 1, 4, 1 do   Bag_MA.takeObject({ position = Pos_Tab + vector( -7.05 + (2*i), 1, 10.5), smooth = true, callback_function = nil, rotation={0, 180, 0} })   end
end

end

----------------------------------------------------------------------------------------------------------------------------------
function Decks_Original()
startLuaCoroutine(self, 'Cor_Decks_Original')
end
function Cor_Decks_Original()

Decks_Base = { "0bdd8e", "14d2d5", "24dc8a", "a412fc", "075691", "f50494", "862648", "0574a4", "262278", "1a5b95", "33b7f9", "c26af9" }
Decks_Promo = { "48a8d8", "fe1976", "af9a9c", "7c936e", "310a27", "c84478", "2c6b51", "f73e48", "7ae28e" }
Decks_Exp = { "7e2dec", "e18c95", "d709d6", "1505c3", "72d26b" }
Decks_MA = { "21eb22", "742e16", "87968a", "ca12ca" }

Bag_Decks = getObjectFromGUID("c24b98")
Bag_Promo = getObjectFromGUID("ebebc4")
Bag_MA    = getObjectFromGUID("bb76b2")
Bag_Exp   = getObjectFromGUID("c892f0")
Tab_Cartas = getObjectFromGUID("d019e1")
Pos_Tab = Tab_Cartas.getPosition()

-- Coloca tudo nas Bags
if getObjectFromGUID(Decks_Base[1])  then printToAll("Using Base Deck", "White") for i = 1, 12, 1 do  Bag_Decks.putObject(getObjectFromGUID(Decks_Base[i]))  end else printToAll("Base Deck Not Found", "White")  end Espera(0.1)
if getObjectFromGUID(Decks_Promo[1]) then printToAll("Using Promo Deck", "White") for i = 1,  9, 1 do  Bag_Promo.putObject(getObjectFromGUID(Decks_Promo[i])) end else printToAll("Promo Deck Not Found", "White")   end Espera(0.1)
if getObjectFromGUID(Decks_Exp[1])   then printToAll("Using Expansions Deck", "White") for i = 1,  5, 1 do  Bag_Exp.putObject(getObjectFromGUID(Decks_Exp[i]))   end else printToAll("Expansion Deck Not Found", "White")   end Espera(0.1)
if getObjectFromGUID(Decks_MA[1])    then printToAll("Using Homebrew Deck", "White") for i = 1,  4, 1 do  Bag_MA.putObject(getObjectFromGUID(Decks_MA[i]))    end else printToAll("Homebrew Deck Not found", "White")   end Espera(0.1)
Espera(1)

  Bag_Decks = getObjectFromGUID("c24b98")
  NQ = Bag_Decks.getQuantity()
  for i = 1, NQ, 1 do
  Bag_Decks.takeObject({ position = {-35+(2*i), 1.6, 22}, smooth = true, callback_function = nil, rotation={0, 180, 0}    })
  Espera(0.05)
  end
  Espera(0.5)

Decks_Base1 = {  "0bdd8e", "14d2d5", "24dc8a", "a412fc", "075691", "f50494"  }
Decks_Base2 = {  "862648", "0574a4", "262278", "1a5b95", "33b7f9", "c26af9"  }

for i = 1, 6, 1 do
    getObjectFromGUID(Decks_Base1[i]).setPosition( Pos_Tab + vector( -7.05 + (2*i), 1, -2.85)  )
    getObjectFromGUID(Decks_Base2[i]).setPosition( Pos_Tab + vector( -7.05 + (2*i), 1,  0.31)  )
end

self.editButton({ index = 9, label="Promo Pack\n[DA1A18]DISABLED"})
Var_Promo = 0

return 1
end