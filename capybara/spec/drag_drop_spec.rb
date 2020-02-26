webpage = 'https://training-wheels-protocol.herokuapp.com/drag_and_drop'

describe 'Drag and drop', :drop do

  before(:each) do
    visit webpage
  end

  it 'homem aranha pertence ao time Stark' do
    teamStark = find('.team-stark .column')
    teamCap = find('.team-cap .column')

    spidermanImage = find('img[alt="Homem Aranha"]')
    spidermanImage.drag_to teamStark

    expect(teamStark).to have_css 'img[alt="Homem Aranha"]'
    expect(teamCap).not_to have_css 'img[alt="Homem Aranha"]'
  end

end