require_relative 'solar_system'

RSpec.describe Planet do
  describe 'attributes' do
    before do 
      @planet = Planet.new
      @planet.name = "Mars"
      @planet.description = "Red Planet"
      @planet.population = 5
    end

    it "is expected to have name, description, and population attributes" do 
      expect(@planet).to have_attributes(:name => "Mars")
      expect(@planet).to have_attributes(:description => "Red Planet")
      expect(@planet).to have_attributes(:population => 5)
    end
  end

  describe 'behaviour' do
    before do
      @planet = Planet.new
    end

    it "should only add planet from Planet class" do
      @planet.name = "Mars"
      @planet.planets = @planet.name
      expect(@planet.planets).to eq("Mars")
    end
  end
end

RSpec.describe SolarSystem do
  describe 'initialization' do #creating a object from a class , and initialization with a name means you are creating the object and assigning  he name at the ssame time
    before do
      @solarSystem = SolarSystem.new#what ever name you pass it ,
    end

    it "should be initialized with a name, if not its default name should be Milky Way " do
      expect(@solarSystem.name).to eq("Solar System")
      @solarSystem.name = "Milky Way"
      expect(@solarSystem.name).to eq("Milky Way")
    end

    it "should contain a list of all planets" do
      @planet = Planet.new

      expect(@solarSystem.planets).to match_array(["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune" , "Pluto"])
    end
  end

  describe 'behavior' do 
    before do
      @solarSystem = SolarSystem.new
    end
    it "should count how many planets are in the Solar System." do
      expect(@solarSystem.count_planets).to eq(9)
    end

    it "should have a method called Super Nova that destroys all of the planets in it" do
      @solarSystem.super_nova
      expect(@solarSystem.planets.empty?).to eq(true)
    end
  end
end