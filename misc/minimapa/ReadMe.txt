Minimap Sources for locastans Minimap.

The folders are pretty self explanatory. 
Images for icons in swf can be replaced via Sothink SWF decompiler directly after everything else (actionscript, vector circles and stuff) has been modded in the flash file.
The fla project file for Flash CS5 does compile, but the resulting minimap.swf is not functional by itself. I only used it to get comiled actiuonscript to swap in and out via means of swfmill (http://swfmill.org/releases/swfmill-0.3.3-win32.zip).
This way you can easily swap out xml encoded parts from the modded file into WG original Minimap.swf to avoid decompilation artefacts. I recommend using Notepad++ (https://notepad-plus-plus.org) for this, as it allows for collapsing the entire text between to xml tags for easier copy/paste if you set the encoding text "language" to xml. You have to do the same for adding the tier 10 medium tank icons. Copy the tags over from my modded swf of version 9.9 directly to the new swf, keeping in mind to change the frame number +1 when you add the icons for each color.

Shooting the HD minimaps was always difficult. I was able to use the offline map explorer for this, that was graciously supplied to me by S0me0ne, but I had to promise him not to release it to public. I know there is some kind of mod out there that basically does the same thing. In case you cannot find it, here it a more tedious but still working way to get them:

First you need to edit the xml files (theHedger wrote an xml decryptor for wot) for the map you want to screenshot:

IN spaces.settings farplane section set to 9000.0000 everywhere:

	<farPlane>
		<max>9000.000000</max>
		<high>9000.000000</high>
		<medium>9000.000000</medium>
		<low>9000.000000</low>
	</farPlane>


Then in the system/data/sky*****.xml files you need to also replace this inside the Fog tags:

		<deferred>
			<heightFog>	true	</heightFog>
			<nearLow>	9000.000000	</nearLow>
			<farLow>	150000.000000	</farLow>
			<nearHigh>	700000.000000	</nearHigh>
			<farHigh>	1500000.000000	</farHigh>
			<altitudeLow>	5.000000	</altitudeLow>
			<altitudeMid>	19.700000	</altitudeMid>
			<altitudeHigh>	330.000000	</altitudeHigh>
			<skyAltitudeLow>	-100.000000	</skyAltitudeLow>
			<skyAltitudeMid>	0.000000	</skyAltitudeMid>
			<skyAltitudeHigh>	300.000000	</skyAltitudeHigh>
			<exponent>	1.800000	</exponent>
			<sunAngle>	14.000000	</sunAngle>
			<sunExponent>	0.800000	</sunExponent>
			<colorLow>	0.680000 0.818667 1.000000 4.000000	</colorLow>
			<colorHigh>	0.680000 0.818667 1.000000 4.000000	</colorHigh>
			<colorSunLow>	0.790000 0.881000 1.000000 4.000000	</colorSunLow>
			<colorSunHigh>	0.790000 0.881000 1.000000 4.000000	</colorSunHigh>
			<useEdgeFog>false</useEdgeFog>
		</deferred>


And to compensate the map going dark during zoom out:

		<environment>
			<skyLumMultiplier>8.000000</skyLumMultiplier>
			<sunlightLumMultiplier>8.000000</sunlightLumMultiplier>
			<ambientLumMultiplier>8.000000</ambientLumMultiplier>
			<sunLumMultiplier>60.000000</sunLumMultiplier>
		</environment>


Also make sure that cloud shadows are turned off and draw sun and moon also in the sky_??.xml.

Now for the shooting (I recommend fraps or something else to do the capture, as WoT itself does compress the screenshot a lot):
You need cheat engine and set it up to monitor WoT.
Start a training room and select an arty as your vehicle.
Zoom out max in arty mode (unchanged avatar_input_handler.xml!)
The magic value to find in cheat engine is 1114636288.
Search for exact value, first Scan.
Then zoom in a bit on arty mode.
Search for decreased value. Next Scan.
If you get fewer than 50 results found, you can start looking for two exact same value on top of each other.
Doubleclick the second one and apply the hotkeys (J, increase 1000000, K decrease 1000000, i.e)
Right-click the address and select "Find what writes to this addess"
Click yes to add the debugger.
Stop the debugger...there is only one thing writing to it constantly.
Select the result and let it show in disassembler.
Doubleclick the asm code and copy it to a editor pad or sticky. (Mind the address!)
(Leave assembler open)
In debugger, select result and click Replace to change it to Nop.
(Note disappearance of asm code in assembler.)
Enjoy unlimited arty zooming for screenshots.
Remember to put the correct asm code back after you are finished, before proceeding to the next map.
(Select no when asked to add further Nop because of differen asm size when copy pasting the asm back over the Nop.)

After doing the raw screens, they need to be fitted to the original mmap.dds (Photoshop, layer on top, slide transparency so you can see both and adjust, puppet warp, etc. I used Image of 1152x1152 and saved as Dxt1, no alpha, no mipmaps.)
