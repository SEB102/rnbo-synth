// autobuilder.js — Construit automatiquement le sous-patch RNBO quand on clique sur BUILD
inlets = 1;
outlets = 0;

function bang() {
	var rnboBox = this.patcher.getnamed("obj-rnbo");
	if (!rnboBox) { error("obj-rnbo introuvable\n"); return; }

	var sub = rnboBox.subpatcher();
	if (!sub) { error("Impossible d'acceder au sous-patch RNBO\n"); return; }

	// Effacer le contenu existant
	sub.selectall();
	sub.deleteselection();

	// Créer les objets
	var notein  = sub.newdefault(50,  50,  "notein");
	var mtof    = sub.newdefault(50,  120, "mtof");
	var cycle   = sub.newdefault(50,  190, "cycle~");
	var gt      = sub.newdefault(180, 120, ">", 0);
	var att_p   = sub.newdefault(280, 50,  "param", "attack",  20.0);
	var dec_p   = sub.newdefault(400, 50,  "param", "decay",   20.0);
	var sus_p   = sub.newdefault(520, 50,  "param", "sustain", 0.5);
	var rel_p   = sub.newdefault(640, 50,  "param", "release", 500.0);
	var adsr    = sub.newdefault(280, 190, "adsr~");
	var mul     = sub.newdefault(120, 280, "*~");
	var out1    = sub.newdefault(80,  360, "out~", 1);
	var out2    = sub.newdefault(200, 360, "out~", 2);

	// Câblages
	sub.connect(notein, 0, mtof,  0);   // note pitch → mtof
	sub.connect(mtof,   0, cycle, 0);   // freq → cycle~
	sub.connect(notein, 1, gt,    0);   // velocity → > 0
	sub.connect(gt,     0, adsr,  0);   // gate → adsr~
	sub.connect(att_p,  0, adsr,  1);   // attack
	sub.connect(dec_p,  0, adsr,  2);   // decay
	sub.connect(sus_p,  0, adsr,  3);   // sustain
	sub.connect(rel_p,  0, adsr,  4);   // release
	sub.connect(cycle,  0, mul,   0);   // oscillateur
	sub.connect(adsr,   0, mul,   1);   // enveloppe
	sub.connect(mul,    0, out1,  0);   // sortie L
	sub.connect(mul,    0, out2,  0);   // sortie R

	post("✓ RNBO synth construit : cycle~ + adsr~ avec 4 params\n");
	post("  Prochaine etape : File > Export to Code > Web Export\n");
}
