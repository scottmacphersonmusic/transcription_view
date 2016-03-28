require 'rails_helper'

describe 'transcription feature' do
  it 'should list all available transcriptions' do
    Transcription.create!(song_title: 'Oleo')
    Transcription.create!(song_title: 'Daahoud')

    visit root_path

    expect(page).to have_content 'Oleo'
    expect(page).to have_content 'Daahoud'
  end

  it 'should provide a link to view full-screen in a new tab' do
    Transcription.create!(
      song_title: 'Oleo',
      file_name: 'oleo_coltrane.pdf')

    visit root_path
    click_on 'Oleo'

    full_screen_link = page.find(:xpath, '//a', text: 'View Full Screen')
    expect(full_screen_link[:href]).to match(/pdfjs\/full\?file=.*oleo_coltrane/)
    expect(full_screen_link[:target]).to match(/_blank/)

    full_screen_link.click

    expect(page).to have_xpath('//body[@id = "pdfjs_viewer-full"]')
  end

  it 'should display a pdf of the transcription' do
    Transcription.create!(
      song_title: 'Oleo',
      file_name: 'oleo_coltrane.pdf')

    visit root_path
    click_on 'Oleo'

    pdf_viewer = page.find(:xpath, '//iframe')
    expect(pdf_viewer[:src]).to match(/pdfjs\/minimal\?file=.*oleo_coltrane/)
  end


end
