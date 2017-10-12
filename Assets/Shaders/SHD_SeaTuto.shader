// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.3411765,fgcg:0.3176471,fgcb:0.3098039,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:5622,x:34383,y:33908,varname:node_5622,prsc:2|diff-5208-OUT,spec-4979-OUT,gloss-3288-OUT,normal-912-OUT,voffset-7039-OUT,tess-4663-OUT;n:type:ShaderForge.SFN_Sin,id:2338,x:31878,y:32972,varname:node_2338,prsc:2|IN-5185-OUT;n:type:ShaderForge.SFN_Multiply,id:6524,x:32951,y:33108,varname:node_6524,prsc:2|A-2338-OUT,B-403-OUT,C-8972-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:1243,x:29638,y:32006,varname:node_1243,prsc:2;n:type:ShaderForge.SFN_Color,id:1107,x:33846,y:33554,ptovrint:False,ptlb:Base Color,ptin:_BaseColor,varname:node_1107,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4273356,c2:0.6251044,c3:0.7647059,c4:1;n:type:ShaderForge.SFN_Vector1,id:4663,x:34050,y:34314,varname:node_4663,prsc:2,v1:10;n:type:ShaderForge.SFN_Add,id:5185,x:31383,y:32667,varname:node_5185,prsc:2|A-989-OUT,B-3531-OUT;n:type:ShaderForge.SFN_Time,id:5099,x:30626,y:32806,varname:node_5099,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:9908,x:30414,y:33029,ptovrint:False,ptlb:Waves Speed,ptin:_WavesSpeed,cmnt:S,varname:node_9908,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_ComponentMask,id:3857,x:29851,y:32006,varname:node_3857,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-1243-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:5763,x:29851,y:31810,cmnt:Di,varname:node_5763,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-9365-RGB;n:type:ShaderForge.SFN_Dot,id:1663,x:30129,y:31876,varname:node_1663,prsc:2,dt:0|A-5763-OUT,B-3857-OUT;n:type:ShaderForge.SFN_Color,id:9365,x:29638,y:31810,ptovrint:False,ptlb:Direction,ptin:_Direction,varname:node_9365,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.309,c3:0,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:4733,x:29424,y:32783,ptovrint:False,ptlb:WaveLegt_L,ptin:_WaveLegt_L,varname:node_4733,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:100;n:type:ShaderForge.SFN_Vector1,id:6532,x:29424,y:32690,varname:node_6532,prsc:2,v1:2;n:type:ShaderForge.SFN_Divide,id:4163,x:29813,y:32672,cmnt:wi,varname:node_4163,prsc:2|A-1119-OUT,B-4733-OUT;n:type:ShaderForge.SFN_Multiply,id:989,x:30910,y:32404,varname:node_989,prsc:2|A-1663-OUT,B-4163-OUT;n:type:ShaderForge.SFN_Add,id:6555,x:33837,y:33129,varname:node_6555,prsc:2|A-1107-RGB,B-6698-OUT;n:type:ShaderForge.SFN_Multiply,id:4301,x:30626,y:32997,cmnt: S x 2L,varname:node_4301,prsc:2|A-4163-OUT,B-9908-OUT;n:type:ShaderForge.SFN_Multiply,id:3531,x:30904,y:32911,varname:node_3531,prsc:2|A-5099-T,B-4301-OUT;n:type:ShaderForge.SFN_Multiply,id:9013,x:32341,y:34553,varname:node_9013,prsc:2|A-164-OUT,B-5751-OUT,C-6897-OUT;n:type:ShaderForge.SFN_NormalVector,id:489,x:33821,y:34139,prsc:2,pt:False;n:type:ShaderForge.SFN_Sin,id:164,x:31504,y:34253,varname:node_164,prsc:2|IN-7481-OUT;n:type:ShaderForge.SFN_Add,id:7481,x:31304,y:34253,varname:node_7481,prsc:2|A-7918-OUT,B-9751-OUT;n:type:ShaderForge.SFN_Multiply,id:9751,x:30826,y:34497,varname:node_9751,prsc:2|A-6800-T,B-8779-OUT;n:type:ShaderForge.SFN_Multiply,id:8779,x:30548,y:34538,varname:node_8779,prsc:2|A-3817-OUT,B-7937-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7937,x:30336,y:34615,ptovrint:False,ptlb:Waves Speed_2,ptin:_WavesSpeed_2,varname:_WavesSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_Time,id:6800,x:30548,y:34392,varname:node_6800,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7918,x:30832,y:33990,varname:node_7918,prsc:2|A-5979-OUT,B-3817-OUT;n:type:ShaderForge.SFN_Divide,id:3817,x:29735,y:34258,varname:node_3817,prsc:2|A-8490-OUT,B-4956-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4956,x:29499,y:34360,ptovrint:False,ptlb:WaveLegt_L_2,ptin:_WaveLegt_L_2,varname:_WaveLegt_L_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:100;n:type:ShaderForge.SFN_FragmentPosition,id:92,x:29556,y:33592,varname:node_92,prsc:2;n:type:ShaderForge.SFN_Color,id:6310,x:29556,y:33396,ptovrint:False,ptlb:Direction_2,ptin:_Direction_2,varname:_Direction_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.691,c2:0.309,c3:0,c4:1;n:type:ShaderForge.SFN_ComponentMask,id:6572,x:29755,y:33592,varname:node_6572,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-92-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:1547,x:29769,y:33396,varname:node_1547,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-6310-RGB;n:type:ShaderForge.SFN_Dot,id:5979,x:30055,y:33498,varname:node_5979,prsc:2,dt:0|A-1547-OUT,B-6572-OUT;n:type:ShaderForge.SFN_Add,id:2107,x:32875,y:33864,varname:node_2107,prsc:2|A-6524-OUT,B-9013-OUT;n:type:ShaderForge.SFN_Multiply,id:7039,x:34050,y:34115,varname:node_7039,prsc:2|A-6698-OUT,B-489-OUT;n:type:ShaderForge.SFN_Divide,id:6698,x:33304,y:33953,varname:node_6698,prsc:2|A-2107-OUT,B-6829-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6829,x:32875,y:34040,ptovrint:False,ptlb:Waves,ptin:_Waves,varname:node_6829,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Vector1,id:4979,x:34011,y:33902,varname:node_4979,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Vector1,id:3288,x:34011,y:33974,varname:node_3288,prsc:2,v1:0.8;n:type:ShaderForge.SFN_Vector1,id:8972,x:32673,y:33227,varname:node_8972,prsc:2,v1:1;n:type:ShaderForge.SFN_Add,id:2557,x:32071,y:32758,varname:node_2557,prsc:2|A-2338-OUT,B-7561-OUT;n:type:ShaderForge.SFN_Vector1,id:7561,x:31878,y:32890,varname:node_7561,prsc:2,v1:1;n:type:ShaderForge.SFN_Divide,id:9903,x:32276,y:32758,varname:node_9903,prsc:2|A-2557-OUT,B-1878-OUT;n:type:ShaderForge.SFN_Vector1,id:1878,x:32071,y:32890,varname:node_1878,prsc:2,v1:2;n:type:ShaderForge.SFN_Power,id:4425,x:32541,y:32803,varname:node_4425,prsc:2|VAL-9903-OUT,EXP-6574-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6574,x:32276,y:32925,ptovrint:False,ptlb:k,ptin:_k,varname:node_6574,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Add,id:1292,x:31708,y:34253,varname:node_1292,prsc:2|A-164-OUT,B-6684-OUT;n:type:ShaderForge.SFN_Vector1,id:6684,x:31504,y:34391,varname:node_6684,prsc:2,v1:1;n:type:ShaderForge.SFN_Divide,id:7619,x:31903,y:34253,varname:node_7619,prsc:2|A-1292-OUT,B-508-OUT;n:type:ShaderForge.SFN_Vector1,id:508,x:31708,y:34391,varname:node_508,prsc:2,v1:2;n:type:ShaderForge.SFN_Power,id:9553,x:32111,y:34253,varname:node_9553,prsc:2|VAL-7619-OUT,EXP-5821-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5821,x:31903,y:34413,ptovrint:False,ptlb:k2,ptin:_k2,varname:node_5821,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:6355,x:32026,y:31935,varname:node_6355,prsc:2|A-6574-OUT,B-991-OUT,C-4163-OUT;n:type:ShaderForge.SFN_Power,id:4263,x:32026,y:32089,varname:node_4263,prsc:2|VAL-9903-OUT,EXP-1615-OUT;n:type:ShaderForge.SFN_Add,id:1615,x:31815,y:32112,varname:node_1615,prsc:2|A-6574-OUT,B-6439-OUT;n:type:ShaderForge.SFN_Vector1,id:6439,x:31616,y:32133,varname:node_6439,prsc:2,v1:-1;n:type:ShaderForge.SFN_Multiply,id:6243,x:32361,y:31923,varname:node_6243,prsc:2|A-6355-OUT,B-4263-OUT,C-4527-OUT;n:type:ShaderForge.SFN_Cos,id:4527,x:32026,y:32231,varname:node_4527,prsc:2|IN-5185-OUT;n:type:ShaderForge.SFN_Multiply,id:2682,x:32575,y:31923,varname:node_2682,prsc:2|A-6243-OUT,B-4070-OUT;n:type:ShaderForge.SFN_Vector1,id:4070,x:32361,y:32058,varname:node_4070,prsc:2,v1:-1;n:type:ShaderForge.SFN_Append,id:5208,x:33039,y:31947,varname:node_5208,prsc:2|A-2762-OUT,B-5521-OUT,C-713-OUT;n:type:ShaderForge.SFN_Vector1,id:713,x:32729,y:32183,varname:node_713,prsc:2,v1:1;n:type:ShaderForge.SFN_Dot,id:991,x:31240,y:31952,varname:node_991,prsc:2,dt:0|A-5763-OUT,B-3857-R;n:type:ShaderForge.SFN_Dot,id:1170,x:30790,y:31272,varname:node_1170,prsc:2,dt:0|A-5763-OUT,B-3857-G;n:type:ShaderForge.SFN_Multiply,id:4007,x:31759,y:31107,varname:node_4007,prsc:2|A-5763-R,B-3837-OUT,C-403-OUT,D-6281-OUT;n:type:ShaderForge.SFN_Power,id:3550,x:32019,y:31439,varname:node_3550,prsc:2|VAL-9903-OUT,EXP-8382-OUT;n:type:ShaderForge.SFN_Cos,id:2950,x:32019,y:31581,varname:node_2950,prsc:2|IN-5185-OUT;n:type:ShaderForge.SFN_Add,id:8382,x:31808,y:31462,varname:node_8382,prsc:2|A-6574-OUT,B-1112-OUT;n:type:ShaderForge.SFN_Vector1,id:1112,x:31613,y:31481,varname:node_1112,prsc:2,v1:-1;n:type:ShaderForge.SFN_Multiply,id:1034,x:32271,y:31279,varname:node_1034,prsc:2|A-4007-OUT,B-3550-OUT,C-2950-OUT;n:type:ShaderForge.SFN_Vector1,id:3955,x:32354,y:31408,varname:node_3955,prsc:2,v1:-1;n:type:ShaderForge.SFN_Multiply,id:2762,x:32568,y:31273,varname:node_2762,prsc:2|A-4007-OUT,B-3955-OUT;n:type:ShaderForge.SFN_Lerp,id:912,x:33915,y:31924,varname:node_912,prsc:2|A-8721-OUT,B-5208-OUT,T-1261-OUT;n:type:ShaderForge.SFN_Vector3,id:8721,x:33579,y:32084,varname:node_8721,prsc:2,v1:0.5019608,v2:0.5019608,v3:1;n:type:ShaderForge.SFN_Slider,id:1261,x:33422,y:32209,ptovrint:False,ptlb:ormal,ptin:_ormal,varname:node_1261,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Vector1,id:6106,x:31614,y:30204,varname:node_6106,prsc:2,v1:-1;n:type:ShaderForge.SFN_Add,id:1825,x:31809,y:30185,varname:node_1825,prsc:2|A-5821-OUT,B-6106-OUT;n:type:ShaderForge.SFN_Power,id:4899,x:32020,y:30162,varname:node_4899,prsc:2|VAL-7619-OUT,EXP-1825-OUT;n:type:ShaderForge.SFN_Cos,id:5288,x:32020,y:30304,varname:node_5288,prsc:2|IN-7481-OUT;n:type:ShaderForge.SFN_Multiply,id:6840,x:32020,y:30008,varname:node_6840,prsc:2|A-8492-OUT,B-5821-OUT,C-3817-OUT;n:type:ShaderForge.SFN_Multiply,id:8610,x:32355,y:29996,varname:node_8610,prsc:2|A-6840-OUT,B-4899-OUT,C-5288-OUT;n:type:ShaderForge.SFN_Vector1,id:1525,x:32355,y:30131,varname:node_1525,prsc:2,v1:-1;n:type:ShaderForge.SFN_Multiply,id:3172,x:32569,y:29996,varname:node_3172,prsc:2|A-8610-OUT,B-1525-OUT;n:type:ShaderForge.SFN_Multiply,id:2779,x:32576,y:30646,varname:node_2779,prsc:2|A-9818-OUT,B-6690-OUT;n:type:ShaderForge.SFN_Multiply,id:9818,x:32362,y:30646,varname:node_9818,prsc:2|A-2919-OUT,B-1010-OUT,C-3191-OUT;n:type:ShaderForge.SFN_Multiply,id:2919,x:32027,y:30658,varname:node_2919,prsc:2|A-707-OUT,B-5821-OUT,C-3817-OUT;n:type:ShaderForge.SFN_Vector1,id:6690,x:32362,y:30781,varname:node_6690,prsc:2,v1:-1;n:type:ShaderForge.SFN_Cos,id:3191,x:32027,y:30954,varname:node_3191,prsc:2|IN-7481-OUT;n:type:ShaderForge.SFN_Add,id:2669,x:31816,y:30835,varname:node_2669,prsc:2|A-5821-OUT,B-547-OUT;n:type:ShaderForge.SFN_Vector1,id:547,x:31617,y:30856,varname:node_547,prsc:2,v1:-1;n:type:ShaderForge.SFN_Dot,id:8492,x:31225,y:29985,varname:node_8492,prsc:2,dt:0|A-1547-OUT,B-6572-R;n:type:ShaderForge.SFN_Dot,id:707,x:31245,y:30687,varname:node_707,prsc:2,dt:0|A-1547-OUT,B-6572-G;n:type:ShaderForge.SFN_Power,id:1010,x:32027,y:30825,varname:node_1010,prsc:2|VAL-7619-OUT,EXP-2669-OUT;n:type:ShaderForge.SFN_Append,id:1760,x:33094,y:30425,varname:node_1760,prsc:2|A-3172-OUT,B-2779-OUT,C-9586-OUT;n:type:ShaderForge.SFN_Vector1,id:9586,x:32576,y:30781,varname:node_9586,prsc:2,v1:1;n:type:ShaderForge.SFN_Add,id:4577,x:33516,y:31131,varname:node_4577,prsc:2|A-1760-OUT,B-5208-OUT;n:type:ShaderForge.SFN_Divide,id:5320,x:33746,y:31131,varname:node_5320,prsc:2|A-4577-OUT,B-77-OUT;n:type:ShaderForge.SFN_Vector1,id:77,x:33516,y:31271,varname:node_77,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:1119,x:29627,y:32627,varname:node_1119,prsc:2|A-3534-OUT,B-6532-OUT;n:type:ShaderForge.SFN_Pi,id:3534,x:29457,y:32571,varname:node_3534,prsc:2;n:type:ShaderForge.SFN_Vector1,id:5905,x:32974,y:31562,varname:node_5905,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:8490,x:29499,y:34184,varname:node_8490,prsc:2|A-5539-OUT,B-5458-OUT;n:type:ShaderForge.SFN_Pi,id:5539,x:29329,y:34128,varname:node_5539,prsc:2;n:type:ShaderForge.SFN_Vector1,id:5458,x:29296,y:34247,varname:node_5458,prsc:2,v1:2;n:type:ShaderForge.SFN_ValueProperty,id:403,x:32445,y:33138,ptovrint:False,ptlb:Amplitde,ptin:_Amplitde,varname:node_403,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:5751,x:32119,y:34587,ptovrint:False,ptlb:Amplitde_2,ptin:_Amplitde_2,varname:_Amplitde_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Vector1,id:6897,x:32119,y:34660,varname:node_6897,prsc:2,v1:1;n:type:ShaderForge.SFN_Cos,id:6281,x:31352,y:31318,varname:node_6281,prsc:2|IN-5185-OUT;n:type:ShaderForge.SFN_Vector1,id:5521,x:32729,y:32119,varname:node_5521,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:3837,x:30755,y:32048,varname:node_3837,prsc:2|A-4163-OUT,B-3032-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3032,x:30430,y:32400,ptovrint:False,ptlb:node_3032,ptin:_node_3032,varname:node_3032,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;proporder:1107-9908-9365-4733-7937-4956-6310-6829-6574-5821-1261-403-5751-3032;pass:END;sub:END;*/

Shader "Custom/SHD_SeaTuto" {
    Properties {
        _BaseColor ("Base Color", Color) = (0.4273356,0.6251044,0.7647059,1)
        _WavesSpeed ("Waves Speed", Float ) = 0.2
        _Direction ("Direction", Color) = (1,0.309,0,1)
        _WaveLegt_L ("WaveLegt_L", Float ) = 100
        _WavesSpeed_2 ("Waves Speed_2", Float ) = 0.2
        _WaveLegt_L_2 ("WaveLegt_L_2", Float ) = 100
        _Direction_2 ("Direction_2", Color) = (0.691,0.309,0,1)
        _Waves ("Waves", Float ) = 2
        _k ("k", Float ) = 2
        _k2 ("k2", Float ) = 0
        _ormal ("ormal", Range(0, 1)) = 0
        _Amplitde ("Amplitde", Float ) = 0
        _Amplitde_2 ("Amplitde_2", Float ) = 0
        _node_3032 ("node_3032", Float ) = 0
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
            uniform float _WavesSpeed;
            uniform float4 _Direction;
            uniform float _WaveLegt_L;
            uniform float _WavesSpeed_2;
            uniform float _WaveLegt_L_2;
            uniform float4 _Direction_2;
            uniform float _Waves;
            uniform float _ormal;
            uniform float _Amplitde;
            uniform float _Amplitde_2;
            uniform float _node_3032;
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
                float2 node_5763 = _Direction.rgb.rb; // Di
                float2 node_3857 = mul(unity_ObjectToWorld, v.vertex).rgb.rb;
                float node_4163 = ((3.141592654*2.0)/_WaveLegt_L); // wi
                float4 node_5099 = _Time + _TimeEditor;
                float node_5185 = ((dot(node_5763,node_3857)*node_4163)+(node_5099.g*(node_4163*_WavesSpeed)));
                float node_2338 = sin(node_5185);
                float2 node_1547 = _Direction_2.rgb.rb;
                float2 node_6572 = mul(unity_ObjectToWorld, v.vertex).rgb.rb;
                float node_3817 = ((3.141592654*2.0)/_WaveLegt_L_2);
                float4 node_6800 = _Time + _TimeEditor;
                float node_7481 = ((dot(node_1547,node_6572)*node_3817)+(node_6800.g*(node_3817*_WavesSpeed_2)));
                float node_164 = sin(node_7481);
                float node_6698 = (((node_2338*_Amplitde*1.0)+(node_164*_Amplitde_2*1.0))/_Waves);
                v.vertex.xyz += (node_6698*v.normal);
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
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 node_5763 = _Direction.rgb.rb; // Di
                float node_4163 = ((3.141592654*2.0)/_WaveLegt_L); // wi
                float2 node_3857 = i.posWorld.rgb.rb;
                float4 node_5099 = _Time + _TimeEditor;
                float node_5185 = ((dot(node_5763,node_3857)*node_4163)+(node_5099.g*(node_4163*_WavesSpeed)));
                float node_4007 = (node_5763.r*(node_4163*_node_3032)*_Amplitde*cos(node_5185));
                float3 node_5208 = float3((node_4007*(-1.0)),0.5,1.0);
                float3 normalLocal = lerp(float3(0.5019608,0.5019608,1),node_5208,_ormal);
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
                float3 diffuseColor = node_5208;
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
            uniform float _WavesSpeed;
            uniform float4 _Direction;
            uniform float _WaveLegt_L;
            uniform float _WavesSpeed_2;
            uniform float _WaveLegt_L_2;
            uniform float4 _Direction_2;
            uniform float _Waves;
            uniform float _ormal;
            uniform float _Amplitde;
            uniform float _Amplitde_2;
            uniform float _node_3032;
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
                float2 node_5763 = _Direction.rgb.rb; // Di
                float2 node_3857 = mul(unity_ObjectToWorld, v.vertex).rgb.rb;
                float node_4163 = ((3.141592654*2.0)/_WaveLegt_L); // wi
                float4 node_5099 = _Time + _TimeEditor;
                float node_5185 = ((dot(node_5763,node_3857)*node_4163)+(node_5099.g*(node_4163*_WavesSpeed)));
                float node_2338 = sin(node_5185);
                float2 node_1547 = _Direction_2.rgb.rb;
                float2 node_6572 = mul(unity_ObjectToWorld, v.vertex).rgb.rb;
                float node_3817 = ((3.141592654*2.0)/_WaveLegt_L_2);
                float4 node_6800 = _Time + _TimeEditor;
                float node_7481 = ((dot(node_1547,node_6572)*node_3817)+(node_6800.g*(node_3817*_WavesSpeed_2)));
                float node_164 = sin(node_7481);
                float node_6698 = (((node_2338*_Amplitde*1.0)+(node_164*_Amplitde_2*1.0))/_Waves);
                v.vertex.xyz += (node_6698*v.normal);
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
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 node_5763 = _Direction.rgb.rb; // Di
                float node_4163 = ((3.141592654*2.0)/_WaveLegt_L); // wi
                float2 node_3857 = i.posWorld.rgb.rb;
                float4 node_5099 = _Time + _TimeEditor;
                float node_5185 = ((dot(node_5763,node_3857)*node_4163)+(node_5099.g*(node_4163*_WavesSpeed)));
                float node_4007 = (node_5763.r*(node_4163*_node_3032)*_Amplitde*cos(node_5185));
                float3 node_5208 = float3((node_4007*(-1.0)),0.5,1.0);
                float3 normalLocal = lerp(float3(0.5019608,0.5019608,1),node_5208,_ormal);
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
                float3 diffuseColor = node_5208;
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
            uniform float _WavesSpeed;
            uniform float4 _Direction;
            uniform float _WaveLegt_L;
            uniform float _WavesSpeed_2;
            uniform float _WaveLegt_L_2;
            uniform float4 _Direction_2;
            uniform float _Waves;
            uniform float _Amplitde;
            uniform float _Amplitde_2;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float2 node_5763 = _Direction.rgb.rb; // Di
                float2 node_3857 = mul(unity_ObjectToWorld, v.vertex).rgb.rb;
                float node_4163 = ((3.141592654*2.0)/_WaveLegt_L); // wi
                float4 node_5099 = _Time + _TimeEditor;
                float node_5185 = ((dot(node_5763,node_3857)*node_4163)+(node_5099.g*(node_4163*_WavesSpeed)));
                float node_2338 = sin(node_5185);
                float2 node_1547 = _Direction_2.rgb.rb;
                float2 node_6572 = mul(unity_ObjectToWorld, v.vertex).rgb.rb;
                float node_3817 = ((3.141592654*2.0)/_WaveLegt_L_2);
                float4 node_6800 = _Time + _TimeEditor;
                float node_7481 = ((dot(node_1547,node_6572)*node_3817)+(node_6800.g*(node_3817*_WavesSpeed_2)));
                float node_164 = sin(node_7481);
                float node_6698 = (((node_2338*_Amplitde*1.0)+(node_164*_Amplitde_2*1.0))/_Waves);
                v.vertex.xyz += (node_6698*v.normal);
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
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
