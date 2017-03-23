precision highp float;

uniform mat4 tW : WORLD;
uniform mat4 tV : VIEW;
uniform mat4 tP : PROJECTION;

varying vec3 vNormal;

vertex_shader:

attribute vec3 pos : POSITION;
attribute vec3 normal : NORMAL;

void main(void) {
  gl_Position = tP * tV * tW * vec4(pos, 1.0);
  vNormal = normal;
}


fragment_shader:

void main(void) {
  gl_FragColor = vec4(vNormal, 1.0);
}
