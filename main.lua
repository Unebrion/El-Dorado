
function hideWelcome()
  UI.hide("welcome")
end

function onLoad()


getObjectFromGUID("b5fb7e").interactable = false -- chão

--getObjectFromGUID("a26aa7").setPosition({-15.90, 1.53, -7.70}) -- botão começar

end


function onClick(objectButtonClicked, playerColorClicked)
Cor_Jogador_Clicou = playerColorClicked
print(Cor_Jogador_Clicou)
end



function Chama_Baixar()
--  print(playerColorClicked)

print(Cor_Jogador_Clicou)

--  jogador = Player[playerColorClicked]

--print(jogador)



Tab_Principal = getObjectFromGUID("8008a7")
Tab_Principal.call("Baixar",objectButtonClicked, playerColorClicked )
end

function Baixar2()
print("ok - Global")
end



function onScriptingButtonDown(index, player_color)
  if index == 1 then
      local bag = getObjectFromGUID("02a357")
      if bag then 
          setNameToItemsInBag(bag)
      else
          print("Bag not found")
      end
  end

  if index == 2 then 
    local sourceBag = getObjectFromGUID("02a357")
    local objPos = sourceBag.getPosition() + Vector (0,2,0)
    for _, tile in ipairs(sourceBag.getObjects()) do 
      local tileObj = sourceBag.takeObject({position = objPos})
      tileObj.setName("Cave")
    end
  end

  if index == 3 then 
    print("andy sucks .com")
  end
end


x_bar = 0
function takeBlockade(object, playerColorClicked)
B_guid = object.getGUID() -- da378b
  
barreira = getObjectFromGUID(B_guid)
players = playerColorClicked

giveObjectToPlayer(barreira,players, 0.65)

x_bar = x_bar +0.6

barreira.removeButton(0)
end

function giveObjectToPlayer(object, player, extraDistance)
--local hand = Player[playerColour]:getPlayerHand()
local playerHand = Player[player].getPlayerHand();

  object.setRotationSmooth({0,playerHand["rot_y"]+0,0})
  object.setPositionSmooth({playerHand["pos_x"]+ 4.5 + x_bar +playerHand["trigger_forward_x"]*15,   1.5,   playerHand["pos_z"]-1.3+(playerHand["trigger_forward_z"]*extraDistance)*15})
end
