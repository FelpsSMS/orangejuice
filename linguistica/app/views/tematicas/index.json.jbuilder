json.array!(@tematicas) do |tematica|
  json.extract! tematica, :id, :tematica_titulo, :tematica_descricao
  json.url tematica_url(tematica, format: :json)
end
