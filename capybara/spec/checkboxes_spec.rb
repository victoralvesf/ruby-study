page = 'https://training-wheels-protocol.herokuapp.com/checkboxes'

describe 'Caixa de selecao', :checkbox do

    before(:each) do
        visit page
        sleep 1
    end
  
    it 'marcar uma opcao' do
        check('thor')
    end

    it 'desmarcar uma opcao' do
        uncheck('antman')
    end

    it 'marcar uma opcao sem id e name' do
        find('input[value=cap]').set(true)
    end

    it 'desmarcando uma opcao sem id e name' do
        find('input[value=guardians]').set(false)
    end

    after(:each) do
        sleep 1
    end

end