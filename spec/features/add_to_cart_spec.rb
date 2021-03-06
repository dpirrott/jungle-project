require 'rails_helper'

RSpec.feature "AddToCarts", type: :feature, js: true do

  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "Cart is increased by 1 when add to cart button is clicked for a product" do
    # ACT
    visit root_path

    first('form.button_to button').click

    expect(page).to have_text 'My Cart (1)'
    save_screenshot
  end

end
