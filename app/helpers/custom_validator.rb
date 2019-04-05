<<<<<<< HEAD
class MyValidator < ActiveModel::Validator
  def validate(record)
=======
class CustomValidator < ActiveModel::Validator
  def validate?(record)
>>>>>>> f08f2e09c0f90d08b155dbc1a39d39d0d4881e25
    if record.title
      reqs = ["Won't Believe", "Secret", "Top[number]", "Guess"]
      if reqs.detect {|el| record.title.include?(el) }.nil?
        record.errors[:title] << "Must contain clickbait"
      end
    end
  end
<<<<<<< HEAD
end
=======
end 
>>>>>>> f08f2e09c0f90d08b155dbc1a39d39d0d4881e25
