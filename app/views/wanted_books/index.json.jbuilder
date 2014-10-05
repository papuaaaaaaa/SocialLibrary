json.array!(@wanted_books) do |wanted_book|
  json.extract! wanted_book, :id, :title
  json.url wanted_book_url(wanted_book, format: :json)
end
