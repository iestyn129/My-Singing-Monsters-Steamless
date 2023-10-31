precision mediump float;

attribute highp vec3 	a_Position;
attribute mediump vec4 	a_Color;
attribute mediump vec2 	a_TexCoordinate;
attribute mediump vec2 	a_Extra;

uniform mediump mat4 	u_MVPMatrix;
uniform mediump float 	u_Softness;


varying lowp vec4 		v_Color;
varying mediump vec2 	v_TexCoordinate;
//varying mediump vec2 	v_Extra;
varying mediump float 	v_Softness;

varying vec3 			v_WorldPosition;

float easeOut(float x) {
	return 1.0 - pow(1.0 - x, 2.0);
}

void main(void)
{
	// as the font scales up it starts to look blurry so we want to "sharpen" it
	// try doing that by decreasing softness as size scales up
	// a_Extra.x is the raw scale value
	// a_Extra.y is the inverse scale value clamped between 0 and 1
	// adjust the softness by subtracting the scale value proportionally

	// start sharpening at 0.4 scale
	// minimum softness = 0.1
	v_Softness = u_Softness - mix(0.0, u_Softness - 0.05, easeOut(clamp((a_Extra.x - 0.4) / 0.6, 0.0, 1.0)));

	v_Color = a_Color / 255.0;
	v_TexCoordinate = a_TexCoordinate;
	
	v_WorldPosition = a_Position;

	gl_Position = (u_MVPMatrix) * vec4(a_Position, 1.0);


}