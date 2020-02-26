webpage = 'https://training-wheels-protocol.herokuapp.com/hovers'

describe 'Mouse hover', :hover do

  before(:each) do
    visit webpage
  end

  it 'mouse over blade image' do
    element = find('img[alt=Blade]')
    element.hover

    expect(page).to have_content 'Nome: Blade'
  end

  it 'mouse over spiderman image' do
    element = find('img[alt="Homem Aranha"]')
    element.hover

    expect(page).to have_content 'Nome: Homem Aranha'
  end

  it 'mouse over black panther image' do
    element = find('img[alt="Pantera Negra"]')
    element.hover

    expect(page).to have_content 'Nome: Pantera Negra'
  end

  after(:each) do
    sleep 2
  end

end