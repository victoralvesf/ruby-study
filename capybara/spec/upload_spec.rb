page = 'https://training-wheels-protocol.herokuapp.com/upload'

describe 'Upload files', :upload do
  
    before(:each) do
        visit page

        @file = Dir.pwd + '/spec/fixtures/file.txt'
        @image = Dir.pwd + '/spec/fixtures/image.jpg'
    end
    
    it 'upload a text file' do
        attach_file('file-upload', @file)
        click_button('file-submit')

        div_file = find('#uploaded-file')
        expect(div_file.text).to eq('file.txt')
    end

    it 'upload an image file' do
        attach_file('file-upload', @image)
        click_button('file-submit')

        image = find('#new-image')
        expect(image[:src]).to include 'image.jpg'
    end

    after(:each) do
      sleep 2
    end
end