module StateHandler
  extend self

  def for(state_abbreviation)
    if constants.include?(state_abbreviation.to_sym)
      eval("StateHandler::#{state_abbreviation}")
    else
      StateHandler::UnhandledState #StateHandler::CA by default, likely
    end
  end
end

module StateHandler::UnhandledState
end

module StateHandler::CA
  extend self

  def phone_number
    '+18773289677'
  end

  def button_sequence(ebt_number)
    "ww1ww#{ebt_number}"
  end
end
