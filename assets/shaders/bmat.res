RSRC                     MaterialShader                                                                       resource/name    _code    script/script           res://assets/shaders/bmat.res �          MaterialShader                   fragment_ofs           	   fragment    �   uniform texture Diffuse;
uniform float UVSize;
uniform texture AO;
uniform bool usereflectmap;
uniform texture Reflectmap;

vec3 diff = tex(Diffuse, UV*UVSize).rgb * tex(AO, UV2).rgb;

DIFFUSE = diff;       vertex_ofs              vertex           
   light_ofs              light        RSRC