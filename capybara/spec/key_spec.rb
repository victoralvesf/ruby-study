describe 'Keyboard', :keyboard do
  
  before(:each) do
    visit 'https://training-wheels-protocol.herokuapp.com/key_presses'
  end

  def check_letter(key)
    find('#campo-id').send_keys key
    expect(page).to have_content 'You entered: ' + key.to_s.upcase
  end

  it 'enviando teclas' do
    keys = %i[tab escape space enter shift control alt]

    for key in keys do
      check_letter(key)
    end
  end

  it 'enviando letras' do
    letters = %w[a s d f g h j k l]

    for letter in letters do
      check_letter(letter)
    end
    
  end

end