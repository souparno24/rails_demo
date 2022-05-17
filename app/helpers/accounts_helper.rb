module AccountsHelper
    def embed(youtube_url)
        youtube_id = youtube_url.split("=").last
        content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}")
      end
      # Returns the Gravatar for the given user.
  def gravatar_for(account, size: 80)
    gravatar_id = Digest::MD5::hexdigest(account.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: account.username, class: "gravatar")
   end
end
