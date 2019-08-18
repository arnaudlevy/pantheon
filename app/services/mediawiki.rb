class Mediawiki
  def self.search(term)
    mediawiki = new term
    mediawiki.results
  end

  def initialize(term)
    @term = term
  end

  def results
    search_term
    @page
  end

  protected

  def client
    @client ||= MediawikiApi::Client.new 'https://fr.wikipedia.org/w/api.php'
  end

  def search_term
    response = client.query list: 'search', srsearch: @term
    results = response.data['search']
    if results.any?
      @page_id = results.first['pageid']
      get_page_info
    end
  end

  def get_page_info
    response = client.query(prop: 'info', pageids: @page_id, inprop: 'url')
    data = response.data['pages'][@page_id.to_s]
    @page = {
      url: data['fullurl'],
      name: data['title']
    }
    get_page_image
  end

  def get_page_image
    response = client.query(prop: 'pageimages', pageids: @page_id, pithumbsize: 500)
    data = response.data['pages'][@page_id.to_s]
    @page[:photo] = data['thumbnail']['source']
  end
end