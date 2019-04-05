class MyValidator < ActiveModel::Validator
  def validate(record)
    if record.title
      clickbait = ["Won't Believe", "Secret", "Top[number]", "Guess"]
      if clickbait.detect {|el| record.title.include?(el) }.nil?
        record.errors[:title] << "Must contain clickbait"
      end
    end
  end
end
