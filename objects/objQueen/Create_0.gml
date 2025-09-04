points := 0;
pattern := new Pattern(0, 2, 0);
selected := false;

///pawn specifics
has_moved := false;///when has moved, movement becomes 1
image_blend := blend;

event_inherited();