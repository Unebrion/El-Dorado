function onLoad()


  self.createButton({ index = 0, label="Buy", click_function="Buy1", function_owner=self,
  scale={0.1,0.1,0.1}, position={-0.565, 0.15, 0.965}, rotation={0,0,0}, height=250, width=900, font_size = 180, font_color={0,0,0}   })

  self.createButton({ index = 0, label="Buy", click_function="Buy2", function_owner=self,
  scale={0.1,0.1,0.1}, position={-0.345, 0.15, 0.965}, rotation={0,0,0}, height=250, width=900, font_size = 180, font_color={0,0,0}   })

  self.createButton({ index = 0, label="Buy", click_function="Buy3", function_owner=self,
  scale={0.1,0.1,0.1}, position={-0.125, 0.15, 0.965}, rotation={0,0,0}, height=250, width=900, font_size = 180, font_color={0,0,0}   })

  self.createButton({ index = 0, label="Buy", click_function="Buy4", function_owner=self,
  scale={0.1,0.1,0.1}, position={ 0.105, 0.15, 0.965}, rotation={0,0,0}, height=250, width=900, font_size = 180, font_color={0,0,0}   })

  self.createButton({ index = 0, label="Buy", click_function="Buy5", function_owner=self,
  scale={0.1,0.1,0.1}, position={ 0.330, 0.15, 0.965}, rotation={0,0,0}, height=250, width=900, font_size = 180, font_color={0,0,0}   })

  self.createButton({ index = 0, label="Buy", click_function="Buy6", function_owner=self,
  scale={0.1,0.1,0.1}, position={0.56, 0.15, 0.965}, rotation={0,0,0}, height=250, width=900, font_size = 180, font_color={0,0,0}   })

  Area_compra = {"0d7b81", "0636f8", "f6c171", "6150c6", "f40d7d", "4c0b77"}

end
-----------------------------------------------------------------------------------------------------------
function Buy1(objectButtonClicked, playerColorClicked)
Tab_Nomes = { "b5397c", "63933c", "fd704b", "869398", "6943aa", "6dd41f" }
Area_compra = {"0d7b81", "0636f8", "f6c171", "6150c6", "f40d7d", "4c0b77"}
Cor_Jog = playerColorClicked

--Determina a pessoa que clicou
for i = 1, 6, 1 do
if getObjectFromGUID(Tab_Nomes[i]) then
Cor_TAB = getObjectFromGUID(Tab_Nomes[i]).getDescription()
if tostring(Cor_TAB) == tostring(Cor_Jog) then N_jg = i end
end
end

POS_0 = getObjectFromGUID(Tab_Nomes[N_jg]).getPosition()
POS = POS_0 + vector(2.25, 1, -3.18)

--Compra 1 carta
Zona_Baralho  = getObjectFromGUID(Area_compra[1])
for i=1, 1, 1 do
cartas = Zona_Baralho.getObjects()
  if #cartas > 1 then --compra 1 carta
    for j=1, #cartas, 1 do
    obj = cartas[j]
        if obj.tag == "Deck" then obj.takeObject({ position = POS,  rotation = {0.00, 180.00, 0.00}  })
        elseif obj.tag == "Card" then obj.setPositionSmooth(POS)  obj.setRotation({0.00, 180.00, 0.00})  end
    end
  else
    broadcastToAll("There are no cards in this pile", White)
end
end
broadcastToAll("" .. Player[Cor_Jog].steam_name .. " Bought one card from the market.", Cor_Jog)
end
-----------------------------------------------------------------------------------------------------------
function Buy2(objectButtonClicked, playerColorClicked)
Tab_Nomes = { "b5397c", "63933c", "fd704b", "869398", "6943aa", "6dd41f" }
Area_compra = {"0d7b81", "0636f8", "f6c171", "6150c6", "f40d7d", "4c0b77"}
Cor_Jog = playerColorClicked

--Determina a pessoa que clicou
for i = 1, 6, 1 do
if getObjectFromGUID(Tab_Nomes[i]) then
Cor_TAB = getObjectFromGUID(Tab_Nomes[i]).getDescription()
if tostring(Cor_TAB) == tostring(Cor_Jog) then N_jg = i end
end
end

POS_0 = getObjectFromGUID(Tab_Nomes[N_jg]).getPosition()
POS = POS_0 + vector(2.25, 1, -3.18)

--Compra 1 carta
Zona_Baralho  = getObjectFromGUID(Area_compra[2])
for i=1, 1, 1 do
cartas = Zona_Baralho.getObjects()
  if #cartas > 1 then --compra 1 carta
    for j=1, #cartas, 1 do
    obj = cartas[j]
        if obj.tag == "Deck" then obj.takeObject({ position = POS,  rotation = {0.00, 180.00, 0.00}  })
        elseif obj.tag == "Card" then obj.setPositionSmooth(POS)  obj.setRotation({0.00, 180.00, 0.00})  end
    end
  else
    broadcastToAll("There are no cards in this pile", White)
end
end
broadcastToAll("" .. Player[Cor_Jog].steam_name .. " Bought one card from the market.", Cor_Jog)
end
-----------------------------------------------------------------------------------------------------------
function Buy3(objectButtonClicked, playerColorClicked)
Tab_Nomes = { "b5397c", "63933c", "fd704b", "869398", "6943aa", "6dd41f" }
Area_compra = {"0d7b81", "0636f8", "f6c171", "6150c6", "f40d7d", "4c0b77"}
Cor_Jog = playerColorClicked

--Determina a pessoa que clicou
for i = 1, 6, 1 do
if getObjectFromGUID(Tab_Nomes[i]) then
Cor_TAB = getObjectFromGUID(Tab_Nomes[i]).getDescription()
if tostring(Cor_TAB) == tostring(Cor_Jog) then N_jg = i end
end
end

POS_0 = getObjectFromGUID(Tab_Nomes[N_jg]).getPosition()
POS = POS_0 + vector(2.25, 1, -3.18)

--Compra 1 carta
Zona_Baralho  = getObjectFromGUID(Area_compra[3])
for i=1, 1, 1 do
cartas = Zona_Baralho.getObjects()
  if #cartas > 1 then --compra 1 carta
    for j=1, #cartas, 1 do
    obj = cartas[j]
        if obj.tag == "Deck" then obj.takeObject({ position = POS,  rotation = {0.00, 180.00, 0.00}  })
        elseif obj.tag == "Card" then obj.setPositionSmooth(POS)  obj.setRotation({0.00, 180.00, 0.00})  end
    end
  else
    broadcastToAll("There are no cards in this pile", White)
end
end
broadcastToAll("" .. Player[Cor_Jog].steam_name .. " Bought one card from the market.", Cor_Jog)
end
-----------------------------------------------------------------------------------------------------------
function Buy4(objectButtonClicked, playerColorClicked)
Tab_Nomes = { "b5397c", "63933c", "fd704b", "869398", "6943aa", "6dd41f" }
Area_compra = {"0d7b81", "0636f8", "f6c171", "6150c6", "f40d7d", "4c0b77"}
Cor_Jog = playerColorClicked

--Determina a pessoa que clicou
for i = 1, 6, 1 do
if getObjectFromGUID(Tab_Nomes[i]) then
Cor_TAB = getObjectFromGUID(Tab_Nomes[i]).getDescription()
if tostring(Cor_TAB) == tostring(Cor_Jog) then N_jg = i end
end
end

POS_0 = getObjectFromGUID(Tab_Nomes[N_jg]).getPosition()
POS = POS_0 + vector(2.25, 1, -3.18)

--Compra 1 carta
Zona_Baralho  = getObjectFromGUID(Area_compra[4])
for i=1, 1, 1 do
cartas = Zona_Baralho.getObjects()
  if #cartas > 1 then --compra 1 carta
    for j=1, #cartas, 1 do
    obj = cartas[j]
        if obj.tag == "Deck" then obj.takeObject({ position = POS,  rotation = {0.00, 180.00, 0.00}  })
        elseif obj.tag == "Card" then obj.setPositionSmooth(POS)  obj.setRotation({0.00, 180.00, 0.00})  end
    end
  else
    broadcastToAll("There are no cards in this pile", White)
end
end
broadcastToAll("" .. Player[Cor_Jog].steam_name .. " Bought one card from the market.", Cor_Jog)
end
-----------------------------------------------------------------------------------------------------------
function Buy5(objectButtonClicked, playerColorClicked)
Tab_Nomes = { "b5397c", "63933c", "fd704b", "869398", "6943aa", "6dd41f" }
Area_compra = {"0d7b81", "0636f8", "f6c171", "6150c6", "f40d7d", "4c0b77"}
Cor_Jog = playerColorClicked

--Determina a pessoa que clicou
for i = 1, 6, 1 do
if getObjectFromGUID(Tab_Nomes[i]) then
Cor_TAB = getObjectFromGUID(Tab_Nomes[i]).getDescription()
if tostring(Cor_TAB) == tostring(Cor_Jog) then N_jg = i end
end
end

POS_0 = getObjectFromGUID(Tab_Nomes[N_jg]).getPosition()
POS = POS_0 + vector(2.25, 1, -3.18)

--Compra 1 carta
Zona_Baralho  = getObjectFromGUID(Area_compra[5])
for i=1, 1, 1 do
cartas = Zona_Baralho.getObjects()
  if #cartas > 1 then --compra 1 carta
    for j=1, #cartas, 1 do
    obj = cartas[j]
        if obj.tag == "Deck" then obj.takeObject({ position = POS,  rotation = {0.00, 180.00, 0.00}  })
        elseif obj.tag == "Card" then obj.setPositionSmooth(POS)  obj.setRotation({0.00, 180.00, 0.00})  end
    end
  else
    broadcastToAll("There are no cards in this pile", White)
end
end
broadcastToAll("" .. Player[Cor_Jog].steam_name .. " Bought one card from the market.", Cor_Jog)
end
-----------------------------------------------------------------------------------------------------------
function Buy6(objectButtonClicked, playerColorClicked)
Tab_Nomes = { "b5397c", "63933c", "fd704b", "869398", "6943aa", "6dd41f" }
Area_compra = {"0d7b81", "0636f8", "f6c171", "6150c6", "f40d7d", "4c0b77"}
Cor_Jog = playerColorClicked

--Determina a pessoa que clicou
for i = 1, 6, 1 do
if getObjectFromGUID(Tab_Nomes[i]) then
Cor_TAB = getObjectFromGUID(Tab_Nomes[i]).getDescription()
if tostring(Cor_TAB) == tostring(Cor_Jog) then N_jg = i end
end
end

POS_0 = getObjectFromGUID(Tab_Nomes[N_jg]).getPosition()
POS = POS_0 + vector(2.25, 1, -3.18)

--Compra 1 carta
Zona_Baralho  = getObjectFromGUID(Area_compra[6])
for i=1, 1, 1 do
cartas = Zona_Baralho.getObjects()
  if #cartas > 1 then --compra 1 carta
    for j=1, #cartas, 1 do
    obj = cartas[j]
        if obj.tag == "Deck" then obj.takeObject({ position = POS,  rotation = {0.00, 180.00, 0.00}  })
        elseif obj.tag == "Card" then obj.setPositionSmooth(POS)  obj.setRotation({0.00, 180.00, 0.00})  end
    end
  else
    broadcastToAll("There are no cards in this pile", White)
end
end
broadcastToAll("" .. Player[Cor_Jog].steam_name .. " Bought one card from the market.", Cor_Jog)
end
-----------------------------------------------------------------------------------------------------------