dna = {}
File.open('dna_entrada.txt') do |arquivo|
  while linha = arquivo.gets
    valor = linha.split
    # Adicionar todos os valores menos o último
    if valor[0]  != '9999'

      #Primeiro valor para decimal
      valor[0] = valor[0].to_i

      # Adicionar no hash a quantidade de Timina e o código do paciente
      valor[1] = valor[1].count('T')
      dna[valor[0]] = valor[1]

    end
  end

end
#Maior Valor de Timina
maxT =  dna.values.max

#Buscar o código do cliente que tem mais timina
dna.each do |k|
  if maxT == k[1]
    puts k[0]
  end
end
