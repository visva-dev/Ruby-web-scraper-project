require 'get_info'

describe 'conect_to_page' do
  it 'Scrapes all the data from the page' do
    expect(conect_to_page.is_a?(Object)).to eq(true)
  end
end

describe '#lawyer_name' do
  it 'It should scrape all the lawyers names from the site' do
    expect(lawyer_name[0].is_a?(Object)).to eq(true)
  end
end

describe '#working_time' do
  it 'It should scrape all lawyers working times' do
    expect(working_time.class).to eq(Nokogiri::XML::NodeSet)
  end
end

describe '#phone_number' do
  it 'It should scrape first lawyer phone number and return it as a string' do
    expect(phone_number[0].content).to eq('(8 670) 77108')
  end
end

describe '#website_link' do
  it 'It should scrape second lawyer website link and return it as a string' do
    expect(website_link[1]['href']).to eq('http://www.teisesriba.lt')
  end
end

describe '#lawyer_address' do
  it 'It should scrape first lawyer phone number and return it as a string' do
    expect(lawyer_address.last.content.is_a?(Array)).not_to be(true)
  end
end
