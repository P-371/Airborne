Shader "Custom/ColorfulShader"
{
    Properties
    {
    }
    SubShader
    {
        Pass
        {
            Tags {
                "RenderType" = "Transparent"
                "Queue" = "AlphaTest"
                "IgnoreProjector" = "True"
                "LightMode" = "ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            AlphaToMask On

            ColorMaterial AmbientAndDiffuse
        }
    }

    Fallback "VertexLit"
}
