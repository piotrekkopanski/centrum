require 'rails_helper'


RSpec.feature "client", :type => :feature do

  it 'shows index client page ' do
       visit '/clients'
       page.should have_content "Nowy klient"
    end
  it 'adds client' do
      visit '/clients/'
      click_on 'Nowy klient'
      fill_in 'client[NIP]', with: '88888888888888888888'
      fill_in 'client[name]', with: 'Piotr'
      fill_in 'client[address]', with: "Warszawa"
      fill_in 'client[mailing_address]', with: 'Lublin'
      fill_in 'client[term]', with: 'Lublin'
      fill_in 'client[notes]', with: 'Lublin'
      click_button 'Utwórz klienta' 
      page.should have_content 'Piotr' && 'Edytuj' && 'Usuń klienta'
    end
  it 'deletes client' do
      visit '/clients/'
      click_on 'Nowy klient'
      fill_in 'client[NIP]', with: '88888888888888888888'
      fill_in 'client[name]', with: 'Kowalski'
      fill_in 'client[address]', with: "Warszawa"
      fill_in 'client[mailing_address]', with: 'Lublin'
      fill_in 'client[term]', with: 'Lublin'
      fill_in 'client[notes]', with: 'Lublin'
      click_button 'Utwórz klienta' 
      click_link 'Usuń klienta'
      expect(page).not_to have_content "Kowalski"
    end 
  
end
