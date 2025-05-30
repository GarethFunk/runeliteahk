
MouseMove(x,y)
{
	MouseGetPos, x0, y0
	Random, r, -2., 2.
	xd := x-x0, yd := y-y0
	d := Sqrt(xd*xd+yd*yd)
	Random, noise, 9, 11
	; Speed is roughly 1/10th of distance
	Speed := d//noise
	z := d//Speed
	xd := xd/z, yd := yd/z
	x2 := -yd*r/z, y2 := xd*r/z
	x3 := yd*r/2, y3 := -xd*r/2, z--
	Loop,% z
		MouseMove, x0+=xd+x3+=x2, y0+=yd+y3+=y2, 1
	MouseMove, x, y, 1
}