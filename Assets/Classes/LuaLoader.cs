using System;
using System.IO;
using MoonSharp.Interpreter;
using MoonSharp.Interpreter.Loaders;

public class LuaLoader : ScriptLoaderBase
{
    public override object LoadFile(string file, Table globalContext)
    {
        return File.ReadAllText(file);
    }

    public override bool ScriptFileExists(string name)
    {
        return File.Exists(Path.Combine(Environment.CurrentDirectory, name));
    }
}
