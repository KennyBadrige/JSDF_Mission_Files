﻿[]execVM "scripts\repetitive_cleanup.sqf";
[]execVM "scripts\FirstPersonInf.sqf";
[]execVM "scripts\ADV_zeus\ADV_users.sqf";
[]execVM "scripts\safezone.sqf";

// Sitting Fix

["ace_satDown", {
    {
        _x attachTo [_this select 0];
    } forEach allMissionObjects "babe_helper";
}] call CBA_fnc_addEventHandler;

["ace_stoodUp", {
    {
        detach _x;
    } forEach allMissionObjects "babe_helper";
}] call CBA_fnc_addEventHandler;

// Set max drag/carry weight
ACE_maxWeightDrag = 1600;
ACE_maxWeightCarry = 600;