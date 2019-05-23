defmodule Sanitizer do
  def sanitize_source(file_content) do
   	trimmed_content = String.trim(file_content)
     	words =Regex.split(~r/\n/,trimmed_content)
     	contador=0
<<<<<<< HEAD
   	hacer_lista(words,contador)
   	end
     def hacer_lista(program,linea) when program != []  do
   		    codigo_linea=hd program
   		    otras_lineas=tl program
   		    lista_token_sin_num = Regex.split(~r/\s+/,codigo_linea, trim: true)
   		    lista_token_con_num=Enum.flat_map(lista_token_sin_num, fn x -> [{x,linea}] end)
   		    linea=linea+1
   		    otrostokens=hacer_lista(otras_lineas,linea)
   		    lista_token_con_num ++ otrostokens
     end
     def hacer_lista(_program,_linea)  do
          []
     end

=======
   	doList(words,contador)
  end
  def doList(program,linea) when program != []  do
      codLine=hd program
      otherL=tl program
      tknListNoNum = Regex.split(~r/\s+/,codLine, trim: true)
      tknListNum=Enum.flat_map(tknListNoNum, fn x -> [{x,linea}] end)
      linea=linea+1
      otrostokens=doList(otherL,linea)
      tknListNum ++ otrostokens
  end

  def doList(_program,_linea)  do
      []
  end
>>>>>>> 9b2ba9fe6f8f3c090b3d2a14686978dc03aa0846
end