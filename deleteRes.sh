version=(1.9.0 1.10.0 1.11.0 1.12.0)
langType=(en-US ko-KR ja-JP vi-VN zh-TW)


deleteRes()
{	
	cd $1
	svn delete advancedimage.plist
	svn delete advancedimage.pvr.ccz
	svn ci -m "remove wrong res"
}


for v in ${version[*]}; do
	for t in ${langType[*]}; do
		echo "====================>>>>>"
		deleteRes /Users/kaixin/Documents/work/branches/$v/gameClient/cached_res/image/$t/ui/
		deleteRes /Users/kaixin/Documents/work/branches/$v/gameClient/cached_res/image/$t/ui/
	done
done

