class ClickbaitValidation < ActiveModel::Validator
  def validate(record)
    byebug
      words = ["Won't Believe", "Secret", "Top", "Guess"]
        words.select do |phrase|
        if record.title.include?(phrase)
          record.errors[:title] << "clickbait"
          end
        end
    end
end
