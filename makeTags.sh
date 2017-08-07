#!/usr/bin/env bash
#makeTags.sh 1.12.0
tag_version=$1
SVN_PATH_URL=svn://10.8.0.88/dev2/webgame/qunying

svn_cp_tag_branche() {
    svn cp --parents $1/trunk/$2 $1/tags/$tag_version/$2 -m "create tag $tag_version"
    svn cp --parents $1/trunk/$2 $1/branches/$tag_version/$2 -m "create tag $tag_version"
}
svn delete $SVN_PATH_URL/client/tags/$tag_version -m "create tag $tag_version"
svn delete $SVN_PATH_URL/client/branches/$tag_version -m "create tag $tag_version"
svn delete $SVN_PATH_URL/share/tags/$tag_version -m "create tag $tag_version"
svn delete $SVN_PATH_URL/share/branches/$tag_version -m "create tag $tag_version"
svn_cp_tag_branche $SVN_PATH_URL/client gameClient gameClient
svn lock $SVN_PATH_URL/branches/$tag_version/gameClient/cached_res/script/oyeahgame/guide/model/GuideModel.lua
# svn_cp_tag_branche $SVN_PATH_URL/client runtime-src runtime-src
svn_cp_tag_branche $SVN_PATH_URL/share UI
svn_cp_tag_branche $SVN_PATH_URL/share tools/client_cocostudio_build
svn_cp_tag_branche $SVN_PATH_URL/share 程序目录/表生成工具
svn_cp_tag_branche $SVN_PATH_URL/share 程序目录/通讯协议
svn_cp_tag_branche $SVN_PATH_URL/share 程序目录/已生成好的协议
svn_cp_tag_branche $SVN_PATH_URL/share 程序目录/resource
svn_cp_tag_branche $SVN_PATH_URL/share 策划目录/配置
svn_cp_tag_branche $SVN_PATH_URL/share 美术资源/程序使用序列帧
svn_cp_tag_branche $SVN_PATH_URL/share 美术资源/技能字库