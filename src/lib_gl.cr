require "./lib_gl/**"

{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% elsif flag?(:win32) %}
  @[Link("OpenGL32")]
{% else %}
  @[Link("GL")]
{% end %}
lib LibGL
end
