

function Pawn() constructor
{
	points := 0;
	pattern := new Pattern(0, 2, 0);
	///pieces may have special rules
}

function Rook() constructor
{
	points := 0;
}

function Bishop() constructor
{
	points := 0;
}

function Knight() constructor
{
	points := 0;
}

function Queen() constructor
{
	points := 0;
}

function King() constructor
{
	points := 0;
}



//Movement Patterns
function Pattern( _h := 0, _v := 0, _d := 0) constructor
{
	horizontal := _h;
	vertical   := _v;
	diagonal   := _d;
}
