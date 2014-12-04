json.array!(@projetos) do |projeto|
  json.extract! projeto, :id, :projeto_titulo, :projeto_descricao, :pesquisador_id
  json.url projeto_url(projeto, format: :json)
end
