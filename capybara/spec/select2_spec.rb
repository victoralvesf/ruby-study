describe 'Select2', :sel2 do
  
  describe 'single' do
    before :each do
      visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/single.html'
    end

    it 'seleciona um ator por nome' do
      find('.select2-selection--single').click
      sleep 1
      find('.select2-results__option', text: 'Chris Rock').click
      sleep 1

      selectedElement = find('.select2-selection__rendered')

      expect(selectedElement.text).to eql('Chris Rock')
    end

    it 'busca e seleciona um ator' do
      find('.select2-selection--single').click
      sleep 1

      find('.select2-search__field').set('Chris Rock')

      find('.select2-results__option').click
      sleep 1

      selectedElement = find('.select2-selection__rendered')

      expect(selectedElement.text).to eql('Chris Rock')
    end
  end

  describe 'multiple', :multi do
    before(:each) do
      visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/multi.html'
    end

    def select(actor)
      find('.select2-selection--multiple').click
      find('.select2-search__field').set actor
      find('.select2-results__option').click
    end
    
    it 'seleciona atores' do
      actors = ['Adam Sandler', 'Chris Rock', 'Jim Carrey']

      for actor in actors do
        select(actor)
      end

      selected = []
      
      all('.select2-selection__choice').each do |item|
        selected.push(item[:title])
      end

      expect(selected).to eql(actors)
    end
  end

end