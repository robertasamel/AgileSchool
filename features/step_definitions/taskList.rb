busca = BuscaGoogle.new

Given(/^Quero fazer uma busca no Google sobre "([^"]*)"$/) do |pesquisa|
  busca.abrir_pagina
  busca.buscar(pesquisa)
  busca.submit
end

Then(/^o Google me devolve os resultados sobre "([^"]*)"$/) do |pesquisa|
  busca.buscou?(pesquisa)
end