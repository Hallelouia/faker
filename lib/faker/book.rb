module Faker
  class Book < Base
    flexible :book

    class << self
      def title
        fetch('book.title')
      end

      def author
        parse('book.author')
      end

      def publisher
        fetch('book.publisher')
      end

      def genre
        fetch('book.genre')
      end
      
      def isbn random
				isbn = ''
				breaks = [2, 3, 5, 11]
				13.times do |n|
					isbn += random.rand(0..9).to_s
					if breaks.include? n
						isbn += '-'
					end
				end
				isbn
			end

      def isbn
        isbn Random.new Time.now.to_i  
			end      
    end
  end
end
