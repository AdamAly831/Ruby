require_relative 'Wizard'

RSpec.describe Wizard do
  it 'has a default health of 50 and intelligence of 25' do
    wizard = Wizard.new
    expect(wizard.health).to eq(50)
    expect(wizard.intelligence).to eq(25)
  end
  it 'has a health method that increases health by 10' do
    wizard = Wizard.new
    wizard.health=0
    wizard.health
    expect(wizard.health).to.eq(10)
  end
  it 'has an ancestor chain that includes Human' do
    human = Wizard.ancestors.include?(Human)
    expect(human).to eq(true)
  end

 