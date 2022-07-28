#include <iostream.h>

int aaaS;
int bbbS;
int result;

extern "C"{Lab2S();}

void F_C()
{
    if (aaaS > bbbS)
    {
       result = aaaS * bbbS - 1;
    }
    if (bbbS > aaaS)
    {
	result = aaaS / bbbS + 2;
    }
    if (aaaS == bbbS)
    {
	result = -1;
    }
    cout << "CPP" << endl;
    cout << result << endl;
}

void F_ASM()
{
    cout << "ASM" << endl;
    Lab2S();
    cout << result << endl;
}

int main()
{
    cout << "enter a, b" << endl;
    cin >> aaaS;
    cin >> bbbS;
    F_C();
    result = 0;
    F_ASM();
    return 0;
}