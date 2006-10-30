/* (C)opyright MMVI Anselm R. Garbe <garbeam at gmail dot com>
 * See LICENSE file for license details.
 */

#define TAGS \
const char *tags[] = { "term", "net", "work", "dev", "crap", NULL };

#define DEFMODE			dotile /* dofloat */
#define FLOATSYMBOL		"%"
#define VSTACKSYMBOL		"#"
#define BSTACKSYMBOL		"="
#define STACKPOS		StackRight	/* StackLeft */

#define FONT			"-*-terminus-medium-*-*-*-*-*-*-*-*-*-*-*"
#define NORMBGCOLOR		"#333333"
#define NORMFGCOLOR		"#ffffff"
#define SELBGCOLOR		"#458ab1"
#define SELFGCOLOR		"#000000"
#define STATUSBGCOLOR		"#000000"
#define STATUSFGCOLOR		"#ffffff"

#define MASTER			600 /* per thousand */
#define MODKEY			Mod1Mask

#define KEYS \
static Key key[] = { \
	/* modifier			key		function	arguments */ \
	{ MODKEY|ShiftMask,		XK_Return,	spawn,		{ .cmd = "exec term" } }, \
        { MODKEY,                       XK_r,           spawn, \
        { .cmd = "exe=\"$(lsx `echo $PATH | sed 's/:/ /g'` | sort -u " \
 	         " | dmenu -font '"FONT"' -normbg '"NORMBGCOLOR"' -normfg '"NORMFGCOLOR"' " \
   	         "-selbg '"SELBGCOLOR"' -selfg '"SELFGCOLOR"')\" && exec $exe" } }, \
	{ MODKEY,               XK_o,  spawn,          { .cmd = "exec browser" } }, \
	{ MODKEY,               XK_z,  spawn,          { .cmd = "exec swarp 1280 800" } }, \
	{ MODKEY,			XK_Tab,		focusnext,	{ 0 } }, \
	{ MODKEY|ShiftMask,		XK_Tab,		focusprev,	{ 0 } }, \
	{ MODKEY,			XK_Return,	zoom,		{ 0 } }, \
	{ MODKEY,			XK_b,		togglestackpos,	{ 0 } }, \
	{ MODKEY,			XK_g,		resizecol,	{ .i = 15 } }, \
	{ MODKEY,			XK_s,		resizecol,	{ .i = -15 } }, \
	{ MODKEY|ShiftMask,		XK_1,		tag,		{ .i = 0 } }, \
	{ MODKEY|ShiftMask,		XK_2,		tag,		{ .i = 1 } }, \
	{ MODKEY|ShiftMask,		XK_3,		tag,		{ .i = 2 } }, \
	{ MODKEY|ShiftMask,		XK_4,		tag,		{ .i = 3 } }, \
	{ MODKEY|ShiftMask,		XK_5,		tag,		{ .i = 4 } }, \
	{ MODKEY|ControlMask|ShiftMask,	XK_1,		toggletag,	{ .i = 0 } }, \
	{ MODKEY|ControlMask|ShiftMask,	XK_2,		toggletag,	{ .i = 1 } }, \
	{ MODKEY|ControlMask|ShiftMask,	XK_3,		toggletag,	{ .i = 2 } }, \
	{ MODKEY|ControlMask|ShiftMask,	XK_4,		toggletag,	{ .i = 3 } }, \
	{ MODKEY|ControlMask|ShiftMask,	XK_5,		toggletag,	{ .i = 4 } }, \
	{ MODKEY|ShiftMask,		XK_c,		killclient,	{ 0 } }, \
	{ MODKEY,			XK_space,	togglemode,	{ 0 } }, \
	{ MODKEY,			XK_0,		viewall,	{ 0 } }, \
	{ MODKEY,			XK_1,		view,		{ .i = 0 } }, \
	{ MODKEY,			XK_2,		view,		{ .i = 1 } }, \
	{ MODKEY,			XK_3,		view,		{ .i = 2 } }, \
	{ MODKEY,			XK_4,		view,		{ .i = 3 } }, \
	{ MODKEY,			XK_5,		view,		{ .i = 4 } }, \
	{ MODKEY|ControlMask,		XK_1,		toggleview,	{ .i = 0 } }, \
	{ MODKEY|ControlMask,		XK_2,		toggleview,	{ .i = 1 } }, \
	{ MODKEY|ControlMask,		XK_3,		toggleview,	{ .i = 2 } }, \
	{ MODKEY|ControlMask,		XK_4,		toggleview,	{ .i = 3 } }, \
	{ MODKEY|ControlMask,		XK_5,		toggleview,	{ .i = 4 } }, \
	{ MODKEY|ShiftMask,		XK_q,		quit,		{ 0 } }, \
};

/* Query class:instance:title for regex matching info with following command:
 * xprop | awk -F '"' '/^WM_CLASS/ { printf("%s:%s:",$4,$2) }; /^WM_NAME/ { printf("%s\n",$2) }' */
#define RULES \
static Rule rule[] = { \
	/* class:instance:title regex	tags regex	isfloat */ \
	        { "Firefox.*",                  "net",          False }, \
	        { "Gimp.*",                     NULL,           True}, \
	        { "MPlayer.*",                  NULL,           True}, \
	        { "Opera.*",                    "net",          False}, \
	        { "Minefield.*",                    "net",          False}, \
};
