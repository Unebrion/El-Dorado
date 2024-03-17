function onload()

  Incremento = 1
  
    self.createButton({ index = 0, label="▲", click_function="Sobe", function_owner=self,
    position={0,1,-1.2}, rotation={0,0,0}, height=500, width=500, font_size = 500, font_color={0,0,0}   })
  
    self.createButton({ index = 1, label="▼", click_function="Desce", function_owner=self,
    position={0,1,1.2}, rotation={0,0,0}, height=500, width=500, font_size = 500, font_color={0,0,0}   })
  
    self.createButton({ index = 2, label="►", click_function="Direita", function_owner=self,
    position={1.2,1,0}, rotation={0,0,0}, height=500, width=500, font_size = 500, font_color={0,0,0}   })
  
    self.createButton({ index = 3, label="◄", click_function="Esquerda", function_owner=self,
    position={-1.20,1,0}, rotation={0,0,0}, height=500, width=500, font_size = 500, font_color={0,0,0}   })
  
    self.createButton({ index = 4, label="1", click_function="Incremnentar", function_owner=self,
    position={0,1,0}, rotation={0,0,0}, height=510, width=510, font_size = 400, font_color={0,0,0}   })
  
  
  
  
  
  end
  
  ----------------------------------------------------------------------
  
  
  function Incremnentar()
          if Incremento == 1 then   Incremento = 2 self.editButton({ index = 4, label="2" })
      elseif Incremento == 2 then   Incremento = 3 self.editButton({ index = 4, label="3" })
      elseif Incremento == 3 then   Incremento = 1 self.editButton({ index = 4, label="1" })
          end
  end
  ---------------------------------------------------------------------
  function Sobe()
    Move_heros()
      Zona_Script = getObjectFromGUID("da222d")
        for i=1, 1, 1 do
        Objetos = Zona_Script.getObjects()
              for j=1, #Objetos, 1 do
              obj = Objetos[j]
              Pos_ini = obj.getPosition()
              --print(obj.tag)
                    if obj.tag == "Tile" then
                    Pos_F = Pos_ini + vector(0, 0, Incremento)
                    obj.setPosition(Pos_F)
                    end
              end
        end
    end
  ---------------------------------------------------------------------
  function Desce()
    Move_heros()
      Zona_Script = getObjectFromGUID("da222d")
        for i=1, 1, 1 do
        Objetos = Zona_Script.getObjects()
              for j=1, #Objetos, 1 do
              obj = Objetos[j]
              Pos_ini = obj.getPosition()
              --print(obj.tag)
                    if obj.tag == "Tile" then
                    Pos_F = Pos_ini + vector(0, 0, -1*Incremento)
                    obj.setPosition(Pos_F)
                    end
              end
        end
    end
  ---------------------------------------------------------------------
  function Direita()
    Move_heros()
      Zona_Script = getObjectFromGUID("da222d")
        for i=1, 1, 1 do
        Objetos = Zona_Script.getObjects()
              for j=1, #Objetos, 1 do
              obj = Objetos[j]
              Pos_ini = obj.getPosition()
              --print(obj.tag)
                    if obj.tag == "Tile" then
                    Pos_F = Pos_ini + vector(Incremento, 0, 0)
                    obj.setPosition(Pos_F)
                    end
              end
        end
    end
  ---------------------------------------------------------------------
  function Esquerda()
    Move_heros()
      Zona_Script = getObjectFromGUID("da222d")
        for i=1, 1, 1 do
        Objetos = Zona_Script.getObjects()
              for j=1, #Objetos, 1 do
              obj = Objetos[j]
              Pos_ini = obj.getPosition()
              --print(obj.tag)
                    if obj.tag == "Tile" then
                    Pos_F = Pos_ini + vector(Incremento*-1, 0, 0)
                    obj.setPosition(Pos_F)
                    end
              end
        end
    end
  ---------------------------------------------------------------------
  function Move_heros()
  if getObjectFromGUID("3275b3") then getObjectFromGUID("3275b3").setPosition({-20, 1.58, 0.40}) end
  end