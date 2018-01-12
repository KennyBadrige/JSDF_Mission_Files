[] spawn
{
  private _crate = createVehicle ["C_IDAP_supplycrate_F", position SpawnPad1, [], 0, "NONE"];
  clearItemCargoGlobal _crate;
  clearWeaponCargoGlobal _crate;
  clearBackpackCargoGlobal _crate;
  clearMagazineCargoGlobal _crate;
  [_crate, 3] call ace_cargo_fnc_setSize;
  //Add All The Items!
  _crate addItemCargoGlobal ["ACE_bloodIV", 20];
  _crate addItemCargoGlobal ["ACE_morphine", 60];
  _crate addItemCargoGlobal ["ACE_epinephrine", 40];
  _crate addItemCargoGlobal ["ACE_fieldDressing", 120];
  _crate addItemCargoGlobal ["ACE_bodyBag", 10];
  _crate addItemCargoGlobal ["ACE_EarPlugs", 20];
  hint "Medical Box Spawned!";
  [_crate, true, [0, 1.5, 0], 90] call ace_dragging_fnc_setDraggable;
};
