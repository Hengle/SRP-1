﻿Shader "SRP/OpaqueDepth" {
    
    SubShader {

        Tags { 
            "RenderType"="Opaque"
        }

        Pass {
            ZTest LEqual
            ZWrite On
			Cull Front

            HLSLPROGRAM
		    
			#pragma target 3.5

			#pragma multi_compile_instancing

			#pragma vertex UnlitVertex
			#pragma fragment NoneFragment

			#include "SRPInclude.hlsl"

		    ENDHLSL
        }
    }
}
