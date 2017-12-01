# This is for working test in CI (Travis) for automated build images

require './sbt_versions'

# For each available sbt verions
SBT_VERSIONS.each{|sbt_version|
    # Docker run sbt and print version by sbtVersion command in sbt
    puts("=========== sbt #{sbt_version} ===========")
    system("docker run --rm nwtgck/pre-installed-sbt:#{sbt_version} sbt -sbt-version #{sbt_version} sbtVersion")
}