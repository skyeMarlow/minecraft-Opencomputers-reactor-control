local component = require("component")
local reactor = component.br_reactor

local MAX_ENERGY = 10000000
local MIN_BUFFER = 0.2
local MAX_BUFFER = 0.8
while (true) do
    if reactor.getEnergyStored() < MAX_ENERGY * MIN_BUFFER -- 20%
     -- 20%
    then
        reactor.setActive(true)
    elseif reactor.getEnergyStored() > MAX_ENERGY * MIN_BUFFER then
        reactor.setActive(false)
    end
end

