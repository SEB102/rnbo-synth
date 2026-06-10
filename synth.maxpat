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
		"rect" : [ 59.0, 104.0, 700.0, 450.0 ],
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
		"description" : "Synth RNBO — cycle~ + adsr~",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "rnbo~",
					"numinlets" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 80.0, 120.0, 530.0, 22.0 ],
					"saved_object_attributes" : 					{
						"optimization" : "O1",
						"title" : "synth"
					},
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						},
						"classnamespace" : "rnbo",
						"rect" : [ 0.0, 0.0, 800.0, 500.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-notein",
									"maxclass" : "newobj",
									"text" : "notein",
									"numinlets" : 0,
									"numoutlets" : 3,
									"patching_rect" : [ 50.0, 50.0, 60.0, 22.0 ]
								}
							},
							{
								"box" : 								{
									"id" : "obj-mtof",
									"maxclass" : "newobj",
									"text" : "mtof",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 110.0, 40.0, 22.0 ]
								}
							},
							{
								"box" : 								{
									"id" : "obj-cycle",
									"maxclass" : "newobj",
									"text" : "cycle~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 170.0, 55.0, 22.0 ]
								}
							},
							{
								"box" : 								{
									"id" : "obj-gt",
									"maxclass" : "newobj",
									"text" : "> 0",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 160.0, 110.0, 40.0, 22.0 ]
								}
							},
							{
								"box" : 								{
									"id" : "obj-param-attack",
									"maxclass" : "newobj",
									"text" : "param attack 20.",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 220.0, 50.0, 140.0, 22.0 ]
								}
							},
							{
								"box" : 								{
									"id" : "obj-param-decay",
									"maxclass" : "newobj",
									"text" : "param decay 20.",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 370.0, 50.0, 130.0, 22.0 ]
								}
							},
							{
								"box" : 								{
									"id" : "obj-param-sustain",
									"maxclass" : "newobj",
									"text" : "param sustain 0.5",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 510.0, 50.0, 135.0, 22.0 ]
								}
							},
							{
								"box" : 								{
									"id" : "obj-param-release",
									"maxclass" : "newobj",
									"text" : "param release 500.",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 655.0, 50.0, 135.0, 22.0 ]
								}
							},
							{
								"box" : 								{
									"id" : "obj-adsr",
									"maxclass" : "newobj",
									"text" : "adsr~",
									"numinlets" : 5,
									"numoutlets" : 1,
									"patching_rect" : [ 220.0, 170.0, 50.0, 22.0 ]
								}
							},
							{
								"box" : 								{
									"id" : "obj-mul",
									"maxclass" : "newobj",
									"text" : "*~",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 100.0, 250.0, 35.0, 22.0 ]
								}
							},
							{
								"box" : 								{
									"id" : "obj-out1",
									"maxclass" : "newobj",
									"text" : "out~ 1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 60.0, 320.0, 55.0, 22.0 ]
								}
							},
							{
								"box" : 								{
									"id" : "obj-out2",
									"maxclass" : "newobj",
									"text" : "out~ 2",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 160.0, 320.0, 55.0, 22.0 ]
								}
							}
						],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-notein", 0 ],
									"destination" : [ "obj-mtof", 0 ]
								}
							},
							{
								"patchline" : 								{
									"source" : [ "obj-mtof", 0 ],
									"destination" : [ "obj-cycle", 0 ]
								}
							},
							{
								"patchline" : 								{
									"source" : [ "obj-notein", 1 ],
									"destination" : [ "obj-gt", 0 ]
								}
							},
							{
								"patchline" : 								{
									"source" : [ "obj-gt", 0 ],
									"destination" : [ "obj-adsr", 0 ]
								}
							},
							{
								"patchline" : 								{
									"source" : [ "obj-param-attack", 0 ],
									"destination" : [ "obj-adsr", 1 ]
								}
							},
							{
								"patchline" : 								{
									"source" : [ "obj-param-decay", 0 ],
									"destination" : [ "obj-adsr", 2 ]
								}
							},
							{
								"patchline" : 								{
									"source" : [ "obj-param-sustain", 0 ],
									"destination" : [ "obj-adsr", 3 ]
								}
							},
							{
								"patchline" : 								{
									"source" : [ "obj-param-release", 0 ],
									"destination" : [ "obj-adsr", 4 ]
								}
							},
							{
								"patchline" : 								{
									"source" : [ "obj-cycle", 0 ],
									"destination" : [ "obj-mul", 0 ]
								}
							},
							{
								"patchline" : 								{
									"source" : [ "obj-adsr", 0 ],
									"destination" : [ "obj-mul", 1 ]
								}
							},
							{
								"patchline" : 								{
									"source" : [ "obj-mul", 0 ],
									"destination" : [ "obj-out1", 0 ]
								}
							},
							{
								"patchline" : 								{
									"source" : [ "obj-mul", 0 ],
									"destination" : [ "obj-out2", 0 ]
								}
							}
						]
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
					"patching_rect" : [ 80.0, 180.0, 35.0, 22.0 ]
				}
			},
			{
				"box" : 				{
					"id" : "obj-comment",
					"maxclass" : "comment",
					"text" : "Synth RNBO : cycle~ + adsr~\nParametres exposés : attack, decay, sustain (0–1), release\nExporter : File → Export to Code → Web Export → remplacer patch.export.json",
					"patching_rect" : [ 80.0, 30.0, 530.0, 60.0 ],
					"fontsize" : 11.0
				}
			}
		],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-dac", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-dac", 1 ]
				}
			}
		]
	}
}
