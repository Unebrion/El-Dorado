X = 0

function onload()

Maos = {"fe1838"; "58048c", "ae4146", "061e5c", "60d241", "89500e", "73650a", "f7fc08", "816d6d", "ce57d0"}
Cores = {"Brown", "Teal", "Blue", "Red",  "Purple", "Yellow", "Pink", "Green", "White",  "Orange" }
Pos_Cores = { {-72.00, 5.00, -39.00}, {-56.00, 5.00, -39.00}, {-40.00, 5.00, -39.00}, {-24.00, 5.00, -39.00}, {-8.00, 5.00, -39.00},
 {8.00, 5.00, -39.00}, {24.00, 5.00, -39.00}, {40.00, 5.00, -39.00}, {56.00, 5.00, -39.00}, {72.00, 5.00, -39.00}  }

self.createButton({ label="", click_function="click_botao1", function_owner=self, index = 0,
position={-6.5,0.1,0}, rotation={0,0,0}, height=300, width=300, font_size = 2, font_color={0,0,0}   })

self.createButton({ label=" <- Click to choose this board", click_function="vazio", function_owner=self, index = 1,
position={0,0.1,0}, rotation={0,0,0}, height=0, width=0, font_size = 400, color={0.5,0.5,0.5}, font_color={0,0,0}   })

end
---------------------------------------------------------------------------------------------------------------------------
function vazio()

end
---------------------------------------------------------------------------------------------------------------------------
function click_botao1(objectButtonClicked, playerColorClicked)

if X == 0 then
self.setColorTint(playerColorClicked)
self.editButton({index = 1, label=Player[playerColorClicked].steam_name })
self.setDescription(playerColorClicked)
Pinta_peoes(objectButtonClicked, playerColorClicked)
X = 1
Move_mao(objectButtonClicked, playerColorClicked)
else
  self.setColorTint("Grey")
  self.editButton({index = 1, label=" <- Click to choose this board"})
  self.setDescription("Grey")
  Pinta_peoes(objectButtonClicked, playerColorClicked)
  X = 0
  Volta_mao(objectButtonClicked, playerColorClicked)
end
vazio()
end
---------------------------------------------------------------------------------------------------------------------------
function Move_mao(objectButtonClicked, playerColorClicked)

Pos_atual = self.getPosition()
Pos_Nova = Pos_atual + vector(0, 3.42, -12)

Cor = playerColorClicked

if Cor == "Brown"   then Var_i = 1 end
if Cor == "Teal"    then Var_i = 2 end
if Cor == "Blue"    then Var_i = 3 end
if Cor == "Red"     then Var_i = 4 end
if Cor == "Purple"  then Var_i = 5 end
if Cor == "Yellow"  then Var_i = 6 end
if Cor == "Pink"    then Var_i = 7 end
if Cor == "Green"   then Var_i = 8 end
if Cor == "White"   then Var_i = 9 end
if Cor == "Orange"  then Var_i = 10 end

getObjectFromGUID(Maos[Var_i]).setPosition(Pos_Nova)

end
---------------------------------------------------------------------------------------------------------------------------
function Volta_mao(objectButtonClicked, playerColorClicked)

getObjectFromGUID(Maos[Var_i]).setPosition(Pos_Cores[Var_i])

end

---------------------------------------------------------------------------------------------------------------------------
function Pinta_peoes(objectButtonClicked, playerColorClicked)
Peoes = {"485519", "962375", "661a6c", "9aabb2", "aaac1a", "2cd0ea" }
Nome = self.getName()

if Nome == "Seat-1" then x = 1 end
if Nome == "Seat-2" then x = 2 end
if Nome == "Seat-3" then x = 3 end
if Nome == "Seat-4" then x = 4 end
if Nome == "Seat-5" then x = 5 end
if Nome == "Seat-6" then x = 6 end

if X == 0 then getObjectFromGUID(Peoes[x]).setColorTint(playerColorClicked) end
if X == 1 then getObjectFromGUID(Peoes[x]).setColorTint("Grey") end


end