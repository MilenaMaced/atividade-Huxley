zoo = []
File.open('zoologico_entrada.txt') do |arquivo|
  while linha = arquivo.gets
    valor = linha.split("\n")

    # Adicionar todos os valores menos continuar e PARAR em um novo vetor
    if valor[0] != "continuar" && valor[0]!="PARAR"
      zoo.push(valor)
    end

  end
end

#Adicionando todos os valores em vetor 1 dimensão
aux = []
zoo.each do |i|
  aux.push(i[0])
end

i = 0
contMacaco = 0
contCobra = 0
somaPesoTigre = ''


while i < aux.length
  if aux[i] == 'macaco'
    contMacaco+=1
  elsif aux[i] == 'tigre'
    somaPesoTigre += aux[i+1]
  elsif aux[i] == 'cobra' && aux[i+2] == 'Venezuela'
    contCobra+=1
  end
  i+=1
end

#Calculo do Peso médio do tigre
contTigre = aux.count('tigre')

#Transformando para número real
somaPesoTigre = somaPesoTigre.to_f

pesoMedio = somaPesoTigre/contTigre

puts contMacaco
puts pesoMedio.round(2)
puts contCobra