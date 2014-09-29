json.array!(@provided_books) do |provided_book|
  json.extract! provided_book, :id, :name
  json.url provided_book_url(provided_book, format: :json)
end
