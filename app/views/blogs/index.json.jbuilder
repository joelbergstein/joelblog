json.array!(@blogs) do |blog|
  json.extract! blog, :id, :title, :date, :author, :content, :header_img
  json.url blog_url(blog, format: :json)
end
