json.array!(@pesquisadores) do |pesquisador|
  json.extract! pesquisador, :id, :pesquisador_nome, :pesquisador_cnpq, :pesquisador_contato
  json.url pesquisador_url(pesquisador, format: :json)
end
