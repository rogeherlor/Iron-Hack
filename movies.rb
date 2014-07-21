class Movies
	attr_accessor :name, :description
	def initialize(name, description)
		@name = name
		@description = description
	end
end

class MovieCatalog
	def initialize
		@list = []
	end
	def add_movie(movie)
		@list.push(movie)
	end
	def all
		return @list
	end
	def to_s
		@list.map { |x| x.name.to_s }.join(', ')
	end
	def alphabetize(rev=false)
		if rev
			@list.sort {|x,y| y.name <=> x.name}.map {|m| m.name}
		else
			@list.sort {|x,y| x.name <=> y.name}.map {|m| m.name}
		end
	end
end
