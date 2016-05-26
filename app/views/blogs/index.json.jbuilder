json.array!(@blogs) do |blog|
  json.extract! blog, :id, :title, :t_color, :t_font, :t_font_size, :body, :b_color, :b_font, :b_font_size, :background_color
  json.url blog_url(blog, format: :json)
end
