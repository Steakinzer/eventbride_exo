class EventValidator < ActiveModel::Validator
  def validate(record)
    if record.duration%5 !=0
      record.errors.add :duration, "Ce n'est pas un multiple de 5"

    end
  end
end