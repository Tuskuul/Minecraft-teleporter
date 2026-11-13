WOLFIE LINKED STONE PORTALS v2.2
Minecraft Java Edition 26.3 | Server-side datapack, vanilla clients

DESTINATIONS PAGE UPDATE (STILL v2.2)
Replace the previous v2.2 ZIP with this updated v2.2 ZIP, then /reload or restart.
The public release number and filename stay v2.2. Existing core names, owners,
Home, routes and recipes are preserved. Do not run uninstall.

RIGHT-CLICK FLOW
Right-click a valid opening -> Portal page -> Destinations -> select a name.
The opening page has Destinations, Home and Settings buttons.
Destinations is a separate compact page with six portals per page and conditional
Next/Previous controls. The current portal and incomplete frames are excluded.
A Home shortcut stays at the top whenever a different valid Home exists.
Hover a destination to see its dimension, coordinates and portal ID.
If none exist, the page explains that and offers Refresh.
The naming keyboard also has a Go key which opens Destinations directly.
OK still saves your name; Go does not save an unfinished naming edit.

SETTINGS FLOW
Portal -> Settings -> Name / rename, Walk-through link, Clear link, Set as Home.
Walk-through link opens the same destination list in configuration mode.
Choosing there sets the portal's outgoing route; choosing on Destinations
starts a trip. Home works as either a trip or a configured destination.
Back returns to the main Portal page. Close/Escape dismisses the menu.
Only the core owner can change settings; anyone can use destinations.

UPGRADE FROM v2.0 / v2.1
Remove the older portal ZIP, install this v2.2 ZIP, then /reload or restart.
Names, owners, Home, destinations, recipes, and placed cores are preserved.
Do not run uninstall and do not rebuild your portals. Keep one version installed.

COMPACT NAMING WINDOW
The keys now use a small 10-column QWERTY layout with 1-0 across the top.
Keys are 24 GUI units wide, down from 60; the old oversized control buttons
are removed from the keyboard grid. Instructions are shortened to avoid a
scrolling screen at typical GUI scales. Extremely high GUI scales can still
force Minecraft's built-in dialog scrolling.

Sp = space; left arrow = backspace; up arrow = upper/lower case.
Clr = clear; OK = save; ellipsis (...) = refresh name preview; return arrow
returns to the main Portal page. Go opens Destinations directly. Hover each control for its full description.
Names are saved as you click. There are NO AUTOMATIC preview refreshes while
entering letters: click the ellipsis button when you want to check the preview.
OK saves the actual entered name even if you have not refreshed the preview.
This avoids repeatedly replacing the dialog and re-running its client layout.

FPS WHILE A MENU IS OPEN
The pack cannot disable Minecraft's client-side menu background blur. If FPS
falls as soon as any dialog opens, even without clicking, set Menu Background
Blur to zero in Accessibility Settings and compare. This is a diagnostic step,
not a promise that blur is the sole cause. The world and shader scene continue
rendering behind the window in multiplayer.
Incremental frame checks and Home/route safety checks from v2.1 are retained.
Client FPS and actual menu rendering need in-game confirmation.

UPGRADE FROM v1.0
Remove the old v1.0 ZIP/folder from your world's datapacks folder. Install only
this v2 ZIP (leave it zipped), then /reload, or restart the server.
Do NOT run the old uninstall function during an upgrade: it deletes records.
Existing placed cores migrate automatically as their chunks load. Their names
are kept, but v1's matching-sign pair rule is replaced by the destination menu.
You must choose a walk-through destination again, or use the new Home route.
Signs can now be removed. Existing crafted cores still register when placed.
Legacy cores have no stored owner, so the first player to manage one claims it.

RECIPE (UNCHANGED)
8 CHISELED STONE BRICKS around 1 WOODEN PLANK -> Portal Core.
A regular lodestone + 1 plank (shapeless) -> reattuned Portal Core.
Mined cores drop normal lodestones; reattune one before placing it again.
Test command in game: /function wolfie_portals:give_core
Console: execute as PlayerName run function wolfie_portals:give_core

FRAME
Use the same rectangular SIZE rules as a Nether portal:
- Empty opening: 2 to 21 blocks wide, 3 to 21 blocks high.
- Outside dimensions: 4 to 23 wide, 5 to 23 high.
- All four corners are OPTIONAL and can be decorative blocks.
- Vertical rectangles, either horizontal orientation; no arches/round portals.
- Put ONE Portal Core anywhere in the bottom row beneath the empty opening.
  Do not put the core in a corner or side pillar.
- The rest of the required border must be supported full stone blocks.
  Slabs, stairs and walls do not count. The interior must stay air.
No wall sign, flint and steel, or ignition is needed.

SUPPORTED FRAME BLOCKS (mix freely)
Stone, smooth stone, cobblestone, mossy cobblestone; regular/mossy/cracked/
chiseled stone bricks; deepslate, cobbled/polished deepslate, deepslate bricks
and tiles. Decorative corners can be anything, since corners are not checked.
See BUILD_GUIDE.png for the minimum frame and a summary.

NAME THE PORTAL
Placing a crafted core opens a naming window, even before the frame is done.
Choose letters, digits, spaces, hyphens or underscores, then OK. Maximum 24
characters. Backspace, Clear and upper/lower case controls are included.
This is a BUTTON keyboard, not a typing field: vanilla datapacks cannot receive
free-text dialog replies from ordinary players. No OP permissions are needed.
If you close the prompt, finish the frame and right-click its opening, then
choose Name / rename. Naming alone does not link portals by matching text.
Names are labels; the pack uses stable IDs internally. Distinct names are best.

RIGHT-CLICK TO CHOOSE
Right-click anywhere inside a valid portal opening from close enough to reach
it. Choose Destinations on the Portal page to list other registered intact
portals, including portals in other vanilla dimensions. Pages hold six entries.
Click a destination to travel there. That trip does not change permanent links.
Stay near the source during the half-second loading delay.
The frame must be complete before the opening can receive right-clicks.
The visible effect remains purple particles; it is not a Nether portal block.

WALK-THROUGH DESTINATION
The core's owner can select Settings -> Walk-through link, then select another
portal. Walking into this portal will now send players to that destination.
Links are ONE-WAY: changing A's link does not change B's link.
Clear walk-through link removes that default. If a shared Home exists, an
unlinked portal falls back to Home. Without Home, it opens the destination menu.
Step fully out after arrival before walking into a portal again. Right-click
can reopen the picker even when a walk-through route is configured.

SHARED HOME
The owner of the desired core selects Settings -> Set as Home.
There is ONE shared Home for this server network, not one Home per player.
Every destination picker has a Home button. Unlinked portals also walk to Home.
Home remains reachable regardless of where Home's own outgoing link leads.
Portals with a configured walk-through destination keep it; choose Home from
their right-click menu whenever you want to return instead.
Once Home is set, another player cannot overwrite it from their own portal.
To choose a different Home, an operator first runs:
/function wolfie_portals:clear_home
Then the owner of the replacement core chooses Settings -> Set as Home.
Breaking Home's core clears Home when its chunk is next loaded.

OWNERSHIP
Anyone can travel to listed valid portals. The player who placed a core owns
its name and outgoing-link settings. Other players cannot edit those settings.
The first manager claims legacy v1 cores because v1 stored no placer identity.
An existing Home can be reset only by an operator using the command above.
As with v1, this is a public portal network, not a private access-control system.

DISTANT DESTINATIONS AND SAFETY
Destinations are stored across restarts and do not require a player nearby.
The destination's frame and source core are rechecked before travel.
The pack temporarily loads the destination frame's chunks, releasing only the
loads it added after roughly 10 seconds. Existing forced chunks are preserved.
A far unloaded portal can show an old cached name/valid status until loaded;
travel still checks its real frame before sending you there.
Home is not a reciprocal pair, so its outgoing route does not block arrivals.
Players travel; mobs, dropped items, vehicles and passengers do not. Dismount.
Only Overworld, Nether and End are supported, with direct coordinates and no
Nether 8:1 scaling. This is for a small survival-server network, not hundreds
of maximum-size frames being scanned each second.
Invisible interaction panels intercept clicks inside the opening; aim at the
exposed core or outside of the frame when dismantling it.

TROUBLESHOOTING
Only install one version of the pack. /datapack list enabled should show it.
Check that your core is the named crafted item, that required borders are full
supported stone blocks, and that the core is below the empty interior.
If a frame crosses an unloaded chunk edge, bring that edge into view once;
normal loaded-frame checks will then register the completed rectangle.
For a portal built before the datapack was installed, re-place a crafted core.
If you canceled the initial name prompt, complete the frame and right-click
inside the opening. No sign is needed.
Menus expire after about a minute or if you move too far away; reopen them.
Custom server plugins that restrict teleports may alter behavior.

ADMIN
/function wolfie_portals:help
/function wolfie_portals:give_core
/function wolfie_portals:clear_home
To remove completely, visit remote portal chunks first, run
/function wolfie_portals:uninstall while their markers are loaded, then remove
the datapack. The function releases this pack's chunk loads and removes loaded
markers/panels; visible frames and signs remain in the world.

VALIDATION
See VALIDATION.txt for dedicated-server checks and what still needs client QA.
