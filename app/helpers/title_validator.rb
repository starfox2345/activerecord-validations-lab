class TitleValidator < ActiveModel::Validator
    def validate(record)
        if record.title
            words = ["Won't Believe", "Secret", "Top[number]", "Guess"]
            if words.detect {|word| record.title.include?(word) }.nil?
                record.errors[:title] << "clickbait"
            end
        end
    end
end