using System;
using System.IO;
using UnityEngine;
using MoonSharp.Interpreter;

[RequireComponent(typeof(MeshFilter), typeof(MeshRenderer))]
public class Watch : MonoBehaviour
{
    private Script script;
    private Draw draw;
    private FileSystemWatcher watcher;
    private bool update = true;
    public string file;

    void Start()
    {
        script = new Script();
        script.Options.ScriptLoader = new LuaLoader();
        UserData.RegisterType<Layer>();
        UserData.RegisterType<Cam>();
        draw = new Draw(script, GetComponent<MeshFilter>().mesh);
        watcher = new FileSystemWatcher(Environment.CurrentDirectory, file)
        {
            EnableRaisingEvents = true,
            NotifyFilter
                = NotifyFilters.FileName
                | NotifyFilters.LastWrite
                | NotifyFilters.DirectoryName
        };
        watcher.Changed += (o, fsea) => OnChanged(fsea.Name);
        OnChanged(file);
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
        script.DoFile(file);
        update = true;
    }
}
