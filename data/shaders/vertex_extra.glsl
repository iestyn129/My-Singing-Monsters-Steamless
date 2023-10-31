
precision mediump float;

uniform highp mat4 u_MVPMatrix;       // A constant representing the combined model/view/projectionmatrix.
uniform mediump mat4 u_MVMatrix;        // A constant representing the combined model/view matrix.

attribute highp vec3 a_Position;      // Per-vertex position information we will pass in.
attribute mediump vec4 a_Color;         // Per-vertex color information we will pass in.
attribute mediump vec2 a_TexCoordinate; // Per-vertex texture coordinate information we will pass in.

varying lowp vec4 v_Color;		// This will be passed into the fragment shader.
varying mediump vec2 v_TexCoordinate;	// This will be passed into the fragment shader.
varying vec3 v_WorldPosition;

void main()
{
	v_Color = a_Color * vec4(1.0/128.0, 1.0/128.0, 1.0/128.0, 1.0/255.0);
	v_TexCoordinate = a_TexCoordinate;	// Pass through the texture coordinate.
	v_WorldPosition = a_Position;
	gl_Position = (u_MVPMatrix) * vec4(a_Position, 1.0);
}


