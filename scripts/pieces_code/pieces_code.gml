

function Pawn() constructor
{
	points := 0;
	pattern := new Pattern(0, 2, 0);
	///pieces may have special rules about movement
}

function Rook() constructor
{
	points := 0;
	pattern := new Pattern(8, 8, 0);
}

function Bishop() constructor
{
	points := 0;
	pattern := new Pattern(0, 0, 8);
}

function Knight() constructor
{
	points := 0;
	pattern := new Pattern(1, 2, 0, true);
}

function Queen() constructor
{
	points := 0;
	pattern := new Pattern(8, 8, 8);
}

function King() constructor
{
	points := 0;
	pattern := new Pattern(1, 1, 1);
}


#macro CELL_SIZE 64

//Movement Patterns
function Pattern( _h := 0, _v := 0, _d := 0, _k := false) constructor
{
	horizontal := _h;
	vertical   := _v;
	diagonal   := _d;
	knight	   := _k;///whether h and v can be swapped at will, allowing knightly movement
	
	
}
