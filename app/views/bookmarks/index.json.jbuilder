json.array!(@bookmarks) do |bookmark|
  json.extract! bookmark, :id, :url, :name, :saved_at
  json.url bookmark_url(bookmark, format: :json)
end
