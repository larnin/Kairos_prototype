// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:1,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2980,x:33071,y:32719,varname:node_2980,prsc:2|diff-1389-OUT,spec-7731-OUT,gloss-5103-OUT,normal-8033-RGB,emission-5644-OUT,olwid-1072-OUT;n:type:ShaderForge.SFN_Vector1,id:7731,x:32642,y:32698,varname:node_7731,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:5103,x:32642,y:32748,varname:node_5103,prsc:2,v1:0.8;n:type:ShaderForge.SFN_Tex2d,id:3413,x:32101,y:32453,ptovrint:False,ptlb:Albedo,ptin:_Albedo,varname:node_3413,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6b945e39de12bf34ab4880818ca028f6,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Dot,id:8903,x:31187,y:32718,varname:node_8903,prsc:2,dt:4|A-451-OUT,B-9732-OUT;n:type:ShaderForge.SFN_LightVector,id:451,x:30921,y:32645,varname:node_451,prsc:2;n:type:ShaderForge.SFN_LightAttenuation,id:5042,x:30921,y:32932,varname:node_5042,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:9732,x:30921,y:32781,prsc:2,pt:True;n:type:ShaderForge.SFN_Multiply,id:2904,x:31362,y:32840,varname:node_2904,prsc:2|A-8903-OUT,B-5042-OUT;n:type:ShaderForge.SFN_Step,id:6446,x:32101,y:33044,varname:node_6446,prsc:2|A-6867-OUT,B-4954-OUT;n:type:ShaderForge.SFN_Slider,id:4954,x:31769,y:33155,ptovrint:False,ptlb:ZoneCrayon1,ptin:_ZoneCrayon1,varname:node_4954,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.09828121,max:1;n:type:ShaderForge.SFN_Slider,id:1752,x:31769,y:33311,ptovrint:False,ptlb:ZoneCrayon2,ptin:_ZoneCrayon2,varname:_ZoneCrayon2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4242856,max:1;n:type:ShaderForge.SFN_Step,id:7675,x:32101,y:33199,varname:node_7675,prsc:2|A-6867-OUT,B-1752-OUT;n:type:ShaderForge.SFN_Multiply,id:8561,x:32630,y:32961,varname:node_8561,prsc:2|A-3413-RGB,B-8340-OUT;n:type:ShaderForge.SFN_Rotator,id:3725,x:31675,y:32554,varname:node_3725,prsc:2|UVIN-6332-OUT,ANG-6548-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:5771,x:31849,y:32668,ptovrint:False,ptlb:Crayon,ptin:_Crayon,varname:node_5771,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:4bbd2b54f4b57a443a431c259850ece0,ntxv:0,isnm:False;n:type:ShaderForge.SFN_TexCoord,id:7151,x:31205,y:32356,varname:node_7151,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:6332,x:31456,y:32497,varname:node_6332,prsc:2|A-2105-OUT,B-3768-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3768,x:31233,y:32622,ptovrint:False,ptlb:CrayonTiling,ptin:_CrayonTiling,varname:node_3768,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:6548,x:31456,y:32646,ptovrint:False,ptlb:Crayon2 Pivot,ptin:_Crayon2Pivot,varname:node_6548,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Tex2d,id:1143,x:32101,y:32754,varname:node_1143,prsc:2,tex:4bbd2b54f4b57a443a431c259850ece0,ntxv:0,isnm:False|UVIN-3725-UVOUT,TEX-5771-TEX;n:type:ShaderForge.SFN_Tex2d,id:8137,x:32101,y:32610,varname:node_8137,prsc:2,tex:4bbd2b54f4b57a443a431c259850ece0,ntxv:0,isnm:False|UVIN-6332-OUT,TEX-5771-TEX;n:type:ShaderForge.SFN_Slider,id:1072,x:32584,y:33361,ptovrint:False,ptlb:OutlineWidth,ptin:_OutlineWidth,varname:node_1072,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.008798556,max:0.1;n:type:ShaderForge.SFN_Tex2d,id:8026,x:30920,y:33148,ptovrint:False,ptlb:Clouds,ptin:_Clouds,varname:node_8026,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ba37349d2e148c743a23954dcb764e72,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:9191,x:31118,y:33148,varname:node_9191,prsc:2|A-8026-RGB,B-3556-OUT,T-3556-OUT;n:type:ShaderForge.SFN_Vector1,id:3556,x:30920,y:33313,varname:node_3556,prsc:2,v1:0.8;n:type:ShaderForge.SFN_Multiply,id:6867,x:31640,y:32931,varname:node_6867,prsc:2|A-2904-OUT,B-9191-OUT;n:type:ShaderForge.SFN_Vector1,id:1389,x:32642,y:32643,varname:node_1389,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Lerp,id:5644,x:32893,y:32964,varname:node_5644,prsc:2|A-8561-OUT,B-7731-OUT,T-6042-OUT;n:type:ShaderForge.SFN_Slider,id:6042,x:32584,y:33239,ptovrint:False,ptlb:Emission,ptin:_Emission,varname:node_6042,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:3681,x:32352,y:32968,varname:node_3681,prsc:2|A-8176-OUT,B-8137-RGB,T-6446-OUT;n:type:ShaderForge.SFN_Vector1,id:8176,x:32101,y:32979,varname:node_8176,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:5951,x:32352,y:33099,varname:node_5951,prsc:2|A-8176-OUT,B-1143-RGB,T-7675-OUT;n:type:ShaderForge.SFN_Multiply,id:6684,x:32527,y:33099,varname:node_6684,prsc:2|A-3681-OUT,B-5951-OUT;n:type:ShaderForge.SFN_Multiply,id:8340,x:32701,y:33099,varname:node_8340,prsc:2|A-6684-OUT,B-6684-OUT;n:type:ShaderForge.SFN_Tex2d,id:8033,x:32779,y:32793,ptovrint:False,ptlb:Normal Map,ptin:_NormalMap,varname:node_8033,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_ScreenPos,id:92,x:31205,y:32219,varname:node_92,prsc:2,sctp:2;n:type:ShaderForge.SFN_Lerp,id:2105,x:31506,y:32261,varname:node_2105,prsc:2|A-92-UVOUT,B-7151-UVOUT,T-638-OUT;n:type:ShaderForge.SFN_Slider,id:638,x:30915,y:32447,ptovrint:False,ptlb:node_638,ptin:_node_638,varname:node_638,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;proporder:3413-4954-5771-3768-1752-6548-1072-8026-6042-8033-638;pass:END;sub:END;*/

Shader "Custom/SHD_Crayon01_ScreenSpace" {
    Properties {
        _Albedo ("Albedo", 2D) = "white" {}
        _ZoneCrayon1 ("ZoneCrayon1", Range(0, 1)) = 0.09828121
        _Crayon ("Crayon", 2D) = "white" {}
        _CrayonTiling ("CrayonTiling", Float ) = 1
        _ZoneCrayon2 ("ZoneCrayon2", Range(0, 1)) = 0.4242856
        _Crayon2Pivot ("Crayon2 Pivot", Float ) = 0.1
        _OutlineWidth ("OutlineWidth", Range(0, 0.1)) = 0.008798556
        _Clouds ("Clouds", 2D) = "white" {}
        _Emission ("Emission", Range(0, 1)) = 0
        _NormalMap ("Normal Map", 2D) = "bump" {}
        _node_638 ("node_638", Range(0, 1)) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float _OutlineWidth;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_FOG_COORDS(0)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos(float4(v.vertex.xyz + v.normal*_OutlineWidth,1) );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                return fixed4(float3(0,0,0),0);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _Albedo; uniform float4 _Albedo_ST;
            uniform float _ZoneCrayon1;
            uniform float _ZoneCrayon2;
            uniform sampler2D _Crayon; uniform float4 _Crayon_ST;
            uniform float _CrayonTiling;
            uniform float _Crayon2Pivot;
            uniform sampler2D _Clouds; uniform float4 _Clouds_ST;
            uniform float _Emission;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _node_638;
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
                float4 screenPos : TEXCOORD5;
                LIGHTING_COORDS(6,7)
                UNITY_FOG_COORDS(8)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float3 normalLocal = _NormalMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 1.0 - 0.8; // Convert roughness to gloss
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
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float node_1389 = 0.5;
                float3 diffuseColor = float3(node_1389,node_1389,node_1389); // Need this for specular when using metallic
                float specularMonochrome;
                float3 specularColor;
                float node_7731 = 0.0;
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, node_7731, specularColor, specularMonochrome );
                specularMonochrome = 1-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
                float specularPBL = max(0, (NdotL*visTerm*normTerm) * (UNITY_PI / 4) );
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float4 _Albedo_var = tex2D(_Albedo,TRANSFORM_TEX(i.uv0, _Albedo));
                float node_8176 = 1.0;
                float2 node_6332 = (lerp(sceneUVs.rg,i.uv0,_node_638)*_CrayonTiling);
                float4 node_8137 = tex2D(_Crayon,TRANSFORM_TEX(node_6332, _Crayon));
                float4 _Clouds_var = tex2D(_Clouds,TRANSFORM_TEX(i.uv0, _Clouds));
                float node_3556 = 0.8;
                float3 node_6867 = ((0.5*dot(lightDirection,normalDirection)+0.5*attenuation)*lerp(_Clouds_var.rgb,float3(node_3556,node_3556,node_3556),node_3556));
                float node_3725_ang = _Crayon2Pivot;
                float node_3725_spd = 1.0;
                float node_3725_cos = cos(node_3725_spd*node_3725_ang);
                float node_3725_sin = sin(node_3725_spd*node_3725_ang);
                float2 node_3725_piv = float2(0.5,0.5);
                float2 node_3725 = (mul(node_6332-node_3725_piv,float2x2( node_3725_cos, -node_3725_sin, node_3725_sin, node_3725_cos))+node_3725_piv);
                float4 node_1143 = tex2D(_Crayon,TRANSFORM_TEX(node_3725, _Crayon));
                float3 node_6684 = (lerp(float3(node_8176,node_8176,node_8176),node_8137.rgb,step(node_6867,_ZoneCrayon1))*lerp(float3(node_8176,node_8176,node_8176),node_1143.rgb,step(node_6867,_ZoneCrayon2)));
                float3 emissive = lerp((_Albedo_var.rgb*(node_6684*node_6684)),float3(node_7731,node_7731,node_7731),_Emission);
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
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
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _Albedo; uniform float4 _Albedo_ST;
            uniform float _ZoneCrayon1;
            uniform float _ZoneCrayon2;
            uniform sampler2D _Crayon; uniform float4 _Crayon_ST;
            uniform float _CrayonTiling;
            uniform float _Crayon2Pivot;
            uniform sampler2D _Clouds; uniform float4 _Clouds_ST;
            uniform float _Emission;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _node_638;
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
                float4 screenPos : TEXCOORD5;
                LIGHTING_COORDS(6,7)
                UNITY_FOG_COORDS(8)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float3 normalLocal = _NormalMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 1.0 - 0.8; // Convert roughness to gloss
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float node_1389 = 0.5;
                float3 diffuseColor = float3(node_1389,node_1389,node_1389); // Need this for specular when using metallic
                float specularMonochrome;
                float3 specularColor;
                float node_7731 = 0.0;
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, node_7731, specularColor, specularMonochrome );
                specularMonochrome = 1-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
                float specularPBL = max(0, (NdotL*visTerm*normTerm) * (UNITY_PI / 4) );
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
