require "requirement"

class XorgRequirement < Requirement
  fatal true
  default_formula "gnubila-france/xorg/xorg"

  def initialize(name = "xorg", tags = [])
    @name = name
    if /(\d\.)+\d/ === tags.first
      tags.shift
    end
    super(tags)
  end

  satisfy :build_env => false do
    Formula["gnubila-france/xorg/xorg"].installed?
  end
end
