require "TimedActions/ISBaseTimedAction"
require "Vehicles/TimedActions/ISRemoveBurntVehicle"
require "DismantleAnyCarFix/Utils"

if ISRemoveBurntVehicle == nil then
    return
end

DismantleAnyCarFix = DismantleAnyCarFix or {}

if DismantleAnyCarFix.OriginalComplete == nil then
    DismantleAnyCarFix.OriginalComplete = ISRemoveBurntVehicle.complete
end

local Utils = DismantleAnyCarFix.Utils

-- Vanilla keeps only burnt or smashed vehicles
function ISRemoveBurntVehicle:new(character, vehicle)

    local action = ISBaseTimedAction.new(self, character)
    action.vehicle    = vehicle
    action.stopOnWalk = false
    action.stopOnRun  = false
    action.maxTime    = action:getDuration()

    return action

end

-- Contents would vanish with the car
function ISRemoveBurntVehicle:complete()

    Utils.DropVehicleContents(self.vehicle)

    return DismantleAnyCarFix.OriginalComplete(self)

end
