# Avaiable sbt versions
SBT_VERSIONS = `cd sbt && git tag | grep -v "-"`
  .split
  .reverse
  .map{|v| v[1..-1]} # NOTE: Remove 'v'
  .sort_by{|v| Gem::Version.new(v)} # Sort by natual version
  .select{|v| Gem::Version.new(v) >= Gem::Version.new("0.13.6")} # Support >= 0.13.6
  .reverse