// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:0,vtps:1,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:6,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1,qpre:4,rntp:5,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:2865,x:33017,y:32967,varname:node_2865,prsc:2|emission-6957-OUT,voffset-4177-OUT;n:type:ShaderForge.SFN_TexCoord,id:6793,x:31733,y:33224,varname:node_6793,prsc:2,uv:0;n:type:ShaderForge.SFN_ProjectionParameters,id:8707,x:31733,y:33437,varname:node_8707,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:9496,x:31932,y:33224,varname:node_9496,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-6793-UVOUT;n:type:ShaderForge.SFN_Append,id:6538,x:31932,y:33396,varname:node_6538,prsc:2|A-5896-OUT,B-8707-SGN;n:type:ShaderForge.SFN_Vector1,id:5896,x:31733,y:33378,varname:node_5896,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:4177,x:32131,y:33294,varname:node_4177,prsc:2|A-9496-OUT,B-6538-OUT;n:type:ShaderForge.SFN_Color,id:4354,x:31746,y:33021,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_4354,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.75,c2:0.5845588,c3:0.6359026,c4:1;n:type:ShaderForge.SFN_Tex2d,id:5789,x:31578,y:32738,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_5789,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:4243,x:32434,y:32959,varname:node_4243,prsc:2|A-9678-OUT,B-4354-RGB;n:type:ShaderForge.SFN_Multiply,id:1803,x:32005,y:32625,varname:node_1803,prsc:2|A-5789-R,B-2699-OUT;n:type:ShaderForge.SFN_Vector1,id:2699,x:31791,y:32731,varname:node_2699,prsc:2,v1:0.3;n:type:ShaderForge.SFN_Multiply,id:3060,x:32005,y:32751,varname:node_3060,prsc:2|A-5789-G,B-6867-OUT;n:type:ShaderForge.SFN_Vector1,id:6867,x:31791,y:32785,varname:node_6867,prsc:2,v1:0.59;n:type:ShaderForge.SFN_Multiply,id:5767,x:32005,y:32877,varname:node_5767,prsc:2|A-5789-B,B-6945-OUT;n:type:ShaderForge.SFN_Vector1,id:6945,x:31788,y:32911,varname:node_6945,prsc:2,v1:0.11;n:type:ShaderForge.SFN_Append,id:9678,x:32254,y:32863,varname:node_9678,prsc:2|A-8581-OUT,B-8581-OUT,C-8581-OUT;n:type:ShaderForge.SFN_Add,id:8581,x:32222,y:32637,varname:node_8581,prsc:2|A-1803-OUT,B-3060-OUT,C-5767-OUT;n:type:ShaderForge.SFN_Lerp,id:6957,x:32756,y:33082,varname:node_6957,prsc:2|A-5789-RGB,B-4243-OUT,T-3333-OUT;n:type:ShaderForge.SFN_Slider,id:3333,x:32322,y:33185,ptovrint:False,ptlb:Intensity,ptin:_Intensity,varname:node_3333,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;proporder:4354-5789-3333;pass:END;sub:END;*/

Shader "Shader Forge/PFX_Test1" {
    Properties {
        _Color ("Color", Color) = (0.75,0.5845588,0.6359026,1)
        _MainTex ("MainTex", 2D) = "white" {}
        _Intensity ("Intensity", Range(0, 1)) = 0
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Overlay+1"
            "RenderType"="Overlay"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            ZTest Always
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                v.vertex.xyz = float3(((o.uv0*2.0+-1.0)*float2(1.0,_ProjectionParams.r)),0.0);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = v.vertex;
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
////// Lighting:
////// Emissive:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_8581 = ((_MainTex_var.r*0.3)+(_MainTex_var.g*0.59)+(_MainTex_var.b*0.11));
                float3 emissive = lerp(_MainTex_var.rgb,(float3(node_8581,node_8581,node_8581)*_Color.rgb),_Intensity);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
