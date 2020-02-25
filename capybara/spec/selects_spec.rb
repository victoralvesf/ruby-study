page = 'https://training-wheels-protocol.herokuapp.com/dropdown'

describe 'Caixa de opcoes', :dropdown do
    
    it 'selecionar uma opcao com id' do
        visit page

        select('Tony Stark', from: 'dropdown')
    end

    it 'selecionar uma opcao com find' do
        visit page

        element = find('.avenger-list')

        element.find('option', text: 'Loki').select_option
    end

    it 'qualquer item', :sample do
        visit page

        element = find('.avenger-list')

        element.all('option').drop(1).sample.select_option
        sleep 1
    end
end