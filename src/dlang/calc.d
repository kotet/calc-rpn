void main()
{
    import std.stdio: readln,writeln;
    import std.string: chomp;

    while(true)
    {
        immutable line = readln().chomp;
        if (line == "")
            return;
        eval(line).writeln();
    }
}

auto eval(string line)
{
    import std.array: split;
    import std.conv: to;
    import std.string: isNumeric;

    immutable tokens = line.split(' ');

    long[] stack;

    foreach(token;tokens)
    {
        if (token.isNumeric)
        {
            stack ~= token.to!long;
        }
        else
        {
            assert(2 <= stack.length);
            switch(token)
            {
                case "+":
                calc!"+"(stack);
                break;
                case "-":
                calc!"-"(stack);
                break;
                case "*":
                calc!"*"(stack);
                break;
                case "/":
                calc!"/"(stack);
                break;
                default:
                assert(0);
            }
        }
    }
    return stack[0];
}

void calc(string Op)(ref long[] stack)
{
    import std.range: popBackN;

    mixin("immutable result = stack[$-2] " ~ Op ~ " stack[$-1];");
    stack.popBackN(2);
    stack ~= result;
}