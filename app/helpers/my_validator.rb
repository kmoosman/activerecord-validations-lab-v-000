class MyValidator < ActiveModel::Validator
  def validate(record)
    if record.title
      clickbait = ["Won't Believe", "Secret", "Top[number]", "Guess"]
      if a.include?(record.title)
      # if clickbait.detect {|el| record.title.include?(el) }.nil?
      else
        record.errors[:title] << "Your title must contain clickbait"
      end
    end
  end
end
