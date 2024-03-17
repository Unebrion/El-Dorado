function onload()

  self.createButton({ index = 0, label="SETUP", click_function="COMECAR", function_owner=self,position={0,1,0}, rotation={0,180,0}, height=600, width=1300, font_size = 250, font_color={0,0,0} })
  --self.createButton({ index = 1, label="Teste", click_function="Teste", function_owner=self,position={0,1,3}, rotation={0,180,0}, height=600, width=1300, font_size = 250, font_color={0,0,0} })
  
  getObjectFromGUID("5b1941").setValue(" ")
  cont_t = 1
  
  end
  --------------------------------------------------------------------------------------------------------------------------------------------------
  
  function COMECAR()
  
  broadcastToAll("Preparing Initial Setup", White)
  
  --Esconde ajuste de posicionamento
  getObjectFromGUID("beed7a").call("Esconde_controle_pos")
  
  Agora = os.date("%H:%M")
  getObjectFromGUID("5b1941").setValue("Game Started At: "..Agora)
  
  broadcastToAll("Selecting Starting Player", White)
  startLuaCoroutine(self, 'Cor_coloca_cartas')
  
  end
  --------------------------------------------------------------------------------------------------------------------------------------------------
  
  function Cor_coloca_cartas()
  
  quemcomeca()
  Espera(2)
  
  Move_tabs()
  Espera(1)
  
  Espera(1)
  
  Deck_promo = getObjectFromGUID("7ae28e")
  Deck_Mascote = getObjectFromGUID("72d26b")
  Tab_Nomes = { "b5397c", "63933c", "fd704b", "869398", "6943aa", "6dd41f" }
  Tabuleiros = { "c922a5", "a72795", "a2c3fb", "9bfd79", "20cc1b", "515747" }
  Posicoes = {}
  
  if Deck_promo then
  for i = 1, 6, 1 do
  if getObjectFromGUID(Tabuleiros[i]) then
  pos1 = getObjectFromGUID(Tabuleiros[i]).getPosition()
  pos2 = pos1 + vector(-2.2, 1, 0)
  Deck_promo.takeObject({ position= pos2, flip = true, smooth= false})
  --Espera(0.2)
  end
  end
  end
  
  if Deck_Mascote then
  for i = 1, 6, 1 do
  if getObjectFromGUID(Tabuleiros[i]) then
  pos1 = getObjectFromGUID(Tabuleiros[i]).getPosition()
  pos2 = pos1 + vector(-2.2, 1, 0)
  Deck_Mascote.takeObject({ position= pos2, flip = true, smooth= false})
  --Espera(0.2)
  end
  end
  end
  
  Espera(1)
  
  
  --reembaralha os decks
  baralho = { "bc32b4", "a19afe", "7fedcd", "23f738", "a2740a", "5c4284" }
  Tab_Nomes = { "b5397c", "63933c", "fd704b", "869398", "6943aa", "6dd41f" }
  for i = 1, 6, 1 do
    if getObjectFromGUID(baralho[i]) then
       Cor_TAB = getObjectFromGUID(Tab_Nomes[i]).getDescription()
       getObjectFromGUID(baralho[i]).shuffle()
       Espera(0.8)
       getObjectFromGUID(baralho[i]).deal(4, Cor_TAB)
     end
  end
  
    Espera(1)
  
    --botão dos circuitos e inicio
    getObjectFromGUID("beed7a").destruct()
    getObjectFromGUID("a26aa7").destruct()
  
  
    broadcastToAll(" Setup Complete ", White)
  
    if UI.getAttribute("Painel_Controle", "active") == "false" then
       UI.setAttribute("Painel_Controle", "active", "true")
    end
    return 1
  end
  ---------------------------------------------------------------------------------------------------------------------------------------
  function Move_tabs()
  
  Tab_Nomes = { "b5397c", "63933c", "fd704b", "869398", "6943aa", "6dd41f" }
  Tabuleiros = { "c922a5", "a72795", "a2c3fb", "9bfd79", "20cc1b", "515747" }
  peoes = { "485519", "962375", "661a6c", "9aabb2", "aaac1a", "2cd0ea" }
  baralho = { "bc32b4", "a19afe", "7fedcd", "23f738", "a2740a", "5c4284" }
  
  for i = 1, 6, 1 do
  Cor_TAB = getObjectFromGUID(Tab_Nomes[i]).getDescription()
  Barra_nome = getObjectFromGUID(Tab_Nomes[i])
  Cor_Barra = Barra_nome.getColorTint():toString()
      if  Cor_Barra == "Grey" then
      getObjectFromGUID(Tab_Nomes[i]).destruct()
      getObjectFromGUID(Tabuleiros[i]).destruct()
      getObjectFromGUID(peoes[i]).destruct()
      getObjectFromGUID(baralho[i]).destruct()
    else
      getObjectFromGUID(baralho[i]).shuffle()
      --getObjectFromGUID(baralho[i]).deal(4, Cor_TAB)
      end
  end
  
  end
  ---------------------------------------------------------------------------------------------------------------------------------------
  function quemcomeca()
  
  
  Chapeu = getObjectFromGUID("1a62cb")
  players = {}
  players = getSeatedPlayers()
  math.randomseed(os.time())
  local randomPlayer = math.random(#players)
  
  Turns.enable = false
  
  Tab_Nomes = { "b5397c", "63933c", "fd704b", "869398", "6943aa", "6dd41f" }
  
  --print("->" .. players[randomPlayer])
  
  for a = 1, 6, 1 do
  if players[randomPlayer] == getObjectFromGUID(Tab_Nomes[a]).getColorTint():toString() then Num = a end
  end
  
  print("->" .. Num)
  
  Vet_Ordem = {"", "", "", "", "", ""}
  x = 1
  for i=1,6 ,1 do
  Vet_Ordem[x] = getObjectFromGUID(Tab_Nomes[Num]).getColorTint():toString()
  Num = Num + 1
  if Num > 6 then Num = 1 end
  x = x + 1
  end
  
  Turns.order = Vet_Ordem
  
  Turns.enable = true
  
  --if  players[randomPlayer] ==  "Blue"    then Turns.order = {"Blue", "Red", "Purple", "Yellow", "Pink", "Green"}  end
  --if  players[randomPlayer] ==  "Red"     then Turns.order = {"Red", "Purple", "Yellow", "Pink", "Green", "Blue"}  end
  --if  players[randomPlayer] ==  "Purple"  then Turns.order = {"Purple", "Yellow", "Pink", "Green", "Blue", "Red"}  end
  --if  players[randomPlayer] ==  "Yellow"  then Turns.order = {"Yellow", "Pink", "Green", "Blue", "Red", "Purple"}  end
  --if  players[randomPlayer] ==  "Pink"    then Turns.order = {"Pink", "Green", "Blue", "Red", "Purple", "Yellow"} end
  --if  players[randomPlayer] ==  "Green"   then Turns.order = {"Green", "Blue", "Red", "Purple", "Yellow", "Pink"}  end
  
  local hcol = stringColorToRGB(players[randomPlayer])
  printToAll("--------------------------------------",{hcol["r"], hcol["g"], hcol["b"]})
  broadcastToAll(Player[players[randomPlayer]].steam_name .. " Is the first player!",{hcol["r"], hcol["g"], hcol["b"]})
  printToAll("--------------------------------------",{hcol["r"], hcol["g"], hcol["b"]})
  
  giveObjectToPlayer(Chapeu,players[randomPlayer], 1)
  
  
  
  
  end
  
   -- giveObjectToPlayer(alicate,players[randomPlayer], 1)
  
  --alicate.interactable = true
  
  
  function giveObjectToPlayer(object, player, extraDistance)
  local playerHand = Player[player].getPlayerHand();
  
  object.setRotationSmooth({0,playerHand["rot_y"],0})
  object.setPositionSmooth({playerHand["pos_x"]+playerHand["trigger_forward_x"]*15,2.5,playerHand["pos_z"]+((playerHand["trigger_forward_z"]*extraDistance)*15)-8})
  end
  -----------------------------------------------------------------------
  function Teste()
  
    Zona_Script = getObjectFromGUID("da222d")
  
      for i=1, 1, 1 do
      Objetos = Zona_Script.getObjects()
            for j=1, #Objetos, 1 do
            obj = Objetos[j]
            Pos_ini = obj.getPosition()
            --print(obj.tag)
                  if obj.tag == "Tile" then
                  Pos_F = Pos_ini + vector(0, 0, 1)
                  obj.setPosition(Pos_F)
                  end
            end
      end
  
  end
  -------------------------
  
  function token(objectButtonClicked, playerColorClicked)
  
  Bag_caverna  = getObjectFromGUID("02a357")
  Bag_caverna.shuffle()
  
  
  
  --giveObjectToPlayer(barreira,players, 0.65)
  
  --function cortar_barreira(object, playerColorClicked)
  
  --B_guid = tile.getGUID() -- da378b
  
  -- vrm rx am rs vd
  
  Cor = playerColorClicked
  
  if Cor == "Red"    then parametros = { position = {-29, 8, -14}, smooth = true, callback_function = nil, rotation={0,150,0}, flip = true } end
  if Cor == "Purple" then parametros = { position = {-12, 8, -14}, smooth = true, callback_function = nil, rotation={0,150,0}, flip = true } end
  if Cor == "Yellow" then parametros = { position = {  3, 8, -14}, smooth = true, callback_function = nil, rotation={0,150,0}, flip = true } end
  if Cor == "Pink"   then parametros = { position = { 19, 8, -14}, smooth = true, callback_function = nil, rotation={0,150,0}, flip = true } end
  if Cor == "Green"  then parametros = { position = { 34, 8, -14}, smooth = true, callback_function = nil, rotation={0,150,0}, flip = true } end
  if Cor == "Blue"   then parametros = { position = {-44, 8, -14}, smooth = true, callback_function = nil, rotation={0,150,0}, flip = true } end
  
  Bag_caverna.takeObject(parametros)
  
  if playerColorClicked == "Yellow" then cor = {0.90,0.89,0.17} end
  if playerColorClicked == "Blue"   then cor = {0.12,0.53,1.00} end
  if playerColorClicked == "Pink"   then cor = {0.96,0.44,0.80} end
  if playerColorClicked == "Purple" then cor = {0.62,0.12,0.94} end
  if playerColorClicked == "Green"  then cor = {0.19,0.70,0.16} end
  if playerColorClicked == "Red"    then cor = {0.85,0.10,0.09} end
  
  broadcastToAll("The Player ".. Player[playerColorClicked].steam_name .. " drew one token!", cor)
  
  --giveObjectToPlayer(token,players, 0.65)
  
  
  
  end
  
  
  -----------------------------------------------------------------------------------------------------------------------------------------------------
  function Espera(s)
      local t = os.clock()
      while os.clock() < (t + s) do
          coroutine.yield(0)
      end
  end
  ----------------------------------------------------------------------------------------------------------------------------------
  
  ---------------------------------------------------------------------------------------