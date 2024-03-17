function onload()

  self.createButton({ index = 0, label="Draw 1", click_function="Comprar1", function_owner=self,
  position={0,1,-11}, rotation={0,0,0}, height=1200, width=2500, font_size = 500, font_color={0,0,0}   })

end

function Comprar1(objectButtonClicked, playerColorClicked)

N_jg = 4
Tab_Nomes = { "b5397c", "63933c", "fd704b", "869398", "6943aa", "6dd41f" }
Cor_Jog = getObjectFromGUID(Tab_Nomes[N_jg]).getColorTint():toString()

if playerColorClicked == Cor_Jog then

printToAll("The player ".. Player[Cor_Jog].steam_name .. " drew one card", Cor_Jog)

Zona_Baralho_guid  = {"0fc05c", "b0259a", "4b8cc5", "698e9c", "2a3183", "72b34d",  } getObjectFromGUID("0fc05c")
Zona_Descarte_guid = {"646d6c", "24bdbc", "18841d", "71d6da", "fffe8d", "7b00f5",  } getObjectFromGUID("646d6c")

Zona_Baralho  = getObjectFromGUID(Zona_Baralho_guid[N_jg])
Zona_Descarte = getObjectFromGUID(Zona_Descarte_guid[N_jg])

for i=1, 1, 1 do
  --compra 1 carta
local cartas = Zona_Baralho.getObjects()
  if #cartas > 1 then --compra 1 carta
    for j=1, #cartas, 1 do
    local obj = cartas[j]
    if(obj.tag == "Deck") then
    obj.deal(1, Cor_Jog)
  elseif (obj.tag == "Card") then
      obj.deal(1, Cor_Jog)
    end
    end
else
  local cartas = Zona_Descarte.getObjects()
    if #cartas > 1 then --compra 1 carta
      for j=1, #cartas, 1 do
      local obj = cartas[j]
      if(obj.tag == "Deck") then
      obj.shuffle()
      obj.flip()
      local pos = obj.getPosition()
      obj.setPositionSmooth({pos["x"]-4.4, pos["y"]+2, pos["z"]})
      obj.deal(1, Cor_Jog)

      --obj.setPositionSmooth(Table, bool, bool)

      end
      end
    end



  end -- if


end -- for
else
broadcastToAll("Somente o jogador " .. Player[Cor_Jog].steam_name .. " pode pegar cartas deste baralho!", {0,0,0})
end

end --func
--------------