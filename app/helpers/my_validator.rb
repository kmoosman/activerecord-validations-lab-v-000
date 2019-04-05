class MyValidator < ActiveModel::Validator
  def validate(record)
    if record.title
      if !["Won't Believe", "Secret", "Top[number]", "Guess"].include? self.title
      # if clickbait.detect {|el| record.title.include?(el) }.nil?
        record.errors[:title] << "Your title must contain clickbait"
      end
    end
  end
end
