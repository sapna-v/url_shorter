class Link < ActiveRecord::Base
  after_create :short_url

    def display_slug
      ENV['BASE_URL'] + self.slug
    end

    def short_url
      chars = [‘0’..'9', ’A’..’Z’, ’a’..’z’].map { |range| range.to_a }.flatten
      self.slug = 6.times.map { chars.sample }.join until Url.find_by_short_url(self.short_url).nil?
      self.save
    end

end
