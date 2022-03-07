#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.

#Include, item_inventory_clicking.ahk

; Slots 1 to 29, top left to bottom right
; Spell hitboxes are 64x64 squares
; 10px gap in x
; 10px gap in y
; origin is 1176, 456

PrayerClick(slot)
{
    Send {F2}  ; Requires F2 to be configured as prayer tab in game settings
    Sleep 50
	slot -= 1 ; Adjust to zero index
	ItemInventoryClick(slot, 5, 5, 10, 10, 1176, 456, 64, 64)
    Sleep 50
    Send {Esc}  ; Requires F1 to be configures as Invetory tab in game settings
    return
}

ThickSkin()
{
    PrayerClick(1)
    return
}

BurstOfStrength()
{
    PrayerClick(2)
    return
}

ClarityOfThought()
{
    PrayerClick(3)
    return
}

SharpEye()
{
    PrayerClick(4)
    return
}

MysticWill()
{
    PrayerClick(5)
    return
}

RockSkin()
{
    PrayerClick(6)
    return
}

SuperhumanStrength()
{
    PrayerClick(7)
    return
}

ImprovedReflexes()
{
    PrayerClick(8)
    return
}

RapidRestore()
{
    PrayerClick(9)
    return
}

RapidHeal()
{
    PrayerClick(10)
    return
}

ProtectItem()
{
    PrayerClick(11)
    return
}

HawkEye()
{
    PrayerClick(12)
    return
}

MysticLore()
{
    PrayerClick(13)
    return
}

SteelSkin()
{
    PrayerClick(14)
    return
}

UltimateStrength()
{
    PrayerClick(15)
    return
}

IncredibleReflexes()
{
    PrayerClick(16)
    return
}

ProtectFromMagic()
{
    PrayerClick(17)
    return
}

ProtectFromMissiles()
{
    PrayerClick(18)
    return
}

ProtectFromMelee()
{
    PrayerClick(19)
    return
}

EagleEye()
{
    PrayerClick(20)
    return
}

MysticMight()
{
    PrayerClick(21)
    return
}

Retribution()
{
    PrayerClick(22)
    return
}

Redemption()
{
    PrayerClick(23)
    return
}

Smite()
{
    PrayerClick(24)
    return
}

Preserve()
{
    PrayerClick(25)
    return
}

Chivalry()
{
    PrayerClick(26)
    return
}

Piety()
{
    PrayerClick(27)
    return
}

Rigour()
{
    PrayerClick(28)
    return
}

Augury()
{
    PrayerClick(29)
    return
}
