{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		},
		"classnamespace" : "box",
		"rect" : [ 59.0, 104.0, 700.0, 480.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-build-btn",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 15.0, 15.0, 80.0, 80.0 ],
					"style" : ""
				}
			},
			{
				"box" : 				{
					"id" : "obj-build-label",
					"maxclass" : "comment",
					"text" : "1. Cliquer ici pour construire le patch RNBO automatiquement\n2. Puis : File → Export to Code → Web Export → dossier rnbo-synth → nom : patch.export\n3. Dans Terminal : cd ~/Desktop/rnbo-synth && ./update-rnbo.sh",
					"patching_rect" : [ 110.0, 15.0, 560.0, 80.0 ],
					"fontsize" : 12.0
				}
			},
			{
				"box" : 				{
					"id" : "obj-js",
					"maxclass" : "newobj",
					"text" : "js autobuilder.js",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 120.0, 140.0, 22.0 ]
				}
			},
			{
				"box" : 				{
					"id" : "obj-rnbo",
					"maxclass" : "rnbo~",
					"numinlets" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 15.0, 180.0, 200.0, 22.0 ],
					"varname" : "obj-rnbo",
					"saved_object_attributes" : 					{
						"optimization" : "O1",
						"title" : "synth"
					}
				}
			},
			{
				"box" : 				{
					"id" : "obj-dac",
					"maxclass" : "newobj",
					"text" : "dac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 230.0, 35.0, 22.0 ]
				}
			}
		],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-build-btn", 0 ],
					"destination" : [ "obj-js", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-rnbo", 0 ],
					"destination" : [ "obj-dac", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-rnbo", 1 ],
					"destination" : [ "obj-dac", 1 ]
				}
			}
		]
	}
}
