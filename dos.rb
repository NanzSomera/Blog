# Abre y lee un fichero
# Se usa un bloque: el fichero se cierra
# automáticamente al acabar el bloque.
for i in 1..3  
  File.open('template.html', 'r') do |f1|       
      File.open("post/doc#{i}.html", 'w') do |f2|
        while linea = f1.gets
            if linea.match("<<contenido>>")
            File.open("entradas/doc#{i}.html",'r') do |f3|
                while contenido = f3.gets
                  f2.puts contenido         
                end
            end       
          else          
          f2.puts linea
          end
        end
      end
  end
end