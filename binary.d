/*
 * Author: Salim Djerbouh
 * Purpose: Convert from base decimal to binary base.
 * Language:  D
 */
import std.stdio;

/// This constant is called base example (base 10).
const base = 2;

int main()
{
	/*
		* vars
		* int p  => One degree displacement.
		* int s  => Gathering the survivors.
		* int rx => Reduced primary value.
		* int y  => In order to take the rest.
		* int x  => The value to be converted.
		*/
	int p = 1, s = 0, rx, x, y;

	writeln("Enter the number: ");
	readf("%d", &rx);
	x = rx;

	// If the score is 0, stop the process
	while (x != 0)
	{
		y = x % base; // x mod base.
		x = x / base; // x div base.
		s += p * y; // s = s + ...... +p*10*10*.....*y.
		p *= 10; // p = p*10*10*....*10.
	}
	// writeln(s.stringof);
	writefln("(%d)10 = (%d)2", rx, s);

	return 0;
}
