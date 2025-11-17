#version 450
#include "compiled.inc"
in vec4 pos;
in vec2 nor;
in vec2 tex;
out vec3 wnormal;
out vec2 texCoord;
out vec3 mposition;
uniform mat3 N;
uniform mat4 WVP;
uniform float texUnpack;
uniform float posUnpack;
void main() {
	vec4 spos = vec4(pos.xyz, 1.0);
	wnormal = normalize(N * vec3(nor.xy, pos.w));
	texCoord = tex * texUnpack;
	mposition = spos.xyz * posUnpack;
	gl_Position = WVP * spos;
}
