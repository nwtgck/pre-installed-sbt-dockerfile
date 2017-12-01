# Avaiable sbt versions
# [HOW TO GET VERSIONS]
# $ git clone https://github.com/sbt/sbt.git
# $ cd sbt/
# $ git tag | grep -v "-" | tail -r
# Done!
SBT_VERSIONS = %w{
    v1.0.4
    v1.0.3
    v1.0.2
    v1.0.1
    v1.0.0
    v0.9.9
    v0.9.8
    v0.9.7
    v0.9.6
    v0.9.5
    v0.9.4
    v0.9.3
    v0.9.2
    v0.9.10
    v0.9.1
    v0.9.0
    v0.7.7
    v0.7.5
    v0.13.9
    v0.13.8
    v0.13.7
    v0.13.6
    v0.13.5
    v0.13.2
    v0.13.16
    v0.13.15
    v0.13.14
    v0.13.13
    v0.13.12
    v0.13.11
    v0.13.10
    v0.13.1
    v0.13.0
    v0.12.4
    v0.12.3
    v0.12.2
    v0.12.1
    v0.12.0
    v0.11.3
    v0.11.2
    v0.11.1
    v0.11.0
    v0.10.1
    v0.10.0
}
  .map{|v| v[1..-1]} # NOTE: Remove 'v'
  .sort_by{|v| Gem::Version.new(v)} # Sort by natual version
  .select{|v| Gem::Version.new(v) >= Gem::Version.new("0.13.6")} # Support >= 0.13.6
  .reverse