----------------------------------------------------------------------------------------------------
-- ManureSystemPumpMotor
----------------------------------------------------------------------------------------------------
-- Purpose: enables the pump functionality for the vehicle.
--
-- Copyright (c) Wopster, 2019
----------------------------------------------------------------------------------------------------

---@class ManureSystemPumpMotor
ManureSystemPumpMotor = {}
ManureSystemPumpMotor.MOD_NAME = g_currentModName
ManureSystemPumpMotor.MOD_DIR = g_CurrentModDirectory

ManureSystemPumpMotor.PUMP_DIRECTION_IN = 1
ManureSystemPumpMotor.PUMP_DIRECTION_OUT = -1

ManureSystemPumpMotor.AUTO_STOP_MULTIPLIER_IN = 0.99
ManureSystemPumpMotor.AUTO_STOP_MULTIPLIER_OUT = 0.98

ManureSystemPumpMotor.NO_PUMP_MODE = 0
ManureSystemPumpMotor.DEFAULT_FILLUNIT_INDEX = 1

function ManureSystemPumpMotor.prerequisitesPresent(specializations)
    return SpecializationUtil.hasSpecialization(PowerConsumer, specializations)
end

function ManureSystemPumpMotor.registerEvents(vehicleType)
    SpecializationUtil.registerEvent(vehicleType, "onPumpStarted")
    SpecializationUtil.registerEvent(vehicleType, "onPumpStopped")
end

function ManureSystemPumpMotor.registerFunctions(vehicleType)
    SpecializationUtil.registerFunction(vehicleType, "setIsPumpRunning", ManureSystemPumpMotor.setIsPumpRunning)
    SpecializationUtil.registerFunction(vehicleType, "isPumpRunning", ManureSystemPumpMotor.isPumpRunning)
    SpecializationUtil.registerFunction(vehicleType, "canTurnOnPump", ManureSystemPumpMotor.canTurnOnPump)
    SpecializationUtil.registerFunction(vehicleType, "setPumpDirection", ManureSystemPumpMotor.setPumpDirection)
    SpecializationUtil.registerFunction(vehicleType, "getPumpDirection", ManureSystemPumpMotor.getPumpDirection)
    SpecializationUtil.registerFunction(vehicleType, "isPumpingIn", ManureSystemPumpMotor.isPumpingIn)
    SpecializationUtil.registerFunction(vehicleType, "isPumpingOut", ManureSystemPumpMotor.isPumpingOut)
    SpecializationUtil.registerFunction(vehicleType, "handlePump", ManureSystemPumpMotor.handlePump)
    SpecializationUtil.registerFunction(vehicleType, "runPump", ManureSystemPumpMotor.runPump)
    SpecializationUtil.registerFunction(vehicleType, "isStandalonePump", ManureSystemPumpMotor.isStandalonePump)
    SpecializationUtil.registerFunction(vehicleType, "isPumpTargetObjectValid", ManureSystemPumpMotor.isPumpTargetObjectValid)
    SpecializationUtil.registerFunction(vehicleType, "setPumpTargetObject", ManureSystemPumpMotor.setPumpTargetObject)
    SpecializationUtil.registerFunction(vehicleType, "getPumpTargetObject", ManureSystemPumpMotor.getPumpTargetObject)
    SpecializationUtil.registerFunction(vehicleType, "setPumpSourceObject", ManureSystemPumpMotor.setPumpSourceObject)
    SpecializationUtil.registerFunction(vehicleType, "getPumpSourceObject", ManureSystemPumpMotor.getPumpSourceObject)
    SpecializationUtil.registerFunction(vehicleType, "setIsPumpSourceWater", ManureSystemPumpMotor.setIsPumpSourceWater)
    SpecializationUtil.registerFunction(vehicleType, "getIsPumpSourceWater", ManureSystemPumpMotor.getIsPumpSourceWater)
    SpecializationUtil.registerFunction(vehicleType, "setPumpMaxTime", ManureSystemPumpMotor.setPumpMaxTime)
    SpecializationUtil.registerFunction(vehicleType, "getPumpMaxTime", ManureSystemPumpMotor.getPumpMaxTime)
    SpecializationUtil.registerFunction(vehicleType, "getOriginalPumpMaxTime", ManureSystemPumpMotor.getOriginalPumpMaxTime)
end

function ManureSystemPumpMotor.registerOverwrittenFunctions(vehicleType)
    SpecializationUtil.registerOverwrittenFunction(vehicleType, "getIsTurnedOn", ManureSystemPumpMotor.getIsTurnedOn)
    SpecializationUtil.registerOverwrittenFunction(vehicleType, "getCanBeTurnedOn", ManureSystemPumpMotor.getCanBeTurnedOn)
    SpecializationUtil.registerOverwrittenFunction(vehicleType, "getCanToggleTurnedOn", ManureSystemPumpMotor.getCanToggleTurnedOn)
    SpecializationUtil.registerOverwrittenFunction(vehicleType, "getIsWorkAreaActive", ManureSystemPumpMotor.getIsWorkAreaActive)
    SpecializationUtil.registerOverwrittenFunction(vehicleType, "getIsFillUnitActive", ManureSystemPumpMotor.getIsFillUnitActive)
    SpecializationUtil.registerOverwrittenFunction(vehicleType, "getConsumingLoad", ManureSystemPumpMotor.getConsumingLoad)
end

function ManureSystemPumpMotor.registerEventListeners(vehicleType)
    SpecializationUtil.registerEventListener(vehicleType, "onLoad", ManureSystemPumpMotor)
    SpecializationUtil.registerEventListener(vehicleType, "onDelete", ManureSystemPumpMotor)
    SpecializationUtil.registerEventListener(vehicleType, "onUpdate", ManureSystemPumpMotor)
    SpecializationUtil.registerEventListener(vehicleType, "onUpdateTick", ManureSystemPumpMotor)
    SpecializationUtil.registerEventListener(vehicleType, "onReadStream", ManureSystemPumpMotor)
    SpecializationUtil.registerEventListener(vehicleType, "onWriteStream", ManureSystemPumpMotor)
    SpecializationUtil.registerEventListener(vehicleType, "onReadUpdateStream", ManureSystemPumpMotor)
    SpecializationUtil.registerEventListener(vehicleType, "onWriteUpdateStream", ManureSystemPumpMotor)
    SpecializationUtil.registerEventListener(vehicleType, "onRegisterActionEvents", ManureSystemPumpMotor)
end

function ManureSystemPumpMotor:onLoad(savegame)
    self.spec_manureSystemPumpMotor = self[("spec_%s.manureSystemPumpMotor"):format(ManureSystemPumpMotor.MOD_NAME)]
    local spec = self.spec_manureSystemPumpMotor

    spec.pumpIsRunning = false
    spec.pumpHasLoad = true
    spec.pumpHasContact = true
    spec.pumpMode = ManureSystemPumpMotor.NO_PUMP_MODE
    spec.pumpDirection = ManureSystemPumpMotor.PUMP_DIRECTION_IN

    spec.isStandalone = Utils.getNoNil(getXMLBool(self.xmlFile, "vehicle.manureSystemPumpMotor#isStandalone"), false)
    spec.useStandalonePumpText = Utils.getNoNil(getXMLBool(self.xmlFile, "vehicle.manureSystemPumpMotor#useStandalonePumpText"), spec.isStandalone)

    local maxTime = Utils.getNoNil(getXMLFloat(self.xmlFile, "vehicle.manureSystemPumpMotor#toReachMaxEfficiencyTime"), 1500)
    spec.pumpEfficiency = {
        currentLoad = 0,
        currentTime = 0,
        orgMaxTime = maxTime,
        maxTime = maxTime,
        litersPerSecond = Utils.getNoNil(getXMLFloat(self.xmlFile, "vehicle.manureSystemPumpMotor#litersPerSecond"), 100)
    }

    spec.autoStopPercentage = {
        inDirection = Utils.getNoNil(getXMLFloat(self.xmlFile, "vehicle.manureSystemPumpMotor#autoStopPercentageIn"), ManureSystemPumpMotor.AUTO_STOP_MULTIPLIER_IN),
        outDirection = Utils.getNoNil(getXMLFloat(self.xmlFile, "vehicle.manureSystemPumpMotor#autoStopPercentageOut"), ManureSystemPumpMotor.AUTO_STOP_MULTIPLIER_OUT)
    }

    if self.isClient then
        local samplePump = g_soundManager:loadSampleFromXML(self.xmlFile, "vehicle.manureSystemPumpMotor.sounds", "pump", self.baseDirectory, self.components, 1, AudioGroup.VEHICLE, self.i3dMappings, self)
        if samplePump == nil then
            local globalSamples = g_manureSystem:getManureSystemSamples()
            samplePump = g_soundManager:cloneSample(globalSamples.pump, self.components[1].node, self)
        end

        spec.samples = {}
        spec.samples.pump = samplePump
    end

    spec.dirtyFlag = self:getNextDirtyFlag()

    spec.targetObject = nil
    spec.hasTargetObject = false
    spec.targetFillUnitIndex = nil
    spec.sourceObject = nil
    spec.sourceFillUnitIndex = nil
    spec.sourceIsWater = false

    if SpecializationUtil.hasSpecialization(Dischargeable, self.specializations) then
        ManureSystemPumpMotor.disableDischargeable(self)
    end
end

function ManureSystemPumpMotor.disableDischargeable(self)
    local spec = self.spec_dischargeable
    for _, dischargeNode in ipairs(spec.dischargeNodes) do
        if dischargeNode.trigger.node ~= nil then
            removeTrigger(dischargeNode.trigger.node)
        end
    end

    spec = self.spec_fillTriggerVehicle

    if spec.fillTrigger ~= nil then
        spec.fillTrigger:delete()
        spec.fillTrigger = nil
    end
end
function ManureSystemPumpMotor:onDelete()
    if self.isClient then
        local spec = self.spec_manureSystemPumpMotor
        g_soundManager:deleteSamples(spec.samples)
    end
end

function ManureSystemPumpMotor:onReadStream(streamId, connection)
    local pumpIsRunning = streamReadBool(streamId)
    self:setIsPumpRunning(pumpIsRunning, true)
    local pumpDirection = streamReadUIntN(streamId, 10) / 1023 * 2 - 1
    if math.abs(pumpDirection) < 0.00099 then
        pumpDirection = 0 -- set to 0 to avoid noise caused by compression
    end
    self:setPumpDirection(pumpDirection, true)
end

function ManureSystemPumpMotor:onWriteStream(streamId, connection)
    local spec = self.spec_manureSystemPumpMotor
    streamWriteBool(streamId, spec.pumpIsRunning)
    local pumpDirection = (spec.pumpDirection + 1) / 2 * 1023
    streamWriteUIntN(streamId, pumpDirection, 10)
end

function ManureSystemPumpMotor:onReadUpdateStream(streamId, timestamp, connection)
    if connection:getIsServer() then
        local isDirty = streamReadBool(streamId)

        if isDirty then
            local spec = self.spec_manureSystemPumpMotor
            spec.pumpEfficiency.currentLoad = streamReadFloat32(streamId)
            spec.pumpHasLoad = streamReadBool(streamId)
            spec.hasTargetObject = streamReadBool(streamId)
        end
    end
end

function ManureSystemPumpMotor:onWriteUpdateStream(streamId, connection, dirtyMask)
    if not connection:getIsServer() then
        local spec = self.spec_manureSystemPumpMotor

        if streamWriteBool(streamId, bitAND(dirtyMask, spec.dirtyFlag) ~= 0) then
            streamWriteFloat32(streamId, spec.pumpEfficiency.currentLoad)
            streamWriteBool(streamId, spec.pumpHasLoad)
            streamWriteBool(streamId, spec.hasTargetObject)
        end
    end
end

function ManureSystemPumpMotor:onUpdate(dt)
    if self.isClient then
        local canTurnOnPump = self:canTurnOnPump()
        local spec = self.spec_manureSystemPumpMotor

        if canTurnOnPump then
            if spec.actionEvents ~= nil then
                local toggleActionEvent = spec.actionEvents[InputAction.MS_TOGGLE_PUMP_DIRECTION]
                if toggleActionEvent ~= nil then
                    g_inputBinding:setActionEventTextVisibility(toggleActionEvent.actionEventId, not spec.pumpIsRunning)
                end
            end
        end

        local showPumpAction = canTurnOnPump
        if not spec.pumpIsRunning then
            showPumpAction = showPumpAction and spec.hasTargetObject
        else
            showPumpAction = showPumpAction and spec.pumpIsRunning
        end

        if spec.actionEvents ~= nil then
            local pumpActionEvent = spec.actionEvents[InputAction.MS_ACTIVATE_PUMP]
            if pumpActionEvent ~= nil then
                g_inputBinding:setActionEventTextVisibility(pumpActionEvent.actionEventId, showPumpAction)
            end
        end
    end
end

function ManureSystemPumpMotor:onUpdateTick(dt)
    local spec = self.spec_manureSystemPumpMotor
    local isPumpRunning = self:isPumpRunning()

    if self.isClient then
        if isPumpRunning then
            if not g_soundManager:getIsSamplePlaying(spec.samples.pump) then
                g_soundManager:playSample(spec.samples.pump)
            end
        else
            if g_soundManager:getIsSamplePlaying(spec.samples.pump) then
                g_soundManager:stopSample(spec.samples.pump)
            end
        end
    end

    if self.isServer then
        self:handlePump(dt)

        if not self:canTurnOnPump() then
            self:setIsPumpRunning(false)
        end

        local hasTargetObject = self:isPumpTargetObjectValid()
        local hasLoad = hasTargetObject and spec.pumpHasContact

        if isPumpRunning and hasLoad then
            if spec.pumpEfficiency.currentTime < spec.pumpEfficiency.maxTime then
                spec.pumpEfficiency.currentTime = math.min(spec.pumpEfficiency.currentTime + dt, spec.pumpEfficiency.maxTime)
            end

            -- Reset the stop timer for the motor, else it will turn of the vehicle even in manual ignition mode.
            local rootVehicle = self:getRootVehicle()
            if rootVehicle.spec_motorized ~= nil then
                rootVehicle.spec_motorized.motorStopTimer = rootVehicle.spec_motorized.motorStopTimerDuration
            end
        else
            if spec.pumpEfficiency.currentTime > 0 then
                spec.pumpEfficiency.currentTime = math.max(spec.pumpEfficiency.currentTime - dt, 0)
            end
        end

        local sourceObject, sourceFillUnitIndex = self:getPumpSourceObject()
        if sourceObject == nil then
            sourceObject, sourceFillUnitIndex = self, ManureSystemPumpMotor.DEFAULT_FILLUNIT_INDEX
        end

        local isPumpingOut = spec.pumpDirection == ManureSystemPumpMotor.PUMP_DIRECTION_OUT
        if sourceObject:getFillUnitFillLevelPercentage(sourceFillUnitIndex) >= spec.autoStopPercentage.inDirection
            or isPumpingOut and sourceObject:getFillUnitFillLevelPercentage(sourceFillUnitIndex) <= 1 - spec.autoStopPercentage.outDirection
            or isPumpRunning and not hasTargetObject then
            spec.pumpEfficiency.currentLoad = math.random()
        else
            spec.pumpEfficiency.currentLoad = MathUtil.clamp(spec.pumpEfficiency.currentTime / spec.pumpEfficiency.maxTime, 0, 1)
        end

        spec.pumpHasLoad = hasLoad
        spec.hasTargetObject = hasTargetObject

        if spec.pumpEfficiency.currentLoad ~= spec.pumpEfficiency.currentLoadSent
            or spec.pumpHasLoad ~= spec.pumpHasLoadSent then
            spec.pumpEfficiency.currentLoadSent = spec.pumpEfficiency.currentLoad
            spec.pumpHasLoadSent = spec.pumpHasLoad
            self:raiseDirtyFlags(spec.dirtyFlag)
        end

        -- Reset contact
        spec.pumpHasContact = true
    end
end

function ManureSystemPumpMotor:setIsPumpRunning(pumpIsRunning, noEventSend)
    local spec = self.spec_manureSystemPumpMotor

    if pumpIsRunning ~= spec.pumpIsRunning then
        ManureSystemPumpIsRunningEvent.sendEvent(self, pumpIsRunning, noEventSend)

        spec.pumpIsRunning = pumpIsRunning

        local actionEvent = spec.actionEvents[InputAction.MS_ACTIVATE_PUMP]
        local text

        if pumpIsRunning then
            SpecializationUtil.raiseEvent(self, "onPumpStarted")
            text = g_i18n:getText("action_deactivatePump"):format(self.typeDesc)
        else
            SpecializationUtil.raiseEvent(self, "onPumpStopped")
            text = g_i18n:getText("action_activatePump"):format(self.typeDesc)
        end

        if actionEvent ~= nil then
            g_inputBinding:setActionEventText(actionEvent.actionEventId, text)
        end
    end
end

function ManureSystemPumpMotor:isPumpRunning()
    return self.spec_manureSystemPumpMotor.pumpIsRunning
end

function ManureSystemPumpMotor:canTurnOnPump()
    if self.getIsMotorStarted ~= nil then
        return self:getIsMotorStarted()
    end

    local rootAttacherVehicle = self:getRootVehicle()
    if rootAttacherVehicle ~= self then
        if rootAttacherVehicle.getIsMotorStarted ~= nil then
            return rootAttacherVehicle:getIsMotorStarted()
        end
    end

    return true
end

function ManureSystemPumpMotor:getPumpLoadPercentage()
    if self:isPumpRunning() then
        return self.spec_manureSystemPumpMotor.pumpEfficiency.currentLoad
    end

    return 0
end

function ManureSystemPumpMotor:setPumpDirection(pumpDirection, noEventSend)
    local spec = self.spec_manureSystemPumpMotor

    if pumpDirection ~= spec.pumpDirection then
        ManureSystemPumpDirectionEvent.sendEvent(self, pumpDirection, noEventSend)

        spec.pumpDirection = pumpDirection

        local actionEvent = spec.actionEvents[InputAction.MS_TOGGLE_PUMP_DIRECTION]
        if actionEvent ~= nil then
            local pumpDirectionText = self:isPumpingIn() and g_i18n:getText("action_directionOut") or g_i18n:getText("action_directionIn")
            if self:isStandalonePump() and spec.useStandalonePumpText then
                pumpDirectionText = self:isPumpingIn() and g_i18n:getText("action_directionLeftRight") or g_i18n:getText("action_directionRightLeft")
            end

            g_inputBinding:setActionEventText(actionEvent.actionEventId, pumpDirectionText)
        end
    end
end

function ManureSystemPumpMotor:getPumpDirection()
    return self.spec_manureSystemPumpMotor.pumpDirection
end

function ManureSystemPumpMotor:isPumpingIn()
    return self.spec_manureSystemPumpMotor.pumpDirection == ManureSystemPumpMotor.PUMP_DIRECTION_IN
end

function ManureSystemPumpMotor:isPumpingOut()
    return self.spec_manureSystemPumpMotor.pumpDirection == ManureSystemPumpMotor.PUMP_DIRECTION_OUT
end

function ManureSystemPumpMotor:handlePump(dt)
    if not self.isServer then
        return
    end

    if not self:isPumpRunning() then
        return
    end

    local spec = self.spec_manureSystemPumpMotor
    local targetObject, targetFillUnitIndex = self:getPumpTargetObject()
    if targetObject ~= nil then
        local sourceObject, sourceFillUnitIndex = self:getPumpSourceObject()
        if sourceObject == nil then
            sourceObject, sourceFillUnitIndex = self, ManureSystemPumpMotor.DEFAULT_FILLUNIT_INDEX
        end

        if self:isPumpingIn() then
            if sourceObject:getFillUnitFreeCapacity(sourceFillUnitIndex) > 0 then
                local targetFillType = targetObject:getFillUnitFillType(targetFillUnitIndex)

                if sourceObject:getFillUnitAllowsFillType(sourceFillUnitIndex, targetFillType) then
                    local targetFillLevel = targetObject:getFillUnitFillLevel(targetFillUnitIndex)
                    local sourceFillLevel = sourceObject:getFillUnitFillLevel(sourceFillUnitIndex)

                    if targetFillLevel > 0 and sourceFillLevel < sourceObject:getFillUnitCapacity(sourceFillUnitIndex) then
                        if spec.pumpEfficiency.currentLoad > 0 then
                            local deltaFillLevel = math.min((spec.pumpEfficiency.litersPerSecond * spec.pumpEfficiency.currentLoad) * 0.001 * dt, targetFillLevel)
                            self:runPump(sourceObject, sourceFillUnitIndex, targetObject, targetFillUnitIndex, targetFillType, deltaFillLevel)
                        end
                    else
                        self:setIsPumpRunning(false) -- empty
                    end
                else
                    self:setIsPumpRunning(false) -- invalid
                end
            end
        elseif self:isPumpingOut() then
            local sourceFillLevel = sourceObject:getFillUnitFillLevel(sourceFillUnitIndex)
            if sourceFillLevel > 0 then
                local sourceFillType = sourceObject:getFillUnitFillType(sourceFillUnitIndex)

                if targetObject:getFillUnitAllowsFillType(targetFillUnitIndex, sourceFillType) then
                    local deltaFillLevel = math.min((spec.pumpEfficiency.litersPerSecond * spec.pumpEfficiency.currentLoad) * 0.001 * dt, sourceFillLevel)
                    self:runPump(sourceObject, sourceFillUnitIndex, targetObject, targetFillUnitIndex, sourceFillType, deltaFillLevel)
                else
                    self:setIsPumpRunning(false) -- invalid
                end
            else
                self:setIsPumpRunning(false) -- empty
            end
        end
    elseif spec.sourceIsWater then
        local sourceObject, sourceFillUnitIndex = self:getPumpSourceObject()
        if sourceObject == nil then
            sourceObject, sourceFillUnitIndex = self, ManureSystemPumpMotor.DEFAULT_FILLUNIT_INDEX
        end

        if sourceObject:getFillUnitAllowsFillType(sourceFillUnitIndex, FillType.WATER) then
            local sourceFillLevel = sourceObject:getFillUnitFillLevel(sourceFillUnitIndex)
            if sourceFillLevel > 0 or sourceFillLevel < sourceObject:getFillUnitCapacity(sourceFillUnitIndex) then
                local delta = (spec.pumpEfficiency.litersPerSecond * spec.pumpEfficiency.currentLoad) * 0.001 * dt
                sourceObject:addFillUnitFillLevel(sourceObject:getOwnerFarmId(), sourceFillUnitIndex, delta * self:getPumpDirection(), FillType.WATER, ToolType.UNDEFINED, nil)
            else
                self:setIsPumpRunning(false)
            end
        else
            self:setIsPumpRunning(false)
        end
    end
end

function ManureSystemPumpMotor:runPump(sourceObject, sourceFillUnitIndex, targetObject, targetFillUnitIndex, fillType, deltaFill)
    if deltaFill <= 0 then
        return
    end

    deltaFill = deltaFill * self:getPumpDirection()

    local movedFill = targetObject:addFillUnitFillLevel(targetObject:getOwnerFarmId(), targetFillUnitIndex, -deltaFill, fillType, ToolType.UNDEFINED, nil)

    local difference = math.abs(-deltaFill - movedFill)
    if difference > 0.01 then
        local orgMaxTime = self:getOriginalPumpMaxTime()
        local impactTime = orgMaxTime + orgMaxTime * 0.25 * difference
        self:setPumpMaxTime(impactTime)
    end

    if movedFill ~= 0 then
        sourceObject:addFillUnitFillLevel(sourceObject:getOwnerFarmId(), sourceFillUnitIndex, -movedFill, fillType, ToolType.UNDEFINED, nil)
    else
        local spec = self.spec_manureSystemPumpMotor
        spec.pumpHasContact = false
    end

    if self:isPumpingOut() then
        local targetObjectFillLevel = targetObject:getFillUnitFillLevel(targetFillUnitIndex)

        if targetObjectFillLevel >= (targetObject:getFillUnitCapacity(targetFillUnitIndex)) then
            self:setIsPumpRunning(false) -- full
        end
    end
end

function ManureSystemPumpMotor:isStandalonePump()
    return self.spec_manureSystemPumpMotor.isStandalone
end

---Returns true when the target object is valid, false otherwise.
function ManureSystemPumpMotor:isPumpTargetObjectValid()
    local spec = self.spec_manureSystemPumpMotor

    if spec.sourceIsWater then
        return true
    end

    local object = spec.targetObject
    if object ~= nil then
        -- When the target is a standalone pump we don't allow.
        if object.isStandalonePump ~= nil and object:isStandalonePump() then
            return false
        end

        return true
    end

    return false
end

function ManureSystemPumpMotor:setPumpTargetObject(object, fillUnitIndex)
    self.spec_manureSystemPumpMotor.targetObject = object
    self.spec_manureSystemPumpMotor.targetFillUnitIndex = fillUnitIndex
end

function ManureSystemPumpMotor:getPumpTargetObject()
    return self.spec_manureSystemPumpMotor.targetObject, self.spec_manureSystemPumpMotor.targetFillUnitIndex
end

function ManureSystemPumpMotor:setPumpSourceObject(object, fillUnitIndex)
    self.spec_manureSystemPumpMotor.sourceObject = object
    self.spec_manureSystemPumpMotor.sourceFillUnitIndex = fillUnitIndex
end

function ManureSystemPumpMotor:getPumpSourceObject()
    return self.spec_manureSystemPumpMotor.sourceObject, self.spec_manureSystemPumpMotor.sourceFillUnitIndex
end

function ManureSystemPumpMotor:setIsPumpSourceWater(isWater)
    self.spec_manureSystemPumpMotor.sourceIsWater = isWater
end

function ManureSystemPumpMotor:getIsPumpSourceWater()
    return self.spec_manureSystemPumpMotor.sourceIsWater
end

function ManureSystemPumpMotor.getAttachedPumpSourceObject(object, fillType, rootObject, searchedImplements)
    if fillType == nil or object == nil then
        return nil
    end

    if rootObject == nil then
        rootObject = object
    end

    if object ~= rootObject and SpecializationUtil.hasSpecialization(FillUnit, object.specializations) then
        local fillUnits = object:getFillUnits()
        for fillUnitIndex, _ in ipairs(fillUnits) do
            if object:getFillUnitAllowsFillType(fillUnitIndex, fillType) or fillType == FillType.UNKNOWN then
                return object, fillUnitIndex
            end
        end
    end

    if searchedImplements == nil then
        local attachedImplements
        if object.getAttacherVehicle ~= nil then
            local attacherVehicle = object:getAttacherVehicle()
            attachedImplements = attacherVehicle:getAttachedImplements()
        else
            attachedImplements = object:getAttachedImplements()
        end

        if attachedImplements ~= nil then
            for _, implement in ipairs(attachedImplements) do
                if implement.object ~= nil and implement.object ~= object then
                    local implementFound, fillUnitIndexFound = ManureSystemPumpMotor.getAttachedPumpSourceObject(implement.object, fillType, rootObject, true)

                    if implementFound ~= nil then
                        return implementFound, fillUnitIndexFound
                    end
                end
            end
        end
    end

    return nil
end

function ManureSystemPumpMotor:getOriginalPumpMaxTime()
    return self.spec_manureSystemPumpMotor.pumpEfficiency.orgMaxTime
end

function ManureSystemPumpMotor:setPumpMaxTime(maxTime)
    self.spec_manureSystemPumpMotor.pumpEfficiency.maxTime = maxTime
end

function ManureSystemPumpMotor:getPumpMaxTime()
    return self.spec_manureSystemPumpMotor.pumpEfficiency.maxTime
end

function ManureSystemPumpMotor:getIsTurnedOn(superFunc)
    if self:isPumpRunning() then
        return true
    end

    return superFunc(self)
end

function ManureSystemPumpMotor:getCanBeTurnedOn(superFunc)
    if self:isPumpRunning() then
        return false
    end

    return superFunc(self)
end

function ManureSystemPumpMotor:getCanToggleTurnedOn(superFunc)
    if self:isPumpRunning() then
        return false
    end

    if self:isStandalonePump() then
        return false
    end

    return superFunc(self)
end

function ManureSystemPumpMotor:getIsWorkAreaActive(superFunc, workArea)
    if self:isPumpRunning() then
        return false
    end

    return superFunc(self, workArea)
end

function ManureSystemPumpMotor:getIsFillUnitActive(superFunc, fillUnitIndex)
    -- We don't allow spraying water as fertilizer.
    if self:getFillUnitFillType(fillUnitIndex) == FillType.WATER then
        return false
    end

    return superFunc(self, fillUnitIndex)
end

---Calculate the load based on the liters per second.
function ManureSystemPumpMotor:getConsumingLoad(superFunc)
    local value, count = superFunc(self)

    local spec = self.spec_manureSystemPumpMotor
    local load = spec.pumpEfficiency.currentLoad
    return value + load, count + 1
end

function ManureSystemPumpMotor:onRegisterActionEvents(isActiveForInput, isActiveForInputIgnoreSelection)
    if self.isClient then
        local spec = self.spec_manureSystemPumpMotor

        self:clearActionEventsTable(spec.actionEvents)

        if isActiveForInput then
            local _, actionEventIdTogglePump = self:addActionEvent(spec.actionEvents, InputAction.MS_ACTIVATE_PUMP, self, ManureSystemPumpMotor.actionEventTogglePump, false, true, false, true, nil, nil, true)
            local _, actionEventIdTogglePumpDirection = self:addActionEvent(spec.actionEvents, InputAction.MS_TOGGLE_PUMP_DIRECTION, self, ManureSystemPumpMotor.actionEventTogglePumpDirection, false, true, false, true, nil, nil, true)

            local text = g_i18n:getText("action_activatePump"):format(self.typeDesc)
            if self:isPumpRunning() then
                text = g_i18n:getText("action_deactivatePump"):format(self.typeDesc)
            end
            g_inputBinding:setActionEventText(actionEventIdTogglePump, text)
            g_inputBinding:setActionEventTextVisibility(actionEventIdTogglePump, true)
            g_inputBinding:setActionEventTextPriority(actionEventIdTogglePump, GS_PRIO_HIGH)

            local pumpDirectionText = self:isPumpingIn() and g_i18n:getText("action_directionOut") or g_i18n:getText("action_directionIn")
            if self:isStandalonePump() and spec.useStandalonePumpText then
                pumpDirectionText = self:isPumpingIn() and g_i18n:getText("action_directionLeftRight") or g_i18n:getText("action_directionRightLeft")
            end

            g_inputBinding:setActionEventText(actionEventIdTogglePumpDirection, pumpDirectionText)
            g_inputBinding:setActionEventTextVisibility(actionEventIdTogglePumpDirection, true)
            g_inputBinding:setActionEventTextPriority(actionEventIdTogglePumpDirection, GS_PRIO_NORMAL)
        end
    end
end

function ManureSystemPumpMotor.actionEventTogglePump(self, actionName, inputValue, callbackState, isAnalog)
    local spec = self.spec_manureSystemPumpMotor
    local allowAction = self:canTurnOnPump()
    if not spec.pumpIsRunning then
        allowAction = allowAction and spec.hasTargetObject
    else
        allowAction = allowAction and spec.pumpIsRunning
    end

    if allowAction then
        self:setIsPumpRunning(not spec.pumpIsRunning)
    end
end

function ManureSystemPumpMotor.actionEventTogglePumpDirection(self, actionName, inputValue, callbackState, isAnalog)
    if not self:isPumpRunning() then
        local spec = self.spec_manureSystemPumpMotor
        self:setPumpDirection(-spec.pumpDirection)
    end
end

g_soundManager:registerModifierType("PUMP_LOAD", ManureSystemPumpMotor.getPumpLoadPercentage)
