using UnityEngine;
using UnityEditor;
using System;
using System.IO;

public class Screenshot
{
    [MenuItem("Screenshot/4K")]
    public static void Take4K()
    {
        Take(3840, 2160);
    }

    [MenuItem("Screenshot/5K")]
    public static void Take5K()
    {
        Take(5120, 2880);
    }

    private static void Take(int w, int h)
    {
        EditorUtility.DisplayProgressBar(
            "Taking screenshot...",
            "Your screenshot is now being taken, please wait",
            0
        );
        RenderTexture texture = new RenderTexture(w, h, 24);
        Camera.main.targetTexture = texture;
        Texture2D screenshot = new Texture2D(w, h, TextureFormat.ARGB32, false);
        Camera.main.Render();
        RenderTexture.active = texture;
        screenshot.ReadPixels(new Rect(0, 0, w, h), 0, 0);
        Camera.main.targetTexture = null;
        RenderTexture.active = null;
        byte[] bytes = screenshot.EncodeToPNG();
        string filename = Path.Combine(
            Environment.CurrentDirectory,
            "Screenshots",
            $"screen_{w}x{h}_{DateTime.Now.ToString("yyyy-MM-dd_HH-mm-ss")}.png"
        );
        File.WriteAllBytes(filename, bytes);
        Application.OpenURL(filename);
        EditorUtility.ClearProgressBar();
    }
}
