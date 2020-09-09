mensagem = {}
File.open('ambrosio_entrada.txt') do |arquivo|
  while linha = arquivo.gets
    valor = linha.split

    #Transformando os valores númericos em decimal
    valor[0] = valor[0].to_i

    #Salvando na hash
    mensagem[valor[0]] = valor[1]
  end

end

#Ordenado pela chave da hash
mensagem.sort.each do |i|
  print i[1]
end
