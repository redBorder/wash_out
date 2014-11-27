xml = Builder::XmlMarkup.new(indent: 0)
xml.tag! "soap:Envelope", "xmlns:soap" => 'http://schemas.xmlsoap.org/soap/envelope/',
                          "xmlns:xsd" => 'http://www.w3.org/2001/XMLSchema' do
  xml.tag! "soap:Body" do
    xml.tag! "#{@action_spec[:response_tag]}", response_tag_attributes do
      wsdl_data xml, result
    end
  end
end
