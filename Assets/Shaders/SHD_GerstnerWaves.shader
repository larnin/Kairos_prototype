// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.3411765,fgcg:0.3176471,fgcb:0.3098039,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:5622,x:35231,y:33895,varname:node_5622,prsc:2|diff-912-OUT,spec-4979-OUT,gloss-3288-OUT,normal-912-OUT,voffset-6358-OUT,tess-4663-OUT;n:type:ShaderForge.SFN_Slider,id:2020,x:31127,y:32372,ptovrint:False,ptlb:Amplitde,ptin:_Amplitde,cmnt:Ai,varname:node_2020,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5505198,max:1;n:type:ShaderForge.SFN_FragmentPosition,id:1243,x:29418,y:31935,varname:node_1243,prsc:2;n:type:ShaderForge.SFN_Color,id:1107,x:34360,y:33319,ptovrint:False,ptlb:Base Color,ptin:_BaseColor,varname:node_1107,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4273356,c2:0.6251044,c3:0.7647059,c4:1;n:type:ShaderForge.SFN_Vector1,id:4663,x:34898,y:34301,varname:node_4663,prsc:2,v1:10;n:type:ShaderForge.SFN_Add,id:5185,x:31382,y:32665,varname:node_5185,prsc:2|A-1537-OUT,B-3531-OUT;n:type:ShaderForge.SFN_Time,id:5099,x:30626,y:32804,varname:node_5099,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:9908,x:30414,y:33027,ptovrint:False,ptlb:Waves Speed,ptin:_WavesSpeed,cmnt:S,varname:node_9908,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_ComponentMask,id:3857,x:29837,y:32004,varname:node_3857,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-7558-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5763,x:29853,y:31808,cmnt:Di,varname:node_5763,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-9365-RGB;n:type:ShaderForge.SFN_Color,id:9365,x:29638,y:31808,ptovrint:False,ptlb:Direction,ptin:_Direction,varname:node_9365,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.691,c2:0.309,c3:0,c4:1;n:type:ShaderForge.SFN_ObjectPosition,id:316,x:29418,y:32073,varname:node_316,prsc:2;n:type:ShaderForge.SFN_Subtract,id:7558,x:29638,y:32004,varname:node_7558,prsc:2|A-1243-XYZ,B-316-XYZ;n:type:ShaderForge.SFN_ValueProperty,id:4733,x:29424,y:32781,ptovrint:False,ptlb:WaveLegt_L,ptin:_WaveLegt_L,varname:node_4733,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:100;n:type:ShaderForge.SFN_Vector1,id:6532,x:29425,y:32669,varname:node_6532,prsc:2,v1:2;n:type:ShaderForge.SFN_Divide,id:4163,x:29762,y:32631,cmnt:wi,varname:node_4163,prsc:2|A-6532-OUT,B-4733-OUT;n:type:ShaderForge.SFN_Add,id:6555,x:34842,y:33732,varname:node_6555,prsc:2|A-1107-RGB,B-9878-OUT;n:type:ShaderForge.SFN_Multiply,id:4301,x:30626,y:32995,cmnt: S x 2L,varname:node_4301,prsc:2|A-4163-OUT,B-9908-OUT;n:type:ShaderForge.SFN_Multiply,id:3531,x:30904,y:32909,varname:node_3531,prsc:2|A-5099-T,B-4301-OUT;n:type:ShaderForge.SFN_Slider,id:7109,x:31582,y:34053,ptovrint:False,ptlb:Amplitde_2,ptin:_Amplitde_2,varname:_Amplitde_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.02498477,max:0.1;n:type:ShaderForge.SFN_Multiply,id:9751,x:30826,y:34495,varname:node_9751,prsc:2|A-6800-T,B-8779-OUT;n:type:ShaderForge.SFN_Multiply,id:8779,x:30548,y:34536,varname:node_8779,prsc:2|A-3817-OUT,B-7937-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7937,x:30336,y:34613,ptovrint:False,ptlb:Waves Speed_2,ptin:_WavesSpeed_2,varname:_WavesSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_Time,id:6800,x:30548,y:34390,varname:node_6800,prsc:2;n:type:ShaderForge.SFN_Divide,id:3817,x:29735,y:34256,varname:node_3817,prsc:2|A-6402-OUT,B-4956-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4956,x:29499,y:34358,ptovrint:False,ptlb:WaveLegt_L_2,ptin:_WaveLegt_L_2,varname:_WaveLegt_L_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:100;n:type:ShaderForge.SFN_Vector1,id:6402,x:29499,y:34256,varname:node_6402,prsc:2,v1:2;n:type:ShaderForge.SFN_ObjectPosition,id:5665,x:29336,y:33659,varname:node_5665,prsc:2;n:type:ShaderForge.SFN_FragmentPosition,id:92,x:29336,y:33521,varname:node_92,prsc:2;n:type:ShaderForge.SFN_Subtract,id:5090,x:29556,y:33590,varname:node_5090,prsc:2|A-92-XYZ,B-5665-XYZ;n:type:ShaderForge.SFN_Color,id:6310,x:29556,y:33394,ptovrint:False,ptlb:Direction_2,ptin:_Direction_2,varname:_Direction_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.691,c2:0.309,c3:0,c4:1;n:type:ShaderForge.SFN_ComponentMask,id:6572,x:29755,y:33590,varname:node_6572,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-5090-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1547,x:29769,y:33394,varname:node_1547,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-6310-RGB;n:type:ShaderForge.SFN_Dot,id:5979,x:30862,y:34215,varname:node_5979,prsc:2,dt:0|A-9372-OUT,B-6572-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6829,x:31712,y:32782,ptovrint:False,ptlb:Waves,ptin:_Waves,varname:node_6829,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Vector1,id:4979,x:34859,y:33889,varname:node_4979,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Vector1,id:3288,x:34859,y:33961,varname:node_3288,prsc:2,v1:0.8;n:type:ShaderForge.SFN_Append,id:5208,x:33268,y:31148,varname:node_5208,prsc:2|A-3039-OUT,B-4217-OUT,C-424-OUT;n:type:ShaderForge.SFN_Lerp,id:912,x:33915,y:31924,varname:node_912,prsc:2|A-8721-OUT,B-5208-OUT,T-1261-OUT;n:type:ShaderForge.SFN_Vector3,id:8721,x:33579,y:32084,varname:node_8721,prsc:2,v1:0.5019608,v2:0.5019608,v3:1;n:type:ShaderForge.SFN_Slider,id:1261,x:33422,y:32209,ptovrint:False,ptlb:ormal,ptin:_ormal,varname:node_1261,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Append,id:1760,x:33094,y:30425,varname:node_1760,prsc:2;n:type:ShaderForge.SFN_Add,id:4577,x:33516,y:31131,varname:node_4577,prsc:2|A-1760-OUT,B-5208-OUT;n:type:ShaderForge.SFN_Divide,id:5320,x:33746,y:31131,varname:node_5320,prsc:2|A-4577-OUT,B-77-OUT;n:type:ShaderForge.SFN_Vector1,id:77,x:33516,y:31271,varname:node_77,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:4996,x:32977,y:32575,varname:node_4996,prsc:2|A-2384-OUT,B-3928-OUT,C-5763-R;n:type:ShaderForge.SFN_Multiply,id:3642,x:30471,y:32120,varname:node_3642,prsc:2|A-5763-OUT,B-4163-OUT;n:type:ShaderForge.SFN_Dot,id:1537,x:30903,y:32635,varname:node_1537,prsc:2,dt:0|A-3857-OUT,B-3642-OUT;n:type:ShaderForge.SFN_Cos,id:3928,x:32540,y:32748,varname:node_3928,prsc:2|IN-5185-OUT;n:type:ShaderForge.SFN_Multiply,id:9372,x:30335,y:33814,varname:node_9372,prsc:2|A-1547-OUT,B-3817-OUT;n:type:ShaderForge.SFN_Add,id:5145,x:31254,y:34326,varname:node_5145,prsc:2|A-5979-OUT,B-9751-OUT;n:type:ShaderForge.SFN_Cos,id:7541,x:32270,y:34060,varname:node_7541,prsc:2|IN-5145-OUT;n:type:ShaderForge.SFN_Multiply,id:1144,x:32977,y:32732,varname:node_1144,prsc:2|A-2384-OUT,B-3928-OUT,C-5763-G;n:type:ShaderForge.SFN_Sin,id:1032,x:32540,y:32876,varname:node_1032,prsc:2|IN-5185-OUT;n:type:ShaderForge.SFN_Multiply,id:2066,x:32977,y:32893,varname:node_2066,prsc:2|A-2020-OUT,B-1032-OUT;n:type:ShaderForge.SFN_Append,id:1789,x:33791,y:33334,varname:node_1789,prsc:2|A-2015-OUT,B-9878-OUT,C-7484-OUT;n:type:ShaderForge.SFN_Vector1,id:9589,x:33294,y:33078,varname:node_9589,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:5882,x:31543,y:32462,varname:node_5882,prsc:2|A-2020-OUT,B-4163-OUT;n:type:ShaderForge.SFN_Divide,id:2190,x:32378,y:32103,cmnt:Qi,varname:node_2190,prsc:2|A-7417-OUT,B-5775-OUT;n:type:ShaderForge.SFN_Slider,id:7417,x:31945,y:32113,ptovrint:False,ptlb:steepness,ptin:_steepness,varname:node_7417,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1538462,max:1;n:type:ShaderForge.SFN_Multiply,id:2384,x:32702,y:32411,cmnt:QiAi,varname:node_2384,prsc:2|A-2190-OUT,B-2020-OUT;n:type:ShaderForge.SFN_Vector1,id:8682,x:32102,y:32031,varname:node_8682,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:7343,x:31720,y:32518,varname:node_7343,prsc:2,v1:300;n:type:ShaderForge.SFN_Multiply,id:5775,x:31983,y:32409,varname:node_5775,prsc:2|A-5882-OUT,B-7343-OUT,C-6829-OUT;n:type:ShaderForge.SFN_Multiply,id:2512,x:32026,y:33847,varname:node_2512,prsc:2|A-7109-OUT,B-3817-OUT;n:type:ShaderForge.SFN_Multiply,id:3586,x:32259,y:33807,varname:node_3586,prsc:2|A-7343-OUT,B-2512-OUT,C-6829-OUT;n:type:ShaderForge.SFN_Divide,id:9881,x:32590,y:33743,varname:node_9881,prsc:2|A-7417-OUT,B-3586-OUT;n:type:ShaderForge.SFN_Multiply,id:2971,x:32966,y:34063,varname:node_2971,prsc:2|A-3601-OUT,B-7109-OUT;n:type:ShaderForge.SFN_Multiply,id:4756,x:32966,y:33902,varname:node_4756,prsc:2|A-9881-OUT,B-7541-OUT,C-1547-G;n:type:ShaderForge.SFN_Multiply,id:3657,x:32966,y:33745,varname:node_3657,prsc:2|A-9881-OUT,B-7541-OUT,C-1547-R;n:type:ShaderForge.SFN_Add,id:2015,x:33333,y:33237,varname:node_2015,prsc:2|A-4996-OUT,B-3657-OUT;n:type:ShaderForge.SFN_Sin,id:3601,x:32270,y:34207,varname:node_3601,prsc:2|IN-5145-OUT;n:type:ShaderForge.SFN_Add,id:7484,x:33333,y:33375,varname:node_7484,prsc:2|A-1144-OUT,B-4756-OUT;n:type:ShaderForge.SFN_Add,id:9878,x:33333,y:33510,varname:node_9878,prsc:2|A-2066-OUT,B-2971-OUT;n:type:ShaderForge.SFN_Multiply,id:1877,x:32985,y:30938,varname:node_1877,prsc:2|A-5763-R,B-8401-OUT,C-3039-OUT;n:type:ShaderForge.SFN_Multiply,id:1598,x:32354,y:31162,varname:node_1598,prsc:2|A-1647-OUT,B-5741-OUT;n:type:ShaderForge.SFN_Dot,id:5741,x:31940,y:31343,varname:node_5741,prsc:2,dt:0|A-509-OUT,B-6358-OUT;n:type:ShaderForge.SFN_Add,id:3632,x:32549,y:31234,varname:node_3632,prsc:2|A-1598-OUT,B-4725-OUT;n:type:ShaderForge.SFN_Cos,id:3039,x:32701,y:31153,varname:node_3039,prsc:2|IN-5741-OUT;n:type:ShaderForge.SFN_Vector1,id:8528,x:32743,y:31042,varname:node_8528,prsc:2,v1:-1;n:type:ShaderForge.SFN_Vector1,id:424,x:32846,y:31434,varname:node_424,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:4217,x:32836,y:31349,varname:node_4217,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:8401,x:32354,y:31023,cmnt:wi x Ai,varname:node_8401,prsc:2|A-1647-OUT,B-2020-OUT;n:type:ShaderForge.SFN_Append,id:6358,x:31500,y:31409,varname:node_6358,prsc:2|A-4996-OUT,B-2066-OUT,C-1144-OUT;n:type:ShaderForge.SFN_Multiply,id:1647,x:31222,y:31748,varname:node_1647,prsc:2|A-4163-OUT,B-1732-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1732,x:30912,y:31966,ptovrint:False,ptlb:node_1732,ptin:_node_1732,varname:node_1732,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:4725,x:32453,y:31393,varname:node_4725,prsc:2|A-3531-OUT,B-6744-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6744,x:32271,y:31667,ptovrint:False,ptlb:node_6744,ptin:_node_6744,varname:node_6744,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:509,x:31551,y:31607,varname:node_509,prsc:2|A-5763-OUT,B-1647-OUT;proporder:2020-1107-9908-9365-4733-7109-7937-4956-6310-6829-1261-7417-1732-6744;pass:END;sub:END;*/

Shader "Custom/SHD_GerstnerWaves" {
    Properties {
        _Amplitde ("Amplitde", Range(0, 1)) = 0.5505198
        _BaseColor ("Base Color", Color) = (0.4273356,0.6251044,0.7647059,1)
        _WavesSpeed ("Waves Speed", Float ) = 0.2
        _Direction ("Direction", Color) = (0.691,0.309,0,1)
        _WaveLegt_L ("WaveLegt_L", Float ) = 100
        _Amplitde_2 ("Amplitde_2", Range(0, 0.1)) = 0.02498477
        _WavesSpeed_2 ("Waves Speed_2", Float ) = 0.2
        _WaveLegt_L_2 ("WaveLegt_L_2", Float ) = 100
        _Direction_2 ("Direction_2", Color) = (0.691,0.309,0,1)
        _Waves ("Waves", Float ) = 2
        _ormal ("ormal", Range(0, 1)) = 0
        _steepness ("steepness", Range(0, 1)) = 0.1538462
        _node_1732 ("node_1732", Float ) = 1
        _node_6744 ("node_6744", Float ) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 5.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform float _Amplitde;
            uniform float _WavesSpeed;
            uniform float4 _Direction;
            uniform float _WaveLegt_L;
            uniform float _Waves;
            uniform float _ormal;
            uniform float _steepness;
            uniform float _node_1732;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
                LIGHTING_COORDS(4,5)
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float node_4163 = (2.0/_WaveLegt_L); // wi
                float node_7343 = 300.0;
                float node_2384 = ((_steepness/((_Amplitde*node_4163)*node_7343*_Waves))*_Amplitde); // QiAi
                float2 node_3857 = (mul(unity_ObjectToWorld, v.vertex).rgb-objPos.rgb).rb;
                float2 node_5763 = _Direction.rgb.rb; // Di
                float4 node_5099 = _Time + _TimeEditor;
                float node_3531 = (node_5099.g*(node_4163*_WavesSpeed));
                float node_5185 = (dot(node_3857,(node_5763*node_4163))+node_3531);
                float node_3928 = cos(node_5185);
                float node_4996 = (node_2384*node_3928*node_5763.r);
                float node_2066 = (_Amplitde*sin(node_5185));
                float node_1144 = (node_2384*node_3928*node_5763.g);
                float3 node_6358 = float3(node_4996,node_2066,node_1144);
                v.vertex.xyz += node_6358;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    return o;
                }
                float Tessellation(TessVertex v){
                    return 10.0;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 node_5763 = _Direction.rgb.rb; // Di
                float node_4163 = (2.0/_WaveLegt_L); // wi
                float node_1647 = (node_4163*_node_1732);
                float node_7343 = 300.0;
                float node_2384 = ((_steepness/((_Amplitde*node_4163)*node_7343*_Waves))*_Amplitde); // QiAi
                float2 node_3857 = (i.posWorld.rgb-objPos.rgb).rb;
                float4 node_5099 = _Time + _TimeEditor;
                float node_3531 = (node_5099.g*(node_4163*_WavesSpeed));
                float node_5185 = (dot(node_3857,(node_5763*node_4163))+node_3531);
                float node_3928 = cos(node_5185);
                float node_4996 = (node_2384*node_3928*node_5763.r);
                float node_2066 = (_Amplitde*sin(node_5185));
                float node_1144 = (node_2384*node_3928*node_5763.g);
                float3 node_6358 = float3(node_4996,node_2066,node_1144);
                float node_5741 = dot((node_5763*node_1647),node_6358);
                float node_3039 = cos(node_5741);
                float3 node_5208 = float3(node_3039,0.5,1.0);
                float3 node_912 = lerp(float3(0.5019608,0.5019608,1),node_5208,_ormal);
                float3 normalLocal = node_912;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = 0.8;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float node_4979 = 0.5;
                float3 specularColor = float3(node_4979,node_4979,node_4979);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuseColor = node_912;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 5.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform float _Amplitde;
            uniform float _WavesSpeed;
            uniform float4 _Direction;
            uniform float _WaveLegt_L;
            uniform float _Waves;
            uniform float _ormal;
            uniform float _steepness;
            uniform float _node_1732;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
                LIGHTING_COORDS(4,5)
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float node_4163 = (2.0/_WaveLegt_L); // wi
                float node_7343 = 300.0;
                float node_2384 = ((_steepness/((_Amplitde*node_4163)*node_7343*_Waves))*_Amplitde); // QiAi
                float2 node_3857 = (mul(unity_ObjectToWorld, v.vertex).rgb-objPos.rgb).rb;
                float2 node_5763 = _Direction.rgb.rb; // Di
                float4 node_5099 = _Time + _TimeEditor;
                float node_3531 = (node_5099.g*(node_4163*_WavesSpeed));
                float node_5185 = (dot(node_3857,(node_5763*node_4163))+node_3531);
                float node_3928 = cos(node_5185);
                float node_4996 = (node_2384*node_3928*node_5763.r);
                float node_2066 = (_Amplitde*sin(node_5185));
                float node_1144 = (node_2384*node_3928*node_5763.g);
                float3 node_6358 = float3(node_4996,node_2066,node_1144);
                v.vertex.xyz += node_6358;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    return o;
                }
                float Tessellation(TessVertex v){
                    return 10.0;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 node_5763 = _Direction.rgb.rb; // Di
                float node_4163 = (2.0/_WaveLegt_L); // wi
                float node_1647 = (node_4163*_node_1732);
                float node_7343 = 300.0;
                float node_2384 = ((_steepness/((_Amplitde*node_4163)*node_7343*_Waves))*_Amplitde); // QiAi
                float2 node_3857 = (i.posWorld.rgb-objPos.rgb).rb;
                float4 node_5099 = _Time + _TimeEditor;
                float node_3531 = (node_5099.g*(node_4163*_WavesSpeed));
                float node_5185 = (dot(node_3857,(node_5763*node_4163))+node_3531);
                float node_3928 = cos(node_5185);
                float node_4996 = (node_2384*node_3928*node_5763.r);
                float node_2066 = (_Amplitde*sin(node_5185));
                float node_1144 = (node_2384*node_3928*node_5763.g);
                float3 node_6358 = float3(node_4996,node_2066,node_1144);
                float node_5741 = dot((node_5763*node_1647),node_6358);
                float node_3039 = cos(node_5741);
                float3 node_5208 = float3(node_3039,0.5,1.0);
                float3 node_912 = lerp(float3(0.5019608,0.5019608,1),node_5208,_ormal);
                float3 normalLocal = node_912;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = 0.8;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float node_4979 = 0.5;
                float3 specularColor = float3(node_4979,node_4979,node_4979);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 diffuseColor = node_912;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 5.0
            uniform float4 _TimeEditor;
            uniform float _Amplitde;
            uniform float _WavesSpeed;
            uniform float4 _Direction;
            uniform float _WaveLegt_L;
            uniform float _Waves;
            uniform float _steepness;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float node_4163 = (2.0/_WaveLegt_L); // wi
                float node_7343 = 300.0;
                float node_2384 = ((_steepness/((_Amplitde*node_4163)*node_7343*_Waves))*_Amplitde); // QiAi
                float2 node_3857 = (mul(unity_ObjectToWorld, v.vertex).rgb-objPos.rgb).rb;
                float2 node_5763 = _Direction.rgb.rb; // Di
                float4 node_5099 = _Time + _TimeEditor;
                float node_3531 = (node_5099.g*(node_4163*_WavesSpeed));
                float node_5185 = (dot(node_3857,(node_5763*node_4163))+node_3531);
                float node_3928 = cos(node_5185);
                float node_4996 = (node_2384*node_3928*node_5763.r);
                float node_2066 = (_Amplitde*sin(node_5185));
                float node_1144 = (node_2384*node_3928*node_5763.g);
                float3 node_6358 = float3(node_4996,node_2066,node_1144);
                v.vertex.xyz += node_6358;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    return o;
                }
                float Tessellation(TessVertex v){
                    return 10.0;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
