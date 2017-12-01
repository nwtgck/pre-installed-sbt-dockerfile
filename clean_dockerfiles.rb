require './sbt_versions'

SBT_VERSIONS.each{|sbt_version|
    dir_path   = sbt_version
    if Dir.exists?(dir_path)
        system("rm -r #{dir_path}")
        puts("'#{dir_path}' removed")
    end
}
