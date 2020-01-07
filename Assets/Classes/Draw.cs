using System;
using System.Linq;
using System.Collections.Generic;
using MoonSharp.Interpreter;
using UnityEngine;
using UnityEngine.Rendering;

public class Draw
{
    private List<Layer> layers = new List<Layer>();
    private Mesh mesh;
    private Cam cam;
    private (float Min, float Max, bool SingleColor) lerp = (Min: 0f, Max: 0f, SingleColor: true);

    internal List<Vector3> vertices;
    internal List<int> triangles;
    internal List<(int Count, string Color)> colors;

    public Draw(Script s, Mesh m)
    {
        mesh = m;
        mesh.MarkDynamic();
        mesh.indexFormat = IndexFormat.UInt32;
        s.Globals["Layer"] = (Func<string, float, float, string, string, Layer>)Layer;
        s.Globals["Camera"] = cam = new Cam();
        s.Globals["Randomize"] = (Action<float, float, bool>)Randomize;
        Clear();
    }

    public Layer Layer(string name, float yStart, float yEnd, string color, string sideColor)
    {
        Layer layer = new Layer(this)
        {
            Name = name,
            yStart = yStart,
            yEnd = yEnd,
            Color = color,
            SideColor = sideColor
        };
        layers.Add(layer);
        return layer;
    }

    public void Randomize(float min, float max, bool singleColorTriangles)
    {
        lerp = (Min: min, Max: max, SingleColor: singleColorTriangles);
    }

    private Color Lerp(Color c)
    {
        return Color.Lerp(
            c,
            UnityEngine.Random.Range(0, 1) >= 0.5f ? Color.white : Color.black,
            UnityEngine.Random.Range(lerp.Min, lerp.Max)
        );
    }

    public void Redraw()
    {
        cam.Apply();
        mesh.Clear();
        mesh.vertices = vertices.ToArray();
        mesh.triangles = triangles.ToArray();
        List<Color32> cols = new List<Color32>();
        foreach (var color in colors)
        {
            bool valid = ColorUtility.TryParseHtmlString(color.Color, out Color c);
            var lerped = Lerp(c);
            for (int i = 0; i < color.Count; i++)
            {
                cols.Add(valid ? (lerp.SingleColor ? lerped : Lerp(c)) : Color.magenta);
            }
        }
        mesh.colors32 = cols.ToArray();
    }

    public void Clear()
    {
        vertices = new List<Vector3>();
        triangles = new List<int>();
        colors = new List<(int, string)>();
    }
}
