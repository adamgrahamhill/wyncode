class UrlParser
  def initialize(new_url)
    @url = new_url
    @scheme = scheme
    @domain = domain
    @port = port
    @path = path
    @query_string = query_string
    @fragment_id = fragment_id
  end
  def scheme
    @url.split(":").first
  end
  def domain
    @url.split("//").last.split(":").first.split("/").first
  end
  def port
    if (@url.split(":").last.split("/").first).length > 0
      @url.split(":").last.split("/").first
    elsif scheme == "http"
      "80"
    else
      "443"
    end
  end
  def path
      @url.split("://").last.partition("/").last.split("?").first.split("#").first
  end
  def query_string
    if @url.include?("?")
      qs = @url.split("?").last.split("#").first.split("&")
      arr = []
      qs.each { |elem| arr.push( elem.split("=") ) }
      arr.to_h
      # @query_string = Hash[*s.split(/=|&/)]
    else
      nil
    end
  end
  def fragment_id
    if @url.include?("#")
      @url.split("#").last
    else
      nil
    end
  end
end
