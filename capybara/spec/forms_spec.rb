page = 'https://training-wheels-protocol.herokuapp.com/login'

describe 'Forms' do
  
    it 'login com sucesso' do
        visit page

        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

        element = find('#flash')

        expect(element.visible?).to be true
        expect(element).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end

    it 'login com senha incorreta' do
        visit page

        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'password'

        click_button 'Login'

        element = find('#flash')

        expect(element.visible?).to be true
        expect(element).to have_content 'Senha é invalida!'
    end

    it 'login com usuario nao cadastrado' do
        visit page

        fill_in 'username', with: 'someuser'
        fill_in 'password', with: 'password'

        click_button 'Login'

        element = find('#flash')

        expect(element.visible?).to be true
        expect(element).to have_content 'O usuário informado não está cadastrado!'
    end

end