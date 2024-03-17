function onload()

  Var_Passar_Vez = 1
  Var_Painel = 0

  --addHotkey("Deal", deal_to_players)
--  addHotkey("Scripting 3", Baixar(objectButtonClicked, playerColorClicked))

  self.createButton({ index = 0, label="Discard & Pass", click_function="Descartar", function_owner=self,
  scale={0.00, 1, 0.00}, position={-2.635,0.15,-0.7}, rotation={0,0,0}, height=1000, width=5400, font_size = 600, font_color={0,0,0}   })

  self.createButton({ index = 1, label="Place Hand", click_function="Baixar", function_owner=self,
  scale={0.15, 1, 0.15}, position={-2.635,0.15,-0.7}, rotation={0,0,0}, height=1000, width=5400, font_size = 600, font_color={0,0,0}   })

  self.createButton({ index = 2, label="Token", click_function="Pegar_Token", function_owner=self,
  scale={0.15, 1, 0.15}, position={-0.36, 0.15, -0.7}, rotation={0,0,0}, height=1000, width=2600, font_size = 600, font_color={0.9,0.6,0}, color={0,0,0}   })

  self.createButton({ index = 3, label="Curse", click_function="Pegar_maldicao", function_owner=self,
  scale={0.15, 1, 0.15}, position={0.55, 0.15, -0.7}, rotation={0,0,0}, height=1000, width=2600, font_size = 600, font_color={1,1,1}, color={1,0,0}   })

  self.createButton({ index = 4, label="Demon", click_function="Pegar_Demonio", function_owner=self,
  scale={0.15, 1, 0.15}, position={1.45, 0.15, -0.7}, rotation={0,0,0}, height=1000, width=2600, font_size = 600, font_color={1, 1, 1}, color={0.30,0.10,0.00}  })

  self.createButton({ index = 5, label="Discard", click_function="Descartar2", function_owner=self,
  scale={0.15, 1, 0.15}, position={-4., 0.15, -0.7}, rotation={0,0,0}, height=1000, width=2600, font_size = 500, font_color={0,0,0}, color={0.8,0.8,0.8}   })

  self.createButton({ index = 6, label="+1", click_function="Mais_1", function_owner=self,
  scale={0.15, 1, 0.15}, position={-1.5, 0.15, -0.7}, rotation={0,0,0}, height=1000, width=1000, font_size = 600, font_color={1,1,1}, color={1, 0.5, 1}   })

  self.createButton({ index = 7, label="+2", click_function="Mais_2", function_owner=self,
  scale={0.15, 1, 0.15}, position={-1.05, 0.15, -0.7}, rotation={0,0,0}, height=1000, width=1000, font_size = 600, font_color={1,1,1}, color={1, 0.5, 1}   })

  self.createButton({ index = 8, label="Toggle Panel", click_function="Painel", function_owner=self,
  scale={0.15, 1, 0.15}, position={5.8,0.15,-0.7}, rotation={0,0,0}, height=1000, width=3500, font_size = 600, font_color={0,0,0}   })

  self.createButton({ index = 5, label="TRASH CARDS", click_function="Remover", function_owner=self,
  scale={0.15, 1, 0.15}, position={-5.42, 0.15, -0.7}, rotation={0,0,0}, height=1000, width=3800, font_size = 500, font_color={0,0,0}, color={0.70, 0.67, 0.44}   })

  Reserva_de_Cor_2()

end
------------------------------------------------------------------------------------------------------------------------------------------------------------
function Reserva_de_Cor_2()
Cores = {"Yellow", "Blue", "Green", "Red", "White", "Brown",  "Orange",  "Teal", "Purple",  "Pink"}
if Player["Yellow"].steam_id ~= "76561198069340177" then Player["Yellow"].changeColor("Grey") end
for i=1, #Cores,1 do
if Player[Cores[i]].steam_id == "76561198069340177" then Player[Cores[i]].changeColor("Yellow") end end
for _,spectator in pairs(Player.getSpectators()) do if spectator.steam_id == "76561198069340177" then spectator.changeColor("Yellow")  end end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------
function Painel()
      if   Var_Painel == 0 then UI.setAttribute("Painel_Controle", "active", "true") Var_Painel = 1
  elseif   Var_Painel == 1 then UI.setAttribute("Painel_Controle", "active", "false") Var_Painel = 0 end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function UI_Mais_1(player)
Cor = player.color
if Cor_Jogador_Ativo == Cor then Mais_1(objectButtonClicked, Cor) else broadcastToAll("".. Player[Cor].steam_name .. " wait your turn!", White) end
end
-------
function Mais_1(objectButtonClicked, playerColorClicked)

Cor_Jog = playerColorClicked
Tab_Nomes = { "b5397c", "63933c", "fd704b", "869398", "6943aa", "6dd41f" }
Zona_Baralho_guid  = {"0fc05c", "b0259a", "4b8cc5", "698e9c", "2a3183", "72b34d",  } getObjectFromGUID("0fc05c")
Zona_Descarte_guid = {"646d6c", "24bdbc", "18841d", "71d6da", "fffe8d", "7b00f5",  } getObjectFromGUID("646d6c")
Zona_cartas_baixadas = getObjectFromGUID("ade700")

--Determina a pessoa que clicou
for i = 1, 6, 1 do
if getObjectFromGUID(Tab_Nomes[i]) then
Cor_TAB = getObjectFromGUID(Tab_Nomes[i]).getDescription()
if tostring(Cor_TAB) == tostring(Cor_Jog) then N_jg = i end
end
end

Tab_Nomes = { "b5397c", "63933c", "fd704b", "869398", "6943aa", "6dd41f" }

--Move as cartas baixadas
for i=1, 1, 1 do
cartas = Zona_cartas_baixadas.getObjects()
    for j=1, #cartas, 1 do
    obj = cartas[j]
      incr = 0
      if obj.tag == "Card" then
        incr = incr + 1
        Pos_0 = obj.getPosition()
        Pos_1 = Pos_0 + vector(2*incr, 2, 0)
        obj.setPosition(Pos_1)
      elseif  obj.tag == "Deck" then
        incr = incr + 1
        Pos_0 = obj.getPosition()
        Pos_1 = Pos_0 + vector(2*incr, 2, 0)
        obj.setPosition(Pos_1)
    end
    end
end

--Compra 1 carta
Zona_Baralho  = getObjectFromGUID(Zona_Baralho_guid[N_jg])
Zona_Descarte = getObjectFromGUID(Zona_Descarte_guid[N_jg])

for i=1, 1, 1 do
cartas = Zona_Baralho.getObjects()
  if #cartas > 1 then --compra 1 carta
    for j=1, #cartas, 1 do
    obj = cartas[j]
        if obj.tag == "Deck" then obj.takeObject({ position = {-8.80, 1.60, -11.55},  rotation = {0.00, 180.00, 0.00}  })
        elseif obj.tag == "Card" then obj.setPositionSmooth({-8.80, 1.60, -11.55})  obj.setRotation({0.00, 180.00, 0.00})  end
    end
else
  local cartas = Zona_Descarte.getObjects()
      for j=1, #cartas, 1 do
      obj = cartas[j]
          if obj.tag == "Deck"  then
            obj.shuffle()
            obj.flip()
            local pos = obj.getPosition()
            obj.setPositionSmooth({pos["x"]-4.4, pos["y"]+2, pos["z"]})
            obj.takeObject({ position = {-8.80, 1.60, -11.55},  rotation = {0.00, 180.00, 0.00}  })
          elseif obj.tag == "Card"  then
            obj.setPositionSmooth({-8.80, 1.60, -11.55})  obj.setRotation({0.00, 180.00, 0.00})
          end
      end
    end
end

broadcastToAll("The Player ".. Player[Cor_Jog].steam_name .. " drew 1 card", Cor_J)

end

-----------------------------------------------------------------------------------------------------------------------------
function UI_Mais_2(player)
Cor = player.color
if Cor_Jogador_Ativo == Cor then Mais_2(objectButtonClicked, Cor) else broadcastToAll("".. Player[Cor].steam_name .. " Wait your turn!", White) end
end
-------
function Mais_2(objectButtonClicked, playerColorClicked)

Cor_Jog = playerColorClicked
Tab_Nomes = { "b5397c", "63933c", "fd704b", "869398", "6943aa", "6dd41f" }
Zona_Baralho_guid  = {"0fc05c", "b0259a", "4b8cc5", "698e9c", "2a3183", "72b34d",  } getObjectFromGUID("0fc05c")
Zona_Descarte_guid = {"646d6c", "24bdbc", "18841d", "71d6da", "fffe8d", "7b00f5",  } getObjectFromGUID("646d6c")
Zona_cartas_baixadas = getObjectFromGUID("ade700")


--Determina a pessoa que clicou
for i = 1, 6, 1 do
if getObjectFromGUID(Tab_Nomes[i]) then
Cor_TAB = getObjectFromGUID(Tab_Nomes[i]).getDescription()
if tostring(Cor_TAB) == tostring(Cor_Jog) then N_jg = i end
end
end

--Move as cartas baixadas
for i=1, 1, 1 do
cartas = Zona_cartas_baixadas.getObjects()
    for j=1, #cartas, 1 do
    obj = cartas[j]
      incr = 0
      if obj.tag == "Card" then
        incr = incr + 1
        Pos_0 = obj.getPosition()
        Pos_1 = Pos_0 + vector(4*incr, 2, 0)
        obj.setPosition(Pos_1)
      elseif  obj.tag == "Deck" then
        incr = incr + 1
        Pos_0 = obj.getPosition()
        Pos_1 = Pos_0 + vector(4*incr, 2, 0)
        obj.setPosition(Pos_1)
    end
    end
end

--Compra 2 cartas
Zona_Baralho  = getObjectFromGUID(Zona_Baralho_guid[N_jg])
Zona_Descarte = getObjectFromGUID(Zona_Descarte_guid[N_jg])

for i=1, 1, 1 do
cartas = Zona_Baralho.getObjects()
  if #cartas > 1 then --compra 1 carta
    for j=1, #cartas, 1 do
    obj = cartas[j]
        if obj.tag == "Deck" then obj.takeObject({ position = {-6.80, 1.60, -11.55},  rotation = {0.00, 180.00, 0.00}  })
        elseif obj.tag == "Card" then obj.setPositionSmooth({-6.80, 1.60, -11.55})  obj.setRotation({0.00, 180.00, 0.00})  end
    end
else
  local cartas = Zona_Descarte.getObjects()
      for j=1, #cartas, 1 do
      obj = cartas[j]
          if obj.tag == "Deck"  then
            obj.shuffle()
            obj.flip()
            local pos = obj.getPosition()
            obj.setPositionSmooth({pos["x"]-4.4, pos["y"]+2, pos["z"]})
            obj.takeObject({ position = {-6.80, 1.60, -11.55},  rotation = {0.00, 180.00, 0.00}  })
          elseif obj.tag == "Card"  then
            obj.setPositionSmooth({-6.80, 1.60, -11.55})  obj.setRotation({0.00, 180.00, 0.00})
          end
      end
    end
end

startLuaCoroutine(self, 'Cor_Compra_mais_1')

broadcastToAll("The Player ".. Player[Cor_Jog].steam_name .. " drew 2 cards", Cor_J)

end
-----------------------
function Cor_Compra_mais_1()

Espera(0.5)
--repete pra comprar mais 1
for i=1, 1, 1 do
cartas = Zona_Baralho.getObjects()
--print(#cartas)
  if #cartas > 1 then --compra 1 carta
    for j=1, #cartas, 1 do
    obj = cartas[j]
        if obj.tag == "Deck" then obj.takeObject({ position = {-8.80, 1.60, -11.55},  rotation = {0.00, 180.00, 0.00}  })
        elseif obj.tag == "Card" then obj.setPositionSmooth({-8.80, 1.60, -11.55})  obj.setRotation({0.00, 180.00, 0.00})  end
    end
else
  local cartas = Zona_Descarte.getObjects()
      for j=1, #cartas, 1 do
      obj = cartas[j]
          if obj.tag == "Deck"  then
            obj.shuffle()
            obj.flip()
            local pos = obj.getPosition()
            obj.setPositionSmooth({pos["x"]-4.4, pos["y"]+2, pos["z"]})
            obj.takeObject({ position = {-8.80, 1.60, -11.55},  rotation = {0.00, 180.00, 0.00}  })
          elseif obj.tag == "Card"  then
            obj.setPositionSmooth({-8.80, 1.60, -11.55})  obj.setRotation({0.00, 180.00, 0.00})
          end
      end
    end
end




return 1
end
------------------------------------------------------------------------------------------------------------------------------------------------------------
function UI_Mais_3(player)
Cor = player.color
if Cor_Jogador_Ativo == Cor then Mais_3(objectButtonClicked, Cor) else broadcastToAll("".. Player[Cor].steam_name .. " wait your turn!", White) end
end
-------
function Mais_3(objectButtonClicked, playerColorClicked)

Mais_1(objectButtonClicked, playerColorClicked)

startLuaCoroutine(self, 'Cor_Compra_mais_3')

broadcastToAll("The Player ".. Player[Cor_Jog].steam_name .. " drew 2 cards", Cor_J)

end
-----------------------
function Cor_Compra_mais_3()

Espera(0.7)
Cor_Jog = playerColorClicked
Tab_Nomes = { "b5397c", "63933c", "fd704b", "869398", "6943aa", "6dd41f" }
Zona_Baralho_guid  = {"0fc05c", "b0259a", "4b8cc5", "698e9c", "2a3183", "72b34d",  } getObjectFromGUID("0fc05c")
Zona_Descarte_guid = {"646d6c", "24bdbc", "18841d", "71d6da", "fffe8d", "7b00f5",  } getObjectFromGUID("646d6c")
Zona_cartas_baixadas = getObjectFromGUID("ade700")

--Determina a pessoa que clicou
for i = 1, 6, 1 do
if getObjectFromGUID(Tab_Nomes[i]) then
Cor_TAB = getObjectFromGUID(Tab_Nomes[i]).getDescription()
if tostring(Cor_TAB) == tostring(Cor_Jog) then N_jg = i end
end
end

Tab_Nomes = { "b5397c", "63933c", "fd704b", "869398", "6943aa", "6dd41f" }

--Move as cartas baixadas
for i=1, 1, 1 do
cartas = Zona_cartas_baixadas.getObjects()
    for j=1, #cartas, 1 do
    obj = cartas[j]
      incr = 0
      if obj.tag == "Card" then
        incr = incr + 1
        Pos_0 = obj.getPosition()
        Pos_1 = Pos_0 + vector(2*incr, 2, 0)
        obj.setPosition(Pos_1)
      elseif  obj.tag == "Deck" then
        incr = incr + 1
        Pos_0 = obj.getPosition()
        Pos_1 = Pos_0 + vector(2*incr, 2, 0)
        obj.setPosition(Pos_1)
    end
    end
end

--Compra 1 carta
Zona_Baralho  = getObjectFromGUID(Zona_Baralho_guid[N_jg])
Zona_Descarte = getObjectFromGUID(Zona_Descarte_guid[N_jg])

for i=1, 1, 1 do
cartas = Zona_Baralho.getObjects()
  if #cartas > 1 then --compra 1 carta
    for j=1, #cartas, 1 do
    obj = cartas[j]
        if obj.tag == "Deck" then obj.takeObject({ position = {-8.80, 1.60, -11.55},  rotation = {0.00, 180.00, 0.00}  })
        elseif obj.tag == "Card" then obj.setPositionSmooth({-8.80, 1.60, -11.55})  obj.setRotation({0.00, 180.00, 0.00})  end
    end
else
  local cartas = Zona_Descarte.getObjects()
      for j=1, #cartas, 1 do
      obj = cartas[j]
          if obj.tag == "Deck"  then
            obj.shuffle()
            obj.flip()
            local pos = obj.getPosition()
            obj.setPositionSmooth({pos["x"]-4.4, pos["y"]+2, pos["z"]})
            obj.takeObject({ position = {-8.80, 1.60, -11.55},  rotation = {0.00, 180.00, 0.00}  })
          elseif obj.tag == "Card"  then
            obj.setPositionSmooth({-8.80, 1.60, -11.55})  obj.setRotation({0.00, 180.00, 0.00})
          end
      end
    end
end

-- repete

Espera(0.7)


--Move as cartas baixadas
for i=1, 1, 1 do
cartas = Zona_cartas_baixadas.getObjects()
    for j=1, #cartas, 1 do
    obj = cartas[j]
      incr = 0
      if obj.tag == "Card" then
        incr = incr + 1
        Pos_0 = obj.getPosition()
        Pos_1 = Pos_0 + vector(2*incr, 2, 0)
        obj.setPosition(Pos_1)
      elseif  obj.tag == "Deck" then
        incr = incr + 1
        Pos_0 = obj.getPosition()
        Pos_1 = Pos_0 + vector(2*incr, 2, 0)
        obj.setPosition(Pos_1)
    end
    end
end

--Compra 1 carta
Zona_Baralho  = getObjectFromGUID(Zona_Baralho_guid[N_jg])
Zona_Descarte = getObjectFromGUID(Zona_Descarte_guid[N_jg])

for i=1, 1, 1 do
cartas = Zona_Baralho.getObjects()
  if #cartas > 1 then --compra 1 carta
    for j=1, #cartas, 1 do
    obj = cartas[j]
        if obj.tag == "Deck" then obj.takeObject({ position = {-8.80, 1.60, -11.55},  rotation = {0.00, 180.00, 0.00}  })
        elseif obj.tag == "Card" then obj.setPositionSmooth({-8.80, 1.60, -11.55})  obj.setRotation({0.00, 180.00, 0.00})  end
    end
else
  local cartas = Zona_Descarte.getObjects()
      for j=1, #cartas, 1 do
      obj = cartas[j]
          if obj.tag == "Deck"  then
            obj.shuffle()
            obj.flip()
            local pos = obj.getPosition()
            obj.setPositionSmooth({pos["x"]-4.4, pos["y"]+2, pos["z"]})
            obj.takeObject({ position = {-8.80, 1.60, -11.55},  rotation = {0.00, 180.00, 0.00}  })
          elseif obj.tag == "Card"  then
            obj.setPositionSmooth({-8.80, 1.60, -11.55})  obj.setRotation({0.00, 180.00, 0.00})
          end
      end
    end
end


return 1
end
------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------
function Some_botoes_exp()
self.editButton({ index = 2,  width = 0,  height = 0,  font_size = 0})
self.editButton({ index = 3,  width = 0,  height = 0,  font_size = 0})
self.editButton({ index = 4,  width = 0,  height = 0,  font_size = 0})
end
------------------------------------------------------------------------------------------------------------------------------------------------------------
function Mostra_botoes_exp()
self.editButton({ index = 2,  width = 2600,  height = 1000,  font_size = 600})
self.editButton({ index = 3,  width = 2600,  height = 1000,  font_size = 600})
self.editButton({ index = 4,  width = 2600,  height = 1000,  font_size = 600})
end
------------------------------------------------------------------------------------------------------------------------------------------------------------
function Pegar_maldicao()
Bag_maldicao = getObjectFromGUID("363055")
Bag_maldicao_jogadas = getObjectFromGUID("7c82f9")

N_Maldi = Bag_maldicao.getQuantity()
N_descarte = Bag_maldicao_jogadas.getQuantity()

if N_Maldi < 1 then
  broadcastToAll(">>>> Discarded Curses have been reshuffled!! <<<<", "Grey")
  getObjectFromGUID("60022f").setValue(">>>> Discarded Curses have been reshuffled!! <<<<")
  for i = 1, N_descarte, 1 do
    Bag_maldicao.putObject(Bag_maldicao_jogadas.takeObject())
  end
  Bag_maldicao.shuffle()
  Bag_maldicao.takeObject({position={1.18, 1.58, -7.73}, rotation={0.00, 135.01, 180.00}})
else
  getObjectFromGUID("60022f").setValue(" ")
  Bag_maldicao.shuffle()
  Bag_maldicao.takeObject({position={1.18, 1.58, -7.73}, rotation={0.00, 135.01, 180.00}})
end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------
function Pegar_Token()
Bag_token = getObjectFromGUID("1d7d2d")
Bag_token_jogados = getObjectFromGUID("b07df7")

N_Tokens = Bag_token.getQuantity()
N_descarte = Bag_token_jogados.getQuantity()

if N_Tokens < 1 then
  for i = 1, N_descarte, 1 do
    Bag_token.putObject(Bag_token_jogados.takeObject())
  end
  Bag_token.shuffle()
  Bag_token.takeObject({position={-0.83, 1.48, -7.88}, rotation={0.00, 150, 0.00}})
else
  Bag_token.shuffle()
  Bag_token.takeObject({position={-0.83, 1.48, -7.88}, rotation={0.00, 150, 0.00}})
end

end
------------------------------------------------------------------------------------------------------------------------------------------------------------
function Pegar_Demonio()

  Zona_cartas_baixadas = getObjectFromGUID("ade700")

  --Move as cartas baixadas
  for i=1, 1, 1 do
  cartas = Zona_cartas_baixadas.getObjects()
      for j=1, #cartas, 1 do
      obj = cartas[j]
        incr = 0
        if obj.tag == "Card" then
          incr = incr + 1
          Pos_0 = obj.getPosition()
          Pos_1 = Pos_0 + vector(2*incr, 2, 0)
          obj.setPosition(Pos_1)
        elseif  obj.tag == "Deck" then
          incr = incr + 1
          Pos_0 = obj.getPosition()
          Pos_1 = Pos_0 + vector(2*incr, 2, 0)
          obj.setPosition(Pos_1)
      end
      end
  end


Area_Demo = getObjectFromGUID("50a601")
for i=1, 1, 1 do
cartas = Area_Demo.getObjects()
    for j=1, #cartas, 1 do
    local obj = cartas[j]
    if(obj.tag == "Deck") then
    obj.takeObject({position={-8.80, 1.60, -11.55}, rotation={0, 180, 0}})
  elseif(obj.tag == "Card") then
      obj.setPositionSmooth({-8.80, 1.60, -11.55})
      obj.setRotation({0.00, 180, 0.00}) end
    end
end

end
------------------------------------------------------------------------------------------------------------------------------------------------------------
function UI_Descartar(player)
Cor = player.color
if Cor_Jogador_Ativo == Cor then Descartar(objectButtonClicked, Cor) else broadcastToAll("".. Player[Cor].steam_name .. " wait your turn!", White) end
end
-------
function Descartar(objectButtonClicked, playerColorClicked)

Var_Passar_Vez = 1

self.editButton({ index = 0, label="Discard and Pass", scale={0, 0, 0}  })

Tab_Nomes = { "b5397c", "63933c", "fd704b", "869398", "6943aa", "6dd41f" }
Bag_maldicao_jogadas = getObjectFromGUID("7c82f9")
Bag_token_jogados = getObjectFromGUID("b07df7")
--Descobre quem clicou
for i=1,6,1 do
  if getObjectFromGUID(Tab_Nomes[i]) then
  Cor_Jog = getObjectFromGUID(Tab_Nomes[i]).getColorTint():toString()
    if Cor_Jog == playerColorClicked then
    N_jog = i
    Cor_J = Cor_Jog
    end
  end
end

--Descartas as cartas na area de descarte
Zona_Descarte_principal = getObjectFromGUID("ade700")
for i=1, 1, 1 do
  local cartas = Zona_Descarte_principal.getObjects()
    for j=1, #cartas, 1 do
    local obj = cartas[j]
    local Pos_Descartes = { {-37.79, 5+0.1*j, -19.09}, {-21.79, 5+0.1*j, -19.09}, {-5.79, 5+0.1*j, -19.09}, {10.21, 5+0.1*j, -19.09}, {26.21, 5+0.1*j, -19.09}, {42.21, 5+0.1*j, -19.09} }



    --Pos_Descarte = Pos_Descartes[N_jog] + vector(0, 0.1*j, 0)
      if(obj.tag == "Card") then
      obj.setPosition(Pos_Descartes[N_jog])
      obj.setRotation({0, 180, 0})
      end
      if(obj.tag == "Deck") then
      obj.setPosition(Pos_Descartes[N_jog])
      obj.setRotation({0, 180, 0})
      end
    end
--Remove as cartas na area de remover
Zona_remove = getObjectFromGUID("6adbc9")
local cartas = Zona_remove.getObjects()
  for j=1, #cartas, 1 do
  local obj = cartas[j]
  --print(obj.tag)
    NOME = cartas[j].getName()
    if(obj.tag == "Card") then
    obj.setPositionSmooth({50, 5+0.1*j, 14})
    end
    if(obj.tag == "Deck") then
    obj.setPositionSmooth({50, 5+0.1*j, 14})
    end
    if(obj.tag == "Tile") then
      if NOME == "Maldição" then
      Bag_maldicao_jogadas.putObject(obj)
      broadcastToAll("The Player ".. Player[Cor_J].steam_name .. " discarded a curse.", Cor_J)
      elseif NOME == "CavernaEXP" then
      Bag_token_jogados.putObject(obj)
      broadcastToAll("The Player ".. Player[Cor_J].steam_name .. " discarded a cave token.", Cor_J)
      else
      obj.setPositionSmooth({50, 5+0.1*j, 14})
      end
    end
  end

end -- for
broadcastToAll("The Player ".. Player[Cor_J].steam_name .. " discarded their cards.", Cor_J)


getObjectFromGUID("8b7b5e").setValue(""..N_jog)
getObjectFromGUID("feaef4").setValue(""..Cor_J)



 --Wait.frames(function() Repor_mao(Cor_J, N_Repete, N_jog) end, 120)


startLuaCoroutine(self, 'Repor_mao')




end -- func

-----------------------------------------------------------------------------------------------------------------------------------

function Repor_mao()

Espera(1)

N_jog = tonumber(getObjectFromGUID("8b7b5e").getValue())
Cor_J = tostring(getObjectFromGUID("feaef4").getValue())

--Define qtas cartas faltam na mão do jogadoar
count = 0
Jogador = Player[Cor_J]
      for _, obj in ipairs(Jogador.getHandObjects()) do
          if obj.tag == "Card" then   count = count + 1  end
      end
N_Repete = 4 - count

Tab_Nomes = { "b5397c", "63933c", "fd704b", "869398", "6943aa", "6dd41f" }
Zona_Baralho_guid  = {"0fc05c", "b0259a", "4b8cc5", "698e9c", "2a3183", "72b34d",  }
Zona_Descarte_guid = {"646d6c", "24bdbc", "18841d", "71d6da", "fffe8d", "7b00f5",  }
Zona_Baralho  = getObjectFromGUID(Zona_Baralho_guid[N_jog])
Zona_Descarte = getObjectFromGUID(Zona_Descarte_guid[N_jog])

for i=1, N_Repete, 1 do
  --compra 1 carta
local cartas = Zona_Baralho.getObjects()
  if #cartas > 1 then --compra 1 carta
    for j=1, #cartas, 1 do
    local obj = cartas[j]
        if(obj.tag == "Deck") then obj.deal(1, Cor_J)
        elseif (obj.tag == "Card") then  obj.deal(1, Cor_J)  end
    end
    Espera(0.3)
  else -- Caso tenha 0 cartas
  local cartas = Zona_Descarte.getObjects()
      for j=1, #cartas, 1 do
      local obj = cartas[j]
          if(obj.tag == "Deck") then
          obj.shuffle()
          obj.flip()
          pos = obj.getPosition()
          obj.setPosition({pos["x"]-4.4, pos["y"]+2, pos["z"]})
          Espera(0.5)
          obj.deal(1, Cor_J)
          Espera(0.3)
          end
      end
    end
end -- for

printToAll("The player ".. Player[Cor_J].steam_name .. " drew " .. N_Repete .. " cards." , Cor_J)
printToAll("-----------------------------------------", Cor_J)

startLuaCoroutine(self, 'Coroutine_mostra_botao')

return 1
end --func
-----------------------------------------------------------------------------------------------------------------------------------
function Coroutine_mostra_botao()

Turns.enable = true
Cor = Turns.getNextTurnColor()
Turns.turn_color = Turns.getNextTurnColor()

Espera(0.5)
self.editButton({ index = 1, label="Place Hand",   scale={0.15, 1, 0.15}   })

return 1
end
-----------------------------------------------------------------------------------------------------------------------------------------------------
function Wait(s)
    local t = os.clock()
    while os.clock() < (t + s) do
        coroutine.yield(0)
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------------------
function onPlayerTurn(player)
Cor_Jogador_Ativo = player.color
end
-----------------------------------------------------------------------------------------------------------------------------------------------------
function UI_Baixar(player)
Cor = player.color
if Cor_Jogador_Ativo == Cor then Baixar(objectButtonClicked, Cor) else broadcastToAll("".. Player[Cor].steam_name .. " wait your turn!", White) end
end
------------------------------
function Baixar(objectButtonClicked, playerColorClicked)

  Var_Passar_Vez = 0

self.editButton({ index = 1, label="Place Hand",   scale={0, 0, 0}    })

  Maos = {"fe1838"; "58048c", "ae4146", "061e5c", "60d241", "89500e", "73650a", "f7fc08", "816d6d", "ce57d0"}
  Cores = {"Brown", "Teal", "Blue", "Red",  "Purple", "Yellow", "Pink", "Green", "White",  "Orange" }
i=1
sai = 0
repeat
if playerColorClicked == Cores[i] then
  Cor = i
  sai = 1
else
  i = i + 1
end
until sai == 1

  for i=1, 1, 1 do

  Zona_mao = getObjectFromGUID(Maos[Cor])
  local cartas = Zona_mao.getObjects()
  for j=1, #cartas, 1 do
  local obj = cartas[j]
    if(obj.tag == "Card") then
    obj.setPosition({-10.8+(j*2), 1.8, -11.55})
    end
    if(obj.tag == "Deck") then
    obj.setPosition({-10.8+(j*2), 1.8, -11.55})
    end
  end
end

startLuaCoroutine(self, 'Mostra_Descartar')

end
-----------------------------------------------------------------------------------------------------------------
function Espera(s)
    local t = os.clock()
    while os.clock() < (t + s) do
        coroutine.yield(0)
    end
end
----------------------------------------------------------------------------------------------------------------------------------
function Mostra_Descartar()
Espera(2)
self.editButton({ index = 0, label="Discard & Pass", scale={0.15, 1, 0.15}  })
return 1
end
----------------------------------------------------------------------------------------------------------------------------------
function Remover()

  Bag_maldicao_jogadas = getObjectFromGUID("7c82f9")
  Bag_token_jogados = getObjectFromGUID("b07df7")

--Remove as cartas na area de remover
Zona_remove = getObjectFromGUID("6adbc9")
local cartas = Zona_remove.getObjects()
  for j=1, #cartas, 1 do
  local obj = cartas[j]
  --print(obj.tag)
    NOME = cartas[j].getName()
    if(obj.tag == "Card") then     obj.setPositionSmooth({50, 5+0.1*j, 14})     end
    if(obj.tag == "Deck") then     obj.setPositionSmooth({50, 5+0.1*j, 14})     end
    if(obj.tag == "Tile") then
            if NOME == "Maldição" then       Bag_maldicao_jogadas.putObject(obj)
            elseif NOME == "CavernaEXP" then     Bag_token_jogados.putObject(obj)
            else
            obj.setPositionSmooth({50, 5+0.1*j, 14})
            end
  end
end

end
-----------------------------------------------------------------------------------------------------------------------------------------------------
function Descartar2(objectButtonClicked, playerColorClicked)

Var_Passar_Vez = 1

Tab_Nomes = { "b5397c", "63933c", "fd704b", "869398", "6943aa", "6dd41f" }
Bag_maldicao_jogadas = getObjectFromGUID("7c82f9")
Bag_token_jogados = getObjectFromGUID("b07df7")
--Descobre quem clicou
for i=1,6,1 do
  if getObjectFromGUID(Tab_Nomes[i]) then
  Cor_Jog = getObjectFromGUID(Tab_Nomes[i]).getColorTint():toString()
    if Cor_Jog == playerColorClicked then
    N_jog = i
    Cor_J = Cor_Jog
    end
  end
end

--Descartas as cartas na area de descarte
Zona_Descarte_principal = getObjectFromGUID("ade700")
for i=1, 1, 1 do
  local cartas = Zona_Descarte_principal.getObjects()
    for j=1, #cartas, 1 do
    local obj = cartas[j]
    local Pos_Descartes = { {-37.79, 5+0.1*j, -19.09}, {-21.79, 5+0.1*j, -19.09}, {-5.79, 5+0.1*j, -19.09}, {10.21, 5+0.1*j, -19.09}, {26.21, 5+0.1*j, -19.09}, {42.21, 5+0.1*j, -19.09} }

    --Pos_Descarte = Pos_Descartes[N_jog] + vector(0, 0.1*j, 0)
      if(obj.tag == "Card") then
      obj.setPosition(Pos_Descartes[N_jog])
      obj.setRotation({0, 180, 0})
      end
      if(obj.tag == "Deck") then
      obj.setPosition(Pos_Descartes[N_jog])
      obj.setRotation({0, 180, 0})
      end
    end
--Remove as cartas na area de remover
Zona_remove = getObjectFromGUID("6adbc9")
local cartas = Zona_remove.getObjects()
  for j=1, #cartas, 1 do
  local obj = cartas[j]
  --print(obj.tag)
    NOME = cartas[j].getName()
    if(obj.tag == "Card") then
    obj.setPositionSmooth({50, 5+0.1*j, 14})
    end
    if(obj.tag == "Deck") then
    obj.setPositionSmooth({50, 5+0.1*j, 14})
    end
    if(obj.tag == "Tile") then
      if NOME == "Maldição" then
      Bag_maldicao_jogadas.putObject(obj)
      broadcastToAll("The Player ".. Player[Cor_J].steam_name .. " discarded a curse.", Cor_J)
    elseif NOME == "CavernaEXP" then
    Bag_token_jogados.putObject(obj)
    broadcastToAll("The Player ".. Player[Cor_J].steam_name .. " Discarded a cave token.", Cor_J)
      else
      obj.setPositionSmooth({50, 5+0.1*j, 14})
      end
    end
  end

end -- for
broadcastToAll("The Player ".. Player[Cor_J].steam_name .. " discarded their cards.", Cor_J)


getObjectFromGUID("8b7b5e").setValue(""..N_jog)
getObjectFromGUID("feaef4").setValue(""..Cor_J)



end -- func

-----------------------------------------------------------------------------------------------------------------------------------
function onPlayerTurnEnd(player_color_end, player_color_next)

if Var_Passar_Vez == 1 then
-- faz nada
else

self.editButton({ index = 0, label="Discard and Pass", scale={0, 0, 0}  })
self.editButton({ index = 1, label="Place Hand",   scale={0.15, 1, 0.15}   })

Tab_Nomes = { "b5397c", "63933c", "fd704b", "869398", "6943aa", "6dd41f" }
Bag_maldicao_jogadas = getObjectFromGUID("7c82f9")
--Descobre quem clicou
for i=1,6,1 do
  if getObjectFromGUID(Tab_Nomes[i]) then
  Cor_Jog = getObjectFromGUID(Tab_Nomes[i]).getColorTint():toString()
    if Cor_Jog == player_color_end then
    N_jog = i
    Cor_J = Cor_Jog
    end
  end
end

--Descartas as cartas na area de descarte
Zona_Descarte_principal = getObjectFromGUID("ade700")
for i=1, 1, 1 do
  local cartas = Zona_Descarte_principal.getObjects()
    for j=1, #cartas, 1 do
    local obj = cartas[j]
    local Pos_Descartes = { {-37.79, 5+0.1*j, -19.09}, {-21.79, 5+0.1*j, -19.09}, {-5.79, 5+0.1*j, -19.09}, {10.21, 5+0.1*j, -19.09}, {26.21, 5+0.1*j, -19.09}, {42.21, 5+0.1*j, -19.09} }

    --Pos_Descarte = Pos_Descartes[N_jog] + vector(0, 0.1*j, 0)
      if(obj.tag == "Card") then
      obj.setPosition(Pos_Descartes[N_jog])
      obj.setRotation({0, 180, 0})
      end
      if(obj.tag == "Deck") then
      obj.setPosition(Pos_Descartes[N_jog])
      obj.setRotation({0, 180, 0})
      end
    end
--Remove as cartas na area de remover
Zona_remove = getObjectFromGUID("6adbc9")
local cartas = Zona_remove.getObjects()
  for j=1, #cartas, 1 do
  local obj = cartas[j]
  --print(obj.tag)
    NOME = cartas[j].getName()
    if(obj.tag == "Card") then
    obj.setPositionSmooth({50, 5+0.1*j, 14})
    end
    if(obj.tag == "Deck") then
    obj.setPositionSmooth({50, 5+0.1*j, 14})
    end
    if(obj.tag == "Tile") then
      if NOME == "Maldição" then
      Bag_maldicao_jogadas.putObject(obj)
      broadcastToAll("The Player ".. Player[Cor_J].steam_name .. " discarded a curse.", Cor_J)
      else
      obj.setPositionSmooth({50, 5+0.1*j, 14})
      end
    end
  end

end

Var_Passar_Vez = 0

-- Repoes a Mão
startLuaCoroutine(self, 'Repor_mao2')




end -- if 1

end

-----------------------------------------------------------------------------------------------------------------------------------
function Repor_mao2()

Espera(1)
--Define qtas cartas faltam na mão do jogadoara
--print("ok2 teste cor: ".. Cor_J)
count = 0
Jogador = Player[Cor_J]
      for _, obj in ipairs(Jogador.getHandObjects()) do
          if obj.tag == "Card" then   count = count + 1  end
      end
N_Repete = 4 - count

Tab_Nomes = { "b5397c", "63933c", "fd704b", "869398", "6943aa", "6dd41f" }
Zona_Baralho_guid  = {"0fc05c", "b0259a", "4b8cc5", "698e9c", "2a3183", "72b34d",  }
Zona_Descarte_guid = {"646d6c", "24bdbc", "18841d", "71d6da", "fffe8d", "7b00f5",  }
Zona_Baralho  = getObjectFromGUID(Zona_Baralho_guid[N_jog])
Zona_Descarte = getObjectFromGUID(Zona_Descarte_guid[N_jog])

for i=1, N_Repete, 1 do
  --compra 1 carta
local cartas = Zona_Baralho.getObjects()
  if #cartas > 1 then --compra 1 carta
    for j=1, #cartas, 1 do
    local obj = cartas[j]
        if(obj.tag == "Deck") then obj.deal(1, Cor_J)
        elseif (obj.tag == "Card") then  obj.deal(1, Cor_J)  end
    end
    Espera(0.3)
  else -- Caso tenha 0 cartas
  local cartas = Zona_Descarte.getObjects()
      for j=1, #cartas, 1 do
      local obj = cartas[j]
          if(obj.tag == "Deck") then
          obj.shuffle()
          obj.flip()
          pos = obj.getPosition()
          obj.setPosition({pos["x"]-4.4, pos["y"]+2, pos["z"]})
          Espera(0.5)
          obj.deal(1, Cor_J)
          Espera(0.3)
          end
      end
    end
end -- for

printToAll("The Player ".. Player[Cor_J].steam_name .. " Comprou " .. N_Repete .. " cartas." , Cor_J)
printToAll("-----------------------------------------", Cor_J)

Espera(0.5)
self.editButton({ index = 1, label="Place Hand",   scale={0.15, 1, 0.15}   })
self.editButton({ index = 0, label="Discard and Pass", scale={0, 0, 0}  })

return 1
end --func
-----------------------------------------------------------------------------------------------------------------------------------------------------
function Volta_Turno()

Jogadores = getSeatedPlayers()

  for i = 1, #Jogadores, 1 do
  broadcastToAll("Reposicionando o turno", "White")
  Var_Passar_Vez = 1
  Espera(0.5)
  Turns.turn_color = Turns.getNextTurnColor()
  end


end

function naodeu()

if Var_Inicio_Errado == 0 then
  --faz nada
else

Turns.enable = false

for i = 1, 6, 1 do
if Passou_errado == Ordem_dos_turnos[i] then Num = i end
end

Nova_ordem = {}

for j = 1, 6, 1 do
Nova_ordem[j] = Ordem_dos_turnos[Num]
Num = Num + 1
if Num > 6 then Num = 1 end
end

Turns.order = Nova_ordem

Turns.enable = true
Var_Inicio_Errado = 0

end

return 1
end