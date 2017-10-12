// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:6,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:1,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:2865,x:33060,y:32989,varname:node_2865,prsc:2|emission-1568-OUT;n:type:ShaderForge.SFN_Tex2d,id:576,x:31835,y:32925,ptovrint:False,ptlb:BaseTex,ptin:_BaseTex,varname:node_576,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:54655635f417bd04ba74bc77ae60175c,ntxv:0,isnm:False|UVIN-1886-OUT;n:type:ShaderForge.SFN_ScreenPos,id:8239,x:31442,y:32925,varname:node_8239,prsc:2,sctp:0;n:type:ShaderForge.SFN_RemapRange,id:1886,x:31642,y:32925,varname:node_1886,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-8239-UVOUT;n:type:ShaderForge.SFN_Time,id:2985,x:31252,y:33090,varname:node_2985,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1301,x:31442,y:33090,varname:node_1301,prsc:2|A-2985-T,B-6717-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6717,x:31252,y:33234,ptovrint:False,ptlb:EffectSpeed,ptin:_EffectSpeed,varname:node_6717,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Sin,id:3336,x:31642,y:33090,varname:node_3336,prsc:2|IN-1301-OUT;n:type:ShaderForge.SFN_Lerp,id:6069,x:32213,y:33034,varname:node_6069,prsc:2|A-576-R,B-576-G,T-3675-OUT;n:type:ShaderForge.SFN_RemapRange,id:2070,x:31804,y:33097,varname:node_2070,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-3336-OUT;n:type:ShaderForge.SFN_Clamp,id:2258,x:31812,y:33286,varname:node_2258,prsc:2|IN-3336-OUT,MIN-2346-OUT,MAX-5795-OUT;n:type:ShaderForge.SFN_Vector1,id:2346,x:31617,y:33286,varname:node_2346,prsc:2,v1:-1;n:type:ShaderForge.SFN_Vector1,id:5795,x:31617,y:33346,varname:node_5795,prsc:2,v1:0;n:type:ShaderForge.SFN_RemapRange,id:3675,x:31986,y:33286,varname:node_3675,prsc:2,frmn:-1,frmx:0,tomn:0,tomx:1|IN-2258-OUT;n:type:ShaderForge.SFN_Clamp,id:3472,x:31812,y:33414,varname:node_3472,prsc:2|IN-3336-OUT,MIN-5795-OUT,MAX-3851-OUT;n:type:ShaderForge.SFN_Vector1,id:3851,x:31617,y:33414,varname:node_3851,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:4887,x:32213,y:33160,varname:node_4887,prsc:2|A-576-B,B-576-A,T-3472-OUT;n:type:ShaderForge.SFN_Lerp,id:1067,x:32407,y:33103,varname:node_1067,prsc:2|A-4887-OUT,B-6069-OUT,T-2070-OUT;n:type:ShaderForge.SFN_Tex2d,id:8336,x:32407,y:32934,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_8336,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:1568,x:32813,y:33074,varname:node_1568,prsc:2|A-8336-RGB,B-1074-OUT;n:type:ShaderForge.SFN_Slider,id:7965,x:32213,y:33314,ptovrint:False,ptlb:Intensity,ptin:_Intensity,varname:node_7965,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:1074,x:32587,y:33092,varname:node_1074,prsc:2|A-6080-OUT,B-1067-OUT,T-7965-OUT;n:type:ShaderForge.SFN_Vector1,id:6080,x:32407,y:33228,varname:node_6080,prsc:2,v1:1;proporder:576-6717-8336-7965;pass:END;sub:END;*/

Shader "Shader Forge/PFX_Borders1" {
    Properties {
        _BaseTex ("BaseTex", 2D) = "white" {}
        _EffectSpeed ("EffectSpeed", Float ) = 5
        _MainTex ("MainTex", 2D) = "white" {}
        _Intensity ("Intensity", Range(0, 1)) = 0
    }
    SubShader {
        Tags {
            "Queue"="Geometry+1"
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            ZTest Always
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _BaseTex; uniform float4 _BaseTex_ST;
            uniform float _EffectSpeed;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Intensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 screenPos : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
////// Lighting:
////// Emissive:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float2 node_1886 = (i.screenPos.rg*0.5+0.5);
                float4 _BaseTex_var = tex2D(_BaseTex,TRANSFORM_TEX(node_1886, _BaseTex));
                float4 node_2985 = _Time + _TimeEditor;
                float node_3336 = sin((node_2985.g*_EffectSpeed));
                float node_5795 = 0.0;
                float3 emissive = (_MainTex_var.rgb*lerp(1.0,lerp(lerp(_BaseTex_var.b,_BaseTex_var.a,clamp(node_3336,node_5795,1.0)),lerp(_BaseTex_var.r,_BaseTex_var.g,(clamp(node_3336,(-1.0),node_5795)*1.0+1.0)),(node_3336*0.5+0.5)),_Intensity));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
