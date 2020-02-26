page = 'https://training-wheels-protocol.herokuapp.com/radios'

describe 'Botoes de radio', :radio do

    before(:each) do
        visit page
        sleep 1
    end
  
    it 'selecao por id' do
        choose('cap')
    end

    it 'selecao por find' do
        find('input[value=guardians]').click
    end

    after(:each) do
        sleep 1
    end
    
end