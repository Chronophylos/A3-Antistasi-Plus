private ["_thingX","_playerX"];

private _thingX = cursorObject;
private _playerX = player;

if(isNil "_thingX" || {isNull _thingX}) exitWith {};

if(!(_thingX isKindOf "StaticWeapon")) exitWith {
	["Move Asset Failed", "Only static weapons can be moved."] call SCRT_fnc_misc_showDeniedActionHint;
};

if !(side _playerX == teamPlayer || side _playerX == civilian) exitWith {
	["Move Asset Failed", "Only rebels are allowed to move assets."] call SCRT_fnc_misc_showDeniedActionHint;
};
if (!(isNull attachedTo _thingX)) exitWith {
	["Move Asset Failed", "The asset you want to move is being moved by another player."] call SCRT_fnc_misc_showDeniedActionHint;
};
if (vehicle _playerX != _playerX) exitWith {
	["Move Asset Failed", "You cannot move assets while being in a vehicle."] call SCRT_fnc_misc_showDeniedActionHint;
};
if ({!(isNull _x)} count (attachedObjects _playerX) != 0) exitWith {
	["Move Asset Failed", "You have other things attached, you cannot move this."] call SCRT_fnc_misc_showDeniedActionHint;
};

if !((crew _vehicle) isEqualTo []) exitWith {
	["Move Asset Failed", "Vehicle is occupied by someone, clear crew before moving it."] call SCRT_fnc_misc_showDeniedActionHint;
};

_thingX setVariable ["objectBeingMoved", true];

private _spacing = 2 max (1 - (boundingBoxReal _thingX select 0 select 1));
private _height = 0.1 - (boundingBoxReal _thingX select 0 select 2);
_thingX attachTo [_playerX, [0, _spacing, _height]];

private _fnc_placeObject = {
	params [["_thingX", objNull], ["_playerX", objNull], ["_dropObjectActionIndex", -1]];

	if (isNull _thingX) exitWith {diag_log "[Antistasi] Error, trying to place invalid object"};
	if (isNull _playerX) exitWith {diag_log "[Antistasi] Error, trying to place object with invalid player"};

	if (!(_thingX getVariable ["objectBeingMoved", false])) exitWith {};

	if (_playerX == attachedTo _thingX) then {
		_playerX setVelocity [0,0,0];
		_thingX setVelocity [0,0,0];
		detach _thingX;
	};

	if (_dropObjectActionIndex != -1) then {
		_playerX removeAction _dropObjectActionIndex;
	};

	// Can't find a case where this is ever true, but we'll make sure
	if (local _thingX) then {
		if (isNull group _thingX) then { [_thingX, 2] remoteExec ["setOwner", 2] }
		else { [group _thingX, 2] remoteExec ["setGroupOwner", 2] };
	};

	// Some objects never lose (and even regain) their velocity when detached, becoming lethal
	// On a DS, object locality changes when detached, so we have to remoteexec
	[_thingX, [0,0,0]] remoteExec ["setVelocity", _thingX];

	// Without this, non-unit objects often hang in mid-air
	[_thingX, surfaceNormal position _thingX] remoteExec ["setVectorUp", _thingX];

	// Place on closest surface
	private _pos = getPosASL _thingX;
	private _intersects = lineIntersectsSurfaces [_pos, _pos vectorAdd [0,0,-100], _thingX];
	if (count _intersects > 0) then {
		_thingX setPosASL (_intersects select 0 select 0);
	};

	_thingX setVariable ["objectBeingMoved", false];
};

private _actionX = _playerX addAction ["Drop Here", {
	(_this select 3) params ["_thingX", "_fnc_placeObject"];

	[_thingX, player, (_this select 2)] call _fnc_placeObject;
}, [_thingX, _fnc_placeObject],0,false,true,"",""];

waitUntil {sleep 1; (_playerX != attachedTo _thingX) or (vehicle _playerX != _playerX) or !([_playerX] call A3A_fnc_canFight) or (!isPlayer _playerX)};

[_thingX, _playerX, _actionX] call _fnc_placeObject;

//Save static position if it is inside marker
private _sites = markersX select {sidesX getVariable [_x,sideUnknown] == teamPlayer};
private _markerX = [_sites,_playerX] call BIS_fnc_nearestPosition;
private _size = [_markerX] call A3A_fnc_sizeMarker;
private _positionX = getMarkerPos _markerX;

if (_playerX distance2D _positionX < _size) then {
	// [_thingX, teamPlayer] call A3A_fnc_AIVEHinit;		// will flip/capture if already initialized
    if (!(_thingX in staticsToSave)) then {
        staticsToSave pushBack _thingX;
        publicVariable "staticsToSave";
    };
    _markersX = markersX select {sidesX getVariable [_x,sideUnknown] == teamPlayer};
    _pos = position _thingX;
    if (_markersX findIf {_pos inArea _x} != -1) then {
        ["Static Deployed", "Static weapon has been deployed for use in a nearby zone, and will be used by garrison militia if you leave it here the next time the zone spawns"] call A3A_fnc_customHint;
    };
};
