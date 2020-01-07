using System;
using System.IO;
using UnityEngine;
using MoonSharp.Interpreter;

[RequireComponent(typeof(MeshFilter), typeof(MeshRenderer))]
public class Watch2 : MonoBehaviour
{
    Script script;
    Draw draw;
    FileSystemWatcher watcher;
    bool update = true;

    void Start()
    {
        script = new Script();
        script.Options.ScriptLoader = new LuaLoader();
        UserData.RegisterType<Layer>();
        UserData.RegisterType<Cam>();
        draw = new Draw(script, GetComponent<MeshFilter>().mesh);
        watcher = new FileSystemWatcher(Environment.CurrentDirectory, "airborne2.lua")
        {
            EnableRaisingEvents = true,
            NotifyFilter
                = NotifyFilters.FileName
                | NotifyFilters.LastWrite
                | NotifyFilters.DirectoryName
        };
        watcher.Changed += (o, fsea) => OnChanged(fsea.Name);
        OnChanged("airborne2.lua");
    }

    void Update()
    {
        if (update)
        {
            draw.Redraw();
            update = false;
        }
    }

    void OnChanged(string name)
    {
        draw.Clear();
        script.DoFile("airborne2.lua");
        update = true;
    }
}
