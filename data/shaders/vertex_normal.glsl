
precision mediump float;

uniform highp mat4 u_MVPMatrix;
uniform mediump mat4 u_MVMatrix;

attribute highp vec3 a_Position;
attribute mediump vec4 a_Color;
attribute mediump vec2 a_TexCoordinate;

varying lowp vec4 v_Color;
varying mediump vec2 v_TexCoordinate;

void main()
{
	v_Color = a_Color / 255.0;
	v_TexCoordinate = a_TexCoordinate;
	gl_Position = (u_MVPMatrix) * vec4(a_Position, 1.0);
}


