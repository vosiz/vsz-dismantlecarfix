DismantleAnyCarFix = DismantleAnyCarFix or {}

local Utils = {}
DismantleAnyCarFix.Utils = Utils

function Utils.DropVehicleContents(vehicle)

    if vehicle == nil then
        return
    end

    local square = vehicle:getSquare()
    if square == nil then
        return
    end

    for i = 0, vehicle:getPartCount() - 1 do
        local container = Utils.PartContainer(vehicle:getPartByIndex(i))
        if container ~= nil then
            Utils.DropContainerItems(container, square)
        end
    end

end

function Utils.PartContainer(part)

    if part == nil then
        return nil
    end

    return part:getItemContainer()

end

function Utils.DropContainerItems(container, square)

    -- removing items shifts the java list
    local items      = {}
    local java_items = container:getItems()
    for i = 0, java_items:size() - 1 do
        table.insert(items, java_items:get(i))
    end

    for index, item in ipairs(items) do
        container:Remove(item)
        square:AddWorldInventoryItem(item, ZombRandFloat(0, 0.9), ZombRandFloat(0, 0.9), 0)
    end

end
