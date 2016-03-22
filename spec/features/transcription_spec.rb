require 'rails_helper'

describe 'transcriptions' do
  it 'displays all available transcriptions' do
    Transcription.create!(
      song_title: 'Oleo',
      soloist: 'John Coltrane')
    Transcription.create!(
      song_title: 'Daahoud',
      soloist: 'Clifford Brown')

    visit root_path

    expect(page).to have_content 'Oleo'
    expect(page).to have_content 'Daahoud'
  end
end
