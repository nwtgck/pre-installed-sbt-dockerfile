# This is for working test in CI (Travis) for automated build images

require './sbt_versions'

SBT_VERSIONS.each{|sbt_version|
    system("docker run --rm nwtgck/pre-installed-sbt:#{sbt_version} 'sbt' 'sbtVersion'")
}