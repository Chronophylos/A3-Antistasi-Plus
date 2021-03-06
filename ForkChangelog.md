## Changelog

### 1.4.2
- Added Assign as Loot Vehicle commander action (Y menu, ability to give autoloot capabilities to any wheeled or tracked vehicle)
- Fixed wrong money reward for completing Ambush Officer and Destroy Artillery tasks
- Slightly lowered prices for vehicles in Vehicles Market
- Revive movement delay fix rollback due inconsistent work on some configurations that leads to no player actions bug
- Rebel attacks waves capped at 3 (no more 2-hour airport/milbase defence slog)
- Fixed another bug that contributed to neverending rebel attack bug
- Fixed trader terminal JIP issue

### 1.4.1
- Upgrade to 2.3.2 Community Version
- Increased base attack timings (3600 seconds -> 5400 seconds for base value, 600 seconds->900 seconds for subsequent additions)
- Mag Repack mission parameter
- Removed Sum Similar Weapons to Unlock parameter (tied functionality is always on from this point)
- Fixed silent HR update on POW recruitment
- Independent params page for Altis version to reduce the confusion with settings for other maps
- Improvements to position searching algorhitms on Rescue Smugglers mission
- The Great Price Reduction on arms dealer weapon store (up to 2x price reduction depending on item)
- Increased Destroy Artillery mission time limit (1->90)
- Removed membership requirement in "Move Static Weapon" action
- Excluded pistols from similar weapons to unlock system due to CUP base classes issues
- Reduced Waved Attack time limit (60 minutes -> 45 minutes)
- (CUP) Removed Skoda Octavia and Volkswagen Golf from civilian vehicle pool due to broken LODs
- (CUP) Hilux with UB-32 pylon replaced with Hilux with Podnos mortar
- Arms Dealer Store on HQ mission parameter (when turned on Arms Dealer store is available right from the start on the HQ in new special terminal, will work only in sessions where arms dealer isn't found yet, also it will disable arms dealer task)
- New rebel airstrike type: Supply Drop (filled with magazines for player's and commander's AI mates weapons, available through commander airstrike menu on Y key)
- Greatly increased chances to obtain Find the Arms Dealer task (5%->25% from interrogations, 20%->40% from documents steal, 25%->60% from laptop hacks)
- Grab Money From Faction Pool money amount changed from 1000 to 500
- Added PDW2000 as starting weapon in vanilla templates
- Improvements and optimizations to Kill Collaborationist mission
- Rebel AA emplacements are occupied with AA Missile Specialists (when AA launchers are unlocked)
- Increased price of AA Emplacement (1200->1750) due to it's potential huge firepower
- Enemy AI Skillcap Aiming Speed paremeter fix
- Added forced game ending when both CUP Units/Vehicles/Weapons and RHS turned on simultaneosly (since it is not supported mode that leads to a lot of errors and incosistent experience)
- Removed ability to move Arms Dealer Store to rebel HQ (never worked properly)
- Removed unused code (leads to slight mission file size reduction)

### 1.4
- New mission types: Prevent Artillery Strike, Ambush Officer, Kill Collaborationist, Seize Airdrop, Rescue Smugglers
- Establish roadblock, watchpost, AA Emplacement or AT Emplacement action (Y menu, commander section)
- Share Faction Money action (Y menu, commander section)
- Move Static Weapon action (Y menu)
- Napf map support
- Chernarus 2.0 map support (Beta)
- Move Arms Dealer to rebel HQ laptop action
- AI aiming accuracy, aiming shake and aiming speed capped by general server AI difficulty settings
- AI soldiers and ammo boxes have no NVGS until war level 4 (attempt to fix balance issue where rebels have more NVGs than regular armed forces early game)
- Rebel AI training cap increased from 40 to 50
- Unlocked items (Arsenal) will be removed from trader stock on each arsenal tick 
- Fixed movement delay after revive (non-ACE only)
- Grab 1000$ from faction pool bugfix (less than 1000$ situation)
- Individual fast travel edge cases bugfix
- Loot truck money found localized string fix
- Early CSAT attacks fix (vehCSATTruck error)
- Loot truck no longer grants reputation increase to everyone on money share
- Helipad spawn pool extension (transport helicopters starting war level 3, small chance to spawn attack helicopter starting war level 8)
- Increased vehicle detection radius for arms dealer store
- Increased vehicle cost on selling
- Ability to sell cargo, flatbed trucks and police cars
- Improvements to trader position search algorhitm
- Mortars on milbases, outposts and airports will be surrounded by sandbags
- Fixed static weapon bags instead of normal ones with cargo capacity on AI rebels
- Reworked Sum Similar Weapons to Unlock mission parameter - no excess weapons and parasite duplicates (requires starting new game, since previous arsenal is already plagued with dupes)
- Reduced count of players required to unflip vehicle from 4 to 3
- Fixed PVP player vehicle ejection
- Fixed ability to buy vehicles from black market dealer even if player has no money
- Increased base attack timing (less frequent attacks on rebels, should resolve problem when rebels are constantly bombed in stone age by neverending attacks from airbases or carriers)
- Whiteboard texture is back
- (CUP) EUROFOR faction
- (CUP) Occupant Side mission parameter (CDF or EUROFOR)
- (CUP) MT-LB is capable to carry ammo boxes
- (CUP, Altis) Land Rover, MTVR militia trucks and cars for BLUFOR militia
- (CUP) CDF Tank pool fix
- (RHS) US unit roster (mission parameter)
- (Altis) new outpost
- (Taviana) Removed preplaced props near mortar emplacements
- (Taviana) Misson file size reduction, slightly lowered loading times
- (Taviana) Additional Police stations in cities to expand possible Kill Collaborationist sites

### 1.0.3
- Aegis mod detection fix
- Added AUR 90 series in the arms dealer's store (Aegis)
- Fixed AA placement on Control Tower

### 1.0.2
- Fixed neverending BLUFOR/OPFOR attacks

### 1.0.1
- Fixed hangar explosion on spawn (Taviana)
- Misson size reduction, slightly lowered loading times (Taviana)
- Weapon prices little tuning 
- SAM Site adjustment - if template has no CIWS vehicle, default AA will be spawned instead
- Altis BLUFOR version release
- A few new control markers
- Tuned excessive logging on BLUFOR squad spawn (less spam to .rpt)
  
### 1.0
- Upgrade to 2.3.1 Community Version 
- Full Arma 3 Atlas, Arma 3 Aegis, Arma 3 Atlas - Opposing Forces, Arma 3 - Police support (unit roster, PVP loadouts, vehicle market, arms dealer store, tiered unit configs)
- Full CUP Vehicles, CUP Weapons, CUP Units support (unit roster, PVP loadouts, vehicle market, arms dealer store, technicals store, tiered unit configs)
- Time Multiplier mission parameter (Experimental)
- Pursuers - punisher squad to shake things up on stale moments (optional, mission parameter)
- New outpost type: Military Base. Heavily guarded outpost with vehicles and SAM site
- Added Unflip Vehicle action (Y menu, requires 4 people to unflip the car, heavy vehicles require repair vehicle in proximity)
- SAM sites
- Altis support - more points of interest, military base markers
- Multiple vehicle tiers on Vehicle Market (use arrow keys to switch tiers, requires certain war levels to unlock next tier vehicle) 
- Player marker radio requirement change rollback
- Planes could be put into garage without nearest airport check
- Individual rebel salary - each rebel recieves his own paycheck, scales with overall side income
- Bodyguard has been replaced with proper specops unit (affects BLUFOR SpecOps squad)
- Invaders uses GMGs on roablocks and bases (works everywhere except RHS since there is no GMG on high tripod)
- Tank pool for BLUFOR and OPFOR sides now includes multiple tank variants 
- Static AA pool (RHS, CUP)
- Technicals store (CUP only, accessable through vehicle box on base)
- Lowered prices for some RHS weapons
- Fixed some minor loot truck issues 
- Removed Clear Forest action on trader's laptop since this action already applies on initial trader spawn 
- More variety to static weapons on High Cargo Towers
- Small IED in the store (Misc section)
- Both Kozilce variants in the starting equipment (RHS)
- (Taviana) Some airports and outposts has been replaced with new Military Base outpost type
- (Taviana) Another wreck clearance pass
- (Taviana) Seaport placement adjustments
- (Taviana) Bank buildings fix
- (Taviana) Bridges fix
- Removed Infantry Unit Tiers setting (the feature is still there but can't be turned off)
- Removed True Viking mod support (Antistasi Units template)

### 0.6
- New mission type: Salvage Helicrash
- Reenabled Destroy Vehicle/Helicopter mission along with some fixes and changes to this mission from unreleased community version
- Ability to buy military aircraft at black market
- Ability to buy AT Offroad at vehicle crate on rebel HQ
- Fixed inability to call rebel airstrike when commander is not a host
- Attempt to mitigate vehicle placement issue on Vehicle Market (use SHIFT key for accurate vehicle placement that ignores terrain gradient and obstacles)
- Localized POW actions and outcomes
- "Grab From Faction Pool" action money amount increased from 100 to 1000
- Releasing POWs will give small amount of money to releasing player from this moment (paycheck depends on current aggro level, applies to occupant POWs only, starts from war level 4)
- 3D icons above uncoscious players (optional, mission parameter)
- Individual Fast Travel (optional, mission parameter)
- When in engagements, AI squads without NVGs will launch flares at night from this moment (vanilla, CUP and RHS flares supported)
- Loot truck gives money to everyone, not only players in proximity from now
- Gather Loot systemChat messages will be transmitted only to players in proximity, not everyone (as it was before)
- Sum Similar Weapons To Unlock mission parameter (sums same weapons with different color to unlock them all to use without limit, optional, mission parameter)
- Bunkers on AT roablocks replaced with sandbags since ordinary sandbag bunkers rendered them useless due to blocking line of sight
- Disabled FFAA and 3CB support since they are not compatible with any of Antistasi Plus features
- Airports will be guarded by vehicles and helicopters (on some cases)
- SystemChat log messages (separate mission parameter, debug purposes)
- Removed radius check for task completion check (basically, every rebel, not only those who in task proximity, will recieve paycheck for task completion)
- Successful task completion will give money to everyone, not only players in proximity
- Raised Train AI skillcap from 20 to 40
- Raised base prices for vehicles on vehicle crate (about 25%-40% increase)
- Removed radio requirement for player markers on map (since it breaks a lot for some reason)
- Boat spawnpoints have been moved closer to cities to ensure that they will spawn at all
- Livonia military buildings support (mostly for future Antistasi Plus ports)
- UI tweaks

### 0.4.4
- Fixed serialization of trader quest completion parameter on dedicated servers and HCs
- Fixed incorrect trader creation function call on dedicated servers and HCs
- Fixed Bug with gearless and weaponless helicopter troops
- Fixed some .rpt errors tied to HALs store, disabled debug mode for it
- Attempt to fix no SpecOps units at Assassinate SpecOps mission location bug
- Few new control markers
- Moved initial HQ placement to Taviana Zoo (safest place on island)
- little roadwreck purge on Taviana's south part

### 0.4.3
- Fixed wrong classname on one entry at arms dealer store for Antistasi Units weapons pool
- "Clear Forest" action on arms dealer's laptop now properly works on dedicated server
- Fixed inability to place black market vehicle in some cases on dedicated server
- Fixed no weapon market action for JIPs and some unidentified cases
- Fixed no backpack removal on bodies after using loot truck on multiplayer environment
- Money items from bodies will be shared between players in proximity after using loot truck action (as it already happens with money laying on ground)
- Louder loot truck action
- Clear Forest action on trader's laptop could be used by everyone from now (not only side's commander, as it was before)
- Fixed "Undefined variable in expression: isinfantryunittiersenabled" error
- Added 25% chance to obtain information about arms dealer after hacking a laptop
- (TFAR only) Ability to use a radio while laying wounded
- Randomised money items position on tables
- Fixed inability to get Destroy Antenna task from Petros
- Fixed officer interrogation bug
- The Great Roadwreck Purge
- HallyG store framework 1.5.0 update

### 0.4.1
- Fixed wrong text on vehicle market entries
- "Clear Forest" action on arms dealer's laptop
- Fixed inability to buy vehicles on vehicle market


### 0.4
- Updgrade to stable release of 2.3 Antistasi Community Version
- New Find the Arms Dealer task type (can be obtained via intel search/interrogation)
- Arms Dealer with the ability to directly sell weapons, magazines, items etc
- New pickupable item - money. Banknotes can be on outpost tables, on traitor, civilian vehicles. More places and items will come in future.
- Black Market functionality moved from Petros to Arms Dealer
- Removed ability to buy artillery and loot boxes on black market
- Radio tower placements remade, most of them 
- Loot Bodies and Cargo sound bug fixed
- Additional control zones, 2 new outposts


### 0.2.1
- Fixed bug with CHDKZ flagpole
- Added Infantry Units Tiers setting 


### 0.2
- Upgrade to 2.3 (still unstable) Antistasi Community Version
- Fixed bug with commander squads spawn
- Fixed bug with not working Fatal Wounds mission parameter
- Mag Repack no longer can be accessed while wounded
- Fixed CHDKZ flag issue
- Background Blur Effect appliance on Antistasi menus
- More radio towers to cover all landmass on islands
- Antistasi Units template adjustment
- Removed IFA support due to nonfunctional template at the moment
- Reduced static objects quantity on map
- Reduced number of control zones
- Default Rebels HQ position moved on abandoned airfield
- Both Kozlice variants added as starting weapons on a vanilla template
- Infantry unit tiers enabled for RHS
- Starting equipment adjustment for RHS template

### 0.1
- Taviana support
- Special truck with ability to autoloot bodies around the truck to reduce tediousness of looting enemy (can be bought on Civilian section)
- Integrated Mag Repack script (menu can be accessed via Ctrl+R hotkey)
- Black Market - possibility to spend money on weapons, vehicles, aircrafts et cetera (can be accessed via Petros when seaport is captured, based on according Antistasi Singleplayer feature, credits to GospelG)
- Infantry unit tiers based on current war level, the bigger war level - the better enemy's infantry units equipment (requires Antistasi Units mod)