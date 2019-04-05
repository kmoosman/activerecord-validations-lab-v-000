class MyValidator < ActiveModel::Validator
  def validate(record)
    if record.title
      clickbait = ["Won't Believe", "Secret", "Top[number]", "Guess"]
      if !clickbait.include?(record.title)
          record.errors[:title] << "Your title must contain clickbait"
      # if clickbait.detect {|el| record.title.include?(el) }.nil?


      end
    end
  end
end
