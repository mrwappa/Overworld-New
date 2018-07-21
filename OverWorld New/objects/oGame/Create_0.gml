/// @descriptions
window_set_cursor(cr_none);
cursor_sprite = sCursor;

globalvar Paused;
Paused = false;

togglePause = 0;
pausedSprite = noone;

room_speed = 9999;

globalvar SpriteScale;
SpriteScale = 2;


globalvar delta;
delta = 1;
globalvar TimeScale;
TimeScale = 1;

minFPS = 10;

// Internal calculated delta time
dt = delta_time/1000000;
// Previous value of internal delta time
dtPrevious = dt;
// Whether or not internal delta time has been restored to previous value
dtRestored = false;


//Other Globals
globalvar EnemyHPColor;
globalvar EnemyHPBkgrColor;
EnemyHPColor = make_color_rgb(255,0,68);
EnemyHPBkgrColor = make_color_rgb(162,38,51);