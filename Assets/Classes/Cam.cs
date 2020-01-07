using MoonSharp.Interpreter;
using UnityEngine;

public class Cam
{
    private Vector3 camPos;
    private Quaternion camRot;

    public void Position(float x, float y, float z)
    {
        camPos = new Vector3(x, y, z);
    }

    public void Rotate(float x, float y, float z)
    {
        camRot = Quaternion.Euler(x, y, z);
    }

    [MoonSharpHidden]
    public void Apply()
    {
        Transform cam = Camera.main.transform;
        cam.position = camPos;
        cam.rotation = camRot;
    }
}