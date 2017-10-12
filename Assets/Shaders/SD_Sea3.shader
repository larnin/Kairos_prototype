// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:1,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.3411765,fgcg:0.3176471,fgcb:0.3098039,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:7455,x:36594,y:33685,varname:node_7455,prsc:2|diff-5597-OUT,spec-8063-OUT,gloss-7092-OUT,normal-2935-OUT,voffset-7501-OUT,tess-2524-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2262,x:31370,y:32901,ptovrint:False,ptlb:Amplitde,ptin:_Amplitde,cmnt:A,varname:node_2262,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:20;n:type:ShaderForge.SFN_Multiply,id:1503,x:31868,y:32801,varname:node_1503,prsc:2|A-5457-OUT,B-2262-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9518,x:30253,y:34068,ptovrint:False,ptlb:L,ptin:_L,varname:node_9518,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:100;n:type:ShaderForge.SFN_Multiply,id:2716,x:30701,y:33193,varname:node_2716,prsc:2|A-1752-OUT,B-5469-OUT;n:type:ShaderForge.SFN_Vector1,id:1752,x:30478,y:33176,varname:node_1752,prsc:2,v1:2;n:type:ShaderForge.SFN_Pi,id:5469,x:30511,y:33234,varname:node_5469,prsc:2;n:type:ShaderForge.SFN_Divide,id:4234,x:30901,y:33193,cmnt:wi,varname:node_4234,prsc:2|A-2716-OUT,B-9592-OUT;n:type:ShaderForge.SFN_Multiply,id:6443,x:31227,y:32971,varname:node_6443,prsc:2|A-4015-OUT,B-4234-OUT;n:type:ShaderForge.SFN_ComponentMask,id:4015,x:30853,y:32662,varname:node_4015,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-8102-RGB;n:type:ShaderForge.SFN_FragmentPosition,id:9191,x:30593,y:32842,varname:node_9191,prsc:2;n:type:ShaderForge.SFN_Dot,id:2793,x:31458,y:32971,varname:node_2793,prsc:2,dt:0|A-6443-OUT,B-6532-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6532,x:30853,y:32838,varname:node_6532,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-9191-XYZ;n:type:ShaderForge.SFN_ValueProperty,id:5419,x:31190,y:33533,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:node_5419,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:20;n:type:ShaderForge.SFN_Multiply,id:4007,x:31398,y:33435,varname:node_4007,prsc:2|A-4234-OUT,B-5419-OUT;n:type:ShaderForge.SFN_Multiply,id:2040,x:31579,y:33435,varname:node_2040,prsc:2|A-4007-OUT,B-4883-T;n:type:ShaderForge.SFN_Time,id:4883,x:31398,y:33594,varname:node_4883,prsc:2;n:type:ShaderForge.SFN_Add,id:604,x:31841,y:33063,varname:node_604,prsc:2|A-2793-OUT,B-2040-OUT;n:type:ShaderForge.SFN_Cos,id:1596,x:32019,y:33063,varname:node_1596,prsc:2|IN-604-OUT;n:type:ShaderForge.SFN_Multiply,id:1437,x:32274,y:32921,varname:node_1437,prsc:2|A-1503-OUT,B-4015-R;n:type:ShaderForge.SFN_Multiply,id:9291,x:32458,y:32921,varname:node_9291,prsc:2|A-1437-OUT,B-1596-OUT;n:type:ShaderForge.SFN_Append,id:7501,x:33297,y:34189,varname:node_7501,prsc:2|A-4293-OUT,B-2080-OUT,C-2660-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2524,x:36002,y:34213,ptovrint:False,ptlb:Tesselatio,ptin:_Tesselatio,varname:node_2524,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_Multiply,id:469,x:32274,y:33216,varname:node_469,prsc:2|A-1503-OUT,B-4015-G;n:type:ShaderForge.SFN_Multiply,id:2631,x:32458,y:33226,varname:node_2631,prsc:2|A-469-OUT,B-1596-OUT;n:type:ShaderForge.SFN_Sin,id:5416,x:32274,y:33078,varname:node_5416,prsc:2|IN-604-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4632,x:31381,y:32402,ptovrint:False,ptlb:Waves,ptin:_Waves,varname:node_4632,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:7429,x:31596,y:32358,varname:node_7429,prsc:2|A-4234-OUT,B-2262-OUT,C-4632-OUT,D-2716-OUT;n:type:ShaderForge.SFN_Divide,id:5457,x:31853,y:32264,varname:node_5457,prsc:2|A-2991-OUT,B-7429-OUT;n:type:ShaderForge.SFN_Slider,id:2991,x:31439,y:32274,ptovrint:False,ptlb:steepness,ptin:_steepness,cmnt:Q,varname:node_2991,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Color,id:8102,x:30593,y:32659,ptovrint:False,ptlb:Directio,ptin:_Directio,varname:node_8102,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:3750,x:32458,y:33078,varname:node_3750,prsc:2|A-5416-OUT,B-2262-OUT;n:type:ShaderForge.SFN_Color,id:4189,x:30659,y:34546,ptovrint:False,ptlb:Directio_copy,ptin:_Directio_copy,varname:_Directio_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_FragmentPosition,id:1577,x:30659,y:34729,varname:node_1577,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:3349,x:30919,y:34725,varname:node_3349,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-1577-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:2298,x:30919,y:34549,varname:node_2298,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-4189-RGB;n:type:ShaderForge.SFN_Vector1,id:331,x:30544,y:35063,varname:node_331,prsc:2,v1:2;n:type:ShaderForge.SFN_Pi,id:6553,x:30577,y:35121,varname:node_6553,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1947,x:30767,y:35080,varname:node_1947,prsc:2|A-331-OUT,B-6553-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8278,x:31256,y:35420,ptovrint:False,ptlb:Speed_2,ptin:_Speed_2,varname:_Speed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:20;n:type:ShaderForge.SFN_Time,id:8724,x:31464,y:35481,varname:node_8724,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3607,x:31464,y:35322,varname:node_3607,prsc:2|A-73-OUT,B-8278-OUT;n:type:ShaderForge.SFN_Multiply,id:6683,x:31645,y:35322,varname:node_6683,prsc:2|A-3607-OUT,B-8724-T;n:type:ShaderForge.SFN_Dot,id:9415,x:31436,y:34864,varname:node_9415,prsc:2,dt:0|A-847-OUT,B-3349-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1032,x:31436,y:34788,ptovrint:False,ptlb:Amplitde_2,ptin:_Amplitde_2,cmnt:A,varname:_Amplitde_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:7323,x:31662,y:34245,varname:node_7323,prsc:2|A-73-OUT,B-1032-OUT,C-4632-OUT,D-1947-OUT;n:type:ShaderForge.SFN_Divide,id:2283,x:31919,y:34151,varname:node_2283,prsc:2|A-2991-OUT,B-7323-OUT;n:type:ShaderForge.SFN_Multiply,id:1698,x:31934,y:34688,varname:node_1698,prsc:2|A-2283-OUT,B-1032-OUT;n:type:ShaderForge.SFN_Add,id:211,x:31907,y:34950,varname:node_211,prsc:2|A-9415-OUT,B-6683-OUT;n:type:ShaderForge.SFN_Cos,id:1636,x:32085,y:34950,varname:node_1636,prsc:2|IN-211-OUT;n:type:ShaderForge.SFN_Multiply,id:6540,x:32340,y:35103,varname:node_6540,prsc:2|A-1698-OUT,B-2298-G;n:type:ShaderForge.SFN_Sin,id:7511,x:32340,y:34965,varname:node_7511,prsc:2|IN-211-OUT;n:type:ShaderForge.SFN_Multiply,id:9319,x:32340,y:34808,varname:node_9319,prsc:2|A-1698-OUT,B-2298-R;n:type:ShaderForge.SFN_Multiply,id:2444,x:32524,y:34808,varname:node_2444,prsc:2|A-9319-OUT,B-1636-OUT;n:type:ShaderForge.SFN_Multiply,id:6064,x:32524,y:34965,varname:node_6064,prsc:2|A-7511-OUT,B-1032-OUT;n:type:ShaderForge.SFN_Multiply,id:5017,x:32524,y:35113,varname:node_5017,prsc:2|A-6540-OUT,B-1636-OUT;n:type:ShaderForge.SFN_Add,id:4293,x:32924,y:34030,varname:node_4293,prsc:2|A-9291-OUT,B-2444-OUT;n:type:ShaderForge.SFN_Add,id:2080,x:32924,y:34175,varname:node_2080,prsc:2|A-3750-OUT,B-6064-OUT;n:type:ShaderForge.SFN_Add,id:2660,x:32924,y:34325,varname:node_2660,prsc:2|A-2631-OUT,B-5017-OUT;n:type:ShaderForge.SFN_Multiply,id:847,x:31248,y:34864,varname:node_847,prsc:2|A-2298-OUT,B-73-OUT;n:type:ShaderForge.SFN_Multiply,id:4095,x:30767,y:35236,varname:node_4095,prsc:2|A-9378-OUT,B-1976-OUT,C-1700-OUT;n:type:ShaderForge.SFN_Vector1,id:1976,x:30532,y:35266,varname:node_1976,prsc:2,v1:1.5;n:type:ShaderForge.SFN_Vector1,id:1700,x:30532,y:35325,varname:node_1700,prsc:2,v1:1;n:type:ShaderForge.SFN_Divide,id:73,x:30963,y:35123,varname:node_73,prsc:2|A-1947-OUT,B-4095-OUT;n:type:ShaderForge.SFN_Vector1,id:6448,x:30494,y:33441,varname:node_6448,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:9592,x:30701,y:33361,varname:node_9592,prsc:2|A-9518-OUT,B-6448-OUT;n:type:ShaderForge.SFN_Color,id:7069,x:35072,y:33553,ptovrint:False,ptlb:BaseColor,ptin:_BaseColor,varname:node_7069,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4478806,c2:0.7722079,c3:0.8014706,c4:1;n:type:ShaderForge.SFN_Tex2d,id:9296,x:35357,y:33907,ptovrint:False,ptlb:Normal Map,ptin:_NormalMap,varname:node_9296,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2dd3788f8589b40bf82a92d76ffc5091,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Vector3,id:2246,x:35357,y:33792,varname:node_2246,prsc:2,v1:0.5,v2:0.5,v3:1;n:type:ShaderForge.SFN_Lerp,id:2935,x:35619,y:33853,varname:node_2935,prsc:2|A-2246-OUT,B-9296-RGB,T-5471-OUT;n:type:ShaderForge.SFN_Slider,id:5471,x:35194,y:34087,ptovrint:False,ptlb:NormalIntensity,ptin:_NormalIntensity,varname:node_5471,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:5167,x:35392,y:34334,varname:node_5167,prsc:2|A-3654-OUT,B-6018-OUT,T-3904-OUT;n:type:ShaderForge.SFN_Slider,id:7092,x:35794,y:33538,ptovrint:False,ptlb:Roughness,ptin:_Roughness,varname:node_7092,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:8063,x:35794,y:33448,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:_Glosiness_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_ValueProperty,id:9378,x:30253,y:34157,ptovrint:False,ptlb:L2,ptin:_L2,varname:_L_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:100;n:type:ShaderForge.SFN_Fresnel,id:9498,x:35580,y:33565,varname:node_9498,prsc:2|EXP-8595-OUT;n:type:ShaderForge.SFN_Slider,id:8595,x:35233,y:33615,ptovrint:False,ptlb:Fresnel,ptin:_Fresnel,varname:node_8595,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:10;n:type:ShaderForge.SFN_Lerp,id:5597,x:35764,y:33634,varname:node_5597,prsc:2|A-7069-RGB,B-6179-OUT,T-9498-OUT;n:type:ShaderForge.SFN_Multiply,id:3670,x:35951,y:33634,varname:node_3670,prsc:2|A-5597-OUT,B-5167-OUT;n:type:ShaderForge.SFN_Vector1,id:6018,x:35159,y:34320,varname:node_6018,prsc:2,v1:1;n:type:ShaderForge.SFN_Tex2d,id:2418,x:35314,y:33214,ptovrint:False,ptlb:Sky,ptin:_Sky,varname:node_2418,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:6179,x:35515,y:33380,varname:node_6179,prsc:2|A-2418-RGB,B-7069-RGB,T-7600-OUT;n:type:ShaderForge.SFN_Vector1,id:7600,x:35314,y:33380,varname:node_7600,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Slider,id:3654,x:35002,y:34250,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_3654,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4901572,max:1;n:type:ShaderForge.SFN_Append,id:979,x:35785,y:34009,varname:node_979,prsc:2|A-9296-R,B-9296-G;n:type:ShaderForge.SFN_Lerp,id:8115,x:36001,y:34009,varname:node_8115,prsc:2|A-6583-OUT,B-979-OUT,T-9487-OUT;n:type:ShaderForge.SFN_Vector1,id:6583,x:35785,y:34135,varname:node_6583,prsc:2,v1:0;n:type:ShaderForge.SFN_Slider,id:9487,x:35684,y:34331,ptovrint:False,ptlb:Refrcation,ptin:_Refrcation,varname:node_9487,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Tex2d,id:9354,x:36002,y:34306,ptovrint:False,ptlb:Foam,ptin:_Foam,varname:node_9354,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:675a1f2290b211840b593b3b207771f9,ntxv:0,isnm:False;n:type:ShaderForge.SFN_DepthBlend,id:3904,x:35200,y:34445,varname:node_3904,prsc:2|DIST-1556-OUT;n:type:ShaderForge.SFN_Slider,id:1556,x:34602,y:34456,ptovrint:False,ptlb:DepthBlendDistance,ptin:_DepthBlendDistance,varname:node_1556,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:20;n:type:ShaderForge.SFN_Add,id:3632,x:36233,y:33523,varname:node_3632,prsc:2|A-3670-OUT,B-7550-OUT;n:type:ShaderForge.SFN_Lerp,id:6029,x:36414,y:33600,varname:node_6029,prsc:2|A-3632-OUT,B-3670-OUT,T-3904-OUT;n:type:ShaderForge.SFN_DepthBlend,id:3981,x:35200,y:34581,varname:node_3981,prsc:2|DIST-7881-OUT;n:type:ShaderForge.SFN_Multiply,id:7881,x:35016,y:34592,varname:node_7881,prsc:2|A-1556-OUT,B-2235-OUT;n:type:ShaderForge.SFN_Vector1,id:2235,x:34759,y:34543,varname:node_2235,prsc:2,v1:0.3;n:type:ShaderForge.SFN_Lerp,id:7550,x:36267,y:34281,varname:node_7550,prsc:2|A-5779-OUT,B-9354-RGB,T-3981-OUT;n:type:ShaderForge.SFN_Vector1,id:5779,x:36002,y:34469,varname:node_5779,prsc:2,v1:1;proporder:2262-9518-5419-2524-4632-2991-8102-4189-8278-1032-7069-9296-5471-8063-7092-9378-8595-2418-3654-9487-1556-9354;pass:END;sub:END;*/

Shader "Custom/SD_Sea3" {
    Properties {
        _Amplitde ("Amplitde", Float ) = 20
        _L ("L", Float ) = 100
        _Speed ("Speed", Float ) = 20
        _Tesselatio ("Tesselatio", Float ) = 10
        _Waves ("Waves", Float ) = 0
        _steepness ("steepness", Range(0, 1)) = 0
        _Directio ("Directio", Color) = (0.5,0.5,0.5,1)
        _Directio_copy ("Directio_copy", Color) = (0.5,0.5,0.5,1)
        _Speed_2 ("Speed_2", Float ) = 20
        _Amplitde_2 ("Amplitde_2", Float ) = 0
        _BaseColor ("BaseColor", Color) = (0.4478806,0.7722079,0.8014706,1)
        _NormalMap ("Normal Map", 2D) = "bump" {}
        _NormalIntensity ("NormalIntensity", Range(0, 1)) = 0
        _Metallic ("Metallic", Range(0, 1)) = 0
        _Roughness ("Roughness", Range(0, 1)) = 0
        _L2 ("L2", Float ) = 100
        _Fresnel ("Fresnel", Range(1, 10)) = 1
        _Sky ("Sky", 2D) = "white" {}
        _Opacity ("Opacity", Range(0, 1)) = 0.4901572
        _Refrcation ("Refrcation", Range(0, 1)) = 0
        _DepthBlendDistance ("DepthBlendDistance", Range(0, 20)) = 0
        _Foam ("Foam", 2D) = "white" {}
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Tessellation.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 5.0
            uniform float4 _TimeEditor;
            uniform float _Amplitde;
            uniform float _L;
            uniform float _Speed;
            uniform float _Tesselatio;
            uniform float _Waves;
            uniform float _steepness;
            uniform float4 _Directio;
            uniform float4 _Directio_copy;
            uniform float _Speed_2;
            uniform float _Amplitde_2;
            uniform float4 _BaseColor;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _NormalIntensity;
            uniform float _Roughness;
            uniform float _Metallic;
            uniform float _L2;
            uniform float _Fresnel;
            uniform sampler2D _Sky; uniform float4 _Sky_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float node_2716 = (2.0*3.141592654);
                float node_4234 = (node_2716/(_L*1.0)); // wi
                float node_1503 = ((_steepness/(node_4234*_Amplitde*_Waves*node_2716))*_Amplitde);
                float2 node_4015 = _Directio.rgb.rb;
                float4 node_4883 = _Time + _TimeEditor;
                float node_604 = (dot((node_4015*node_4234),mul(unity_ObjectToWorld, v.vertex).rgb.rb)+((node_4234*_Speed)*node_4883.g));
                float node_1596 = cos(node_604);
                float node_1947 = (2.0*3.141592654);
                float node_73 = (node_1947/(_L2*1.5*1.0));
                float node_1698 = ((_steepness/(node_73*_Amplitde_2*_Waves*node_1947))*_Amplitde_2);
                float2 node_2298 = _Directio_copy.rgb.rb;
                float4 node_8724 = _Time + _TimeEditor;
                float node_211 = (dot((node_2298*node_73),mul(unity_ObjectToWorld, v.vertex).rgb.rb)+((node_73*_Speed_2)*node_8724.g));
                float node_1636 = cos(node_211);
                v.vertex.xyz += float3((((node_1503*node_4015.r)*node_1596)+((node_1698*node_2298.r)*node_1636)),((sin(node_604)*_Amplitde)+(sin(node_211)*_Amplitde_2)),(((node_1503*node_4015.g)*node_1596)+((node_1698*node_2298.g)*node_1636)));
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
                    float2 texcoord0 : TEXCOORD0;
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
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                float Tessellation(TessVertex v){
                    return _Tesselatio;
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
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float3 normalLocal = lerp(float3(0.5,0.5,1),_NormalMap_var.rgb,_NormalIntensity);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 1.0 - _Roughness; // Convert roughness to gloss
                float specPow = exp2( gloss * 10.0+1.0);
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = _Metallic;
                float specularMonochrome;
                float4 _Sky_var = tex2D(_Sky,TRANSFORM_TEX(i.uv0, _Sky));
                float3 node_5597 = lerp(_BaseColor.rgb,lerp(_Sky_var.rgb,_BaseColor.rgb,0.5),pow(1.0-max(0,dot(normalDirection, viewDirection)),_Fresnel));
                float3 diffuseColor = node_5597; // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, GGXTerm(NdotH, 1.0-gloss));
                float specularPBL = (NdotL*visTerm*normTerm) * (UNITY_PI / 4);
                if (IsGammaSpace())
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                specularPBL = max(0, specularPBL * NdotL);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz)*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Tessellation.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 5.0
            uniform float4 _TimeEditor;
            uniform float _Amplitde;
            uniform float _L;
            uniform float _Speed;
            uniform float _Tesselatio;
            uniform float _Waves;
            uniform float _steepness;
            uniform float4 _Directio;
            uniform float4 _Directio_copy;
            uniform float _Speed_2;
            uniform float _Amplitde_2;
            uniform float4 _BaseColor;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _NormalIntensity;
            uniform float _Roughness;
            uniform float _Metallic;
            uniform float _L2;
            uniform float _Fresnel;
            uniform sampler2D _Sky; uniform float4 _Sky_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float node_2716 = (2.0*3.141592654);
                float node_4234 = (node_2716/(_L*1.0)); // wi
                float node_1503 = ((_steepness/(node_4234*_Amplitde*_Waves*node_2716))*_Amplitde);
                float2 node_4015 = _Directio.rgb.rb;
                float4 node_4883 = _Time + _TimeEditor;
                float node_604 = (dot((node_4015*node_4234),mul(unity_ObjectToWorld, v.vertex).rgb.rb)+((node_4234*_Speed)*node_4883.g));
                float node_1596 = cos(node_604);
                float node_1947 = (2.0*3.141592654);
                float node_73 = (node_1947/(_L2*1.5*1.0));
                float node_1698 = ((_steepness/(node_73*_Amplitde_2*_Waves*node_1947))*_Amplitde_2);
                float2 node_2298 = _Directio_copy.rgb.rb;
                float4 node_8724 = _Time + _TimeEditor;
                float node_211 = (dot((node_2298*node_73),mul(unity_ObjectToWorld, v.vertex).rgb.rb)+((node_73*_Speed_2)*node_8724.g));
                float node_1636 = cos(node_211);
                v.vertex.xyz += float3((((node_1503*node_4015.r)*node_1596)+((node_1698*node_2298.r)*node_1636)),((sin(node_604)*_Amplitde)+(sin(node_211)*_Amplitde_2)),(((node_1503*node_4015.g)*node_1596)+((node_1698*node_2298.g)*node_1636)));
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
                    float2 texcoord0 : TEXCOORD0;
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
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                float Tessellation(TessVertex v){
                    return _Tesselatio;
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
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float3 normalLocal = lerp(float3(0.5,0.5,1),_NormalMap_var.rgb,_NormalIntensity);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 1.0 - _Roughness; // Convert roughness to gloss
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = _Metallic;
                float specularMonochrome;
                float4 _Sky_var = tex2D(_Sky,TRANSFORM_TEX(i.uv0, _Sky));
                float3 node_5597 = lerp(_BaseColor.rgb,lerp(_Sky_var.rgb,_BaseColor.rgb,0.5),pow(1.0-max(0,dot(normalDirection, viewDirection)),_Fresnel));
                float3 diffuseColor = node_5597; // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, GGXTerm(NdotH, 1.0-gloss));
                float specularPBL = (NdotL*visTerm*normTerm) * (UNITY_PI / 4);
                if (IsGammaSpace())
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                specularPBL = max(0, specularPBL * NdotL);
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 5.0
            uniform float4 _TimeEditor;
            uniform float _Amplitde;
            uniform float _L;
            uniform float _Speed;
            uniform float _Tesselatio;
            uniform float _Waves;
            uniform float _steepness;
            uniform float4 _Directio;
            uniform float4 _Directio_copy;
            uniform float _Speed_2;
            uniform float _Amplitde_2;
            uniform float _L2;
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
                float node_2716 = (2.0*3.141592654);
                float node_4234 = (node_2716/(_L*1.0)); // wi
                float node_1503 = ((_steepness/(node_4234*_Amplitde*_Waves*node_2716))*_Amplitde);
                float2 node_4015 = _Directio.rgb.rb;
                float4 node_4883 = _Time + _TimeEditor;
                float node_604 = (dot((node_4015*node_4234),mul(unity_ObjectToWorld, v.vertex).rgb.rb)+((node_4234*_Speed)*node_4883.g));
                float node_1596 = cos(node_604);
                float node_1947 = (2.0*3.141592654);
                float node_73 = (node_1947/(_L2*1.5*1.0));
                float node_1698 = ((_steepness/(node_73*_Amplitde_2*_Waves*node_1947))*_Amplitde_2);
                float2 node_2298 = _Directio_copy.rgb.rb;
                float4 node_8724 = _Time + _TimeEditor;
                float node_211 = (dot((node_2298*node_73),mul(unity_ObjectToWorld, v.vertex).rgb.rb)+((node_73*_Speed_2)*node_8724.g));
                float node_1636 = cos(node_211);
                v.vertex.xyz += float3((((node_1503*node_4015.r)*node_1596)+((node_1698*node_2298.r)*node_1636)),((sin(node_604)*_Amplitde)+(sin(node_211)*_Amplitde_2)),(((node_1503*node_4015.g)*node_1596)+((node_1698*node_2298.g)*node_1636)));
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
                    return _Tesselatio;
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
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
