class MyAmazonElement
  def self.new(amazon_element)
    amazon_attributes = amazon_element.get_element('ItemAttributes')
    {
      :title => amazon_attributes.get('Title'),
      :auther => amazon_attributes.get('Auther'),
      :isbn => amazon_attributes.get('ISBN'),
      :image_url => amazon_element.get_hash('MediumImage')['URL'],
      :associate_url => amazon_attributes.get('DetailPageURL')
    }
  end
end
