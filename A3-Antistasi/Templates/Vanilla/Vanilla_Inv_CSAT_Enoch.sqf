////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
//Name Used for notifications
nameInvaders = "CSAT";

//SF Faction
factionMaleInvaders = "OPF_R_F";
//Miltia Faction
if (gameMode == 4) then {factionFIA = ""};

//Flag Images
CSATFlag = "Flag_CSAT_F";
CSATFlagTexture = "\A3\Data_F\Flags\Flag_CSAT_CO.paa";
flagCSATmrk = "flag_CSAT";
if (isServer) then {"CSAT_carrier" setMarkerText "CSAT Carrier"};

//Loot Crate
CSATAmmoBox = "O_supplyCrate_F";

////////////////////////////////////
//   PVP LOADOUTS AND VEHICLES   ///
////////////////////////////////////
//PvP Loadouts
CSATPlayerLoadouts = [
	//Team Leader
	["vanilla_opfor_teamLeader_enoch"] call A3A_fnc_getLoadout,
	//Medic
	["vanilla_opfor_medic_enoch"] call A3A_fnc_getLoadout,
	//Autorifleman
	["vanilla_opfor_machineGunner_enoch"] call A3A_fnc_getLoadout,
	//Marksman
	["vanilla_opfor_marksman_enoch"] call A3A_fnc_getLoadout,
	//Anti-tank Scout
	["vanilla_opfor_AT_enoch"] call A3A_fnc_getLoadout,
	//AT2
	["vanilla_opfor_AT2_enoch"] call A3A_fnc_getLoadout
];

//PVP Player Vehicles
vehCSATPVP = ["O_MRAP_02_F","O_MRAP_02_hmg_F"];

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//Military Units
CSATOfficer = "O_officer_F";
CSATBodyG = "O_V_Soldier_hex_F";
CSATCrew = "O_crew_F";
CSATMarksman = "O_soldier_M_F";
staticCrewInvaders = "O_support_MG_F";
CSATPilot = "O_Pilot_F";

//Militia Units
if (gameMode == 4) then
	{
	FIARifleman = "O_soldierU_F";
	FIAMarksman = "O_soldierU_M_F";
	};

////////////////////////////////////
//            GROUPS             ///
////////////////////////////////////
//Military Groups
//Teams
groupsCSATSentry = ["O_Soldier_GL_F","O_Soldier_F"];
groupsCSATSniper = ["O_sniper_F","O_spotter_F"];
groupsCSATsmall = [groupsCSATSentry,["O_recon_M_F","O_recon_F"],groupsCSATSniper];
//Fireteams
groupsCSATAA = ["O_Soldier_TL_F","O_Soldier_AA_F","O_Soldier_AA_F","O_Soldier_AAA_F"];
groupsCSATAT = ["O_Soldier_TL_F","O_Soldier_AT_F","O_Soldier_AT_F","O_Soldier_AAT_F"];
groupsCSATmid = [["O_Soldier_TL_F","O_Soldier_AR_F","O_Soldier_GL_F","O_Soldier_LAT_F"],groupsCSATAA,groupsCSATAT];
//Squads
CSATSquad = ["O_Soldier_SL_F","O_Soldier_F","O_Soldier_LAT_F","O_soldier_M_F","O_Soldier_TL_F","O_Soldier_AR_F","O_Soldier_A_F","O_medic_F"];
CSATSpecOp = ["O_R_recon_TL_F","O_R_recon_JTAC_F","O_R_recon_M_F","O_R_recon_exp_F","O_R_recon_LAT_F","O_R_recon_medic_F"];
groupsCSATSquad =
	[
	CSATSquad,
	["O_Soldier_SL_F","O_Soldier_AR_F","O_Soldier_GL_F","O_soldier_M_F","O_Soldier_AT_F","O_Soldier_AAT_F","O_Soldier_A_F","O_medic_F"],
	["O_Soldier_SL_F","O_Soldier_LAT_F","O_Soldier_TL_F","O_Soldier_AR_F","O_Soldier_A_F","O_Soldier_LAT_F","O_Soldier_LAT_F","O_medic_F"],
	["O_Soldier_SL_F","O_Soldier_LAT_F","O_Soldier_TL_F","O_Soldier_AR_F","O_Soldier_A_F","O_Soldier_LAT_F","O_Soldier_LAT_F","O_medic_F"],
	["O_Soldier_SL_F","O_Soldier_LAT_F","O_Soldier_TL_F","O_Soldier_AR_F","O_Soldier_A_F","O_Soldier_AA_F","O_Soldier_AAA_F","O_medic_F"],
	["O_Soldier_SL_F","O_Soldier_LAT_F","O_Soldier_TL_F","O_Soldier_AR_F","O_Soldier_A_F","O_engineer_F","O_engineer_F","O_medic_F"]
	];

//Militia Groups
if (gameMode == 4) then
	{
	//Teams
	groupsFIASmall =
		[
		["O_SoldierU_GL_F",FIARifleman],
		[FIAMarksman,FIARifleman],
		["O_soldierU_M_F","O_SoldierU_GL_F"]
		];
	//Fireteams
	groupsFIAMid =
		[
		["O_SoldierU_SL_F","O_SoldierU_GL_F","O_soldierU_AR_F",FIAMarksman],
		["O_SoldierU_SL_F","O_SoldierU_GL_F","O_soldierU_AR_F","O_soldierU_LAT_F"],
		["O_SoldierU_SL_F","O_SoldierU_GL_F","O_soldierU_AR_F","O_engineer_U_F"]
		];
	//Squads
	FIASquad = ["O_SoldierU_SL_F","O_soldierU_AR_F","O_SoldierU_GL_F",FIARifleman,FIARifleman,FIAMarksman,"O_soldierU_LAT_F","O_soldierU_medic_F"];
	groupsFIASquad =
		[
		FIASquad,
		["O_SoldierU_SL_F","O_soldierU_AR_F","O_SoldierU_GL_F",FIARifleman,"O_soldierU_A_F","O_soldierU_exp_F","O_soldierU_LAT_F","O_soldierU_medic_F"]
		];
	};

////////////////////////////////////
//           VEHICLES            ///
////////////////////////////////////
//Military Vehicles
//Lite
vehCSATBike = "O_Quadbike_01_F";
vehCSATLightArmed = ["O_MRAP_02_hmg_F","O_MRAP_02_gmg_F"];
vehCSATLightUnarmed = ["O_MRAP_02_F"];
vehCSATTrucks = ["O_Truck_03_transport_F","O_Truck_03_covered_F"];
vehCSATAmmoTruck = "O_Truck_03_ammo_F";
vehCSATRepairTruck = "O_Truck_03_repair_F";
vehCSATLight = vehCSATLightArmed + vehCSATLightUnarmed;
//Armored
vehCSATAPC = ["O_APC_Wheeled_02_rcws_v2_F","O_APC_Tracked_02_cannon_F"];
vehCSATTanks = ["O_MBT_02_cannon_F"];
vehCSATAA = "O_APC_Tracked_02_AA_F";
vehCSATAttack = vehCSATAPC + vehCSATTanks;
//Boats
vehCSATBoat = "O_Boat_Armed_01_hmg_F";
vehCSATRBoat = "O_Boat_Transport_01_F";
vehCSATBoats = [vehCSATBoat,vehCSATRBoat,"O_APC_Wheeled_02_rcws_v2_F"];
//Planes
vehCSATPlane = "O_Plane_CAS_02_dynamicLoadout_F";
vehCSATPlaneAA = "O_Plane_Fighter_02_F";
vehCSATTransportPlanes = ["O_T_VTOL_02_infantry_F"];
//Heli
vehCSATPatrolHeli = "O_Heli_Light_02_unarmed_F";
vehCSATTransportHelis = ["O_Heli_Transport_04_bench_F",vehCSATPatrolHeli];
vehCSATAttackHelis = ["O_Heli_Attack_02_dynamicLoadout_F","O_Heli_Attack_02_F"];
//UAV
vehCSATUAV = "O_UAV_02_F";
vehCSATUAVSmall = "O_UAV_01_F";
//Artillery
vehCSATMRLS = "O_MBT_02_arty_F";
vehCSATMRLSMags = "32Rnd_155mm_Mo_shells";
//Combined Arrays
vehCSATNormal = vehCSATLight + vehCSATTrucks + [vehCSATAmmoTruck, vehCSATRepairTruck, "O_Truck_03_fuel_F", "O_Truck_03_medical_F"];
vehCSATAir = vehCSATTransportHelis + vehCSATAttackHelis + [vehCSATPlane,vehCSATPlaneAA] + vehCSATTransportPlanes;

//Militia Vehicles
if (gameMode == 4) then
	{
	vehFIAArmedCar = "O_MRAP_02_hmg_F";
	vehFIATruck = "O_Truck_02_transport_F";
	vehFIACar = "O_MRAP_02_F";
	};

////////////////////////////////////
//        STATIC WEAPONS         ///
////////////////////////////////////
//Assembled Statics
CSATMG = "O_HMG_01_high_F";
CSATGMG = "O_GMG_01_high_F";
staticATInvaders = "O_static_AT_F";
staticAAInvaders = ["O_static_AA_F"];
CSATMortar = "O_Mortar_01_F";

CSATAARadar = "O_Radar_System_02_F";
CSATAACiws = "";
CSATAASam = "O_SAM_System_04_F";