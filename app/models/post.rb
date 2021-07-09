class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
    validates_with TitleValidator
    

    # def clickbait?
    #     if self.title.inclusion?{ in: %w('Won't Believe' Secret Guess)}
    #         errors.add(:title, "click baited")
    #     end
    # end



    # def clickbait?
    #     if self.name.include?("Won't Believe", "Secret", "Top[number]", "Guess")
        
    #     else
    #         "clickbait-y?"
    #     end
    # end

    # CBAIT = [
    #     /Won't Believe/,
    #     /Secret/,
    #     /Top [0..9]/,
    #     /Guess/
    # ]

    # def clickbait?
    #     if CBAIT.none? { |bait| bait.match title }
    #         errors.add(:title, "clicbait")
    #     end
    # end


    # CUSTOM = [
    #     "Won't Believe",
    #     "Secret",
    #     "Top[number]",
    #     "Guess"
    # ]
    
    # def clickbait?
    #      if title.present? && CUSTOM.none? { |p| title.match(p)}
    #         errors.add(:title, "clickbait-y... enough?")
    #     end
    # end

end
