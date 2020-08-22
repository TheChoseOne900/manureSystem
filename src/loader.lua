---
-- loader
--
-- loader script for the mod
--
-- Copyright (c) Wopster, 2019

local directory = g_currentModDirectory
local modName = g_currentModName

source(Utils.getFilename("src/placeables/ManureSystemAnimatedObjectExtension.lua", directory))
source(Utils.getFilename("src/misc/ManureSystemFillPlane.lua", directory))

-- DataStructures
source(Utils.getFilename("src/misc/ManureSystemConnectorManager.lua", directory))
source(Utils.getFilename("src/misc/ManureSystemFillArmManager.lua", directory))
source(Utils.getFilename("src/misc/ManureSystemHusbandryModuleLiquidManure.lua", directory))
source(Utils.getFilename("src/misc/ManureSystemBga.lua", directory))

source(Utils.getFilename("src/misc/strategies/connectors/ManureSystemCouplingStrategy.lua", directory))
source(Utils.getFilename("src/misc/strategies/connectors/ManureSystemDockStrategy.lua", directory))

source(Utils.getFilename("src/utils/Logger.lua", directory))
source(Utils.getFilename("src/ManureSystem.lua", directory))

source(Utils.getFilename("src/events/ManureSystemEventBits.lua", directory))
source(Utils.getFilename("src/events/ManureSystemPumpModeEvent.lua", directory))
source(Utils.getFilename("src/events/ManureSystemPumpDirectionEvent.lua", directory))
source(Utils.getFilename("src/events/ManureSystemPumpIsRunningEvent.lua", directory))
source(Utils.getFilename("src/events/ManureSystemPumpIsAllowedEvent.lua", directory))
source(Utils.getFilename("src/events/HoseAttachDetachEvent.lua", directory))
source(Utils.getFilename("src/events/HoseGrabDropEvent.lua", directory))
source(Utils.getFilename("src/events/ManureSystemConnectorIsConnectedEvent.lua", directory))
source(Utils.getFilename("src/events/ManureSystemConnectorManureFlowEvent.lua", directory))
source(Utils.getFilename("src/events/ManureSystemIsMixingEvent.lua", directory))

source(Utils.getFilename("src/utils/ManureSystemUtil.lua", directory))
source(Utils.getFilename("src/utils/ManureSystemXMLUtil.lua", directory))

source(Utils.getFilename("src/hose/HosePlayer.lua", directory))

local manureSystem
local vehicles = {}

local function isEnabled()
    return manureSystem ~= nil
end

local function loadInsertionVehicles()
    local xmlFile = loadXMLFile("ManureSystemInsertionVehicles", Utils.getFilename("resources/insertionVehicles.xml", directory))

    local i = 0
    while true do
        local key = ("vehicles.vehicle(%d)"):format(i)
        if not hasXMLProperty(xmlFile, key) then
            break
        end

        local entry = {}
        entry.xml = getXMLString(xmlFile, key .. ".xml")
        entry.replaceTypeName = modName .. "." .. getXMLString(xmlFile, key .. ".replaceTypeName")
        entry.copySpecializations = hasXMLProperty(xmlFile, key .. ".copySpecializations")

        entry.specializations = {}
        if entry.copySpecializations then
            local s = 0
            while true do
                local specKey = ("%s.copySpecializations.specialization(%d)"):format(key, s)
                if not hasXMLProperty(xmlFile, specKey) then
                    break
                end

                local name = getXMLString(xmlFile, specKey .. "#name")
                table.insert(entry.specializations, name)

                s = s + 1
            end

        end

        vehicles[entry.xml] = entry

        i = i + 1
    end

    delete(xmlFile)
end

local function loadMission(mission)
    assert(g_manureSystem == nil)

    manureSystem = ManureSystem:new(mission, g_inputBinding, g_soundManager, directory, modName)

    getfenv(0)["g_manureSystem"] = manureSystem

    addModEventListener(manureSystem)
end

local function loadedMission(mission, node)
    if not isEnabled() then
        return
    end

    if mission.cancelLoading then
        return
    end

    g_manureSystem:onMissionLoaded(mission)
end

local function loadedItems(mission)
    if not isEnabled() then
        return
    end

    if mission:getIsServer() then
        if mission.missionInfo.savegameDirectory ~= nil and fileExists(mission.missionInfo.savegameDirectory .. "/manureSystem.xml") then
            local xmlFile = loadXMLFile("ManureSystemXML", mission.missionInfo.savegameDirectory .. "/manureSystem.xml")
            if xmlFile ~= nil then
                manureSystem:onMissionLoadFromSavegame(xmlFile)
                delete(xmlFile)
            end
        end
    end
end

local function saveToXMLFile(missionInfo)
    if not isEnabled() then
        return
    end

    if missionInfo.isValid then
        local xmlFile = createXMLFile("ManureSystemXML", missionInfo.savegameDirectory .. "/manureSystem.xml", "manureSystem")
        if xmlFile ~= nil then
            manureSystem:onMissionSaveToSavegame(xmlFile)

            saveXMLFile(xmlFile)
            delete(xmlFile)
        end
    end
end

local function validateVehicleTypes(vehicleTypeManager)
    ManureSystem.addModTranslations(g_i18n)
    ManureSystem.installSpecializations(g_vehicleTypeManager, g_specializationManager, directory, modName)
end

---Unload the mod when the game is closed.
local function unload()
    if not isEnabled() then
        return
    end

    if manureSystem ~= nil then
        manureSystem:delete()
        -- GC
        manureSystem = nil
        getfenv(0)["g_manureSystem"] = nil
    else
        ManureSystem.removeModTranslations(g_i18n)
    end
end

local function vehicleLoad(self, superFunc, vehicleData, ...)
    local _, baseDir = Utils.getModNameAndBaseDirectory(vehicleData.filename)
    local xmlFilename = ManureSystemUtil.replaceSanitized(vehicleData.filename, baseDir, "")

    if vehicles[xmlFilename] ~= nil then
        local data = vehicles[xmlFilename]
        local replacementType = data.replaceTypeName
        local orgEntry = g_vehicleTypeManager:getVehicleTypeByName(vehicleData.typeName)
        local stringParts = StringUtil.splitString(".", vehicleData.typeName)

        local doReplace = orgEntry ~= nil
        if #stringParts ~= 1 then
            local typeModName = unpack(stringParts)
            doReplace = doReplace and not (g_specializationManager:getSpecializationObjectByName(typeModName .. ".manureSystemVehicle") ~= nil)

            if doReplace then
                if data.copySpecializations then
                    for _, name in pairs(data.specializations) do
                        local specName = typeModName .. "." .. name
                        local spec = g_specializationManager:getSpecializationObjectByName(specName)

                        if spec ~= nil then
                            g_vehicleTypeManager:addSpecialization(replacementType, specName)
                        end
                    end

                    data.copySpecializations = false
                end
            end
        end

        if doReplace then
            local typeEntry = g_vehicleTypeManager:getVehicleTypeByName(replacementType)
            if typeEntry ~= nil then
                vehicleData.typeName = replacementType
                self.typeName = replacementType
            end
        end
    end

    return superFunc(self, vehicleData, ...)
end

local function isCoursePlayOrAutoDriveActiveForVehicle(vehicle)
    return (vehicle.cp ~= nil and vehicle.cp.isDriving) or (vehicle.ad ~= nil and vehicle.ad.isActive)
end

local function isCoursePlayOrAutoDriveActive(vehicle)
    if isCoursePlayOrAutoDriveActiveForVehicle(vehicle) then
        return true
    end

    local rootVehicle = vehicle:getRootVehicle()
    return rootVehicle ~= nil and isCoursePlayOrAutoDriveActiveForVehicle(rootVehicle)
end

local function getIsFillTriggerActivatable(trigger, superFunc, vehicle, ...)
    if not isCoursePlayOrAutoDriveActive(vehicle) and trigger.sourceObject ~= nil then
        local owner = trigger.sourceObject.owner
        if (trigger.sourceObject.getConnectorById ~= nil or owner ~= nil and owner.getConnectorById ~= nil) and vehicle.getConnectorById ~= nil then
            if trigger.sourceObject.manureSystemConnectors ~= nil and #trigger.sourceObject.manureSystemConnectors ~= 0
                or owner ~= nil and owner.manureSystemConnectors ~= nil and #owner.manureSystemConnectors ~= 0
            then
                return false
            end
        end
    end

    return superFunc(trigger, vehicle, ...)
end

local function getIsLoadTriggerActivatable(trigger, superFunc, ...)
    if trigger.source ~= nil then
        local owner = trigger.source.owner
        if trigger.source.getConnectorById ~= nil or owner ~= nil and owner.getConnectorById ~= nil then
            if trigger.source.manureSystemConnectors ~= nil and #trigger.source.manureSystemConnectors ~= 0
                or owner ~= nil and owner.manureSystemConnectors ~= nil and #owner.manureSystemConnectors ~= 0
            then
                for _, fillableObject in pairs(trigger.fillableObjects) do
                    if not isCoursePlayOrAutoDriveActive(fillableObject.object) and fillableObject.object.getConnectorById ~= nil then
                        return false
                    end
                end
            end
        end
    end

    return superFunc(trigger, ...)
end

local function init()
    FSBaseMission.delete = Utils.appendedFunction(FSBaseMission.delete, unload)

    loadInsertionVehicles()

    g_placeableTypeManager:addPlaceableType("manureSystemStorage", "ManureSystemStorage", directory .. "src/placeables/ManureSystemStorage.lua")
    g_storeManager:addSpecType("capacityLagoon", "shopListAttributeIconCapacity", ManureSystemStorage.loadSpecValueCapacityLagoon, ManureSystemStorage.getSpecValueCapacityLagoon)

    Mission00.load = Utils.prependedFunction(Mission00.load, loadMission)
    Mission00.loadMission00Finished = Utils.appendedFunction(Mission00.loadMission00Finished, loadedMission)
    Mission00.loadItemsFinished = Utils.appendedFunction(Mission00.loadItemsFinished, loadedItems)

    FSCareerMissionInfo.saveToXMLFile = Utils.appendedFunction(FSCareerMissionInfo.saveToXMLFile, saveToXMLFile)

    VehicleTypeManager.validateVehicleTypes = Utils.prependedFunction(VehicleTypeManager.validateVehicleTypes, validateVehicleTypes)

    Vehicle.load = Utils.overwrittenFunction(Vehicle.load, vehicleLoad)
    FillTrigger.getIsActivatable = Utils.overwrittenFunction(FillTrigger.getIsActivatable, getIsFillTriggerActivatable)
    LoadTrigger.getIsActivatable = Utils.overwrittenFunction(LoadTrigger.getIsActivatable, getIsLoadTriggerActivatable)
end

init()

-------------------------------------------------------------------------------
--- Development only
-------------------------------------------------------------------------------

if g_showDevelopmentWarnings and g_addCheatCommands then
    function Utils.getTimeScaleIndex(timeScale)
        if timeScale >= 12000 then return 7
        elseif timeScale >= 120 then return 6
        elseif timeScale >= 60 then return 5
        elseif timeScale >= 30 then return 4
        elseif timeScale >= 15 then return 3
        elseif timeScale >= 5 then return 2
        end
        return 1
    end

    function Utils.getTimeScaleFromIndex(timeScaleIndex)
        if timeScaleIndex >= 7 then return 12000
        elseif timeScaleIndex >= 6 then return 120
        elseif timeScaleIndex >= 5 then return 60
        elseif timeScaleIndex >= 4 then return 30
        elseif timeScaleIndex >= 3 then return 15
        elseif timeScaleIndex >= 2 then return 5
        end
        return 1
    end
end
