//
//  Units.swift
//  UnitsApp
//
//  Created by mac on 4/7/25.
//

import Foundation

struct UnitOption {
    let name: String
    let unit: Dimension
}

enum UnitCategory: String, CaseIterable {
    case acceleration = "Acceleration"
    case angle = "Angle"
    case area = "Area"
    case concentrationMass = "Concentration (Mass)"
    case dispersion = "Dispersion"
    case duration = "Duration"
    case electricCharge = "Electric Charge"
    case electricCurrent = "Electric Current"
    case electricPotential = "Electric Potential"
    case electricResistance = "Electric Resistance"
    case energy = "Energy"
    case frequency = "Frequency"
    case fuelEfficiency = "Fuel Efficiency"
    case informationStorage = "Information Storage"
    case illuminance = "Illuminance"
    case length = "Length"
    case mass = "Mass"
    case power = "Power"
    case pressure = "Pressure"
    case speed = "Speed"
    case temperature = "Temperature"
    case volume = "Volume"
    
    var units: [UnitOption] {
        switch self {
        case .acceleration:
            return [
                UnitOption(name: "Meters/Second²", unit: UnitAcceleration.metersPerSecondSquared),
                UnitOption(name: "Gravity", unit: UnitAcceleration.gravity)
            ]
        case .angle:
            return [
                UnitOption(name: "Degrees", unit: UnitAngle.degrees),
                UnitOption(name: "Radians", unit: UnitAngle.radians),
                UnitOption(name: "Revolutions", unit: UnitAngle.revolutions),
                UnitOption(name: "Arc Minutes", unit: UnitAngle.arcMinutes),
                UnitOption(name: "Arc Seconds", unit: UnitAngle.arcSeconds)
            ]
        case .area:
            return [
                UnitOption(name: "Square Meters", unit: UnitArea.squareMeters),
                UnitOption(name: "Acres", unit: UnitArea.acres),
                UnitOption(name: "Hectares", unit: UnitArea.hectares)
            ]
        case .concentrationMass:
            return [
                UnitOption(name: "Grams/Liter", unit: UnitConcentrationMass.gramsPerLiter),
                UnitOption(name: "Milligrams/Deciliter", unit: UnitConcentrationMass.milligramsPerDeciliter)
            ]
        case .dispersion:
            return [
                UnitOption(name: "Parts Per Million", unit: UnitDispersion.partsPerMillion)
            ]
        case .duration:
            return [
                UnitOption(name: "Seconds", unit: UnitDuration.seconds),
                UnitOption(name: "Minutes", unit: UnitDuration.minutes),
                UnitOption(name: "Hours", unit: UnitDuration.hours),
                UnitOption(name: "Milliseconds", unit: UnitDuration.milliseconds),
                UnitOption(name: "Microseconds", unit: UnitDuration.microseconds)
            ]
        case .electricCharge:
            return [
                UnitOption(name: "Coulombs", unit: UnitElectricCharge.coulombs),
                UnitOption(name: "Ampere Hours", unit: UnitElectricCharge.ampereHours),
                UnitOption(name: "Milliampere Hours", unit: UnitElectricCharge.milliampereHours)
            ]
        case .electricCurrent:
            return [
                UnitOption(name: "Amperes", unit: UnitElectricCurrent.amperes),
                UnitOption(name: "Milliamperes", unit: UnitElectricCurrent.milliamperes)
            ]
        case .electricPotential:
            return [
                UnitOption(name: "Volts", unit: UnitElectricPotentialDifference.volts),
                UnitOption(name: "Millivolts", unit: UnitElectricPotentialDifference.millivolts)
            ]
        case .electricResistance:
            return [
                UnitOption(name: "Ohms", unit: UnitElectricResistance.ohms),
                UnitOption(name: "Kiloohms", unit: UnitElectricResistance.kiloohms),
                UnitOption(name: "Megaohms", unit: UnitElectricResistance.megaohms)
            ]
        case .energy:
            return [
                UnitOption(name: "Joules", unit: UnitEnergy.joules),
                UnitOption(name: "Kilojoules", unit: UnitEnergy.kilojoules),
                UnitOption(name: "Calories", unit: UnitEnergy.calories),
                UnitOption(name: "Kilocalories", unit: UnitEnergy.kilocalories),
                UnitOption(name: "Kilowatt Hours", unit: UnitEnergy.kilowattHours)
            ]
        case .frequency:
            return [
                UnitOption(name: "Hertz", unit: UnitFrequency.hertz),
                UnitOption(name: "Kilohertz", unit: UnitFrequency.kilohertz),
                UnitOption(name: "Megahertz", unit: UnitFrequency.megahertz),
                UnitOption(name: "Frames Per Second", unit: UnitFrequency.framesPerSecond)
            ]
        case .fuelEfficiency:
            return [
                UnitOption(name: "Liters/100Km", unit: UnitFuelEfficiency.litersPer100Kilometers),
                UnitOption(name: "Miles/Gallon", unit: UnitFuelEfficiency.milesPerGallon)
            ]
        case .informationStorage:
            return [
                UnitOption(name: "Bytes", unit: UnitInformationStorage.bytes),
                UnitOption(name: "Kilobytes", unit: UnitInformationStorage.kilobytes),
                UnitOption(name: "Megabytes", unit: UnitInformationStorage.megabytes),
                UnitOption(name: "Gigabytes", unit: UnitInformationStorage.gigabytes),
                UnitOption(name: "Bits", unit: UnitInformationStorage.bits),
                UnitOption(name: "Kilobits", unit: UnitInformationStorage.kilobits),
                UnitOption(name: "Megabits", unit: UnitInformationStorage.megabits),
                UnitOption(name: "Gigabits", unit: UnitInformationStorage.gigabits)
            ]
        case .illuminance:
            return [
                UnitOption(name: "Lux", unit: UnitIlluminance.lux)
            ]
        case .length:
            return [
                UnitOption(name: "Meters", unit: UnitLength.meters),
                UnitOption(name: "Kilometers", unit: UnitLength.kilometers),
                UnitOption(name: "Miles", unit: UnitLength.miles),
                UnitOption(name: "Feet", unit: UnitLength.feet),
                UnitOption(name: "Inches", unit: UnitLength.inches),
                UnitOption(name: "Lightyears", unit: UnitLength.lightyears),
                UnitOption(name: "Parsecs", unit: UnitLength.parsecs)
            ]
        case .mass:
            return [
                UnitOption(name: "Grams", unit: UnitMass.grams),
                UnitOption(name: "Kilograms", unit: UnitMass.kilograms),
                UnitOption(name: "Pounds", unit: UnitMass.pounds),
                UnitOption(name: "Ounces", unit: UnitMass.ounces),
                UnitOption(name: "Metric Tons", unit: UnitMass.metricTons)
            ]
        case .power:
            return [
                UnitOption(name: "Watts", unit: UnitPower.watts),
                UnitOption(name: "Kilowatts", unit: UnitPower.kilowatts),
                UnitOption(name: "Horsepower", unit: UnitPower.horsepower)
            ]
        case .pressure:
            return [
                UnitOption(name: "Bars", unit: UnitPressure.bars),
                UnitOption(name: "mmHg", unit: UnitPressure.millimetersOfMercury)
            ]
        case .speed:
            return [
                UnitOption(name: "Meters/Second", unit: UnitSpeed.metersPerSecond),
                UnitOption(name: "Kilometers/Hour", unit: UnitSpeed.kilometersPerHour),
                UnitOption(name: "Miles/Hour", unit: UnitSpeed.milesPerHour),
                UnitOption(name: "Knots", unit: UnitSpeed.knots)
            ]
        case .temperature:
            return [
                UnitOption(name: "Celsius", unit: UnitTemperature.celsius),
                UnitOption(name: "Fahrenheit", unit: UnitTemperature.fahrenheit),
                UnitOption(name: "Kelvin", unit: UnitTemperature.kelvin)
            ]
        case .volume:
            return [
                UnitOption(name: "Liters", unit: UnitVolume.liters),
                UnitOption(name: "Milliliters", unit: UnitVolume.milliliters),
                UnitOption(name: "Gallons", unit: UnitVolume.gallons),
                UnitOption(name: "Cups", unit: UnitVolume.cups),
                UnitOption(name: "Tablespoons", unit: UnitVolume.tablespoons),
                UnitOption(name: "Cubic Meters", unit: UnitVolume.cubicMeters)
            ]
        }
    }
}

