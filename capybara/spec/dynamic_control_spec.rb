webpage = 'https://training-wheels-protocol.herokuapp.com/dynamic_controls'

describe 'Dynamic Control', :dynamic do

    before(:each) do
        visit webpage
    end

    it 'quando habilita o campo' do
        has = page.has_field? 'movie', disabled: true
        puts has

        click_button 'Habilita'

        has = page.has_field? 'movie', disabled: false
        puts has
    end
end