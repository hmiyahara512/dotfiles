
((digest . "77d4703ffa53a85fe9b4944431360c70") (undo-list nil ("{ \"Cursor\": 0 }
" . 1) (1 . 283) ("#include <iostream>

using namespace std;

int fac(int n)
{
	if (n == 1) {
		return 1;
	} else if (n == 0) {
		return 1;
	} else {
		return n * fac(n - 1);
	}
}

int main()
{

	int n = 3;
	int ans;

	ans = fac(n);

	cout << ans << endl;

	return 0;
}
" . 1) (t 21474 3151 84692 962000) ((marker . 20) . -19) ((marker) . -20) ((marker) . -20) ((marker) . -21) ((marker) . -21) ((marker . 265) . -42) ((marker . 265) . -42) ((marker . 253) . -43) ((marker . 253) . -43) ((marker . 252) . -58) ((marker . 252) . -58) ((marker . 229) . -60) ((marker . 229) . -60) ((marker . 228) . -75) ((marker . 228) . -75) ((marker . 212) . -87) ((marker . 212) . -87) ((marker . 211) . -109) ((marker . 211) . -109) ((marker . 200) . -121) ((marker . 200) . -121) ((marker . 187) . -131) ((marker . 187) . -131) ((marker . 186) . -156) ((marker . 186) . -156) ((marker . 173) . -159) ((marker . 173) . -159) ((marker . 172) . -161) ((marker . 172) . -161) ((marker . 170) . -162) ((marker . 170) . -162) ((marker . 166) . -173) ((marker . 166) . -173) ((marker . 139) . -175) ((marker . 139) . -175) ((marker . 128) . -176) ((marker . 128) . -176) ((marker . 114) . -188) ((marker . 114) . -188) ((marker . 91) . -198) ((marker . 91) . -198) ((marker . 77) . -199) ((marker . 77) . -199) ((marker . 61) . -214) ((marker . 61) . -214) ((marker . 44) . -215) ((marker . 44) . -215) ((marker . 43) . -237) ((marker . 43) . -237) ((marker . 22) . -238) ((marker . 22) . -238) ((marker . 21) . -249) ((marker . 21) . -249) ((marker . 1) . -251) ((marker . 1) . -251) ((marker . 1) . -251) nil ("{ \"Cursor\": 251 }
" . 1) (1 . 270) ("#include <iostream>

using namespace std;

int fac(int n)
{
if (n == 1) {
return 1;
} else if (n == 0) {
	return 1;
} else {
		return n * fac(n - 1);
	}
}

int main()
{

	int n = 3;
	int ans;

	ans = fac(n);

	cout << ans << endl;

	return 0;
}
" . -1) nil (84 . 85) nil ("
" . -84) nil ("	" . 117) nil ("	" . 106) nil ("	" . 85) nil ("	" . 75) nil ("	" . 75) nil (61 . 62) nil ("i" . 61) nil ("	" . 61) nil ("
" . 61) nil ("
" . -61) nil (" " . -62) nil (" " . -63) nil ("a" . -64) nil (";" . -65) nil ("
" . -66) nil ("
" . -67) nil (66 . 68) nil (62 . 64) (63 . 64) nil (62 . 63) nil (61 . 62) (t 21474 2546 764711 883000) nil ("{ \"Cursor\": 176 }
" . 1) (1 . 271) ("#include <iostream>

using namespace std;

int fac(int n)
{

	if (n == 1) {
		return 1;
	} else if (n == 0) {
		return 1;
} else {
		return n * fac(n - 1);
	}
}

int main()
{

	int n = 3;
	int ans;

	ans = fac(n);

	cout << ans << endl;

	return 0;
}
" . 1) 176 nil undo-tree-canary))
