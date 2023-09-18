# frozen_string_literal: true

class AddressStates < ApplicationEnumeration
  associate_values(
    :AC, :AL, :AP, :AM, :BA, :CE, :DF, :ES, :GO,
    :MA, :MT, :MS, :MG, :PA, :PB, :PR, :PE, :PI,
    :RR, :RO, :RJ, :RN, :RS, :SC, :SP, :SE, :TO
  )
end
