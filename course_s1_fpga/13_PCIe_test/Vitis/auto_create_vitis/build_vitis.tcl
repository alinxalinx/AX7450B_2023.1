set tclPath [pwd]
cd $tclPath
cd ..
set projpath [pwd]
puts "Current workspace is $projpath"
setws $projpath
getws
set xsaName top
set appName fsbl_test

#Create a new platform
platform create -name $xsaName -hw $projpath/$xsaName.xsa -proc ps7_cortexa9_0 -os standalone -arch 32-bit -out $projpath
importprojects $projpath/$xsaName
platform active $xsaName
repo -add-platforms $xsaName
#domain active {zynq_fsbl}
#importsources -name $xsaName/zynq_fsbl -path $tclPath/src/fsbl -target-path ./
domain active
#Create a new application
app create -name $appName -platform $xsaName -domain standalone_domain -template "Empty Application"
importsources -name $appName -path $tclPath/src/$appName -linker-script

#Build platform project
platform generate
#Build application project
append appName "_system"
sysproj build -name $appName










