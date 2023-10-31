precision mediump float;

uniform mediump mat4 u_MVPMatrix;
uniform mediump mat4 u_MVMatrix;

attribute highp vec3 a_Position;
attribute mediump vec4 a_Color;
attribute mediump vec2 a_TexCoordinate;
attribute mediump vec2 a_Extra; //contains the scale and inverse scale

uniform float 		u_Scale;
uniform float 		u_Weight;
uniform float 		u_Softness;			// controls the spread / blur
uniform float 		u_OutlineThickness; // controls the thickness of the outline; proportional to dilate
uniform vec4 		u_OutlineColor;		// the color of the outline

varying mediump vec2 v_TexCoordinate;
varying mediump float v_Scale;
varying mediump float v_BiasIn;
varying mediump float v_BiasOut;
varying lowp vec4 v_FaceColor;
varying lowp vec4 v_OutlineColor;

float textureSize = 256.0;
float gradientScale = 10.0;
float scaleRatioA = 0.9;
float faceDilate = 0.1;
float sharpness = 0.0;

void main(void)
{
       	vec4 faceColor = a_Color / 255.0;
       	v_TexCoordinate = a_TexCoordinate;
       	gl_Position = (u_MVPMatrix) * vec4(a_Position, 1.0);
		
		//vec2 pixelSize = vec2(1.0, 1.0) / vec2(textureSize, textureSize); 
		float scale = a_Extra.x * u_Scale;// * inversesqrt(dot(pixelSize, pixelSize));
		scale *= gradientScale * (sharpness + 1.0);
		scale /= 1.0 + (u_Softness * scaleRatioA * scale); // scale pixel size by outline softness
		v_Scale = scale;

		float weight = (u_Weight + faceDilate) * scaleRatioA * 0.5;

		float bias = (0.5 - weight) * scale - 0.5;
		float outline = u_OutlineThickness * scaleRatioA * 0.5 * scale;
		v_BiasOut = bias + outline;
		v_BiasIn = bias - outline;
	
		float opacity = faceColor.a;

    	faceColor.rgb *= faceColor.a;
		v_FaceColor = faceColor;

		vec4 outlineColor = u_OutlineColor;
		outlineColor.a *= opacity;
		outlineColor.rgb *= outlineColor.a;
		outlineColor = mix(faceColor, outlineColor, sqrt(min(1.0, (outline * 2.0))));
		v_OutlineColor = outlineColor;

}