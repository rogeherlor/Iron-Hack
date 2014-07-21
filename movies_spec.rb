require_relative "../movies"


describe  "Movie catalog" do

	before :each do
		@catalog= MovieCatalog.new
	end

	it "catalogar 1 elemento" do
		killbill = Movies.new("killbill","The whole bloody affair","japones")
		@catalog.add_movie killbill
		expect(@catalog.all).to eq([killbill])
	end

	it "catalogar 2 elementos" do
		django = Movies.new("django","The whole bloody affair","western")
			@catalog.add_movie django
		killbill = Movies.new("killbill","The whole bloody affair","japones")
			@catalog.add_movie killbill
		expect(@catalog.all).to eq([django, killbill])
	end
	it "to_s 1 elemento" do
		killbill = Movies.new("killbill","The whole bloody affair","japones")
		@catalog.add_movie killbill
		expect(@catalog.to_s).to eq("killbill")
	end

	it "to_s 2 elementos" do
		killbill = Movies.new("killbill","The whole bloody affair","japones")
			@catalog.add_movie killbill
		django = Movies.new("django","The whole bloody affair","western")
			@catalog.add_movie django
		expect(@catalog.to_s).to eq("killbill, django")
	end
	it "search categories" do
		killbill = Movies.new("killbill","The whole bloody affair","japones")
			@catalog.add_movie killbill
		django = Movies.new("django","The whole bloody affair","western")
			@catalog.add_movie django
		expect(@catalog.searchcategory("western")).to eq([django])
		expect(@catalog.searchcategory("japones")).to eq([killbill])
	end
end
