using MoonSharp.Interpreter;
using UnityEngine;

public class Layer
{
    [MoonSharpHidden]
    public Layer(Draw d)
    {
        draw = d;
    }

    private readonly Draw draw;
    private readonly float sqrt_3_4 = Mathf.Sqrt(0.75f);

    public string Name;
    public float yStart;
    public float yEnd;
    public string Color;
    public string SideColor;

    public void Triangle(float x, float y)
    {
        Vector3 bottomLStart = new Vector3(x, yStart, y * sqrt_3_4);
        Vector3 topStart = new Vector3(x + 0.5f, yStart, (y + 1) * sqrt_3_4);
        Vector3 bottomRStart = new Vector3(x + 1, yStart, y * sqrt_3_4);
        Vector3 bottomLEnd = new Vector3(x, yEnd, y * sqrt_3_4);
        Vector3 topEnd = new Vector3(x + 0.5f, yEnd, (y + 1) * sqrt_3_4);
        Vector3 bottomREnd = new Vector3(x + 1, yEnd, y * sqrt_3_4);
        draw.vertices.AddRange(new[] {
            // Triangle
            bottomLEnd, topEnd, bottomREnd,
            // Bottom side
            bottomLStart, bottomLEnd, bottomREnd,
            bottomLStart, bottomREnd, bottomRStart,
            // Top left side
            topStart, topEnd, bottomLEnd,
            topStart, bottomLEnd, bottomLStart,
            // Top right side
            bottomRStart, bottomREnd, topEnd,
            bottomRStart, topEnd, topStart
        });
        for (int i = 0; i < 21; i++)
        {
            draw.triangles.Add(draw.triangles.Count);
        }
        AddColor();
    }

    public void TriangleInverted(float x, float y)
    {
        Vector3 bottomStart = new Vector3(x, yStart, y * sqrt_3_4);
        Vector3 topLStart = new Vector3(x - 0.5f, yStart, (y + 1) * sqrt_3_4);
        Vector3 topRStart = new Vector3(x + 0.5f, yStart, (y + 1) * sqrt_3_4);
        Vector3 bottomEnd = new Vector3(x, yEnd, y * sqrt_3_4);
        Vector3 topLEnd = new Vector3(x - 0.5f, yEnd, (y + 1) * sqrt_3_4);
        Vector3 topREnd = new Vector3(x + 0.5f, yEnd, (y + 1) * sqrt_3_4);
        draw.vertices.AddRange(new[] {
            // Triangle
            bottomEnd, topLEnd, topREnd,
            // Bottom left side
            topLStart, topLEnd, bottomEnd,
            topLStart, bottomEnd, bottomStart,
            // Top side
            topRStart, topREnd, topLEnd,
            topRStart, topLEnd, topLStart,
            // Bottom right side
            bottomStart, bottomEnd, topREnd,
            bottomStart, topREnd, topRStart
        });
        for (int i = 0; i < 21; i++)
        {
            draw.triangles.Add(draw.triangles.Count);
        }
        AddColor();
    }

    private void AddColor()
    {
        draw.colors.Add((Count: 3, Color));
        draw.colors.Add((Count: 18, Color: SideColor));
    }
}
