class EventValidator < ActiveModel::Validator
  def validate(record)
    if record.duration%5 !=0
      record.errors.add :duration, "Ce n'est pas un multiple de 5"
    elsif record.start_date < DateTime.now
      record.errors.add :date, "Vous ne pouvez pas creer de dates dans le passé"
    end
  end
end