// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.3843138,fgcg:0.3882353,fgcb:0.3843138,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:8415,x:34536,y:32802,varname:node_8415,prsc:2|emission-6305-RGB,alpha-4889-OUT;n:type:ShaderForge.SFN_TexCoord,id:9166,x:31542,y:32856,varname:node_9166,prsc:2,uv:0;n:type:ShaderForge.SFN_OneMinus,id:9739,x:32196,y:32877,varname:node_9739,prsc:2|IN-2583-R;n:type:ShaderForge.SFN_Multiply,id:3985,x:32410,y:32824,varname:node_3985,prsc:2|A-2583-R,B-9739-OUT;n:type:ShaderForge.SFN_RemapRange,id:2635,x:32593,y:32824,varname:node_2635,prsc:2,frmn:0,frmx:0.3,tomn:0,tomx:1|IN-3985-OUT;n:type:ShaderForge.SFN_Tex2d,id:5267,x:32139,y:33069,ptovrint:False,ptlb:Perlin Noise,ptin:_PerlinNoise,varname:node_5267,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2486eadde0565ea4f967b1eb2b2ddab6,ntxv:0,isnm:False|UVIN-3786-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:2408,x:32784,y:33012,ptovrint:False,ptlb:Panner,ptin:_Panner,varname:node_2408,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5d19b2e8aa5628d449bbecfca5dec2a3,ntxv:0,isnm:False|UVIN-5296-OUT;n:type:ShaderForge.SFN_Panner,id:3786,x:31943,y:33088,varname:node_3786,prsc:2,spu:0.5,spv:1|UVIN-346-UVOUT,DIST-860-OUT;n:type:ShaderForge.SFN_Multiply,id:3388,x:33089,y:32910,varname:node_3388,prsc:2|A-2635-OUT,B-7368-OUT;n:type:ShaderForge.SFN_Time,id:8496,x:31542,y:33012,varname:node_8496,prsc:2;n:type:ShaderForge.SFN_Multiply,id:860,x:31749,y:33069,varname:node_860,prsc:2|A-8496-T,B-5385-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5385,x:31542,y:33158,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:node_5385,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ComponentMask,id:8086,x:32296,y:33069,varname:node_8086,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-5267-RGB;n:type:ShaderForge.SFN_Lerp,id:5296,x:32593,y:33001,varname:node_5296,prsc:2|A-346-UVOUT,B-8086-OUT,T-5049-OUT;n:type:ShaderForge.SFN_Slider,id:501,x:32139,y:33253,ptovrint:False,ptlb:EffectStrength,ptin:_EffectStrength,varname:node_501,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5415415,max:1;n:type:ShaderForge.SFN_Multiply,id:5049,x:32500,y:33170,varname:node_5049,prsc:2|A-501-OUT,B-9728-OUT;n:type:ShaderForge.SFN_OneMinus,id:9728,x:32296,y:33321,varname:node_9728,prsc:2|IN-2583-G;n:type:ShaderForge.SFN_Multiply,id:3407,x:33283,y:32903,varname:node_3407,prsc:2|A-3388-OUT,B-793-OUT;n:type:ShaderForge.SFN_Add,id:6882,x:33508,y:33004,varname:node_6882,prsc:2|A-3407-OUT,B-3407-OUT;n:type:ShaderForge.SFN_Add,id:4507,x:32887,y:33249,varname:node_4507,prsc:2|A-2583-G,B-2583-G;n:type:ShaderForge.SFN_Clamp01,id:793,x:33077,y:33249,varname:node_793,prsc:2|IN-4507-OUT;n:type:ShaderForge.SFN_Lerp,id:4889,x:34002,y:33044,varname:node_4889,prsc:2|A-6882-OUT,B-3407-OUT,T-4428-OUT;n:type:ShaderForge.SFN_Vector1,id:4428,x:33508,y:32937,varname:node_4428,prsc:2,v1:0.7;n:type:ShaderForge.SFN_Add,id:7041,x:32983,y:33012,varname:node_7041,prsc:2|A-2408-R,B-2408-R;n:type:ShaderForge.SFN_Clamp01,id:7368,x:33159,y:33048,varname:node_7368,prsc:2|IN-7041-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6608,x:31177,y:32980,ptovrint:False,ptlb:Rotator,ptin:_Rotator,varname:node_6608,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Rotator,id:346,x:31763,y:32707,varname:node_346,prsc:2|UVIN-9166-UVOUT,ANG-6608-OUT;n:type:ShaderForge.SFN_VertexColor,id:6305,x:34244,y:32842,varname:node_6305,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:2583,x:31962,y:32707,varname:node_2583,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-346-UVOUT;proporder:5267-5385-501-2408-6608-8814-2930;pass:END;sub:END;*/

Shader "Custom/SHD_Scarf_Trail" {
    Properties {
        _PerlinNoise ("Perlin Noise", 2D) = "white" {}
        _Speed ("Speed", Float ) = 0
        _EffectStrength ("EffectStrength", Range(0, 1)) = 0.5415415
        _Panner ("Panner", 2D) = "white" {}
        _Rotator ("Rotator", Float ) = 0
        _node_4568 ("node_4568", 2D) = "white" {}
        _node_7159 ("node_7159", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _PerlinNoise; uniform float4 _PerlinNoise_ST;
            uniform sampler2D _Panner; uniform float4 _Panner_ST;
            uniform float _Speed;
            uniform float _EffectStrength;
            uniform float _Rotator;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float3 emissive = i.vertexColor.rgb;
                float3 finalColor = emissive;
                float node_346_ang = _Rotator;
                float node_346_spd = 1.0;
                float node_346_cos = cos(node_346_spd*node_346_ang);
                float node_346_sin = sin(node_346_spd*node_346_ang);
                float2 node_346_piv = float2(0.5,0.5);
                float2 node_346 = (mul(i.uv0-node_346_piv,float2x2( node_346_cos, -node_346_sin, node_346_sin, node_346_cos))+node_346_piv);
                float2 node_2583 = node_346.rg;
                float4 node_8496 = _Time + _TimeEditor;
                float2 node_3786 = (node_346+(node_8496.g*_Speed)*float2(0.5,1));
                float4 _PerlinNoise_var = tex2D(_PerlinNoise,TRANSFORM_TEX(node_3786, _PerlinNoise));
                float2 node_5296 = lerp(node_346,_PerlinNoise_var.rgb.rg,(_EffectStrength*(1.0 - node_2583.g)));
                float4 _Panner_var = tex2D(_Panner,TRANSFORM_TEX(node_5296, _Panner));
                float node_3407 = ((((node_2583.r*(1.0 - node_2583.r))*3.333333+0.0)*saturate((_Panner_var.r+_Panner_var.r)))*saturate((node_2583.g+node_2583.g)));
                fixed4 finalRGBA = fixed4(finalColor,lerp((node_3407+node_3407),node_3407,0.7));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
