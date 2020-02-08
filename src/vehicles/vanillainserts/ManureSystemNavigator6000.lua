----------------------------------------------------------------------------------------------------
-- ManureSystemNavigator6000
----------------------------------------------------------------------------------------------------
-- Purpose: Insert fertilizer function into the Hardi Navigator 6000.
--
-- Copyright (c) Wopster, 2019
----------------------------------------------------------------------------------------------------

---@class ManureSystemNavigator6000
ManureSystemNavigator6000 = {}

function ManureSystemNavigator6000.prerequisitesPresent(specializations)
    return true
end

function ManureSystemNavigator6000.registerEventListeners(vehicleType)
    SpecializationUtil.registerEventListener(vehicleType, "onPreLoad", ManureSystemNavigator6000)
end

function ManureSystemNavigator6000:onPreLoad(savegame)
    setXMLString(self.xmlFile, ("vehicle.manureSystemConnectors.connector(%d)#type"):format(0), "coupling")
    setXMLBool(self.xmlFile, ("vehicle.manureSystemConnectors.connector(%d)#createNode"):format(0), true)
    setXMLString(self.xmlFile, ("vehicle.manureSystemConnectors.connector(%d)#position"):format(0), "0.907 1.122 0.339")
    setXMLString(self.xmlFile, ("vehicle.manureSystemConnectors.connector(%d)#rotation"):format(0), "0 90 -22")

    Logger.info("YO")
end
