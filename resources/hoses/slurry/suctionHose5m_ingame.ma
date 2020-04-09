//Maya ASCII 2018 scene
//Name: suctionHose5m_ingame.ma
//Last modified: Mon, Mar 23, 2020 07:46:20 PM
//Codeset: 1252
requires maya "2018";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "8428756A-4B2F-0F6F-1A00-91BE12FC31C0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.8300096807987321 2.8538269437058412 1.6252213818864245 ;
	setAttr ".r" -type "double3" -395.13835272013318 1143.3999999978837 7.1032722006396979e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "14D781E8-446C-699D-CF13-A9BE6BBD6034";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 6.0370014784086221;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 2.9802322734640008e-08 0 -0.15588194736733552 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "57E01926-431E-033C-7B04-859A6F07F9AC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.15114748811729767 1000.1030538617713 -2.3363756841445076 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "53D460E4-40F4-00A1-EFA5-C082F8321F9B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1030538617713;
	setAttr ".ow" 7.7066246386660975;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 2.9802322734640008e-08 0 -0.15711814857725145 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "3AFC336C-4719-ABB3-2CBC-F0954C8DA0E3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.00073480488028564855 -0.005450679640820244 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "DCDBC1C0-4AB4-9E83-BC56-FCB92B5D7D05";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 0.55198290285125917;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "8015C120-4692-BE53-30FA-63B202C78A0C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 -0.060883823184055691 -5.1540233239369391 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "1FB41416-426D-B532-AFA5-1B816ABD696F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 0.85480955174819262;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "hose_main_component1";
	rename -uid "47A8D0C6-4367-E18B-B18C-19B4FDC7DE4B";
	addAttr -ci true -sn "i3D_objectMask" -ln "i3D_objectMask" -at "long";
	addAttr -ci true -sn "i3D_dynamic" -ln "i3D_dynamic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_joint" -ln "i3D_joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_dynamicFriction" -ln "i3D_dynamicFriction" -at "float";
	addAttr -ci true -sn "i3D_ccd" -ln "i3D_ccd" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_density" -ln "i3D_density" -at "float";
	addAttr -ci true -sn "i3D_splitType" -ln "i3D_splitType" -at "long";
	addAttr -ci true -sn "i3D_splitMinU" -ln "i3D_splitMinU" -at "float";
	addAttr -ci true -sn "i3D_splitMinV" -ln "i3D_splitMinV" -at "float";
	addAttr -ci true -sn "i3D_driveForceLimit" -ln "i3D_driveForceLimit" -at "float";
	addAttr -ci true -sn "i3D_angularDamping" -ln "i3D_angularDamping" -at "float";
	addAttr -ci true -sn "i3D_splitUvWorldScale" -ln "i3D_splitUvWorldScale" -at "float";
	addAttr -ci true -sn "i3D_projection" -ln "i3D_projection" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_driveSpring" -ln "i3D_driveSpring" -at "float";
	addAttr -ci true -sn "i3D_breakableJoint" -ln "i3D_breakableJoint" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_projDistance" -ln "i3D_projDistance" -at "float";
	addAttr -ci true -sn "i3D_driveDamping" -ln "i3D_driveDamping" -at "float";
	addAttr -ci true -sn "i3D_xAxisDrive" -ln "i3D_xAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_compound" -ln "i3D_compound" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_clipDistance" -ln "i3D_clipDistance" -at "float";
	addAttr -ci true -sn "i3D_collision" -ln "i3D_collision" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_scaled" -ln "i3D_scaled" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_projAngle" -ln "i3D_projAngle" -at "float";
	addAttr -ci true -sn "i3D_mergeGroupRoot" -ln "i3D_mergeGroupRoot" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_jointBreakTorque" -ln "i3D_jointBreakTorque" -at "float";
	addAttr -ci true -sn "i3D_restitution" -ln "i3D_restitution" -at "float";
	addAttr -ci true -sn "i3D_yAxisDrive" -ln "i3D_yAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_mergeGroup" -ln "i3D_mergeGroup" -at "long";
	addAttr -ci true -sn "i3D_jointBreakForce" -ln "i3D_jointBreakForce" -at "float";
	addAttr -ci true -sn "i3D_lod1" -ln "i3D_lod1" -at "float";
	addAttr -ci true -sn "i3D_lod2" -ln "i3D_lod2" -at "float";
	addAttr -ci true -sn "i3D_oc" -ln "i3D_oc" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_kinematic" -ln "i3D_kinematic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_trigger" -ln "i3D_trigger" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_static" -ln "i3D_static" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lightMask" -ln "i3D_lightMask" -dt "string";
	addAttr -ci true -sn "i3D_linearDamping" -ln "i3D_linearDamping" -at "float";
	addAttr -ci true -sn "i3D_lod3" -ln "i3D_lod3" -at "float";
	addAttr -ci true -sn "i3D_drivePos" -ln "i3D_drivePos" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lod" -ln "i3D_lod" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_solverIterationCount" -ln "i3D_solverIterationCount" -at "long";
	addAttr -ci true -sn "i3D_nonRenderable" -ln "i3D_nonRenderable" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_boundingVolume" -ln "i3D_boundingVolume" -dt "string";
	addAttr -ci true -sn "i3D_collisionMask" -ln "i3D_collisionMask" -at "long";
	addAttr -ci true -sn "i3D_zAxisDrive" -ln "i3D_zAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_cpuMesh" -ln "i3D_cpuMesh" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_staticFriction" -ln "i3D_staticFriction" -at "float";
	addAttr -ci true -sn "i3D_decalLayer" -ln "i3D_decalLayer" -at "long";
	addAttr -ci true -sn "i3D_splitMaxV" -ln "i3D_splitMaxV" -at "float";
	addAttr -ci true -sn "i3D_splitMaxU" -ln "i3D_splitMaxU" -at "float";
	addAttr -ci true -sn "i3D_compoundChild" -ln "i3D_compoundChild" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_xmlIdentifier" -ln "i3D_xmlIdentifier" -dt "string";
	setAttr ".i3D_objectMask" 255;
	setAttr ".i3D_dynamic" yes;
	setAttr ".i3D_dynamicFriction" 0.5;
	setAttr ".i3D_density" 1;
	setAttr ".i3D_driveForceLimit" 100000;
	setAttr ".i3D_angularDamping" 0.0099999997764825821;
	setAttr ".i3D_splitUvWorldScale" 1;
	setAttr ".i3D_driveSpring" 1;
	setAttr ".i3D_projDistance" 0.0099999997764825821;
	setAttr ".i3D_driveDamping" 0.0099999997764825821;
	setAttr ".i3D_compound" yes;
	setAttr ".i3D_clipDistance" 300;
	setAttr ".i3D_collision" yes;
	setAttr ".i3D_projAngle" 0.0099999997764825821;
	setAttr ".i3D_lightMask" -type "string" "FFFF";
	setAttr ".i3D_solverIterationCount" 4;
	setAttr ".i3D_nonRenderable" yes;
	setAttr ".i3D_boundingVolume" -type "string" "";
	setAttr ".i3D_collisionMask" 8194;
	setAttr ".i3D_cpuMesh" yes;
	setAttr ".i3D_staticFriction" 0.5;
	setAttr ".i3D_splitMaxV" 1;
	setAttr ".i3D_splitMaxU" 1;
	setAttr ".i3D_xmlIdentifier" -type "string" "hose_main_component1";
createNode mesh -n "hose_main_componentShape1" -p "hose_main_component1";
	rename -uid "C5B39052-41E7-FE8C-99A8-65A4D6C323BB";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "hose" -p "hose_main_component1";
	rename -uid "8F0B8A06-4357-D147-436D-6CA628C3BE6C";
	addAttr -ci true -sn "i3D_objectMask" -ln "i3D_objectMask" -at "long";
	addAttr -ci true -sn "i3D_dynamic" -ln "i3D_dynamic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_joint" -ln "i3D_joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_dynamicFriction" -ln "i3D_dynamicFriction" -at "float";
	addAttr -ci true -sn "i3D_ccd" -ln "i3D_ccd" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_density" -ln "i3D_density" -at "float";
	addAttr -ci true -sn "i3D_splitType" -ln "i3D_splitType" -at "long";
	addAttr -ci true -sn "i3D_splitMinU" -ln "i3D_splitMinU" -at "float";
	addAttr -ci true -sn "i3D_splitMinV" -ln "i3D_splitMinV" -at "float";
	addAttr -ci true -sn "i3D_driveForceLimit" -ln "i3D_driveForceLimit" -at "float";
	addAttr -ci true -sn "i3D_angularDamping" -ln "i3D_angularDamping" -at "float";
	addAttr -ci true -sn "i3D_splitUvWorldScale" -ln "i3D_splitUvWorldScale" -at "float";
	addAttr -ci true -sn "i3D_projection" -ln "i3D_projection" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_driveSpring" -ln "i3D_driveSpring" -at "float";
	addAttr -ci true -sn "i3D_breakableJoint" -ln "i3D_breakableJoint" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_projDistance" -ln "i3D_projDistance" -at "float";
	addAttr -ci true -sn "i3D_driveDamping" -ln "i3D_driveDamping" -at "float";
	addAttr -ci true -sn "i3D_xAxisDrive" -ln "i3D_xAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_compound" -ln "i3D_compound" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_clipDistance" -ln "i3D_clipDistance" -at "float";
	addAttr -ci true -sn "i3D_collision" -ln "i3D_collision" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_scaled" -ln "i3D_scaled" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_projAngle" -ln "i3D_projAngle" -at "float";
	addAttr -ci true -sn "i3D_mergeGroupRoot" -ln "i3D_mergeGroupRoot" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_jointBreakTorque" -ln "i3D_jointBreakTorque" -at "float";
	addAttr -ci true -sn "i3D_restitution" -ln "i3D_restitution" -at "float";
	addAttr -ci true -sn "i3D_yAxisDrive" -ln "i3D_yAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_mergeGroup" -ln "i3D_mergeGroup" -at "long";
	addAttr -ci true -sn "i3D_jointBreakForce" -ln "i3D_jointBreakForce" -at "float";
	addAttr -ci true -sn "i3D_lod1" -ln "i3D_lod1" -at "float";
	addAttr -ci true -sn "i3D_lod2" -ln "i3D_lod2" -at "float";
	addAttr -ci true -sn "i3D_oc" -ln "i3D_oc" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_kinematic" -ln "i3D_kinematic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_trigger" -ln "i3D_trigger" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_static" -ln "i3D_static" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lightMask" -ln "i3D_lightMask" -dt "string";
	addAttr -ci true -sn "i3D_linearDamping" -ln "i3D_linearDamping" -at "float";
	addAttr -ci true -sn "i3D_lod3" -ln "i3D_lod3" -at "float";
	addAttr -ci true -sn "i3D_drivePos" -ln "i3D_drivePos" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lod" -ln "i3D_lod" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_solverIterationCount" -ln "i3D_solverIterationCount" -at "long";
	addAttr -ci true -sn "i3D_nonRenderable" -ln "i3D_nonRenderable" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_boundingVolume" -ln "i3D_boundingVolume" -dt "string";
	addAttr -ci true -sn "i3D_collisionMask" -ln "i3D_collisionMask" -at "long";
	addAttr -ci true -sn "i3D_zAxisDrive" -ln "i3D_zAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_cpuMesh" -ln "i3D_cpuMesh" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_staticFriction" -ln "i3D_staticFriction" -at "float";
	addAttr -ci true -sn "i3D_decalLayer" -ln "i3D_decalLayer" -at "long";
	addAttr -ci true -sn "i3D_splitMaxV" -ln "i3D_splitMaxV" -at "float";
	addAttr -ci true -sn "i3D_splitMaxU" -ln "i3D_splitMaxU" -at "float";
	addAttr -ci true -sn "i3D_compoundChild" -ln "i3D_compoundChild" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_xmlIdentifier" -ln "i3D_xmlIdentifier" -dt "string";
	setAttr ".t" -type "double3" 0 0 -0.07 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".i3D_objectMask" 255;
	setAttr ".i3D_dynamicFriction" 0.5;
	setAttr ".i3D_density" 1;
	setAttr ".i3D_driveForceLimit" 100000;
	setAttr ".i3D_angularDamping" 0.0099999997764825821;
	setAttr ".i3D_splitUvWorldScale" 1;
	setAttr ".i3D_driveSpring" 1;
	setAttr ".i3D_projDistance" 0.0099999997764825821;
	setAttr ".i3D_driveDamping" 0.0099999997764825821;
	setAttr ".i3D_clipDistance" 300;
	setAttr ".i3D_projAngle" 0.0099999997764825821;
	setAttr ".i3D_lightMask" -type "string" "FFFF";
	setAttr ".i3D_solverIterationCount" 4;
	setAttr ".i3D_boundingVolume" -type "string" "";
	setAttr ".i3D_collisionMask" 255;
	setAttr ".i3D_staticFriction" 0.5;
	setAttr ".i3D_splitMaxV" 1;
	setAttr ".i3D_splitMaxU" 1;
	setAttr ".i3D_xmlIdentifier" -type "string" "hose";
createNode mesh -n "hoseShape" -p "hose";
	rename -uid "9CCB4D10-4BFE-CFFB-5000-81BB44241FED";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1.5 -0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 90 ".pt";
	setAttr ".pt[0]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[1]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[2]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[3]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[4]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[5]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[6]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[7]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[8]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[9]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[10]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[11]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[12]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[13]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[14]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[15]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[16]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[17]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[18]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[19]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[20]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[21]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[22]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[23]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[24]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[25]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[26]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[27]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[28]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[29]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[30]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[31]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[32]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[33]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[34]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[35]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[36]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[37]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[38]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[39]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[180]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[181]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[182]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[183]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[184]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[185]" -type "float3" 3.3087225e-24 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[186]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[187]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[188]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[189]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[190]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[191]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[192]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[193]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[194]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[195]" -type "float3" 1.6543611e-24 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[196]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[197]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[198]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[199]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[200]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[201]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[202]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[203]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[204]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[205]" -type "float3" 3.3087225e-24 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[206]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[207]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[208]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[209]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[210]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[211]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[212]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[213]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[214]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[215]" -type "float3" 1.6543611e-24 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[216]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[217]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[218]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[219]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
createNode mesh -n "polySurfaceShape1" -p "hose";
	rename -uid "D9895FD5-4DFF-29DC-076E-E7B641D28588";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1.5 -0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 1.35032868 -0.99999452
		 1.37530804 -0.99999315 1.40028751 -0.99999177 1.32534909 -0.99999589 1.30036962 -0.99999726
		 1.27539015 -0.99999863 1.2504108 -1 1.37489724 -2.0682812e-05 1.34991777 -2.2053719e-05
		 1.39987683 -1.92523e-05 1.3249383 -2.3424625e-05 1.29995894 -2.4795532e-05 1.27497947
		 -2.6166439e-05 1.25 -2.7537346e-05 1.52518487 -0.99998486 1.55016434 -0.99998349
		 1.57514381 -0.99998212 1.5002054 -0.99998623 1.60012329 -0.99998075 1.62510276 -0.99997938
		 1.65008223 -0.99997801 1.54975355 -1.1026859e-05 1.52477419 -1.2397766e-05 1.57473302
		 -9.6559525e-06 1.4997946 -1.3768673e-05 1.59971249 -8.2850456e-06 1.62469196 -6.9141388e-06
		 1.64967132 -5.543232e-06 1.42526698 -0.99999034 1.45024633 -0.99998897 1.47522593
		 -0.9999876 1.42485619 -1.7881393e-05 1.44983578 -1.6510487e-05 1.47481513 -1.513958e-05
		 1.6750617 -0.99997663 1.70004106 -0.99997526 1.72502053 -0.99997383 1.75 -0.99997246
		 1.67465091 -4.1723251e-06 1.69963038 -2.7418137e-06 1.72460985 -1.3709068e-06 1.7495892
		 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 90 ".pt";
	setAttr ".pt[0]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[1]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[2]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[3]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[4]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[5]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[6]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[7]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[8]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[9]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[10]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[11]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[12]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[13]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[14]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[15]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[16]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[17]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[18]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[19]" -type "float3" 1.4901161e-08 0 -1.6543612e-24 ;
	setAttr ".pt[20]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[21]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[22]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[23]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[24]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[25]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[26]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[27]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[28]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[29]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[30]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[31]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[32]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[33]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[34]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[35]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[36]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[37]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[38]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[39]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[180]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[181]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[182]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[183]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[184]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[185]" -type "float3" 3.3087225e-24 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[186]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[187]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[188]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[189]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[190]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[191]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[192]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[193]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[194]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[195]" -type "float3" 1.6543611e-24 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[196]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[197]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[198]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[199]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[200]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[201]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[202]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[203]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[204]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[205]" -type "float3" 3.3087225e-24 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[206]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[207]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[208]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[209]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[210]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[211]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[212]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[213]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[214]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[215]" -type "float3" 1.6543611e-24 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[216]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[217]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[218]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr ".pt[219]" -type "float3" 0 -2.9802322e-08 -7.4505806e-09 ;
	setAttr -s 40 ".vt[0:39]"  0.082547165 0.026821209 -1.8626451e-09 0.070218861 0.051016971 -1.8626451e-09
		 0.05101696 0.070218839 -1.8626451e-09 0.02682123 0.082547188 -1.8626451e-09 -3.756034e-18 0.086795248 -1.8626451e-09
		 -0.02682117 0.08254718 -1.8626451e-09 -0.051016949 0.070218824 -1.8626451e-09 -0.070218839 0.051016957 -1.8626451e-09
		 -0.082547136 0.026821198 -1.8626451e-09 -0.086795226 3.7252901e-10 -1.8626451e-09
		 -0.082547136 -0.026821198 -1.8626451e-09 -0.070218831 -0.051016949 -1.8626451e-09
		 -0.051016938 -0.070218809 -1.8626451e-09 -0.026821161 -0.082547158 -1.8626451e-09
		 -2.6394884e-09 -0.086795211 -1.8626451e-09 0.026821213 -0.082547151 -1.8626451e-09
		 0.051016927 -0.070218801 -1.8626451e-09 0.070218816 -0.051016945 -1.8626451e-09 0.082547113 -0.026821192 -1.8626451e-09
		 0.086795203 3.7252901e-10 -1.8626451e-09 0.082547165 0.026821209 2.96869802 0.070218861 0.051016971 2.96869802
		 0.05101696 0.070218839 2.96869802 0.02682123 0.082547188 2.96869802 3.5544149e-18 0.086795248 2.96869802
		 -0.02682117 0.08254718 2.96869802 -0.051016949 0.070218824 2.96869802 -0.070218839 0.051016957 2.96869802
		 -0.082547136 0.026821198 2.96869802 -0.086795226 3.725277e-10 2.96869802 -0.082547136 -0.026821198 2.96869802
		 -0.070218831 -0.051016949 2.96869802 -0.051016938 -0.070218809 2.96869802 -0.026821161 -0.082547158 2.96869802
		 -2.6394884e-09 -0.086795211 2.96869802 0.026821213 -0.082547151 2.96869802 0.051016927 -0.070218801 2.96869802
		 0.070218816 -0.051016945 2.96869802 0.082547113 -0.026821192 2.96869802 0.086795203 3.725277e-10 2.96869802;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 19 39 1 18 38 1 17 37 1 16 36 1 15 35 1 14 34 1 13 33 1 12 32 1 11 31 1 10 30 1 9 29 1
		 8 28 1 7 27 1 6 26 1 5 25 1 4 24 1 3 23 1 2 22 1 1 21 1 0 20 1;
	setAttr -s 20 -ch 80 ".fc[0:19]" -type "polyFaces" 
		f 4 0 58 -21 -60
		mu 0 4 0 1 7 8
		f 4 1 57 -22 -59
		mu 0 4 1 2 9 7
		f 4 2 56 -23 -58
		mu 0 4 2 28 31 9
		f 4 3 55 -24 -57
		mu 0 4 28 29 32 31
		f 4 4 54 -25 -56
		mu 0 4 29 30 33 32
		f 4 5 53 -26 -55
		mu 0 4 30 17 24 33
		f 4 6 52 -27 -54
		mu 0 4 17 14 22 24
		f 4 7 51 -28 -53
		mu 0 4 14 15 21 22
		f 4 8 50 -29 -52
		mu 0 4 15 16 23 21
		f 4 9 49 -30 -51
		mu 0 4 16 18 25 23
		f 4 10 48 -31 -50
		mu 0 4 18 19 26 25
		f 4 11 47 -32 -49
		mu 0 4 19 20 27 26
		f 4 12 46 -33 -48
		mu 0 4 20 34 38 27
		f 4 13 45 -34 -47
		mu 0 4 34 35 39 38
		f 4 14 44 -35 -46
		mu 0 4 35 36 40 39
		f 4 15 43 -36 -45
		mu 0 4 36 37 41 40
		f 4 16 42 -37 -44
		mu 0 4 6 5 12 13
		f 4 17 41 -38 -43
		mu 0 4 5 4 11 12
		f 4 18 40 -39 -42
		mu 0 4 4 3 10 11
		f 4 19 59 -40 -41
		mu 0 4 3 0 8 10;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "coupling_normal_start" -p "hose_main_component1";
	rename -uid "D103B02E-4328-C06D-8CA4-8ABB0985E138";
	addAttr -ci true -sn "i3D_objectMask" -ln "i3D_objectMask" -at "long";
	addAttr -ci true -sn "i3D_dynamic" -ln "i3D_dynamic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_joint" -ln "i3D_joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_dynamicFriction" -ln "i3D_dynamicFriction" -at "float";
	addAttr -ci true -sn "i3D_ccd" -ln "i3D_ccd" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_density" -ln "i3D_density" -at "float";
	addAttr -ci true -sn "i3D_splitType" -ln "i3D_splitType" -at "long";
	addAttr -ci true -sn "i3D_splitMinU" -ln "i3D_splitMinU" -at "float";
	addAttr -ci true -sn "i3D_splitMinV" -ln "i3D_splitMinV" -at "float";
	addAttr -ci true -sn "i3D_driveForceLimit" -ln "i3D_driveForceLimit" -at "float";
	addAttr -ci true -sn "i3D_angularDamping" -ln "i3D_angularDamping" -at "float";
	addAttr -ci true -sn "i3D_splitUvWorldScale" -ln "i3D_splitUvWorldScale" -at "float";
	addAttr -ci true -sn "i3D_projection" -ln "i3D_projection" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_driveSpring" -ln "i3D_driveSpring" -at "float";
	addAttr -ci true -sn "i3D_breakableJoint" -ln "i3D_breakableJoint" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_projDistance" -ln "i3D_projDistance" -at "float";
	addAttr -ci true -sn "i3D_driveDamping" -ln "i3D_driveDamping" -at "float";
	addAttr -ci true -sn "i3D_xAxisDrive" -ln "i3D_xAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_compound" -ln "i3D_compound" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_clipDistance" -ln "i3D_clipDistance" -at "float";
	addAttr -ci true -sn "i3D_collision" -ln "i3D_collision" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_scaled" -ln "i3D_scaled" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_projAngle" -ln "i3D_projAngle" -at "float";
	addAttr -ci true -sn "i3D_mergeGroupRoot" -ln "i3D_mergeGroupRoot" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_jointBreakTorque" -ln "i3D_jointBreakTorque" -at "float";
	addAttr -ci true -sn "i3D_restitution" -ln "i3D_restitution" -at "float";
	addAttr -ci true -sn "i3D_yAxisDrive" -ln "i3D_yAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_mergeGroup" -ln "i3D_mergeGroup" -at "long";
	addAttr -ci true -sn "i3D_jointBreakForce" -ln "i3D_jointBreakForce" -at "float";
	addAttr -ci true -sn "i3D_lod1" -ln "i3D_lod1" -at "float";
	addAttr -ci true -sn "i3D_lod2" -ln "i3D_lod2" -at "float";
	addAttr -ci true -sn "i3D_oc" -ln "i3D_oc" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_kinematic" -ln "i3D_kinematic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_trigger" -ln "i3D_trigger" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_static" -ln "i3D_static" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lightMask" -ln "i3D_lightMask" -dt "string";
	addAttr -ci true -sn "i3D_linearDamping" -ln "i3D_linearDamping" -at "float";
	addAttr -ci true -sn "i3D_lod3" -ln "i3D_lod3" -at "float";
	addAttr -ci true -sn "i3D_drivePos" -ln "i3D_drivePos" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lod" -ln "i3D_lod" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_solverIterationCount" -ln "i3D_solverIterationCount" -at "long";
	addAttr -ci true -sn "i3D_nonRenderable" -ln "i3D_nonRenderable" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_boundingVolume" -ln "i3D_boundingVolume" -dt "string";
	addAttr -ci true -sn "i3D_collisionMask" -ln "i3D_collisionMask" -at "long";
	addAttr -ci true -sn "i3D_zAxisDrive" -ln "i3D_zAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_cpuMesh" -ln "i3D_cpuMesh" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_staticFriction" -ln "i3D_staticFriction" -at "float";
	addAttr -ci true -sn "i3D_decalLayer" -ln "i3D_decalLayer" -at "long";
	addAttr -ci true -sn "i3D_splitMaxV" -ln "i3D_splitMaxV" -at "float";
	addAttr -ci true -sn "i3D_splitMaxU" -ln "i3D_splitMaxU" -at "float";
	addAttr -ci true -sn "i3D_compoundChild" -ln "i3D_compoundChild" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_xmlIdentifier" -ln "i3D_xmlIdentifier" -dt "string";
	setAttr ".t" -type "double3" 2.9802322734639994e-08 0 3.6497319144133265e-24 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rpt" -type "double3" -9.9245777256370482e-56 0 1.6313261169996311e-55 ;
	setAttr ".dla" yes;
	setAttr ".i3D_objectMask" 255;
	setAttr ".i3D_dynamicFriction" 0.5;
	setAttr ".i3D_density" 1;
	setAttr ".i3D_driveForceLimit" 100000;
	setAttr ".i3D_angularDamping" 0.0099999997764825821;
	setAttr ".i3D_splitUvWorldScale" 1;
	setAttr ".i3D_driveSpring" 1;
	setAttr ".i3D_projDistance" 0.0099999997764825821;
	setAttr ".i3D_driveDamping" 0.0099999997764825821;
	setAttr ".i3D_clipDistance" 300;
	setAttr ".i3D_projAngle" 0.0099999997764825821;
	setAttr ".i3D_lightMask" -type "string" "FFFF";
	setAttr ".i3D_solverIterationCount" 4;
	setAttr ".i3D_boundingVolume" -type "string" "";
	setAttr ".i3D_collisionMask" 255;
	setAttr ".i3D_staticFriction" 0.5;
	setAttr ".i3D_splitMaxV" 1;
	setAttr ".i3D_splitMaxU" 1;
	setAttr ".i3D_xmlIdentifier" -type "string" "coupling_normal_start";
createNode mesh -n "coupling_normal_startShape" -p "coupling_normal_start";
	rename -uid "225C07D8-4594-EB65-4D44-46AFDDAC6E6E";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:271]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 4.776463508605957 0.45794433355331421 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 540 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 4.67544031 0.45419073 4.65831995
		 0.45419073 4.65831947 0.4199872 4.67543936 0.41998732 4.63780594 0.45419073 4.63780594
		 0.41998732 4.62136221 0.45419073 4.62136221 0.41998732 4.60285854 0.45419073 4.60285854
		 0.41998732 4.99093342 0.45419073 4.97253418 0.45419073 4.97253418 0.4199872 4.9909339
		 0.4199872 4.95528507 0.45419073 4.95528507 0.4199872 4.93263388 0.45419073 4.93263388
		 0.4199872 4.91638708 0.45419073 4.91638708 0.4199872 4.8975811 0.45419073 4.8975811
		 0.4199872 4.87904024 0.45419073 4.87904024 0.4199872 4.85522079 0.45419073 4.85522079
		 0.4199872 4.82814407 0.45419073 4.82814407 0.4199872 4.81340551 0.45419073 4.81340551
		 0.4199872 4.79467678 0.45419073 4.79467678 0.4199872 4.77601624 0.45419061 4.77601624
		 0.4199872 4.76197958 0.45419073 4.7619791 0.4199872 4.73500633 0.45419061 4.73500633
		 0.4199872 4.71281004 0.45419073 4.71281004 0.41998732 4.69418859 0.45419073 4.69418859
		 0.41998732 4.67992258 0.46169794 4.67992306 0.4654181 4.66053867 0.46541774 4.66053867
		 0.46169829 4.66061926 0.41003501 4.66061926 0.40293872 4.68002987 0.40293884 4.68002987
		 0.41003501 4.64116192 0.46541786 4.64116144 0.46169782 4.64119959 0.41003513 4.64119959
		 0.40293884 4.6219244 0.4654181 4.6219244 0.46169829 4.62161398 0.41003513 4.62161398
		 0.40293884 4.60317898 0.4654181 4.60317898 0.46169794 4.60267591 0.41003513 4.60267591
		 0.40293884 4.99061394 0.46169782 4.98832035 0.46541786 4.97120094 0.46541786 4.97120094
		 0.46169829 4.97154331 0.41003513 4.97154331 0.40293884 4.991117 0.40293884 4.99111748
		 0.41003537 4.95163345 0.46541762 4.95163345 0.46169782 4.95210695 0.41003513 4.95210695
		 0.40293884 4.93221283 0.46541786 4.93221283 0.46169817 4.9326725 0.41003537 4.93267202
		 0.40293884 4.91279697 0.46541786 4.91279745 0.46169782 4.91323709 0.41003513 4.91323709
		 0.40293884 4.89338255 0.46541762 4.89338207 0.46169817 4.89380312 0.41003513 4.89380312
		 0.40293884 4.87396717 0.46541786 4.87396765 0.46169782 4.87436914 0.41003513 4.87436914
		 0.40293884 4.8545537 0.46541762 4.8545537 0.46169782 4.85493422 0.41003513 4.85493422
		 0.40293884 4.83514023 0.46541786 4.83514023 0.46169782 4.83550024 0.41003513 4.83550024
		 0.40293884 4.81572723 0.46541786 4.81572723 0.46169782 4.81606579 0.41003537 4.81606627
		 0.40293884 4.79631758 0.46541762 4.79631758 0.46169782 4.79663086 0.41003537 4.79663134
		 0.40293884 4.77691031 0.46541762 4.77691078 0.46169806 4.77719736 0.41003513 4.77719736
		 0.40293884 4.75750446 0.46541762 4.75750446 0.46169782 4.75776434 0.41003513 4.75776434
		 0.40293884 4.73810387 0.46541786 4.73810387 0.46169782 4.73832941 0.41003501 4.73832941
		 0.40293872 4.71870518 0.46541786 4.71870518 0.46169806 4.71889496 0.41003501 4.71889496
		 0.40293884 4.69931173 0.46541762 4.69931221 0.46169829 4.69946098 0.41003501 4.69946098
		 0.40293884 4.68065786 0.39243531 4.66128445 0.392434 4.66128445 0.25259042 4.68065786
		 0.25259042 4.64191198 0.39243531 4.64191198 0.25258994 4.62253904 0.39243531 4.62253904
		 0.25259042 4.6031661 0.39243436 4.6031661 0.25259042 4.99062634 0.39243531 4.9712534
		 0.39243531 4.9712534 0.25259042 4.99062634 0.25259042 4.95188046 0.39243436 4.95188046
		 0.25259018 4.93250751 0.39243531 4.93250751 0.25259042 4.91313457 0.39243436 4.91313457
		 0.25259042 4.89376163 0.39243436 4.89376163 0.25259042 4.87438822 0.39243472 4.87438869
		 0.25259042 4.85501575 0.39243507 4.85501575 0.25259042 4.83564281 0.39243531 4.83564281
		 0.25259042 4.81626892 0.39243531 4.81626892 0.25259018 4.79689598 0.39243472 4.79689598
		 0.25259042 4.77752304 0.39243484 4.77752352 0.25258994 4.7581501 0.39243507 4.7581501
		 0.25258994 4.73877716 0.39243472 4.73877764 0.25259042 4.71940422 0.3924346 4.71940422
		 0.25259042 4.70003128 0.39243531 4.70003128 0.25259042 4.5328393 0.68205488 4.5232048
		 0.67627501 4.54626846 0.64875042 4.51582813 0.66780114 4.51143122 0.65746236 4.51044416
		 0.64627075 4.51296425 0.63532209 4.51874352 0.62568796 4.52721786 0.61831081 4.53755665
		 0.61391377 4.54874802 0.61292672 4.55969667 0.61544657 4.56933117 0.62122631 4.57670784
		 0.6297003 4.58110476 0.64003885 4.58209181 0.65123057 4.57957268 0.66217947 4.57379246
		 0.67181361 4.56531811 0.6791904 4.5549798 0.68358743 4.54378796 0.68457437 4.66131878
		 0.47297382 4.68069839 0.47297382 4.68069839 0.48104191 4.66131878 0.48104191 4.64194775
		 0.47297382 4.64194775 0.48104191 4.62257481 0.47297382 4.62257481 0.48104191 4.60306549
		 0.47297382 4.60306549 0.48104191 4.97121906 0.47297382 4.99072695 0.47297382 4.99072695
		 0.48104191 4.97121906 0.48104167 4.95184422 0.47297382 4.95184422 0.48104191 4.93247414
		 0.47297382 4.93247414 0.48104191 4.91309166 0.47297406 4.91309166 0.48104191 4.89373207
		 0.47297382 4.89373207 0.48104191 4.8743515 0.47297359 4.8743515 0.48104191 4.85498428
		 0.47297382 4.85498428 0.48104179 4.83562803 0.47297359 4.83562756 0.48104179 4.81625271
		 0.47297359 4.81625271 0.48104215 4.7969141 0.47297382 4.7969141 0.48104191 4.77753592
		 0.47297382 4.77753639 0.48104191 4.7581749 0.47297382 4.7581749 0.48104215 4.73880005
		 0.47297382 4.73880005 0.48104191 4.71943426 0.47297382 4.71943474 0.48104191 4.70005846
		 0.47297382 4.70005798 0.48104191 4.66137028 0.48864603 4.68073177 0.48864603 4.68073177
		 0.49959576 4.66137028 0.49959576 4.64200878 0.48864603 4.64200878 0.49959576 4.62263584
		 0.48864603 4.62263584 0.49959576 4.6030674 0.48864603 4.6030674 0.49959576 4.97115755
		 0.48864651 4.99072552 0.48864591 4.99072504 0.49959612 4.97115755 0.49959517 4.95178509
		 0.48864591 4.95178509 0.49959564 4.93242359 0.48864591 4.93242359 0.49959564 4.913064
		 0.48864603;
	setAttr ".uvst[0].uvsp[250:499]" 4.913064 0.49959576 4.89370251 0.48864603
		 4.89370251 0.49959576 4.87434101 0.48864603 4.87434101 0.49959588 4.85498047 0.48864603
		 4.85498047 0.49959576 4.83561897 0.48864603 4.83561897 0.49959576 4.81625843 0.48864603
		 4.81625938 0.49959588 4.79689789 0.48864603 4.79689789 0.49959588 4.77753639 0.48864603
		 4.77753639 0.49959576 4.7581749 0.48864603 4.7581749 0.49959576 4.73881435 0.48864603
		 4.73881435 0.49959576 4.71945381 0.48864603 4.71945381 0.49959576 4.70009327 0.48864603
		 4.70009327 0.49959576 4.66126013 0.50686312 4.68063688 0.50687134 4.68063641 0.53907967
		 4.6612606 0.53908777 4.64188385 0.50685835 4.64188385 0.53909206 4.62250757 0.50685656
		 4.6225071 0.53909397 4.60313129 0.50685596 4.60313129 0.53909445 4.97128487 0.50685656
		 4.9906621 0.50685656 4.99066162 0.53909445 4.97128534 0.53909445 4.95190811 0.50685859
		 4.95190907 0.5390923 4.93253231 0.50686395 4.93253183 0.53908825 4.91315556 0.50687146
		 4.91315556 0.53907979 4.8937788 0.50687873 4.89377928 0.53907228 4.87440252 0.50684285
		 4.87440252 0.53910828 4.85502577 0.50684261 4.85502577 0.5391078 4.83564949 0.50684261
		 4.83564949 0.53910804 4.81627274 0.50684261 4.81627274 0.53910804 4.79689598 0.50684261
		 4.79689598 0.53910804 4.77752018 0.50684261 4.77752018 0.53910804 4.75814342 0.50684261
		 4.75814342 0.53910804 4.73876667 0.50684261 4.73876667 0.53910804 4.71939039 0.50684261
		 4.71939039 0.53910804 4.70001364 0.50687838 4.70001364 0.5390718 6.42330933 3.99370813
		 6.40262604 3.99370813 6.40262604 3.97471929 6.42330933 3.97471929 6.38194275 3.99370813
		 6.38194275 3.97471929 6.36125946 3.99370813 6.36125946 3.97471929 6.34057617 3.99370813
		 6.34057617 3.97471929 6.31989431 3.99370813 6.31989431 3.97471929 6.2992115 3.99370813
		 6.2992115 3.97471929 6.27852917 3.99370813 6.27852917 3.97471929 6.25784588 3.99370813
		 6.25784588 3.97471929 6.23716259 3.99370813 6.23716259 3.97471929 6.21647835 3.99370813
		 6.21647835 3.97471929 6.19579697 3.99370813 6.19579697 3.97471929 6.17511177 3.99370813
		 6.17511177 3.97471929 6.15442753 3.99370813 6.15442753 3.97471929 6.13374519 3.99370813
		 6.13374519 3.97471929 6.1130619 3.99370813 6.1130619 3.97471929 6.09237957 3.99370813
		 6.09237957 3.97471929 6.07169342 3.99370813 6.07169342 3.97471929 6.051012039 3.99370813
		 6.051012039 3.97471929 6.040967941 3.99370813 6.040967941 3.97471929 4.46374702 0.97512722
		 4.4637475 0.99423742 4.45792055 0.99423695 4.45792055 0.9751246 6.52666187 3.90166974
		 6.52617455 3.90023279 6.53806257 3.89398432 6.53896999 3.89520001 6.48631096 3.79307175
		 6.48723841 3.79177999 6.49982119 3.79809785 6.4993391 3.79961348 6.54743767 3.88436723
		 6.54867649 3.88524342 6.47594261 3.78282404 6.4772234 3.78188205 6.55338287 3.87232375
		 6.5548315 3.87277436 6.46924829 3.7698741 6.47075748 3.76937389 6.55531549 3.85903287
		 6.55683184 3.8590138 6.46688271 3.75548959 6.46847343 3.75547957 6.5530448 3.84579587
		 6.55448198 3.84530878 6.46907902 3.74107671 6.47059441 3.74155974 6.54679585 3.8339076
		 6.54801226 3.83300066 6.47562122 3.72804976 6.47691298 3.72897577 6.53718042 3.82453251
		 6.5380559 3.82329416 6.48586845 3.71768045 6.48681116 3.71896219 6.52513599 3.81858802
		 6.52558899 3.81713939 6.49881887 3.71098661 6.4993186 3.71249628 6.51184559 3.81665611
		 6.51182842 3.81513906 6.51320314 3.70862007 6.51321268 3.7102108 6.49860859 3.81892538
		 6.49812031 3.81748867 6.52761459 3.71081924 6.52713156 3.71233368 6.48672009 3.82517433
		 6.48581409 3.82395887 6.54064226 3.71735954 6.53971577 3.71865082 6.47734547 3.83479071
		 6.47610664 3.83391547 6.55101061 3.72760868 6.54972935 3.72854805 6.47140026 3.84683442
		 6.46995258 3.84638405 6.55770493 3.74055576 6.55619621 3.7410593 6.46946812 3.8601253
		 6.46795177 3.86014414 6.56007004 3.75494289 6.55847979 3.75494862 6.47173786 3.87336206
		 6.47030067 3.87384963 6.55787468 3.76935387 6.55635929 3.76887321 6.47798347 3.88525009
		 6.4767704 3.88615775 6.55133247 3.7823801 6.55004025 3.78145409 6.48760223 3.89462614
		 6.48671913 3.89586377 6.54108477 3.7927494 6.54014349 3.79146671 6.49963951 3.90057039
		 6.49918938 3.9020195 6.52763462 3.79792976 6.52813482 3.79944229 6.50496101 3.90134287
		 6.50469971 3.90281892 6.52207756 3.79884624 6.52238178 3.80038929 6.51295567 3.90402675
		 6.5129385 3.9025023 6.52088022 3.90114117 6.52118111 3.90260983 6.50538921 3.79894662
		 6.51374149 3.80021906 6.51375103 3.80181599 6.50510359 3.80049133 4.021411419 0.97471595
		 4.024793625 0.97471595 4.024793625 0.99382889 4.021411419 0.99382889 6.43158245 3.97471929
		 6.43158245 3.99370813 6.52001095 3.90570259 6.51846027 3.90738034 6.51660728 3.90823674
		 6.51479912 3.90750694 4.44373465 0.9942373 4.44373465 0.97512543 4.44862986 0.97512507
		 4.44862986 0.99423754 6.5118885 3.80550003 6.51000834 3.80630016 6.50804853 3.80543947
		 6.50638914 3.80371141 6.52113342 3.80362415 6.51949501 3.80537224 6.51754522 3.8062582
		 6.51565647 3.80547667 4.029689789 0.97471642 4.029689789 0.99382794 6.51120567 3.90755272
		 6.50941849 3.90832829 6.50754166 3.90751839 6.50595093 3.90588188 4.0096764565 0.97471571
		 4.01550436 0.97471547 4.01550436 0.99382794 4.0096764565 0.99382889 4.018389225 0.97471547
		 4.018389702 0.9938283 4.45201206 0.97512412 4.45201206 0.99423742 4.45503426 0.9751246
		 4.45503426 0.99423695 0.8205905 1.21316648 0.82059097 1.20692444 0.82569981 1.20692444
		 0.82570124 1.21316648 0.8205905 1.2443769 0.8205905 1.23813486 0.82570124 1.23813498
		 0.82570076 1.24437726 0.82059097 1.23189282 0.82570076 1.23189294 0.8205905 1.22565067
		 0.82570124 1.22565079 0.8205905 1.21940851 0.82570124 1.21940851 0.811831 1.22906744;
	setAttr ".uvst[0].uvsp[500:539]" 0.81566954 1.23579335 0.8079257 1.23575485
		 0.80408669 1.22902858 0.80018234 1.23571527 0.80401993 1.24244237 0.81176376 1.24248052
		 0.81182051 1.22309625 0.80407667 1.22312188 0.80792618 1.21640265 0.80018282 1.21642852
		 0.80403185 1.20970917 0.81177568 1.20968437 0.81566906 1.21637666 0.66798019 1.13682914
		 0.6706152 1.13682914 0.6706152 1.20140803 0.66798019 1.20140803 0.6732502 1.13682926
		 0.6732502 1.20140839 0.67588568 1.13682926 0.67588568 1.20140803 0.67852068 1.13682926
		 0.67852068 1.20140803 0.68115568 1.13682926 0.68115568 1.20140803 0.68379116 1.13682938
		 0.68379116 1.20140815 0.68642616 1.13682926 0.68642616 1.20140803 0.68906164 1.13682938
		 0.68906164 1.20140815 0.48340845 1.49261379 0.47738695 1.49510849 0.47738695 1.48659253
		 0.47136402 1.49261379 0.46886969 1.48659253 0.47136402 1.48056889 0.47738695 1.47807539
		 0.48340893 1.48056889 0.48590326 1.48659241;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 296 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 0.012334227 -0.0040076417 2.9937873 0.010492118 
		-0.0076229875 2.9937873 0.0076229684 -0.01049214 2.9937873 0.0040076184 -0.01233425 
		2.9937873 -2.5661963e-08 -0.012968997 2.9937873 -0.0040076668 -0.01233425 2.9937873 
		-0.0076230112 -0.01049214 2.9937873 -0.010492173 -0.0076229763 2.9937873 -0.012334281 
		-0.0040076417 2.9937873 -0.012969016 2.2992004e-09 2.9937871 -0.012334262 0.0040076468 
		2.9937873 -0.010492173 0.0076229763 2.9937873 -0.0076230131 0.010492137 2.9937873 
		-0.0040076706 0.012334249 2.9937873 -2.609306e-08 0.012968997 2.9937873 0.0040076138 
		0.012334249 2.9937873 0.0076229572 0.010492137 2.9937873 0.010492113 0.0076229763 
		2.9937871 0.012334221 0.004007637 2.9937873 0.012968956 2.2992004e-09 2.9937871 -2.5212003e-08 
		-2.2992006e-09 2.8200924 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789;
	setAttr ".pt[166:295]" -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789;
	setAttr -s 296 ".vt";
	setAttr ".vt[0:165]"  -0.11248755 0.036549449 -2.94603086 -0.095687687 0.069521129 -2.94603086
		 -0.069521129 0.095687687 -2.94603086 -0.036549419 0.11248755 -2.94603086 -1.2476895e-10 0.11827642 -2.94603086
		 0.036549419 0.11248755 -2.94603086 0.069521129 0.095687628 -2.94603086 0.095687628 0.069521129 -2.94603086
		 0.11248755 0.036549449 -2.94603109 0.11827642 0 -2.94603086 0.11248755 -0.036549449 -2.94603086
		 0.095687628 -0.069521129 -2.94603086 0.069521129 -0.095687628 -2.94603086 0.036549419 -0.11248755 -2.94603086
		 3.4001428e-09 -0.11827642 -2.94603086 -0.036549419 -0.11248755 -2.94603086 -0.069521129 -0.095687628 -2.94603086
		 -0.095687568 -0.069521129 -2.94603086 -0.11248755 -0.036549389 -2.94603086 -0.11827636 0 -2.94603086
		 -0.086920083 0.028242052 -2.99428105 -0.073938608 0.05371958 -2.99428105 -0.05371955 0.073938608 -2.99428105
		 -0.028242037 0.086920083 -2.99428105 3.0799669e-09 0.091393173 -2.99428105 0.028242037 0.086920083 -2.99428129
		 0.05371955 0.073938608 -2.99428105 0.073938608 0.053719521 -2.99428105 0.086920023 0.028242052 -2.99428105
		 0.091393113 0 -2.99428129 0.086920023 -0.028242052 -2.99428105 0.073938608 -0.053719521 -2.99428105
		 0.05371955 -0.073938608 -2.99428105 0.028242037 -0.086920023 -2.99428105 5.8036922e-09 -0.091393113 -2.99428105
		 -0.028242022 -0.086920023 -2.99428129 -0.053719521 -0.073938608 -2.99428105 -0.073938608 -0.053719521 -2.99428129
		 -0.086920023 -0.028241992 -2.99428105 -0.091393113 0 -2.99428129 -0.10550606 0.034281015 -2.94603086
		 -0.089748859 0.065206349 -2.94603086 -0.06799978 0.04940474 -2.99428105 -0.079938531 0.025973618 -2.99428105
		 -0.065206349 0.0897488 -2.94603109 -0.04940474 0.06799978 -2.99428105 -0.034281015 0.10550606 -2.94603086
		 -0.025973618 0.079938531 -2.99428105 -2.3283028e-10 0.11093563 -2.94603086 2.9685912e-09 0.084052324 -2.99428105
		 0.034280986 0.10550606 -2.94603086 0.025973603 0.079938531 -2.99428105 0.065206319 0.0897488 -2.94603086
		 0.049404711 0.06799978 -2.99428105 0.0897488 0.065206289 -2.94603086 0.06799978 0.04940474 -2.99428105
		 0.105506 0.034281015 -2.94603109 0.079938531 0.025973618 -2.99428105 0.11093557 0 -2.94603086
		 0.084052324 0 -2.99428129 0.105506 -0.034281015 -2.94603086 0.079938471 -0.025973618 -2.99428105
		 0.0897488 -0.065206289 -2.94603109 0.06799978 -0.049404681 -2.99428105 0.065206319 -0.0897488 -2.94603086
		 0.04940474 -0.067999721 -2.99428105 0.034281015 -0.105506 -2.94603109 0.025973618 -0.079938471 -2.99428105
		 3.3178371e-09 -0.11093557 -2.94603086 5.7625589e-09 -0.084052324 -2.99428105 -0.034280986 -0.105506 -2.94603109
		 -0.025973588 -0.079938471 -2.99428105 -0.065206289 -0.08974874 -2.94603109 -0.049404711 -0.067999721 -2.99428105
		 -0.0897488 -0.065206289 -2.94603086 -0.067999721 -0.049404681 -2.99428129 -0.105506 -0.034280956 -2.94603086
		 -0.079938471 -0.025973558 -2.99428105 -0.11093557 0 -2.94603109 -0.084052265 0 -2.99428129
		 -0.079938531 0.025973618 -2.80445313 -0.06799978 0.04940474 -2.80445313 -0.04940474 0.06799978 -2.80445313
		 -0.025973618 0.079938531 -2.80445313 2.9685912e-09 0.084052354 -2.80445313 0.025973603 0.079938531 -2.80445313
		 0.049404711 0.06799978 -2.80445313 0.06799978 0.049404711 -2.80445313 0.079938531 0.025973618 -2.80445313
		 0.084052324 0 -2.80445337 0.079938471 -0.025973618 -2.80445313 0.06799978 -0.049404681 -2.80445313
		 0.04940474 -0.067999721 -2.80445313 0.025973618 -0.079938471 -2.80445313 5.7625589e-09 -0.084052324 -2.80445313
		 -0.025973588 -0.079938471 -2.80445313 -0.049404711 -0.067999721 -2.80445313 -0.067999721 -0.049404681 -2.80445337
		 -0.079938471 -0.025973558 -2.80445313 -0.084052265 0 -2.80445337 5.2390352e-11 2.9802322e-08 -2.57537913
		 -0.098251641 0.03192389 -2.95771575 -0.083577871 0.060722888 -2.95771575 -0.060722888 0.083577871 -2.95771575
		 -0.03192392 0.098251641 -2.95771575 5.0384313e-10 0.1033079 -2.95771575 0.031923905 0.098251641 -2.95771575
		 0.060722858 0.083577812 -2.95771575 0.083577812 0.060722828 -2.95771599 0.098251641 0.03192389 -2.95771575
		 0.10330784 0 -2.95771575 0.098251641 -0.03192389 -2.95771575 0.083577812 -0.060722828 -2.95771575
		 0.060722858 -0.083577812 -2.95771599 0.031923905 -0.098251641 -2.95771575 3.8103729e-09 -0.10330784 -2.95771599
		 -0.031923875 -0.098251581 -2.95771575 -0.060722828 -0.083577812 -2.95771575 -0.083577812 -0.060722828 -2.95771575
		 -0.098251581 -0.03192389 -2.95771575 -0.10330784 0 -2.95771599 -0.082391798 0.026770711 -2.95771575
		 -0.070086658 0.050920963 -2.95771575 -0.050920963 0.070086658 -2.95771575 -0.026770741 0.082391798 -2.95771599
		 2.1143873e-09 0.086631894 -2.95771599 0.026770726 0.082391798 -2.95771575 0.050920933 0.070086658 -2.95771575
		 0.070086658 0.050920904 -2.95771599 0.082391798 0.026770711 -2.95771599 0.086631835 0 -2.95771599
		 0.082391798 -0.026770711 -2.95771575 0.070086658 -0.050920904 -2.95771575 0.050920933 -0.070086658 -2.95771575
		 0.026770726 -0.082391798 -2.95771575 4.8871738e-09 -0.086631835 -2.95771575 -0.026770711 -0.082391739 -2.95771575
		 -0.050920904 -0.070086598 -2.95771575 -0.070086658 -0.050920904 -2.95771575 -0.082391739 -0.026770711 -2.95771599
		 -0.086631835 0 -2.95771599 -0.082391798 0.026770711 -2.91261625 -0.070086658 0.050920963 -2.91261625
		 -0.050920963 0.070086658 -2.91261649 -0.026770741 0.082391798 -2.91261649 2.1143873e-09 0.086631894 -2.91261649
		 0.026770726 0.082391798 -2.91261649 0.050920933 0.070086658 -2.91261649 0.070086658 0.050920904 -2.91261649
		 0.082391798 0.026770711 -2.91261649 0.086631835 0 -2.91261649 0.082391798 -0.026770711 -2.91261625
		 0.070086658 -0.050920904 -2.91261625 0.050920933 -0.070086658 -2.91261649 0.026770726 -0.082391798 -2.91261625
		 4.8871738e-09 -0.086631835 -2.91261625 -0.026770711 -0.082391739 -2.91261625 -0.050920904 -0.070086598 -2.91261625
		 -0.070086658 -0.050920904 -2.91261649 -0.082391739 -0.026770711 -2.91261649 -0.086631835 0 -2.91261649
		 -0.087077878 -0.028293312 -2.91184735 -0.074072868 -0.053817071 -2.91184735 -0.053817086 -0.074072853 -2.91184735
		 -0.028293321 -0.087077849 -2.91184735 -1.4901161e-08 -0.091559067 -2.91184735;
	setAttr ".vt[166:295]" 0.028293291 -0.087077849 -2.91184735 0.053817045 -0.07407283 -2.91184735
		 0.074072815 -0.05381706 -2.91184735 0.087077811 -0.0282933 -2.91184735 0.09155903 4.13262e-18 -2.91184735
		 0.087077811 0.0282933 -2.91184735 0.074072801 0.053817049 -2.91184735 0.053817034 0.074072808 -2.91184735
		 0.028293286 0.087077811 -2.91184735 -1.217249e-08 0.091559023 -2.91184735 -0.028293304 0.087077804 -2.91184735
		 -0.053817052 0.074072808 -2.91184735 -0.074072823 0.053817049 -2.91184735 -0.087077819 0.028293295 -2.91184735
		 -0.091574579 4.13262e-18 -2.91184735 -0.087077878 -0.028293312 -2.88524485 -0.074072868 -0.053817071 -2.88524485
		 -0.053817086 -0.074072853 -2.88524485 -0.028293321 -0.087077849 -2.88524485 -1.4901161e-08 -0.091559067 -2.88524485
		 0.028293291 -0.087077849 -2.88524485 0.053817045 -0.07407283 -2.88524485 0.074072815 -0.05381706 -2.88524485
		 0.087077811 -0.0282933 -2.88524485 0.09155903 -2.7681562e-18 -2.88524485 0.087077811 0.0282933 -2.88524485
		 0.074072801 0.053817049 -2.88524485 0.053817034 0.074072808 -2.88524485 0.028293286 0.087077811 -2.88524485
		 -1.217249e-08 0.091559023 -2.88524485 -0.028293304 0.087077804 -2.88524485 -0.053817052 0.074072808 -2.88524485
		 -0.074072823 0.053817049 -2.88524485 -0.087077819 0.028293295 -2.88524485 -0.091574579 -2.7681562e-18 -2.88524485
		 -0.084105894 -0.027327662 -2.91184735 -0.071544752 -0.051980291 -2.91184735 -0.071544752 -0.051980291 -2.88524485
		 -0.084105894 -0.027327662 -2.88524485 -0.051980305 -0.071544737 -2.91184735 -0.051980305 -0.071544737 -2.88524485
		 -0.027327668 -0.084105872 -2.91184735 -0.027327668 -0.084105872 -2.88524485 -1.4901161e-08 -0.088434145 -2.91184735
		 -1.4901161e-08 -0.088434145 -2.88524485 0.027327636 -0.084105872 -2.91184735 0.027327636 -0.084105872 -2.88524485
		 0.051980264 -0.071544714 -2.91184735 0.051980264 -0.071544714 -2.88524485 0.071544699 -0.051980276 -2.91184735
		 0.071544699 -0.051980276 -2.88524485 0.084105834 -0.027327646 -2.91184735 0.084105834 -0.027327646 -2.88524485
		 0.088434108 0 -2.91184735 0.088434108 0 -2.88524485 0.084105834 0.027327646 -2.91184735
		 0.084105834 0.027327646 -2.88524485 0.071544684 0.051980268 -2.91184735 0.071544684 0.051980268 -2.88524485
		 0.051980253 0.071544699 -2.91184735 0.051980253 0.071544699 -2.88524485 0.027327631 0.084105834 -2.91184735
		 0.027327631 0.084105834 -2.88524485 -1.169974e-08 0.088434108 -2.91184735 -1.169974e-08 0.088434108 -2.88524485
		 -0.027327651 0.084105834 -2.91184735 -0.027327651 0.084105834 -2.88524485 -0.051980276 0.071544684 -2.91184735
		 -0.051980276 0.071544684 -2.88524485 -0.071544699 0.051980264 -2.91184735 -0.071544699 0.051980264 -2.88524485
		 -0.084105842 0.02732764 -2.91184735 -0.084105842 0.02732764 -2.88524485 -0.088434108 -3.434252e-09 -2.91184735
		 -0.088434108 -3.434252e-09 -2.88524485 -0.085837148 0.016396582 -2.91184735 -0.088870302 0.016975978 -2.91184735
		 -0.088870302 0.016975978 -2.88524485 -0.085837148 0.016396582 -2.88524485 -0.085837178 -0.016396597 -2.91184735
		 -0.088870347 -0.016975988 -2.91184735 -0.088870347 -0.016975988 -2.88524485 -0.085837178 -0.016396597 -2.88524485
		 -0.095212676 -0.014487225 -2.91184735 -0.095212676 -0.014487225 -2.88524485 -0.095212631 0.014487215 -2.88524485
		 -0.095212631 0.014487215 -2.91184735 -0.098792359 0.0037017064 -2.91184735 -0.098792359 0.0037017064 -2.88524485
		 -0.1003438 0.0074055092 -2.91184735 -0.1003438 0.0074055092 -2.88524485 -0.098626964 0.011246586 -2.91184735
		 -0.098626964 0.011246586 -2.88524485 -0.098626994 -0.011246593 -2.91184735 -0.098626994 -0.011246593 -2.88524485
		 -0.10034382 -0.007405512 -2.91184735 -0.10034382 -0.007405512 -2.88524485 -0.098792367 -0.0037017083 -2.91184735
		 -0.098792367 -0.0037017083 -2.88524485 -0.093688972 -0.034294464 -2.88950086 -0.087115444 -0.034294464 -2.893296
		 -0.087115444 -0.034294464 -2.90088654 -0.093688972 -0.034294464 -2.90468168 -0.1002625 -0.034294464 -2.90088654
		 -0.1002625 -0.034294464 -2.893296 -0.093688972 -0.028080687 -2.88950086 -0.087115444 -0.028080687 -2.893296
		 -0.087115444 -0.028080687 -2.90088654 -0.093688972 -0.028080687 -2.90468168 -0.1002625 -0.028080687 -2.90088654
		 -0.1002625 -0.028080687 -2.893296 -0.093688972 -0.034294464 -2.89709139 -0.093688972 -0.028080687 -2.89709139
		 -0.096517399 -0.028431982 -2.89426279 -0.093688972 -0.028431982 -2.8930912 -0.090860546 -0.028431982 -2.89426279
		 -0.089688964 -0.028431982 -2.89709139 -0.090860546 -0.028431982 -2.89991975 -0.093688972 -0.028431982 -2.90109134
		 -0.096517399 -0.028431982 -2.89991975 -0.097688973 -0.028431982 -2.89709139 -0.096517399 0.04088483 -2.89426279
		 -0.093688972 0.04088483 -2.8930912 -0.090860546 0.04088483 -2.89426279 -0.089688964 0.04088483 -2.89709139
		 -0.090860546 0.04088483 -2.89991975 -0.093688972 0.04088483 -2.90109134 -0.096517399 0.04088483 -2.89991975
		 -0.097688973 0.04088483 -2.89709139 -0.093688972 0.04088483 -2.89709139;
	setAttr -s 564 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0 0 20 1 1 21 1
		 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 0 40 1 1 41 1 40 41 0 21 42 1 20 43 1
		 43 42 0 2 44 1 41 44 0 22 45 1 42 45 0 3 46 1 44 46 0 23 47 1 45 47 0 4 48 1 46 48 0
		 24 49 1 47 49 0 5 50 1 48 50 0 25 51 1 49 51 0 6 52 1 50 52 0 26 53 1 51 53 0 7 54 1
		 52 54 0 27 55 1 53 55 0 8 56 1 54 56 0 28 57 1 55 57 0 9 58 1 56 58 0 29 59 1 57 59 0
		 10 60 1 58 60 0 30 61 1 59 61 0 11 62 1 60 62 0 31 63 1 61 63 0 12 64 1 62 64 0 32 65 1
		 63 65 0 13 66 1 64 66 0 33 67 1 65 67 0 14 68 1 66 68 0 34 69 1 67 69 0 15 70 1 68 70 0
		 35 71 1 69 71 0 16 72 1 70 72 0 36 73 1 71 73 0 17 74 1 72 74 0 37 75 1 73 75 0 18 76 1
		 74 76 0 38 77 1 75 77 0 19 78 1 76 78 0 39 79 1 77 79 0 78 40 0 79 43 0 43 80 1 42 81 1
		 80 81 1 45 82 1 81 82 1 47 83 1 82 83 1 49 84 1 83 84 1 51 85 1 84 85 1 53 86 1 85 86 1
		 55 87 1 86 87 1 57 88 1 87 88 1 59 89 1 88 89 1 61 90 1 89 90 1 63 91 1 90 91 1 65 92 1
		 91 92 1 67 93 1;
	setAttr ".ed[166:331]" 92 93 1 69 94 1 93 94 1 71 95 1 94 95 1 73 96 1 95 96 1
		 75 97 1 96 97 1 77 98 1 97 98 1 79 99 1 98 99 1 99 80 1 80 100 1 81 100 1 82 100 1
		 83 100 1 84 100 1 85 100 1 86 100 1 87 100 1 88 100 1 89 100 1 90 100 1 91 100 1
		 92 100 1 93 100 1 94 100 1 95 100 1 96 100 1 97 100 1 98 100 1 99 100 1 40 101 1
		 41 102 1 101 102 0 44 103 1 102 103 0 46 104 1 103 104 0 48 105 1 104 105 0 50 106 1
		 105 106 0 52 107 1 106 107 0 54 108 1 107 108 0 56 109 1 108 109 0 58 110 1 109 110 0
		 60 111 1 110 111 0 62 112 1 111 112 0 64 113 1 112 113 0 66 114 1 113 114 0 68 115 1
		 114 115 0 70 116 1 115 116 0 72 117 1 116 117 0 74 118 1 117 118 0 76 119 1 118 119 0
		 78 120 1 119 120 0 120 101 0 101 121 0 102 122 0 121 122 0 103 123 0 122 123 0 104 124 0
		 123 124 0 105 125 0 124 125 0 106 126 0 125 126 0 107 127 0 126 127 0 108 128 0 127 128 0
		 109 129 0 128 129 0 110 130 0 129 130 0 111 131 0 130 131 0 112 132 0 131 132 0 113 133 0
		 132 133 0 114 134 0 133 134 0 115 135 0 134 135 0 116 136 0 135 136 0 117 137 0 136 137 0
		 118 138 0 137 138 0 119 139 0 138 139 0 120 140 0 139 140 0 140 121 0 121 141 1 122 142 1
		 141 142 0 123 143 1 142 143 0 124 144 1 143 144 0 125 145 1 144 145 0 126 146 1 145 146 0
		 127 147 1 146 147 0 128 148 1 147 148 0 129 149 1 148 149 0 130 150 1 149 150 0 131 151 1
		 150 151 0 132 152 1 151 152 0 133 153 1 152 153 0 134 154 1 153 154 0 135 155 1 154 155 0
		 136 156 1 155 156 0 137 157 1 156 157 0 138 158 1 157 158 0 139 159 1 158 159 0 140 160 1
		 159 160 0 160 141 0 161 162 0 162 163 0 163 164 0 164 165 0 165 166 0 166 167 0 167 168 0
		 168 169 0 169 170 0 170 171 0 171 172 0 172 173 0;
	setAttr ".ed[332:497]" 173 174 0 174 175 0 175 176 0 176 177 0 177 178 0 181 182 0
		 182 183 0 183 184 0 184 185 0 185 186 0 186 187 0 187 188 0 188 189 0 189 190 0 190 191 0
		 191 192 0 192 193 0 193 194 0 194 195 0 195 196 0 196 197 0 197 198 0 161 181 1 162 182 1
		 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1 169 189 1 170 190 1 171 191 1
		 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1 178 198 1 179 199 1 161 201 1
		 162 202 1 201 202 0 182 203 1 181 204 1 204 203 0 163 205 1 202 205 0 183 206 1 203 206 0
		 164 207 1 205 207 0 184 208 1 206 208 0 165 209 1 207 209 0 185 210 1 208 210 0 166 211 1
		 209 211 0 186 212 1 210 212 0 167 213 1 211 213 0 187 214 1 212 214 0 168 215 1 213 215 0
		 188 216 1 214 216 0 169 217 1 215 217 0 189 218 1 216 218 0 170 219 1 217 219 0 190 220 1
		 218 220 0 171 221 1 219 221 0 191 222 1 220 222 0 172 223 1 221 223 0 192 224 1 222 224 0
		 173 225 1 223 225 0 193 226 1 224 226 0 174 227 1 225 227 0 194 228 1 226 228 0 175 229 1
		 227 229 0 195 230 1 228 230 0 176 231 1 229 231 0 196 232 1 230 232 0 177 233 1 231 233 0
		 197 234 1 232 234 0 178 235 1 233 235 0 198 236 1 234 236 0 179 237 1 199 238 1 236 238 0
		 180 239 1 200 240 1 238 244 0 240 248 0 235 237 0 178 179 0 198 199 0 241 239 0 242 180 0
		 241 242 1 243 200 0 242 243 0 244 240 0 243 244 1 237 241 0 179 242 0 199 243 0 245 201 0
		 246 161 0 247 181 0 248 204 0 239 245 0 180 246 0 200 247 0 245 246 1 246 247 0 247 248 1
		 180 200 0 246 249 0 180 263 0 247 250 0 249 250 1 200 264 0 243 251 0 251 258 0 242 252 0
		 252 251 1 252 257 0 253 180 0 254 200 0 253 254 1 255 253 0 256 254 0 255 256 1 257 255 0
		 258 256 0 257 258 1 259 249 0 260 250 0 259 260 1 261 259 0 262 260 0;
	setAttr ".ed[498:563]" 261 262 1 263 261 0 264 262 0 263 264 1 265 266 0 266 267 0
		 267 268 0 268 269 0 269 270 0 270 265 0 271 272 0 272 273 0 273 274 0 274 275 0 275 276 0
		 276 271 0 265 271 0 266 272 0 267 273 0 268 274 0 269 275 0 270 276 0 277 265 1 277 266 1
		 277 267 1 277 268 1 277 269 1 277 270 1 271 278 1 272 278 1 273 278 1 274 278 1 275 278 1
		 276 278 1 279 280 0 280 281 0 281 282 0 282 283 0 283 284 0 284 285 0 285 286 0 286 279 0
		 287 288 0 288 289 0 289 290 0 290 291 0 291 292 0 292 293 0 293 294 0 294 287 0 279 287 1
		 280 288 1 281 289 1 282 290 1 283 291 1 284 292 1 285 293 1 286 294 1 287 295 1 288 295 1
		 289 295 1 290 295 1 291 295 1 292 295 1 293 295 1 294 295 1;
	setAttr -s 272 -ch 1056 ".fc[0:271]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 0 1 2 3
		f 4 1 42 -22 -42
		mu 0 4 1 4 5 2
		f 4 2 43 -23 -43
		mu 0 4 4 6 7 5
		f 4 3 44 -24 -44
		mu 0 4 6 8 9 7
		f 4 4 45 -25 -45
		mu 0 4 10 11 12 13
		f 4 5 46 -26 -46
		mu 0 4 11 14 15 12
		f 4 6 47 -27 -47
		mu 0 4 14 16 17 15
		f 4 7 48 -28 -48
		mu 0 4 16 18 19 17
		f 4 8 49 -29 -49
		mu 0 4 18 20 21 19
		f 4 9 50 -30 -50
		mu 0 4 20 22 23 21
		f 4 10 51 -31 -51
		mu 0 4 22 24 25 23
		f 4 11 52 -32 -52
		mu 0 4 24 26 27 25
		f 4 12 53 -33 -53
		mu 0 4 26 28 29 27
		f 4 13 54 -34 -54
		mu 0 4 28 30 31 29
		f 4 14 55 -35 -55
		mu 0 4 30 32 33 31
		f 4 15 56 -36 -56
		mu 0 4 32 34 35 33
		f 4 16 57 -37 -57
		mu 0 4 34 36 37 35
		f 4 17 58 -38 -58
		mu 0 4 36 38 39 37
		f 4 18 59 -39 -59
		mu 0 4 38 40 41 39
		f 4 19 40 -40 -60
		mu 0 4 40 0 3 41
		f 4 60 62 -62 -1
		mu 0 4 42 43 44 45
		f 4 63 -66 -65 20
		mu 0 4 46 47 48 49
		f 4 61 67 -67 -2
		mu 0 4 45 44 50 51
		f 4 68 -70 -64 21
		mu 0 4 52 53 47 46
		f 4 66 71 -71 -3
		mu 0 4 51 50 54 55
		f 4 72 -74 -69 22
		mu 0 4 56 57 53 52
		f 4 70 75 -75 -4
		mu 0 4 55 54 58 59
		f 4 76 -78 -73 23
		mu 0 4 60 61 57 56
		f 4 74 79 -79 -5
		mu 0 4 62 63 64 65
		f 4 80 -82 -77 24
		mu 0 4 66 67 68 69
		f 4 78 83 -83 -6
		mu 0 4 65 64 70 71
		f 4 84 -86 -81 25
		mu 0 4 72 73 67 66
		f 4 82 87 -87 -7
		mu 0 4 71 70 74 75
		f 4 88 -90 -85 26
		mu 0 4 76 77 73 72
		f 4 86 91 -91 -8
		mu 0 4 75 74 78 79
		f 4 92 -94 -89 27
		mu 0 4 80 81 77 76
		f 4 90 95 -95 -9
		mu 0 4 79 78 82 83
		f 4 96 -98 -93 28
		mu 0 4 84 85 81 80
		f 4 94 99 -99 -10
		mu 0 4 83 82 86 87
		f 4 100 -102 -97 29
		mu 0 4 88 89 85 84
		f 4 98 103 -103 -11
		mu 0 4 87 86 90 91
		f 4 104 -106 -101 30
		mu 0 4 92 93 89 88
		f 4 102 107 -107 -12
		mu 0 4 91 90 94 95
		f 4 108 -110 -105 31
		mu 0 4 96 97 93 92
		f 4 106 111 -111 -13
		mu 0 4 95 94 98 99
		f 4 112 -114 -109 32
		mu 0 4 100 101 97 96
		f 4 110 115 -115 -14
		mu 0 4 99 98 102 103
		f 4 116 -118 -113 33
		mu 0 4 104 105 101 100
		f 4 114 119 -119 -15
		mu 0 4 103 102 106 107
		f 4 120 -122 -117 34
		mu 0 4 108 109 105 104
		f 4 118 123 -123 -16
		mu 0 4 107 106 110 111
		f 4 124 -126 -121 35
		mu 0 4 112 113 109 108
		f 4 122 127 -127 -17
		mu 0 4 111 110 114 115
		f 4 128 -130 -125 36
		mu 0 4 116 117 113 112
		f 4 126 131 -131 -18
		mu 0 4 115 114 118 119
		f 4 132 -134 -129 37
		mu 0 4 120 121 117 116
		f 4 130 135 -135 -19
		mu 0 4 119 118 122 123
		f 4 136 -138 -133 38
		mu 0 4 124 125 121 120
		f 4 134 138 -61 -20
		mu 0 4 123 122 43 42
		f 4 64 -140 -137 39
		mu 0 4 49 48 125 124
		f 4 65 141 -143 -141
		mu 0 4 126 127 128 129
		f 4 69 143 -145 -142
		mu 0 4 127 130 131 128
		f 4 73 145 -147 -144
		mu 0 4 130 132 133 131
		f 4 77 147 -149 -146
		mu 0 4 132 134 135 133
		f 4 81 149 -151 -148
		mu 0 4 136 137 138 139
		f 4 85 151 -153 -150
		mu 0 4 137 140 141 138
		f 4 89 153 -155 -152
		mu 0 4 140 142 143 141
		f 4 93 155 -157 -154
		mu 0 4 142 144 145 143
		f 4 97 157 -159 -156
		mu 0 4 144 146 147 145
		f 4 101 159 -161 -158
		mu 0 4 146 148 149 147
		f 4 105 161 -163 -160
		mu 0 4 148 150 151 149
		f 4 109 163 -165 -162
		mu 0 4 150 152 153 151
		f 4 113 165 -167 -164
		mu 0 4 152 154 155 153
		f 4 117 167 -169 -166
		mu 0 4 154 156 157 155
		f 4 121 169 -171 -168
		mu 0 4 156 158 159 157
		f 4 125 171 -173 -170
		mu 0 4 158 160 161 159
		f 4 129 173 -175 -172
		mu 0 4 160 162 163 161
		f 4 133 175 -177 -174
		mu 0 4 162 164 165 163
		f 4 137 177 -179 -176
		mu 0 4 164 166 167 165
		f 4 139 140 -180 -178
		mu 0 4 166 126 129 167
		f 3 142 181 -181
		mu 0 3 168 169 170
		f 3 144 182 -182
		mu 0 3 169 171 170
		f 3 146 183 -183
		mu 0 3 171 172 170
		f 3 148 184 -184
		mu 0 3 172 173 170
		f 3 150 185 -185
		mu 0 3 173 174 170
		f 3 152 186 -186
		mu 0 3 174 175 170
		f 3 154 187 -187
		mu 0 3 175 176 170
		f 3 156 188 -188
		mu 0 3 176 177 170
		f 3 158 189 -189
		mu 0 3 177 178 170
		f 3 160 190 -190
		mu 0 3 178 179 170
		f 3 162 191 -191
		mu 0 3 179 180 170
		f 3 164 192 -192
		mu 0 3 180 181 170
		f 3 166 193 -193
		mu 0 3 181 182 170
		f 3 168 194 -194
		mu 0 3 182 183 170
		f 3 170 195 -195
		mu 0 3 183 184 170
		f 3 172 196 -196
		mu 0 3 184 185 170
		f 3 174 197 -197
		mu 0 3 185 186 170
		f 3 176 198 -198
		mu 0 3 186 187 170
		f 3 178 199 -199
		mu 0 3 187 188 170
		f 3 179 180 -200
		mu 0 3 188 168 170
		f 4 -63 200 202 -202
		mu 0 4 189 190 191 192
		f 4 -68 201 204 -204
		mu 0 4 193 189 192 194
		f 4 -72 203 206 -206
		mu 0 4 195 193 194 196
		f 4 -76 205 208 -208
		mu 0 4 197 195 196 198
		f 4 -80 207 210 -210
		mu 0 4 199 200 201 202
		f 4 -84 209 212 -212
		mu 0 4 203 199 202 204
		f 4 -88 211 214 -214
		mu 0 4 205 203 204 206
		f 4 -92 213 216 -216
		mu 0 4 207 205 206 208
		f 4 -96 215 218 -218
		mu 0 4 209 207 208 210
		f 4 -100 217 220 -220
		mu 0 4 211 209 210 212
		f 4 -104 219 222 -222
		mu 0 4 213 211 212 214
		f 4 -108 221 224 -224
		mu 0 4 215 213 214 216
		f 4 -112 223 226 -226
		mu 0 4 217 215 216 218
		f 4 -116 225 228 -228
		mu 0 4 219 217 218 220
		f 4 -120 227 230 -230
		mu 0 4 221 219 220 222
		f 4 -124 229 232 -232
		mu 0 4 223 221 222 224
		f 4 -128 231 234 -234
		mu 0 4 225 223 224 226
		f 4 -132 233 236 -236
		mu 0 4 227 225 226 228
		f 4 -136 235 238 -238
		mu 0 4 229 227 228 230
		f 4 -139 237 239 -201
		mu 0 4 190 229 230 191
		f 4 -203 240 242 -242
		mu 0 4 231 232 233 234
		f 4 -205 241 244 -244
		mu 0 4 235 231 234 236
		f 4 -207 243 246 -246
		mu 0 4 237 235 236 238
		f 4 -209 245 248 -248
		mu 0 4 239 237 238 240
		f 4 -211 247 250 -250
		mu 0 4 241 242 243 244
		f 4 -213 249 252 -252
		mu 0 4 245 241 244 246
		f 4 -215 251 254 -254
		mu 0 4 247 245 246 248
		f 4 -217 253 256 -256
		mu 0 4 249 247 248 250
		f 4 -219 255 258 -258
		mu 0 4 251 249 250 252
		f 4 -221 257 260 -260
		mu 0 4 253 251 252 254
		f 4 -223 259 262 -262
		mu 0 4 255 253 254 256
		f 4 -225 261 264 -264
		mu 0 4 257 255 256 258
		f 4 -227 263 266 -266
		mu 0 4 259 257 258 260
		f 4 -229 265 268 -268
		mu 0 4 261 259 260 262
		f 4 -231 267 270 -270
		mu 0 4 263 261 262 264
		f 4 -233 269 272 -272
		mu 0 4 265 263 264 266
		f 4 -235 271 274 -274
		mu 0 4 267 265 266 268
		f 4 -237 273 276 -276
		mu 0 4 269 267 268 270
		f 4 -239 275 278 -278
		mu 0 4 271 269 270 272
		f 4 -240 277 279 -241
		mu 0 4 232 271 272 233
		f 4 -243 280 282 -282
		mu 0 4 273 274 275 276
		f 4 -245 281 284 -284
		mu 0 4 277 273 276 278
		f 4 -247 283 286 -286
		mu 0 4 279 277 278 280
		f 4 -249 285 288 -288
		mu 0 4 281 279 280 282
		f 4 -251 287 290 -290
		mu 0 4 283 284 285 286
		f 4 -253 289 292 -292
		mu 0 4 287 283 286 288
		f 4 -255 291 294 -294
		mu 0 4 289 287 288 290
		f 4 -257 293 296 -296
		mu 0 4 291 289 290 292
		f 4 -259 295 298 -298
		mu 0 4 293 291 292 294
		f 4 -261 297 300 -300
		mu 0 4 295 293 294 296
		f 4 -263 299 302 -302
		mu 0 4 297 295 296 298
		f 4 -265 301 304 -304
		mu 0 4 299 297 298 300
		f 4 -267 303 306 -306
		mu 0 4 301 299 300 302
		f 4 -269 305 308 -308
		mu 0 4 303 301 302 304
		f 4 -271 307 310 -310
		mu 0 4 305 303 304 306
		f 4 -273 309 312 -312
		mu 0 4 307 305 306 308
		f 4 -275 311 314 -314
		mu 0 4 309 307 308 310
		f 4 -277 313 316 -316
		mu 0 4 311 309 310 312
		f 4 -279 315 318 -318
		mu 0 4 313 311 312 314
		f 4 -280 317 319 -281
		mu 0 4 274 313 314 275
		f 4 320 355 -338 -355
		mu 0 4 315 316 317 318
		f 4 321 356 -339 -356
		mu 0 4 316 319 320 317
		f 4 322 357 -340 -357
		mu 0 4 319 321 322 320
		f 4 323 358 -341 -358
		mu 0 4 321 323 324 322
		f 4 324 359 -342 -359
		mu 0 4 323 325 326 324
		f 4 325 360 -343 -360
		mu 0 4 325 327 328 326
		f 4 326 361 -344 -361
		mu 0 4 327 329 330 328
		f 4 327 362 -345 -362
		mu 0 4 329 331 332 330
		f 4 328 363 -346 -363
		mu 0 4 331 333 334 332
		f 4 329 364 -347 -364
		mu 0 4 333 335 336 334
		f 4 330 365 -348 -365
		mu 0 4 335 337 338 336
		f 4 331 366 -349 -366
		mu 0 4 337 339 340 338
		f 4 332 367 -350 -367
		mu 0 4 339 341 342 340
		f 4 333 368 -351 -368
		mu 0 4 341 343 344 342
		f 4 334 369 -352 -369
		mu 0 4 343 345 346 344
		f 4 335 370 -353 -370
		mu 0 4 345 347 348 346
		f 4 336 371 -354 -371
		mu 0 4 347 349 350 348
		f 4 -372 451 372 -453
		mu 0 4 350 349 351 352
		f 4 -373 461 457 -463
		mu 0 4 352 351 353 354
		f 4 -474 475 501 -479
		mu 0 4 355 356 357 358
		f 4 373 375 -375 -321
		mu 0 4 359 360 361 362
		f 4 376 -379 -378 337
		mu 0 4 363 364 365 366
		f 4 374 380 -380 -322
		mu 0 4 362 361 367 368
		f 4 381 -383 -377 338
		mu 0 4 369 370 364 363
		f 4 379 384 -384 -323
		mu 0 4 368 367 371 372
		f 4 385 -387 -382 339
		mu 0 4 373 374 370 369
		f 4 383 388 -388 -324
		mu 0 4 372 371 375 376
		f 4 389 -391 -386 340
		mu 0 4 377 378 374 373
		f 4 387 392 -392 -325
		mu 0 4 376 375 379 380
		f 4 393 -395 -390 341
		mu 0 4 381 382 378 377
		f 4 391 396 -396 -326
		mu 0 4 380 379 383 384
		f 4 397 -399 -394 342
		mu 0 4 385 386 382 381
		f 4 395 400 -400 -327
		mu 0 4 384 383 387 388
		f 4 401 -403 -398 343
		mu 0 4 389 390 386 385
		f 4 399 404 -404 -328
		mu 0 4 388 387 391 392
		f 4 405 -407 -402 344
		mu 0 4 393 394 390 389
		f 4 403 408 -408 -329
		mu 0 4 392 391 395 396
		f 4 409 -411 -406 345
		mu 0 4 397 398 394 393
		f 4 407 412 -412 -330
		mu 0 4 396 395 399 400
		f 4 413 -415 -410 346
		mu 0 4 401 402 398 397
		f 4 411 416 -416 -331
		mu 0 4 400 399 403 404
		f 4 417 -419 -414 347
		mu 0 4 405 406 402 401
		f 4 415 420 -420 -332
		mu 0 4 404 403 407 408
		f 4 421 -423 -418 348
		mu 0 4 409 410 406 405
		f 4 419 424 -424 -333
		mu 0 4 408 407 411 412
		f 4 425 -427 -422 349
		mu 0 4 413 414 410 409
		f 4 423 428 -428 -334
		mu 0 4 412 411 415 416
		f 4 429 -431 -426 350
		mu 0 4 417 418 414 413
		f 4 427 432 -432 -335
		mu 0 4 416 415 419 420
		f 4 433 -435 -430 351
		mu 0 4 421 422 418 417
		f 4 431 436 -436 -336
		mu 0 4 420 419 423 424
		f 4 437 -439 -434 352
		mu 0 4 425 426 422 421
		f 4 435 440 -440 -337
		mu 0 4 424 423 427 428
		f 4 441 -443 -438 353
		mu 0 4 429 430 426 425
		f 4 439 450 -444 -452
		mu 0 4 428 427 431 432
		f 4 -446 -442 452 444
		mu 0 4 433 430 429 434
		f 4 443 460 455 -462
		mu 0 4 432 431 435 436
		f 4 -449 -445 462 459
		mu 0 4 437 433 434 438
		f 4 446 467 470 -469
		mu 0 4 439 440 441 442
		f 4 -450 -448 469 472
		mu 0 4 443 444 445 446
		f 4 -455 -456 453 -447
		mu 0 4 439 436 435 440
		f 4 -481 -483 483 492
		mu 0 4 447 448 449 450
		f 4 -459 -460 456 447
		mu 0 4 444 437 438 445
		f 4 -465 -471 463 -374
		mu 0 4 359 442 441 360
		f 4 -466 -472 464 354
		mu 0 4 318 451 452 315
		f 4 -467 -473 465 377
		mu 0 4 365 443 446 366
		f 6 468 474 -494 -497 -500 -476
		mu 0 6 439 442 453 454 455 456
		f 4 471 476 -478 -475
		mu 0 4 457 458 459 460
		f 6 -470 478 500 497 494 -477
		mu 0 6 446 445 461 462 463 464
		f 6 -457 479 480 491 488 485
		mu 0 6 445 438 465 466 467 468
		f 4 -458 481 482 -480
		mu 0 4 469 470 449 448
		f 6 454 -485 -488 -491 -484 -482
		mu 0 6 436 439 471 472 473 474
		f 4 -486 -487 484 473
		mu 0 4 475 476 477 478
		f 4 -489 -490 487 486
		mu 0 4 476 479 480 477
		f 4 -492 -493 490 489
		mu 0 4 479 447 450 480
		f 4 -496 493 477 -495
		mu 0 4 481 482 460 459
		f 4 -499 496 495 -498
		mu 0 4 483 484 482 481
		f 4 -502 499 498 -501
		mu 0 4 358 357 484 483
		f 4 502 515 -509 -515
		mu 0 4 485 486 487 488
		f 4 503 516 -510 -516
		mu 0 4 489 490 491 492
		f 4 504 517 -511 -517
		mu 0 4 490 493 494 491
		f 4 505 518 -512 -518
		mu 0 4 493 495 496 494
		f 4 506 519 -513 -519
		mu 0 4 495 497 498 496
		f 4 507 514 -514 -520
		mu 0 4 497 485 488 498
		f 3 -503 -521 521
		mu 0 3 499 500 501
		f 3 -504 -522 522
		mu 0 3 502 499 501
		f 3 -505 -523 523
		mu 0 3 503 502 501
		f 3 -506 -524 524
		mu 0 3 504 503 501
		f 3 -507 -525 525
		mu 0 3 505 504 501
		f 3 -508 -526 520
		mu 0 3 500 505 501
		f 3 508 527 -527
		mu 0 3 506 507 508
		f 3 509 528 -528
		mu 0 3 507 509 508
		f 3 510 529 -529
		mu 0 3 509 510 508
		f 3 511 530 -530
		mu 0 3 510 511 508
		f 3 512 531 -531
		mu 0 3 511 512 508
		f 3 513 526 -532
		mu 0 3 512 506 508
		f 4 532 549 -541 -549
		mu 0 4 513 514 515 516
		f 4 533 550 -542 -550
		mu 0 4 514 517 518 515
		f 4 534 551 -543 -551
		mu 0 4 517 519 520 518
		f 4 535 552 -544 -552
		mu 0 4 519 521 522 520
		f 4 536 553 -545 -553
		mu 0 4 521 523 524 522
		f 4 537 554 -546 -554
		mu 0 4 523 525 526 524
		f 4 538 555 -547 -555
		mu 0 4 525 527 528 526
		f 4 539 548 -548 -556
		mu 0 4 527 529 530 528
		f 3 540 557 -557
		mu 0 3 531 532 533
		f 3 541 558 -558
		mu 0 3 532 534 533
		f 3 542 559 -559
		mu 0 3 534 535 533
		f 3 543 560 -560
		mu 0 3 535 536 533
		f 3 544 561 -561
		mu 0 3 536 537 533
		f 3 545 562 -562
		mu 0 3 537 538 533
		f 3 546 563 -563
		mu 0 3 538 539 533
		f 3 547 556 -564
		mu 0 3 539 531 533;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "coupling_extend_start" -p "hose_main_component1";
	rename -uid "77A97DCD-4DE5-00A2-EFA4-10AB5C20E7A8";
	addAttr -ci true -sn "i3D_xmlIdentifier" -ln "i3D_xmlIdentifier" -dt "string";
	addAttr -ci true -sn "i3D_objectMask" -ln "i3D_objectMask" -at "long";
	addAttr -ci true -sn "i3D_dynamic" -ln "i3D_dynamic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_joint" -ln "i3D_joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_dynamicFriction" -ln "i3D_dynamicFriction" -at "float";
	addAttr -ci true -sn "i3D_ccd" -ln "i3D_ccd" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_density" -ln "i3D_density" -at "float";
	addAttr -ci true -sn "i3D_splitType" -ln "i3D_splitType" -at "long";
	addAttr -ci true -sn "i3D_splitMinU" -ln "i3D_splitMinU" -at "float";
	addAttr -ci true -sn "i3D_splitMinV" -ln "i3D_splitMinV" -at "float";
	addAttr -ci true -sn "i3D_driveForceLimit" -ln "i3D_driveForceLimit" -at "float";
	addAttr -ci true -sn "i3D_angularDamping" -ln "i3D_angularDamping" -at "float";
	addAttr -ci true -sn "i3D_splitUvWorldScale" -ln "i3D_splitUvWorldScale" -at "float";
	addAttr -ci true -sn "i3D_projection" -ln "i3D_projection" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_driveSpring" -ln "i3D_driveSpring" -at "float";
	addAttr -ci true -sn "i3D_breakableJoint" -ln "i3D_breakableJoint" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_projDistance" -ln "i3D_projDistance" -at "float";
	addAttr -ci true -sn "i3D_driveDamping" -ln "i3D_driveDamping" -at "float";
	addAttr -ci true -sn "i3D_xAxisDrive" -ln "i3D_xAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_compound" -ln "i3D_compound" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_clipDistance" -ln "i3D_clipDistance" -at "float";
	addAttr -ci true -sn "i3D_collision" -ln "i3D_collision" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_scaled" -ln "i3D_scaled" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_projAngle" -ln "i3D_projAngle" -at "float";
	addAttr -ci true -sn "i3D_mergeGroupRoot" -ln "i3D_mergeGroupRoot" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_jointBreakTorque" -ln "i3D_jointBreakTorque" -at "float";
	addAttr -ci true -sn "i3D_restitution" -ln "i3D_restitution" -at "float";
	addAttr -ci true -sn "i3D_yAxisDrive" -ln "i3D_yAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_mergeGroup" -ln "i3D_mergeGroup" -at "long";
	addAttr -ci true -sn "i3D_jointBreakForce" -ln "i3D_jointBreakForce" -at "float";
	addAttr -ci true -sn "i3D_lod1" -ln "i3D_lod1" -at "float";
	addAttr -ci true -sn "i3D_lod2" -ln "i3D_lod2" -at "float";
	addAttr -ci true -sn "i3D_oc" -ln "i3D_oc" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_kinematic" -ln "i3D_kinematic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_trigger" -ln "i3D_trigger" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_static" -ln "i3D_static" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lightMask" -ln "i3D_lightMask" -dt "string";
	addAttr -ci true -sn "i3D_linearDamping" -ln "i3D_linearDamping" -at "float";
	addAttr -ci true -sn "i3D_lod3" -ln "i3D_lod3" -at "float";
	addAttr -ci true -sn "i3D_drivePos" -ln "i3D_drivePos" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lod" -ln "i3D_lod" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_solverIterationCount" -ln "i3D_solverIterationCount" -at "long";
	addAttr -ci true -sn "i3D_nonRenderable" -ln "i3D_nonRenderable" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_boundingVolume" -ln "i3D_boundingVolume" -dt "string";
	addAttr -ci true -sn "i3D_collisionMask" -ln "i3D_collisionMask" -at "long";
	addAttr -ci true -sn "i3D_zAxisDrive" -ln "i3D_zAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_cpuMesh" -ln "i3D_cpuMesh" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_staticFriction" -ln "i3D_staticFriction" -at "float";
	addAttr -ci true -sn "i3D_decalLayer" -ln "i3D_decalLayer" -at "long";
	addAttr -ci true -sn "i3D_splitMaxV" -ln "i3D_splitMaxV" -at "float";
	addAttr -ci true -sn "i3D_splitMaxU" -ln "i3D_splitMaxU" -at "float";
	addAttr -ci true -sn "i3D_compoundChild" -ln "i3D_compoundChild" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -2.9802322373817525e-08 0.016793407499790192 -0.077731665930311333 ;
	setAttr ".i3D_xmlIdentifier" -type "string" "coupling_extend_start";
	setAttr ".i3D_objectMask" 255;
	setAttr ".i3D_dynamicFriction" 0.5;
	setAttr ".i3D_density" 1;
	setAttr ".i3D_driveForceLimit" 100000;
	setAttr ".i3D_angularDamping" 0.0099999997764825821;
	setAttr ".i3D_splitUvWorldScale" 1;
	setAttr ".i3D_driveSpring" 1;
	setAttr ".i3D_projDistance" 0.0099999997764825821;
	setAttr ".i3D_driveDamping" 0.0099999997764825821;
	setAttr ".i3D_clipDistance" 300;
	setAttr ".i3D_projAngle" 0.0099999997764825821;
	setAttr ".i3D_mergeGroupRoot" yes;
	setAttr ".i3D_mergeGroup" 1;
	setAttr ".i3D_lightMask" -type "string" "FFFF";
	setAttr ".i3D_solverIterationCount" 4;
	setAttr ".i3D_boundingVolume" -type "string" "";
	setAttr ".i3D_collisionMask" 255;
	setAttr ".i3D_staticFriction" 0.5;
	setAttr ".i3D_splitMaxV" 1;
	setAttr ".i3D_splitMaxU" 1;
createNode mesh -n "coupling_extend_startShape" -p "coupling_extend_start";
	rename -uid "D09EF289-4080-AE82-31B9-8FA6E03657B0";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:513]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1012 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 4.50388145 0.13940668 4.50388145
		 0.15910721 4.508883 0.15910757 4.50888348 0.13940573 4.5138855 0.15910816 4.51388502
		 0.1394068 4.51888704 0.15910757 4.51888704 0.13940752 4.47887182 0.13940752 4.47887182
		 0.15910757 4.48387337 0.15910757 4.48387337 0.13940752 4.48887539 0.15910757 4.48887539
		 0.13940752 4.49387741 0.15910757 4.49387741 0.13940752 4.49887943 0.15910816 4.49887943
		 0.13940763 6.42330933 3.99370813 6.40262604 3.99370813 6.40262604 3.97471929 6.42330933
		 3.97471929 6.38194275 3.99370813 6.38194275 3.97471929 6.36125946 3.99370813 6.36125946
		 3.97471929 6.34057617 3.99370813 6.34057617 3.97471929 6.31989431 3.99370813 6.31989431
		 3.97471929 6.2992115 3.99370813 6.2992115 3.97471929 6.27852917 3.99370813 6.27852917
		 3.97471929 6.25784588 3.99370813 6.25784588 3.97471929 6.23716259 3.99370813 6.23716259
		 3.97471929 6.21647835 3.99370813 6.21647835 3.97471929 6.19579697 3.99370813 6.19579697
		 3.97471929 6.17511177 3.99370813 6.17511177 3.97471929 6.15442753 3.99370813 6.15442753
		 3.97471929 6.13374519 3.99370813 6.13374519 3.97471929 6.1130619 3.99370813 6.1130619
		 3.97471929 6.09237957 3.99370813 6.09237957 3.97471929 6.07169342 3.99370813 6.07169342
		 3.97471929 6.051012039 3.99370813 6.051012039 3.97471929 6.040967941 3.99370813 6.040967941
		 3.97471929 4.46374702 0.97512722 4.4637475 0.99423742 4.45792055 0.99423695 4.45792055
		 0.9751246 6.52666187 3.90166974 6.52617455 3.90023279 6.53806257 3.89398432 6.53896999
		 3.89520001 6.48631096 3.79307175 6.48723841 3.79177999 6.49982119 3.79809785 6.4993391
		 3.79961348 6.54743767 3.88436723 6.54867649 3.88524342 6.47594261 3.78282404 6.4772234
		 3.78188205 6.55338287 3.87232375 6.5548315 3.87277436 6.46924829 3.7698741 6.47075748
		 3.76937389 6.55531549 3.85903287 6.55683184 3.8590138 6.46688271 3.75548959 6.46847343
		 3.75547957 6.5530448 3.84579587 6.55448198 3.84530878 6.46907902 3.74107671 6.47059441
		 3.74155974 6.54679585 3.8339076 6.54801226 3.83300066 6.47562122 3.72804976 6.47691298
		 3.72897577 6.53718042 3.82453251 6.5380559 3.82329416 6.48586845 3.71768045 6.48681116
		 3.71896219 6.52513599 3.81858802 6.52558899 3.81713939 6.49881887 3.71098661 6.4993186
		 3.71249628 6.51184559 3.81665611 6.51182842 3.81513906 6.51320314 3.70862007 6.51321268
		 3.7102108 6.49860859 3.81892538 6.49812031 3.81748867 6.52761459 3.71081924 6.52713156
		 3.71233368 6.48672009 3.82517433 6.48581409 3.82395887 6.54064226 3.71735954 6.53971577
		 3.71865082 6.47734547 3.83479071 6.47610664 3.83391547 6.55101061 3.72760868 6.54972935
		 3.72854805 6.47140026 3.84683442 6.46995258 3.84638405 6.55770493 3.74055576 6.55619621
		 3.7410593 6.46946812 3.8601253 6.46795177 3.86014414 6.56007004 3.75494289 6.55847979
		 3.75494862 6.47173786 3.87336206 6.47030067 3.87384963 6.55787468 3.76935387 6.55635929
		 3.76887321 6.47798347 3.88525009 6.4767704 3.88615775 6.55133247 3.7823801 6.55004025
		 3.78145409 6.48760223 3.89462614 6.48671913 3.89586377 6.54108477 3.7927494 6.54014349
		 3.79146671 6.49963951 3.90057039 6.49918938 3.9020195 6.52763462 3.79792976 6.52813482
		 3.79944229 6.50496101 3.90134287 6.50469971 3.90281892 6.52207756 3.79884624 6.52238178
		 3.80038929 6.51295567 3.90402675 6.5129385 3.9025023 6.52088022 3.90114117 6.52118111
		 3.90260983 6.50538921 3.79894662 6.51374149 3.80021906 6.51375103 3.80181599 6.50510359
		 3.80049133 4.021411419 0.97471595 4.024793625 0.97471595 4.024793625 0.99382877 4.021411419
		 0.99382877 6.43158245 3.97471929 6.43158245 3.99370813 6.52001095 3.90570259 6.51846027
		 3.90738034 6.51660728 3.90823674 6.51479912 3.90750694 4.44373465 0.99423742 4.44373465
		 0.97512531 4.44862986 0.97512507 4.44862986 0.99423742 6.5118885 3.80550003 6.51000834
		 3.80630016 6.50804853 3.80543947 6.50638914 3.80371141 6.52113342 3.80362415 6.51949501
		 3.80537224 6.51754522 3.8062582 6.51565647 3.80547667 4.029689789 0.97471642 4.029689789
		 0.99382782 6.51120567 3.90755272 6.50941849 3.90832829 6.50754166 3.90751839 6.50595093
		 3.90588188 4.0096764565 0.97471571 4.01550436 0.97471547 4.01550436 0.99382782 4.0096764565
		 0.99382877 4.018389225 0.97471547 4.018389702 0.9938283 4.45201206 0.97512412 4.45201206
		 0.99423742 4.45503426 0.9751246 4.45503426 0.99423695 4.50388145 0.13940668 4.50888348
		 0.13940573 4.508883 0.15910757 4.50388145 0.15910721 4.51388502 0.1394068 4.5138855
		 0.15910816 4.51888704 0.13940752 4.51888704 0.15910757 4.47887182 0.13940752 4.48387337
		 0.13940752 4.48387337 0.15910757 4.47887182 0.15910757 4.48887539 0.13940752 4.48887539
		 0.15910757 4.49387741 0.13940752 4.49387741 0.15910757 4.49887943 0.13940763 4.49887943
		 0.15910816 4.50388145 0.13940668 4.50888348 0.13940573 4.508883 0.15910757 4.50388145
		 0.15910721 4.51388502 0.1394068 4.5138855 0.15910816 4.51888704 0.13940752 4.51888704
		 0.15910757 4.47887182 0.13940752 4.48387337 0.13940752 4.48387337 0.15910757 4.47887182
		 0.15910757 4.48887539 0.13940752 4.48887539 0.15910757 4.49387741 0.13940752 4.49387741
		 0.15910757 4.49887943 0.13940763 4.49887943 0.15910816 4.50388145 0.13940668 4.50888348
		 0.13940573 4.508883 0.15910757 4.50388145 0.15910721 4.51388502 0.1394068 4.5138855
		 0.15910816 4.51888704 0.13940752 4.51888704 0.15910757 4.47887182 0.13940752 4.48387337
		 0.13940752 4.48387337 0.15910757 4.47887182 0.15910757 4.48887539 0.13940752 4.48887539
		 0.15910757 4.49387741 0.13940752 4.49387741 0.15910757 4.49887943 0.13940763 4.49887943
		 0.15910816 4.99466324 0.24082088 4.98301172 0.24083495 4.98299551 0.22764647 4.99466324
		 0.22763205 4.96938229 0.24085176 4.96936607 0.22766304 4.95575237 0.24086857 4.95573616
		 0.22767997;
	setAttr ".uvst[0].uvsp[250:499]" 4.94212341 0.24088514 4.9421072 0.22769654
		 4.9284935 0.24090207 4.92847729 0.22771275 4.91486406 0.24091804 4.91484785 0.22772968
		 4.90123415 0.24093568 4.90121794 0.22774732 4.88760519 0.2409519 4.88758898 0.22776353
		 4.87397528 0.24096811 4.87395906 0.22777975 4.86173725 0.24098384 4.86172199 0.22779644
		 4.85276175 0.24031019 4.85276175 0.22744727 4.85705233 0.22951543 4.85705233 0.23824227
		 4.83643723 0.22986841 4.83643723 0.23874712 4.83236885 0.23874712 4.83236885 0.22986829
		 4.51359892 0.59134293 4.52741909 0.58899736 4.52826738 0.59168887 4.51577616 0.59400868
		 4.51142025 0.59400773 4.49892473 0.591681 4.49977446 0.58899009 4.54150152 0.58494985
		 4.53994274 0.58279133 4.55200577 0.57445121 4.54981995 0.57291126 4.55875158 0.56122088
		 4.55644512 0.56020379 4.56107903 0.54655266 4.55865192 0.54654646 4.55875969 0.53188419
		 4.5561223 0.53290558 4.55202055 0.51864958 4.54993296 0.52043676 4.54152203 0.50814533
		 4.54000664 0.51049519 4.52829218 0.5014019 4.52741909 0.50386715 4.53182554 0.69298446
		 4.51872349 0.68632054 4.52026558 0.68418324 4.53266382 0.69031978 4.50832176 0.67593396
		 4.5104847 0.6744076 4.50163794 0.66284156 4.50392056 0.66183341 4.49932766 0.64832473
		 4.50173092 0.64831805 4.50161648 0.63380456 4.50422668 0.63481414 4.50828075 0.62070203
		 4.51034689 0.62247145 4.5186677 0.61030042 4.5201683 0.61262655 4.53175926 0.60361743
		 4.53262424 0.60605752 4.54627848 0.60356641 4.54475355 0.60130811 4.54779816 0.60130608
		 4.56080437 0.60359633 4.55994129 0.60603809 4.51577568 0.59674585 4.51577425 0.60248363
		 4.51141834 0.60248208 4.5114193 0.59674454 4.84631634 0.20972598 4.84631634 0.22288525
		 4.8438096 0.22287989 4.8438096 0.20972061 4.83910227 0.21204352 4.83910227 0.22053707
		 4.84961891 0.24031043 4.84961891 0.22744739 4.86544371 0.20338035 4.85257387 0.20338178
		 4.85257292 0.19019222 4.86544228 0.19019103 4.83951664 0.20338297 4.83951521 0.19019365
		 4.82662249 0.20338392 4.82662106 0.19019461 4.81384754 0.20338511 4.81384659 0.1901958
		 4.80111361 0.2033875 4.80111217 0.19019818 4.78841782 0.20338893 4.78841639 0.19019961
		 4.77526569 0.20339036 4.77526426 0.19020057 4.76244307 0.20339131 4.76244164 0.190202
		 4.74961472 0.20339131 4.74961472 0.19020295 4.73674965 0.20339417 4.73674774 0.19020295
		 4.99467754 0.20927227 4.99467707 0.22246087 4.9830122 0.22246063 4.98301268 0.20927215
		 4.96937847 0.22246039 4.96937847 0.20927179 4.9557457 0.22246003 4.9557457 0.20927167
		 4.94211531 0.22246003 4.94211531 0.20927119 4.92848539 0.22245979 4.92848539 0.20927143
		 4.91485548 0.22245979 4.91485643 0.20927095 4.90122461 0.22245932 4.90122461 0.20927095
		 4.88759279 0.22245932 4.88759279 0.20927095 4.87395859 0.22245979 4.87395859 0.20927143
		 4.86171532 0.22245884 4.86171532 0.20927048 4.84301853 0.24056041 4.83862877 0.23844457
		 4.83862877 0.22951531 4.84301853 0.22739935 4.83239651 0.21194696 4.83657408 0.21194685
		 4.83657408 0.2208426 4.83239651 0.22084272 4.48568773 0.58493555 4.4872489 0.58277762
		 4.47518492 0.57443094 4.47737265 0.57289124 4.46844292 0.56119728 4.47075176 0.56018066
		 4.46612263 0.54652691 4.46855164 0.54652262 4.4684515 0.53185892 4.47108889 0.53288269
		 4.4751997 0.51862812 4.47728729 0.52041864 4.48570824 0.50813103 4.48722363 0.51048255
		 4.49894857 0.50139189 4.49982023 0.50385761 4.51516151 0.49907589 4.51208544 0.49907589
		 4.51208591 0.49556065 4.51516247 0.49556351 4.54419041 0.69527507 4.54850245 0.69527161
		 4.54850435 0.69798088 4.54419231 0.69798386 4.56086922 0.69296324 4.56002617 0.69029975
		 4.57242107 0.68414485 4.57396793 0.68628025 4.58219194 0.67435527 4.58435822 0.67587829
		 4.58873844 0.66177106 4.5910244 0.66277599 4.59091043 0.64825261 4.59331369 0.64825583
		 4.58839273 0.63475287 4.59100342 0.63373888 4.58225155 0.62241864 4.58431673 0.62064648
		 4.57241201 0.61258793 4.57391119 0.61026001 4.54474735 0.59256554 4.54779434 0.59256387
		 4.54779816 0.5978303 4.54475069 0.59783232 4.51208735 0.490242 4.51516342 0.49024296
		 4.54850864 0.70366001 4.54419661 0.70366311 4.84958887 0.20972335 4.85209513 0.20972347
		 4.85209513 0.22288227 4.84958887 0.22288239 4.85680246 0.21205604 4.85680294 0.2205497
		 4.84623432 0.24056041 4.84623432 0.22739923 4.87831736 0.19018984 4.87831879 0.20337915
		 4.89137936 0.19018841 4.89138031 0.20337749 4.90427637 0.19018745 4.9042778 0.20337677
		 4.91705227 0.19018579 4.9170537 0.2033751 4.92978668 0.19018435 4.92978811 0.20337367
		 4.94248247 0.1901834 4.94248343 0.20337272 4.95563602 0.19018197 4.95563698 0.20337129
		 4.96846199 0.19018102 4.96846199 0.20337129 4.98129272 0.19018102 4.98129463 0.20336843
		 4.99416351 0.19017816 4.99416542 0.20336843 4.51362324 0.50135612 4.54634428 0.6926353
		 4.30398369 0.83267379 4.32678032 0.83267379 4.32678032 0.83818769 4.30398369 0.83818769
		 4.28118944 0.83267379 4.28118944 0.83818769 4.25839233 0.83267331 4.25839233 0.83818769
		 4.2355957 0.83267415 4.2355957 0.83818769 4.21280098 0.83267295 4.21280098 0.8381865
		 4.19000435 0.83267295 4.19000435 0.8381865 4.16720772 0.83267295 4.16720772 0.8381865
		 4.14441109 0.83267295 4.14441109 0.8381865 4.1216116 0.83267331 4.1216116 0.83819163
		 4.098817348 0.83267331 4.098817348 0.83818686 4.076020718 0.83267331 4.076020718
		 0.83818686 4.053235054 0.83267331 4.053235054 0.83818686 4.030478477 0.83267331 4.030478477
		 0.83818686 4.0077872276 0.83267331 4.0077872276 0.83818686 4.44028282 0.83267307
		 4.46232939 0.83267283 4.46232939 0.8381865 4.44028282 0.8381865 4.41770267 0.83267283
		 4.41770267 0.8381865 4.39510584 0.83267426 4.39510584 0.83818769 4.37236738 0.83267426
		 4.37236738 0.83818793;
	setAttr ".uvst[0].uvsp[500:749]" 4.34957695 0.83267462 4.34957695 0.83818769
		 4.32678127 0.81031013 4.30398369 0.81030989 4.30398369 0.79072285 4.32678127 0.79072332
		 4.28118801 0.81031024 4.28118801 0.79072392 4.25839186 0.81030953 4.25839186 0.79072285
		 4.23559618 0.81030989 4.2355957 0.79072285 4.2128005 0.81031072 4.2128005 0.79072285
		 4.19000435 0.81031072 4.19000435 0.79072285 4.16720819 0.81031072 4.16720772 0.79072309
		 4.14441109 0.81031084 4.14441109 0.79072309 4.12161303 0.81031084 4.12161303 0.79072142
		 4.098815918 0.81031084 4.098815918 0.79072142 4.076021194 0.81031084 4.076021194
		 0.79072118 4.053234577 0.81031084 4.053234577 0.79072118 4.030478477 0.81031072 4.030478477
		 0.79072118 4.007786274 0.81031084 4.007786274 0.79072118 4.46232891 0.81031072 4.4402833
		 0.81031096 4.4402833 0.79072309 4.46232891 0.79072309 4.41770267 0.81031072 4.41770267
		 0.79072297 4.39510584 0.81030989 4.39510584 0.79072309 4.37236738 0.81030989 4.37236738
		 0.79072332 4.34957695 0.81031024 4.34957695 0.79072392 4.32465649 0.87833548 4.30205345
		 0.87833571 4.30205297 0.87134457 4.32465649 0.87134457 4.27932453 0.87833548 4.27932453
		 0.87134457 4.25646591 0.87833548 4.25646591 0.87134457 4.23355055 0.87833548 4.23355055
		 0.87134457 4.21063709 0.87833548 4.21063709 0.87134457 4.18777275 0.87833548 4.18777275
		 0.87134457 4.16499472 0.87833548 4.16499472 0.87134457 4.1422677 0.87833571 4.1422677
		 0.8713448 4.11953545 0.87833571 4.11953497 0.8713448 4.096804619 0.87833571 4.096804142
		 0.8713448 4.07407856 0.87833571 4.074078083 0.8713448 4.051299095 0.87833548 4.051299095
		 0.87134457 4.02843523 0.87833548 4.02843523 0.87134457 4.0055155754 0.87833548 4.0055155754
		 0.87134457 4.46134233 0.87833619 4.43842363 0.87833619 4.43842363 0.8713448 4.46134233
		 0.87134457 4.41556501 0.87833643 4.41556501 0.87134469 4.39278269 0.8783356 4.39278269
		 0.87134457 4.37005758 0.8783356 4.37005758 0.87134445 4.34732819 0.87833548 4.34732819
		 0.87134457 4.30241299 0.88381159 4.32530308 0.88381171 4.32530355 0.90766072 4.30241299
		 0.90766096 4.27952576 0.88381112 4.27952576 0.90766096 4.25663805 0.88381112 4.25663805
		 0.90766096 4.23375082 0.88381219 4.23375082 0.90766025 4.21087551 0.88381219 4.21087599
		 0.90766025 4.18806458 0.88381219 4.18806458 0.90766048 4.16639376 0.88381028 4.16639376
		 0.90766025 4.14468384 0.88381219 4.14468384 0.90766048 4.12216997 0.88381243 4.12216997
		 0.90766025 4.099192142 0.88381243 4.099192142 0.90766025 4.076268673 0.88381267 4.076268673
		 0.90766025 4.053284168 0.88381219 4.053283691 0.90766025 4.030474663 0.88381243 4.030474663
		 0.90766048 4.0076446533 0.88381243 4.0076446533 0.90766048 4.43991756 0.88381219
		 4.46247053 0.88381243 4.46247005 0.90766025 4.43991756 0.90766025 4.4168911 0.88381112
		 4.4168911 0.90766084 4.39397621 0.88381124 4.39397669 0.90766096 4.37108183 0.88381147
		 4.37108135 0.90766072 4.34818983 0.88381171 4.34818935 0.90766096 4.30320406 0.91248655
		 4.32592058 0.91248548 4.3259201 0.96922994 4.30320454 0.9692297 4.28048897 0.91248655
		 4.28048897 0.9692297 4.2577734 0.91248655 4.2577734 0.96922982 4.23505735 0.91248655
		 4.23505735 0.96923006 4.21234226 0.91248631 4.21234226 0.96923018 4.18962622 0.91248643
		 4.18962669 0.9692297 4.16691113 0.9124856 4.16691113 0.9692297 4.14419556 0.91248691
		 4.14419556 0.96922779 4.12147951 0.91248691 4.12147951 0.96922767 4.098763466 0.91248691
		 4.098763466 0.96922755 4.076048374 0.91248691 4.076048374 0.96922755 4.053332806
		 0.91248691 4.053332806 0.96922767 4.030617237 0.91248691 4.030617237 0.96922767 4.0079016685
		 0.91248691 4.0079016685 0.96922755 4.43949842 0.91248655 4.46221399 0.91248679 4.46221352
		 0.96922994 4.43949795 0.96922982 4.41678286 0.91248631 4.41678286 0.96922982 4.39406729
		 0.91248655 4.39406729 0.96922982 4.37135124 0.91248655 4.37135172 0.96923041 4.34863567
		 0.91248631 4.34863567 0.96922994 4.30267096 0.85636759 4.30267096 0.84399748 4.32522058
		 0.84399748 4.32522058 0.85636759 4.28012133 0.85636759 4.28012133 0.84399748 4.2575717
		 0.85636759 4.2575717 0.84399748 4.23502111 0.85636759 4.23502111 0.84399748 4.21247339
		 0.85636759 4.21247339 0.84399748 4.18992329 0.85636759 4.18992329 0.84399748 4.1673727
		 0.85636759 4.1673727 0.84399748 4.14482307 0.85636759 4.14482307 0.84399748 4.12227297
		 0.85636759 4.12227297 0.84399748 4.099726677 0.85636759 4.099726677 0.84399748 4.077176571
		 0.85636759 4.077176571 0.84399748 4.054625511 0.85636759 4.054625511 0.84399748 4.032492161
		 0.85636759 4.032492161 0.84399748 4.0077190399 0.85636759 4.0077190399 0.84399748
		 4.43788338 0.85636759 4.43788338 0.84399724 4.46239614 0.84399748 4.46239614 0.85636783
		 4.41541958 0.85636783 4.41541958 0.84399748 4.39286995 0.85636759 4.39286995 0.84399724
		 4.37031984 0.85636759 4.37031984 0.84399748 4.34776974 0.85636759 4.34776974 0.84399748
		 4.30317307 0.78127277 4.30317307 0.68873751 4.32587671 0.68873811 4.32587671 0.78127313
		 4.28046942 0.78127313 4.28046942 0.68873787 4.25776625 0.78127301 4.25776625 0.68873787
		 4.2350626 0.78127313 4.2350626 0.68873787 4.212358 0.78127313 4.212358 0.68873811
		 4.18965435 0.78127301 4.18965435 0.68873787 4.16695118 0.78127313 4.16695118 0.68873811
		 4.14424801 0.78127301 4.14424801 0.68873787 4.12154388 0.78127301 4.12154388 0.68873811
		 4.098841667 0.78127301 4.098841667 0.68873811 4.076137543 0.78127301 4.076137543
		 0.68873763 4.053434372 0.78127301 4.053434372 0.68873811 4.030730724 0.78127301 4.030730724
		 0.68873763 4.0080280304 0.78127301 4.0080275536 0.68873763 4.43938637 0.78127337
		 4.43938637 0.68873787 4.46208715 0.68873751 4.46208715 0.78127301 4.41668558 0.78127337
		 4.41668558 0.68873811 4.39398336 0.78127301 4.39398336 0.68873799;
	setAttr ".uvst[0].uvsp[750:999]" 4.37128162 0.78127277 4.37128162 0.68873787
		 4.34857941 0.78127277 4.34857941 0.68873787 4.47626495 0.84788036 4.48150492 0.83716297
		 4.5127182 0.85906196 4.4897995 0.82858896 4.5003376 0.82299805 4.51208782 0.82093716
		 4.52390003 0.82260847 4.53461742 0.8278482 4.54319143 0.83614302 4.54878235 0.84668136
		 4.55084276 0.8584317 4.54917192 0.87024355 4.54393244 0.88096094 4.53563738 0.88953483
		 4.52509928 0.89512563 4.51334906 0.89718628 4.50153685 0.8955152 4.49081945 0.89027584
		 4.48224592 0.8819809 4.47665501 0.87144256 4.47459412 0.85969234 5.32678127 0.82600141
		 5.32678032 0.82892501 5.30398369 0.82892501 5.30398369 0.82600141 5.34957695 0.82600164
		 5.34957695 0.82892585 5.37236691 0.82600105 5.37236738 0.82892561 5.39510584 0.82600188
		 5.39510584 0.82892561 5.4177022 0.82600224 5.41770267 0.82892418 5.44028282 0.82600224
		 5.44028282 0.8289243 5.46232796 0.82600236 5.46232939 0.82892418 5.030478477 0.82599998
		 5.030478477 0.82892466 5.0077872276 0.82892466 5.0077857971 0.82599998 5.053233624
		 0.82599998 5.053235054 0.82892466 5.076020718 0.82599998 5.076020718 0.82892466 5.098815918
		 0.82599998 5.098817348 0.82892466 5.12161303 0.82599998 5.1216116 0.82892466 5.14441109
		 0.82600224 5.14441109 0.82892418 5.16720867 0.82600224 5.16720772 0.82892418 5.19000435
		 0.82600224 5.19000435 0.82892418 5.21280003 0.82600224 5.21280098 0.82892418 5.2355957
		 0.82600105 5.2355957 0.82892537 5.25839233 0.82600105 5.25839233 0.82892466 5.28118801
		 0.82600105 5.28118944 0.82892501 5.30398321 0.81792164 5.30398369 0.81405854 5.32678127
		 0.81405878 5.32678127 0.81792176 5.28118801 0.81792164 5.28118801 0.81405902 5.25839186
		 0.81792164 5.25839186 0.8140583 5.23559618 0.81792164 5.23559618 0.81405854 5.2128005
		 0.81792235 5.2128005 0.8140595 5.19000483 0.81792235 5.19000435 0.8140595 5.16720772
		 0.81792235 5.16720819 0.8140595 5.14441109 0.81792235 5.14441109 0.8140595 5.12161303
		 0.81792068 5.12161303 0.8140595 5.098816395 0.81792068 5.098815918 0.8140595 5.076020718
		 0.81792068 5.076021194 0.8140595 5.053233624 0.81792068 5.053234577 0.8140595 5.030478477
		 0.81792068 5.030478477 0.8140595 5.0077857971 0.81792068 5.007786274 0.8140595 5.4402833
		 0.81792235 5.4402833 0.81405973 5.46232891 0.8140595 5.46232891 0.81792235 5.41770267
		 0.81792235 5.41770267 0.8140595 5.39510584 0.81792116 5.39510584 0.81405854 5.37236786
		 0.81792164 5.37236738 0.81405854 5.34957695 0.817922 5.34957695 0.81405902 5.32678127
		 0.82197988 5.34957695 0.82197976 5.30398369 0.82197928 5.28118801 0.82197928 5.25839233
		 0.82197928 5.2355957 0.82197928 5.21280003 0.82198036 5.19000435 0.82198036 5.16720867
		 0.82198036 5.14441109 0.82198036 5.12161303 0.82198203 5.098815918 0.82197809 5.076020718
		 0.82197809 5.053233624 0.82197809 5.030478477 0.82197809 5.0077857971 0.82197809
		 5.46232796 0.82198024 5.44028282 0.82198036 5.4177022 0.82198024 5.39510584 0.82197928
		 5.37236691 0.82197928 4.07407856 0.86468935 4.051299095 0.86468911 4.096804619 0.86468935
		 4.11953545 0.86468935 4.1422677 0.86468971 4.16499472 0.86468959 4.18777275 0.86468959
		 4.21063709 0.86468959 4.23355055 0.86468959 4.25646591 0.86468959 4.27932453 0.86468959
		 4.30205345 0.86468971 4.32465649 0.86468959 4.34732819 0.86468959 4.37005758 0.86468959
		 4.39278269 0.86468947 4.41556454 0.86468935 4.43842363 0.86468935 4.46134233 0.86468935
		 4.02843523 0.86468911 4.0055155754 0.86468911 0.66798019 1.13682914 0.6706152 1.13682914
		 0.6706152 1.20140803 0.66798019 1.20140803 0.6732502 1.13682926 0.6732502 1.20140839
		 0.67588568 1.13682926 0.67588568 1.20140803 0.67852068 1.13682926 0.67852068 1.20140803
		 0.68115568 1.13682926 0.68115568 1.20140803 0.68379116 1.13682938 0.68379116 1.20140815
		 0.68642616 1.13682926 0.68642616 1.20140803 0.68906164 1.13682938 0.68906164 1.20140815
		 0.48340845 1.49261379 0.47738695 1.49510849 0.47738695 1.48659253 0.47136402 1.49261379
		 0.46886969 1.48659253 0.47136402 1.48056889 0.47738695 1.47807539 0.48340893 1.48056889
		 0.48590326 1.48659241 0.8205905 1.21316648 0.82059097 1.20692444 0.82569981 1.20692444
		 0.82570124 1.21316648 0.8205905 1.2443769 0.8205905 1.23813486 0.82570124 1.23813498
		 0.82570076 1.24437726 0.82059097 1.23189282 0.82570076 1.23189294 0.8205905 1.22565067
		 0.82570124 1.22565079 0.8205905 1.21940851 0.82570124 1.21940851 0.811831 1.22906744
		 0.81566954 1.23579335 0.8079257 1.23575485 0.80408669 1.22902858 0.80018234 1.23571527
		 0.80401993 1.24244237 0.81176376 1.24248052 0.81182051 1.22309625 0.80407667 1.22312188
		 0.80792618 1.21640265 0.80018282 1.21642852 0.80403185 1.20970917 0.81177568 1.20968437
		 0.81566906 1.21637666 4.62012291 0.14702845 4.61399126 0.18551874 4.61198521 0.18329597
		 4.61801338 0.14704621 4.63793135 0.1323961 4.64569902 0.1323961 4.64569902 0.16972971
		 4.63793135 0.16972971 4.62457705 0.13258266 4.63234329 0.13258266 4.63234329 0.16778243
		 4.62457705 0.16778243 4.62459564 0.17158592 4.6323247 0.17158592 4.6323247 0.18322861
		 4.62459564 0.18322861 4.59979868 0.18551874 4.59979868 0.18329597 4.64568377 0.17374122
		 4.64568377 0.18729377 4.63794661 0.18729353 4.63794708 0.17374086 4.60041571 0.1355406
		 4.58877277 0.13554049 4.58877325 0.1334151 4.60232449 0.13341498 4.60830355 0.17013526
		 4.60628891 0.17012525 4.62012291 0.14702845 4.61801338 0.14704621 4.61198521 0.18329597
		 4.61399126 0.18551874 4.63793135 0.1323961 4.63793135 0.16972971 4.64569902 0.16972971
		 4.64569902 0.1323961 4.62457705 0.13258266 4.62457705 0.16778243 4.63234329 0.16778243
		 4.63234329 0.13258266 4.62459564 0.17158592 4.62459564 0.18322861 4.6323247 0.18322861
		 4.6323247 0.17158592;
	setAttr ".uvst[0].uvsp[1000:1011]" 4.59979868 0.18329597 4.59979868 0.18551874
		 4.64568377 0.17374122 4.63794708 0.17374086 4.63794661 0.18729353 4.64568377 0.18729377
		 4.60041571 0.1355406 4.60232449 0.13341498 4.58877325 0.1334151 4.58877277 0.13554049
		 4.60628891 0.17012525 4.60830355 0.17013526;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 580 ".pt";
	setAttr ".pt[0:165]" -type "float3"  2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669;
	setAttr ".pt[166:331]" 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669;
	setAttr ".pt[332:497]" 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669;
	setAttr ".pt[498:579]" 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 
		2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 
		-0.016793407 0.077731669 2.9802322e-08 -0.016793407 0.077731669 2.9802322e-08 -0.016793407 
		0.077731669 2.9802322e-08 -0.016793407 0.077731669;
	setAttr -s 580 ".vt";
	setAttr ".vt[0:165]"  0.086301997 -0.0031881426 -0.031010821 0.086301997 0 -0.029690251
		 0.086301997 0.003188143 -0.031010821 0.086301997 0.0045087151 -0.034198962 0.086301997 0.003188143 -0.037387103
		 0.086301997 0 -0.038707681 0.086301997 -0.0031881435 -0.037387103 0.086301997 -0.0045087151 -0.034198962
		 0.099894077 -0.0031881426 -0.031010821 0.099894077 0 -0.029690251 0.099894077 0.003188143 -0.031010821
		 0.099894077 0.0045087151 -0.034198962 0.099894077 0.003188143 -0.037387103 0.099894077 0 -0.038707681
		 0.099894077 -0.0031881435 -0.037387103 0.099894077 -0.0045087151 -0.034198962 -0.087077878 -0.028293334 -0.11161469
		 -0.074072868 -0.053817093 -0.11161469 -0.053817086 -0.074072875 -0.11161469 -0.028293321 -0.087077871 -0.11161469
		 -1.4901161e-08 -0.09155909 -0.11161469 0.028293291 -0.087077871 -0.11161469 0.053817045 -0.074072853 -0.11161469
		 0.074072815 -0.053817078 -0.11161469 0.087077811 -0.028293323 -0.11161469 0.09155903 -2.2351742e-08 -0.11161469
		 0.087077811 0.028293278 -0.11161469 0.074072801 0.053817026 -0.11161469 0.053817034 0.074072786 -0.11161469
		 0.028293286 0.087077789 -0.11161469 -1.2172489e-08 0.091559 -0.11161469 -0.028293304 0.087077782 -0.11161469
		 -0.053817052 0.074072786 -0.11161469 -0.074072823 0.053817026 -0.11161469 -0.087077819 0.028293272 -0.11161469
		 -0.091574579 -2.2351742e-08 -0.11161469 -0.087077878 -0.028293334 -0.085012026 -0.074072868 -0.053817093 -0.085012026
		 -0.053817086 -0.074072875 -0.085012026 -0.028293321 -0.087077871 -0.085012026 -1.4901161e-08 -0.09155909 -0.085012026
		 0.028293291 -0.087077871 -0.085012026 0.053817045 -0.074072853 -0.085012026 0.074072815 -0.053817078 -0.085012026
		 0.087077811 -0.028293323 -0.085012026 0.09155903 -2.2351742e-08 -0.085012026 0.087077811 0.028293278 -0.085012026
		 0.074072801 0.053817026 -0.085012026 0.053817034 0.074072786 -0.085012026 0.028293286 0.087077789 -0.085012026
		 -1.2172489e-08 0.091559 -0.085012026 -0.028293304 0.087077782 -0.085012026 -0.053817052 0.074072786 -0.085012026
		 -0.074072823 0.053817026 -0.085012026 -0.087077819 0.028293272 -0.085012026 -0.091574579 -2.2351742e-08 -0.085012026
		 -0.084105894 -0.027327687 -0.11161469 -0.071544752 -0.051980313 -0.11161469 -0.071544752 -0.051980313 -0.085012026
		 -0.084105894 -0.027327687 -0.085012026 -0.051980305 -0.071544759 -0.11161469 -0.051980305 -0.071544759 -0.085012026
		 -0.027327668 -0.084105894 -0.11161469 -0.027327668 -0.084105894 -0.085012026 -1.4901161e-08 -0.088434167 -0.11161469
		 -1.4901161e-08 -0.088434167 -0.085012026 0.027327636 -0.084105894 -0.11161469 0.027327636 -0.084105894 -0.085012026
		 0.051980264 -0.071544737 -0.11161469 0.051980264 -0.071544737 -0.085012026 0.071544699 -0.051980298 -0.11161469
		 0.071544699 -0.051980298 -0.085012026 0.084105834 -0.027327668 -0.11161469 0.084105834 -0.027327668 -0.085012026
		 0.088434108 -2.2351742e-08 -0.11161469 0.088434108 -2.2351742e-08 -0.085012026 0.084105834 0.027327623 -0.11161469
		 0.084105834 0.027327623 -0.085012026 0.071544684 0.051980246 -0.11161469 0.071544684 0.051980246 -0.085012026
		 0.051980253 0.071544677 -0.11161469 0.051980253 0.071544677 -0.085012026 0.027327631 0.084105812 -0.11161469
		 0.027327631 0.084105812 -0.085012026 -1.169974e-08 0.088434085 -0.11161469 -1.169974e-08 0.088434085 -0.085012026
		 -0.027327651 0.084105812 -0.11161469 -0.027327651 0.084105812 -0.085012026 -0.051980276 0.071544662 -0.11161469
		 -0.051980276 0.071544662 -0.085012026 -0.071544699 0.051980242 -0.11161469 -0.071544699 0.051980242 -0.085012026
		 -0.084105842 0.027327618 -0.11161469 -0.084105842 0.027327618 -0.085012026 -0.088434108 -2.6077032e-08 -0.11161469
		 -0.088434108 -2.6077032e-08 -0.085012026 -0.085837148 0.01639656 -0.11161469 -0.088870302 0.016975956 -0.11161469
		 -0.088870302 0.016975956 -0.085012026 -0.085837148 0.01639656 -0.085012026 -0.085837178 -0.016396619 -0.11161469
		 -0.088870347 -0.01697601 -0.11161469 -0.088870347 -0.01697601 -0.085012026 -0.085837178 -0.016396619 -0.085012026
		 -0.095212676 -0.014487248 -0.11161469 -0.095212676 -0.014487248 -0.085012026 -0.095212631 0.014487193 -0.085012026
		 -0.095212631 0.014487193 -0.11161469 -0.098792359 0.0037016841 -0.11161469 -0.098792359 0.0037016841 -0.085012026
		 -0.1003438 0.0074054869 -0.11161469 -0.1003438 0.0074054869 -0.085012026 -0.098626964 0.011246564 -0.11161469
		 -0.098626964 0.011246564 -0.085012026 -0.098626994 -0.011246614 -0.11161469 -0.098626994 -0.011246614 -0.085012026
		 -0.10034382 -0.0074055344 -0.11161469 -0.10034382 -0.0074055344 -0.085012026 -0.098792367 -0.0037017306 -0.11161469
		 -0.098792367 -0.0037017306 -0.085012026 -0.086301997 -0.0031881426 -0.031010821 -0.086301997 0 -0.029690251
		 -0.086301997 0.003188143 -0.031010821 -0.086301997 0.0045087151 -0.034198962 -0.086301997 0.003188143 -0.037387103
		 -0.086301997 0 -0.038707681 -0.086301997 -0.0031881435 -0.037387103 -0.086301997 -0.0045087151 -0.034198962
		 -0.099894077 -0.0031881426 -0.031010821 -0.099894077 0 -0.029690251 -0.099894077 0.003188143 -0.031010821
		 -0.099894077 0.0045087151 -0.034198962 -0.099894077 0.003188143 -0.037387103 -0.099894077 0 -0.038707681
		 -0.099894077 -0.0031881435 -0.037387103 -0.099894077 -0.0045087151 -0.034198962 0.0088884011 -0.11879545 -0.030872151
		 0.0088884011 -0.11639008 -0.029875807 0.0088884011 -0.1139847 -0.030872151 0.0088884011 -0.11298836 -0.033277526
		 0.0088884011 -0.1139847 -0.035682909 0.0088884011 -0.11639008 -0.036679253 0.0088884011 -0.11879545 -0.035682909
		 0.0088884011 -0.11979181 -0.033277526 -0.0088883936 -0.11879545 -0.030872151 -0.0088883936 -0.11639008 -0.029875807
		 -0.0088883936 -0.1139847 -0.030872151 -0.0088883936 -0.11298836 -0.033277526 -0.0088883936 -0.1139847 -0.035682909
		 -0.0088883936 -0.11639008 -0.036679253 -0.0088883936 -0.11879545 -0.035682909 -0.0088883936 -0.11979181 -0.033277526
		 0.00742542 0.11147019 -0.028282657 0.00742542 0.11387558 -0.027286321 0.00742542 0.11628096 -0.028282657
		 0.00742542 0.11727729 -0.03068804 0.00742542 0.11628096 -0.033093415 0.00742542 0.11387558 -0.034089759
		 0.00742542 0.11147019 -0.033093423 0.00742542 0.11047386 -0.03068804 -0.00742542 0.11147019 -0.028282657
		 -0.00742542 0.11387558 -0.027286321 -0.00742542 0.11628096 -0.028282657 -0.00742542 0.11727729 -0.03068804
		 -0.00742542 0.11628096 -0.033093415 -0.00742542 0.11387558 -0.034089759;
	setAttr ".vt[166:331]" -0.00742542 0.11147019 -0.033093423 -0.00742542 0.11047386 -0.03068804
		 0.004837513 0.10495414 -0.016197205 0.032455564 0.099817328 -0.016197205 0.061713457 0.084909663 -0.016197205
		 0.084932685 0.061690476 -0.016197205 0.099840283 0.032432601 -0.016197205 0.10497713 0 -0.016197205
		 0.099840283 -0.032432601 -0.016197205 0.084932685 -0.06169048 -0.016197205 0.061713457 -0.084909663 -0.016197205
		 0.032455564 -0.099817291 -0.016197205 0.003423214 -0.1049541 -0.016197205 0.004837513 0.10495414 -0.047971882
		 0.032455564 0.099817328 -0.047971882 0.061713457 0.084909663 -0.047971882 0.084932685 0.061690476 -0.047971882
		 0.099840283 0.032432601 -0.047971882 0.10497713 0 -0.047971882 0.099840283 -0.032432601 -0.047971882
		 0.084932685 -0.06169048 -0.047971882 0.061713457 -0.084909663 -0.047971882 0.032455564 -0.099817291 -0.047971882
		 0.003423214 -0.1049541 -0.047971882 0.003423214 -0.12331626 -0.021305762 0.003423214 -0.12331626 -0.042863309
		 2.3007393e-05 0.09906134 -0.016197205 0.030578256 0.093866646 -0.016197205 0.058264971 0.08013764 -0.016197205
		 0.080098987 0.05828489 -0.016197205 0.094739079 0.030184671 -0.016197205 0.099609971 -1.0193326e-05 -0.016197205
		 0.094010115 -0.030172542 -0.016197205 0.080317378 -0.057734959 -0.016197205 0.058363438 -0.079711497 -0.016197205
		 0.03052783 -0.094364285 -0.016197205 2.3007393e-05 -0.099907644 -0.016197205 2.3007393e-05 0.09906134 -0.047971882
		 0.030578256 0.093866646 -0.047971882 0.058264971 0.08013764 -0.047971882 0.080098987 0.05828489 -0.047971882
		 0.094739079 0.030184671 -0.047971882 0.099609971 -1.0193326e-05 -0.047971882 0.094010115 -0.030172542 -0.047971882
		 0.080317378 -0.057734959 -0.047971882 0.058363438 -0.079711497 -0.047971882 0.03052783 -0.094364285 -0.047971882
		 2.3007393e-05 -0.099907644 -0.047971882 0.004837513 0.11100602 -0.016197205 0.004837513 0.11100602 -0.047971882
		 0.004837513 0.12237321 -0.021830022 0.004837513 0.12237321 -0.042339064 0.003423214 -0.11271826 -0.047971882
		 0.003423214 -0.11271826 -0.016197205 -0.004793644 0.10495414 -0.016197205 -0.032423794 0.099817328 -0.016197205
		 -0.061694443 0.084909663 -0.016197205 -0.084923804 0.061690476 -0.016197205 -0.099837959 0.032432601 -0.016197205
		 -0.10497701 0 -0.016197205 -0.099837959 -0.032432601 -0.016197205 -0.084923804 -0.06169048 -0.016197205
		 -0.061694443 -0.084909663 -0.016197205 -0.032423794 -0.099817291 -0.016197205 -0.0033787489 -0.1049541 -0.016197205
		 -0.004793644 0.10495414 -0.047971882 -0.032423794 0.099817328 -0.047971882 -0.061694443 0.084909663 -0.047971882
		 -0.084923804 0.061690476 -0.047971882 -0.099837959 0.032432601 -0.047971882 -0.10497701 0 -0.047971882
		 -0.099837959 -0.032432601 -0.047971882 -0.084923804 -0.06169048 -0.047971882 -0.061694443 -0.084909663 -0.047971882
		 -0.032423794 -0.099817291 -0.047971882 -0.0033787489 -0.1049541 -0.047971882 -0.0033787489 -0.12331626 -0.021305762
		 -0.0033787489 -0.12331626 -0.042863309 -0.030545652 0.093866646 -0.016197205 -0.058244467 0.08013764 -0.016197205
		 -0.080088019 0.05828489 -0.016197205 -0.09473449 0.030184671 -0.016197205 -0.099607527 -1.0193326e-05 -0.016197205
		 -0.094005227 -0.030172542 -0.016197205 -0.08030653 -0.057734959 -0.016197205 -0.058342993 -0.079711497 -0.016197205
		 -0.030495167 -0.094364285 -0.016197205 -0.030545652 0.093866646 -0.047971882 -0.058244467 0.08013764 -0.047971882
		 -0.080088019 0.05828489 -0.047971882 -0.09473449 0.030184671 -0.047971882 -0.099607527 -1.0193326e-05 -0.047971882
		 -0.094005227 -0.030172542 -0.047971882 -0.08030653 -0.057734959 -0.047971882 -0.058342993 -0.079711497 -0.047971882
		 -0.030495167 -0.094364285 -0.047971882 -0.004793644 0.11100602 -0.016197205 -0.004793644 0.11100602 -0.047971882
		 -0.004793644 0.12237321 -0.021830022 -0.004793644 0.12237321 -0.042339064 -0.0033787489 -0.11271826 -0.047971882
		 -0.0033787489 -0.11271826 -0.016197205 -0.10652485 -0.034612 0.007614702 -0.090615459 -0.065835938 0.007614702
		 -0.065835997 -0.090615392 0.007614702 -0.034612056 -0.10652475 0.007614702 -5.9604645e-08 -0.11200677 0.007614702
		 0.034611937 -0.10652475 0.007614702 0.065835863 -0.090615354 0.007614702 0.090615295 -0.065835916 0.007614702
		 0.10652469 -0.034611981 0.007614702 0.11200669 0 0.007614702 0.10652469 0.034611981 0.007614702
		 0.090615295 0.065835908 0.007614702 0.065835848 0.090615354 0.007614702 0.034611922 0.10652474 0.007614702
		 -5.6266586e-08 0.11200673 0.007614702 -0.034612037 0.10652473 0.007614702 -0.065835938 0.090615347 0.007614702
		 -0.090615399 0.065835878 0.007614702 -0.10652478 0.034611981 0.007614702 -0.11200675 0 0.007614702
		 -0.10652485 -0.034612 0.026723474 -0.090615459 -0.065835938 0.026723474 -0.065835997 -0.090615392 0.026723474
		 -0.034612056 -0.10652475 0.026723474 -5.9604645e-08 -0.11200677 0.026723474 0.034611937 -0.10652475 0.026723474
		 0.065835863 -0.090615354 0.026723474 0.090615295 -0.065835916 0.026723474 0.10652469 -0.034611981 0.026723474
		 0.11200669 0 0.026723474 0.10652469 0.034611981 0.026723474 0.090615295 0.065835908 0.026723474
		 0.065835848 0.090615354 0.026723474 0.034611922 0.10652474 0.026723474 -5.6266586e-08 0.11200673 0.026723474
		 -0.034612037 0.10652473 0.026723474 -0.065835938 0.090615347 0.026723474 -0.090615399 0.065835878 0.026723474
		 -0.10652478 0.034611981 0.026723474 -0.11200675 0 0.026723474 -0.083325624 -0.027074125 -0.015237719
		 -0.070881009 -0.051498037 -0.015237719 -0.051498093 -0.070880972 -0.015237719 -0.027074169 -0.083325557 -0.015237719
		 -5.5242822e-08 -0.087613657 -0.015237719 0.027074063 -0.083325557 -0.015237719 0.051497966 -0.070880949 -0.015237719
		 0.070880882 -0.051498003 -0.015237719 0.08332549 -0.027074106 -0.015237719 0.087613598 -4.6566129e-09 -0.015237719
		 0.08332549 0.027074093 -0.015237719 0.070880882 0.051498003 -0.015237719 0.051497944 0.070880935 -0.015237719
		 0.027074048 0.083325505 -0.015237734 -5.2631734e-08 0.087613642 -0.015237734 -0.027074153 0.083325505 -0.015237734
		 -0.051498029 0.070880927 -0.015237734 -0.070880979 0.051497992 -0.015237734 -0.083325565 0.027074093 -0.015237734
		 -0.087613657 -4.6566129e-09 -0.015237719 -0.083325624 -0.027074125 -0.08371228 -0.070881009 -0.051498037 -0.08371228
		 -0.051498093 -0.070880972 -0.08371228 -0.027074169 -0.083325557 -0.08371228;
	setAttr ".vt[332:497]" -5.5242822e-08 -0.087613657 -0.08371228 0.027074063 -0.083325557 -0.08371228
		 0.051497966 -0.070880949 -0.08371228 0.070880882 -0.051498003 -0.08371228 0.08332549 -0.027074106 -0.08371228
		 0.087613598 -4.6566129e-09 -0.08371228 0.08332549 0.027074093 -0.08371228 0.070880882 0.051498003 -0.08371228
		 0.051497944 0.070880935 -0.08371228 0.027074048 0.083325505 -0.083712287 -5.2631734e-08 0.087613642 -0.083712295
		 -0.027074153 0.083325505 -0.083712295 -0.051498029 0.070880927 -0.083712287 -0.070880979 0.051497992 -0.083712287
		 -0.083325565 0.027074093 -0.083712287 -0.087613657 -4.6566129e-09 -0.08371228 -0.085506186 -0.06212385 0.026723474
		 -0.10051852 -0.032660447 0.026723474 -0.062123898 -0.085506126 0.026723474 -0.032660484 -0.10051847 0.026723474
		 -6.0361344e-08 -0.10569134 0.026723474 0.032660365 -0.10051846 0.026723474 0.062123761 -0.085506096 0.026723474
		 0.085506037 -0.06212382 0.026723474 0.1005184 -0.032660417 0.026723474 0.10569128 0 0.026723474
		 0.1005184 0.032660417 0.026723474 0.085506037 0.062123813 0.026723474 0.062123753 0.085506096 0.026723474
		 0.032660358 0.10051844 0.026723474 -5.5821147e-08 0.10569134 0.026723474 -0.032660473 0.10051844 0.026723474
		 -0.062123846 0.085506059 0.026723474 -0.085506119 0.062123787 0.026723474 -0.10051846 0.032660421 0.026723474
		 -0.10569134 -6.519258e-09 0.026723474 -0.077787079 -0.025274545 -0.019951023 -0.066169642 -0.048075013 -0.019951023
		 -0.048075072 -0.066169597 -0.019951023 -0.025274588 -0.077786982 -0.019951023 -5.5435883e-08 -0.081790105 -0.019951023
		 0.025274478 -0.077786982 -0.019951023 0.048074953 -0.066169575 -0.019951023 0.066169508 -0.048075005 -0.019951023
		 0.077786922 -0.025274523 -0.019951023 0.081790023 -4.6566129e-09 -0.019951023 0.077786922 0.025274511 -0.019951023
		 0.066169508 0.048074998 -0.019951023 0.048074942 0.06616956 -0.019951023 0.025274465 0.077786975 -0.019951031
		 -5.2326051e-08 0.081790037 -0.019951031 -0.025274567 0.077786975 -0.019951031 -0.048075031 0.066169538 -0.019951031
		 -0.066169597 0.048074979 -0.019951031 -0.077787019 0.025274511 -0.019951031 -0.081790097 -1.0244548e-08 -0.019951023
		 -0.077319339 -0.025122568 -0.12394036 -0.065771759 -0.047785927 -0.12394036 -0.047785986 -0.065771714 -0.12394036
		 -0.025122611 -0.077319264 -0.12394036 -5.5180863e-08 -0.081298284 -0.12394036 0.025122492 -0.077319264 -0.12394036
		 0.047785867 -0.065771692 -0.12394036 0.065771624 -0.047785927 -0.12394036 0.077319197 -0.025122546 -0.12394036
		 0.081298195 -4.6566129e-09 -0.12394036 0.077319197 0.025122534 -0.12394036 0.065771624 0.047785919 -0.12394036
		 0.047785863 0.065771677 -0.12394036 0.025122486 0.07731922 -0.12394037 -5.2561518e-08 0.081298247 -0.12394037
		 -0.02512259 0.07731922 -0.12394037 -0.047785953 0.065771654 -0.12394037 -0.065771714 0.047785897 -0.12394037
		 -0.077319279 0.025122534 -0.12394037 -0.081298277 -1.1175871e-08 -0.12394036 -5.1727902e-08 -2.0489097e-08 -0.18218681
		 -0.085654534 -0.062231615 0.019298732 -0.10069291 -0.032717105 0.019298732 -0.1058747 -6.519258e-09 0.019298732
		 -0.10069285 0.032717083 0.019298732 -0.085654475 0.062231559 0.019298732 -0.062231619 0.085654415 0.019298732
		 -0.032717131 0.10069282 0.019298732 -5.5765078e-08 0.10587469 0.019298732 0.032717012 0.10069283 0.019298732
		 0.062231533 0.085654423 0.019298732 0.085654363 0.062231593 0.019298732 0.10069278 0.032717071 0.019298732
		 0.10587465 0 0.019298732 0.10069278 -0.032717071 0.019298732 0.085654363 -0.062231593 0.019298732
		 0.062231533 -0.085654423 0.019298732 0.032717027 -0.10069284 0.019298732 -6.0255495e-08 -0.10587471 0.019298732
		 -0.03271715 -0.10069284 0.019298732 -0.062231679 -0.085654467 0.019298732 -0.092874847 -0.030176848 0.0021929741
		 -0.079004072 -0.057399765 0.0021929741 -0.057399828 -0.079004012 0.0021929741 -0.030176898 -0.092874736 0.0021929741
		 -5.8494876e-08 -0.09765429 0.0021929741 0.030176783 -0.092874736 0.0021929741 0.057399698 -0.079003952 0.0021929741
		 0.079003893 -0.05739975 0.0021929741 0.092874669 -0.03017683 0.0021929741 0.097654216 -1.8626451e-09 0.0021929741
		 0.092874669 0.030176826 0.0021929741 0.079003893 0.057399742 0.0021929741 0.057399683 0.079003952 0.0021929741
		 0.030176774 0.092874721 0.0021929741 -5.4524577e-08 0.097654268 0.0021929741 -0.030176876 0.092874721 0.0021929741
		 -0.057399776 0.079003952 0.0021929741 -0.079004012 0.057399724 0.0021929741 -0.09287478 0.030176826 0.0021929741
		 -0.097654276 -7.4505806e-09 0.0021929741 -0.097598322 -0.031711601 0.016952246 -0.094172411 -0.03059845 0.012786373
		 -0.092913643 -0.030189455 0.0074662268 -0.083022095 -0.060319044 0.016952246 -0.080107853 -0.058201715 0.012786373
		 -0.079037085 -0.057423756 0.0074662268 -0.060319103 -0.083022036 0.016952246 -0.058201771 -0.080107786 0.012786373
		 -0.057423815 -0.079037026 0.0074662268 -0.031711649 -0.097598217 0.016952246 -0.030598503 -0.094172306 0.012786373
		 -0.03018951 -0.092913568 0.0074662268 -5.9344586e-08 -0.10262085 0.016952246 -5.8412013e-08 -0.099018641 0.012786388
		 -5.825266e-08 -0.09769512 0.0074662268 0.03171153 -0.097598217 0.016952246 0.030598387 -0.094172306 0.012786373
		 0.030189395 -0.092913568 0.0074662268 0.060318958 -0.083021976 0.016952246 0.058201637 -0.080107741 0.012786373
		 0.057423685 -0.079036966 0.0074662268 0.083021916 -0.060319021 0.016952246 0.080107681 -0.058201693 0.012786373
		 0.079036906 -0.057423741 0.0074662268 0.097598158 -0.031711571 0.016952246 0.094172247 -0.030598432 0.012786388
		 0.092913508 -0.03018944 0.0074662268 0.10262079 0 0.016952246 0.099018574 -9.3132257e-10 0.012786388
		 0.097695045 -9.3132257e-10 0.0074662268 0.097598158 0.031711571 0.016952246 0.094172247 0.03059843 0.012786388
		 0.092913508 0.030189438 0.0074662268 0.083021916 0.060319018 0.016952246 0.080107681 0.058201686 0.012786373
		 0.079036906 0.057423729 0.0074662268 0.060318958 0.083021976 0.016952246 0.058201626 0.080107734 0.012786373
		 0.05742367 0.079036959 0.0074662268 0.031711522 0.097598203 0.016952246 0.030598374 0.094172291 0.012786373
		 0.030189384 0.092913546 0.0074662268 -5.5018543e-08 0.10262083 0.016952246 -5.4282648e-08 0.099018618 0.012786388
		 -5.4231108e-08 0.097695075 0.0074662268 -0.031711631 0.097598203 0.016952246 -0.030598482 0.094172291 0.012786373
		 -0.030189486 0.092913546 0.0074662268 -0.060319044 0.083021969 0.016952246;
	setAttr ".vt[498:579]" -0.058201719 0.080107734 0.012786373 -0.057423763 0.079036959 0.0074662268
		 -0.083022028 0.060318984 0.016952246 -0.080107793 0.058201663 0.012786373 -0.079037018 0.057423711 0.0074662268
		 -0.097598255 0.031711582 0.016952246 -0.094172351 0.030598434 0.012786373 -0.092913583 0.030189438 0.0074662268
		 -0.10262085 -6.519258e-09 0.016952246 -0.099018641 -6.519258e-09 0.012786388 -0.097695112 -6.519258e-09 0.0074662268
		 0.069656484 0.093657814 0.017169088 0.095873952 0.068046384 0.017169088 0.11270662 0.035774101 0.017169088
		 0.11850674 9.3132257e-10 0.017169088 0.11270662 -0.035774097 0.017169088 0.095873952 -0.068046391 0.017169088
		 0.069656499 -0.093657814 0.017169088 0.036620565 -0.11010138 0.017169088 -6.1117966e-08 -0.11576745 0.017169088
		 -0.036620688 -0.11010138 0.017169088 -0.06965664 -0.093657851 0.017169088 -0.095874123 -0.068046413 0.017169088
		 -0.11270677 -0.035774115 0.017169088 -0.1185068 9.3132257e-10 0.017169088 -0.11270671 0.035774101 0.017169088
		 -0.095874056 0.068046354 0.017169088 -0.069656581 0.093657807 0.017169088 -0.036620669 0.11010136 0.017169088
		 -5.7586192e-08 0.11576742 0.017169088 0.03662055 0.11010136 0.017169088 -0.096687108 -0.028431982 -0.095587023
		 -0.093688972 -0.028431982 -0.094345167 -0.090690836 -0.028431982 -0.095587023 -0.089448966 -0.028431982 -0.098585159
		 -0.090690836 -0.028431982 -0.10158329 -0.093688972 -0.028431982 -0.10282516 -0.096687108 -0.028431982 -0.10158329
		 -0.097928971 -0.028431982 -0.098585159 -0.096687108 0.04088483 -0.095587023 -0.093688972 0.04088483 -0.094345167
		 -0.090690836 0.04088483 -0.095587023 -0.089448966 0.04088483 -0.098585159 -0.090690836 0.04088483 -0.10158329
		 -0.093688972 0.04088483 -0.10282516 -0.096687108 0.04088483 -0.10158329 -0.097928971 0.04088483 -0.098585159
		 -0.093688972 0.04088483 -0.098585159 -0.093688972 -0.034294464 -0.090994708 -0.087115444 -0.034294464 -0.094789937
		 -0.087115444 -0.034294464 -0.10238039 -0.093688972 -0.034294464 -0.10617562 -0.1002625 -0.034294464 -0.10238039
		 -0.1002625 -0.034294464 -0.094789937 -0.093688972 -0.028080687 -0.090994708 -0.087115444 -0.028080687 -0.094789937
		 -0.087115444 -0.028080687 -0.10238039 -0.093688972 -0.028080687 -0.10617562 -0.1002625 -0.028080687 -0.10238039
		 -0.1002625 -0.028080687 -0.094789937 -0.093688972 -0.034294464 -0.098585166 -0.093688972 -0.028080687 -0.098585166
		 -0.023591548 0.10804992 0.0098296404 -0.026276618 0.10804992 0.0098296404 -0.018054765 0.15690307 0.0098296404
		 -0.018054765 0.15690307 0.02513653 -0.023591548 0.10804992 0.02513653 -0.026276618 0.10804992 0.02513653
		 -0.0155253 0.15406328 0.0098296404 -0.015525301 0.15406328 0.02513653 0 0.15406328 0.02513653
		 0 0.15406328 0.0098296404 0 0.15690307 0.0098296404 0 0.15690307 0.02513653 0.023591548 0.10804992 0.0098296404
		 0.026276618 0.10804992 0.0098296404 0.018054765 0.15690307 0.0098296404 0.018054765 0.15690307 0.02513653
		 0.023591548 0.10804992 0.02513653 0.026276618 0.10804992 0.02513653 0.0155253 0.15406328 0.0098296404
		 0.015525301 0.15406328 0.02513653;
	setAttr -s 1090 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 0 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 1 1 9 1 2 10 1 3 11 1 4 12 1
		 5 13 1 6 14 1 7 15 1 16 17 0 17 18 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0
		 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0 31 32 0 32 33 0 36 37 0 37 38 0
		 38 39 0 39 40 0 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 48 0 48 49 0
		 49 50 0 50 51 0 51 52 0 52 53 0 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1
		 23 43 1 24 44 1 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1
		 34 54 1 16 56 1 17 57 1 56 57 0 37 58 1 36 59 1 59 58 0 18 60 1 57 60 0 38 61 1 58 61 0
		 19 62 1 60 62 0 39 63 1 61 63 0 20 64 1 62 64 0 40 65 1 63 65 0 21 66 1 64 66 0 41 67 1
		 65 67 0 22 68 1 66 68 0 42 69 1 67 69 0 23 70 1 68 70 0 43 71 1 69 71 0 24 72 1 70 72 0
		 44 73 1 71 73 0 25 74 1 72 74 0 45 75 1 73 75 0 26 76 1 74 76 0 46 77 1 75 77 0 27 78 1
		 76 78 0 47 79 1 77 79 0 28 80 1 78 80 0 48 81 1 79 81 0 29 82 1 80 82 0 49 83 1 81 83 0
		 30 84 1 82 84 0 50 85 1 83 85 0 31 86 1 84 86 0 51 87 1 85 87 0 32 88 1 86 88 0 52 89 1
		 87 89 0 33 90 1 88 90 0 53 91 1 89 91 0 34 92 1 54 93 1 91 93 0 35 94 1 55 95 1 93 99 0
		 95 103 0 90 92 0 33 34 0 53 54 0 96 94 0 97 35 0 96 97 1 98 55 0 97 98 0 99 95 0
		 98 99 1 92 96 0 34 97 0;
	setAttr ".ed[166:331]" 54 98 0 100 56 0 101 16 0 102 36 0 103 59 0 94 100 0
		 35 101 0 55 102 0 100 101 1 101 102 0 102 103 1 35 55 0 101 104 0 35 118 0 102 105 0
		 104 105 1 55 119 0 98 106 0 106 113 0 97 107 0 107 106 1 107 112 0 108 35 0 109 55 0
		 108 109 1 110 108 0 111 109 0 110 111 1 112 110 0 113 111 0 112 113 1 114 104 0 115 105 0
		 114 115 1 116 114 0 117 115 0 116 117 1 118 116 0 119 117 0 118 119 1 120 121 0 121 122 0
		 122 123 0 123 124 0 124 125 0 125 126 0 126 127 0 127 120 0 128 129 0 129 130 0 130 131 0
		 131 132 0 132 133 0 133 134 0 134 135 0 135 128 0 120 128 1 121 129 1 122 130 1 123 131 1
		 124 132 1 125 133 1 126 134 1 127 135 1 136 137 0 137 138 0 138 139 0 139 140 0 140 141 0
		 141 142 0 142 143 0 143 136 0 144 145 0 145 146 0 146 147 0 147 148 0 148 149 0 149 150 0
		 150 151 0 151 144 0 136 144 1 137 145 1 138 146 1 139 147 1 140 148 1 141 149 1 142 150 1
		 143 151 1 152 153 0 153 154 0 154 155 0 155 156 0 156 157 0 157 158 0 158 159 0 159 152 0
		 160 161 0 161 162 0 162 163 0 163 164 0 164 165 0 165 166 0 166 167 0 167 160 0 152 160 1
		 153 161 1 154 162 1 155 163 1 156 164 1 157 165 1 158 166 1 159 167 1 168 169 0 169 170 0
		 170 171 0 171 172 0 172 173 0 173 174 0 174 175 0 175 176 0 176 177 0 177 178 0 179 180 0
		 180 181 0 181 182 0 182 183 0 183 184 0 184 185 0 185 186 0 186 187 0 187 188 0 188 189 0
		 168 179 0 169 180 1 170 181 1 171 182 1 172 183 1 173 184 1 174 185 1 175 186 1 176 187 1
		 177 188 1 178 189 0 178 219 0 189 218 0 190 191 0 168 214 0 179 215 0 169 193 0 192 193 0
		 170 194 0 193 194 0 171 195 0 194 195 0 172 196 0 195 196 0 173 197 0 196 197 0 174 198 0
		 197 198 0 175 199 0 198 199 0 176 200 0 199 200 0 177 201 0 200 201 0;
	setAttr ".ed[332:497]" 201 202 0 180 204 0 203 204 0 181 205 0 204 205 0 182 206 0
		 205 206 0 183 207 0 206 207 0 184 208 0 207 208 0 185 209 0 208 209 0 186 210 0 209 210 0
		 187 211 0 210 211 0 188 212 0 211 212 0 212 213 0 214 216 0 215 217 0 214 215 0 216 217 0
		 218 191 0 219 190 0 218 219 0 192 203 1 202 213 1 201 212 1 200 211 1 199 210 1 198 209 1
		 197 208 1 196 207 1 195 206 1 194 205 1 193 204 1 220 221 0 221 222 0 222 223 0 223 224 0
		 224 225 0 225 226 0 226 227 0 227 228 0 228 229 0 229 230 0 231 232 0 232 233 0 233 234 0
		 234 235 0 235 236 0 236 237 0 237 238 0 238 239 0 239 240 0 240 241 0 220 231 0 221 232 1
		 222 233 1 223 234 1 224 235 1 225 236 1 226 237 1 227 238 1 228 239 1 229 240 1 230 241 0
		 230 267 0 241 266 0 242 243 0 242 190 0 243 191 0 220 262 0 231 263 0 221 244 0 192 244 0
		 222 245 0 244 245 0 223 246 0 245 246 0 224 247 0 246 247 0 225 248 0 247 248 0 226 249 0
		 248 249 0 227 250 0 249 250 0 228 251 0 250 251 0 229 252 0 251 252 0 252 202 0 232 253 0
		 203 253 0 233 254 0 253 254 0 234 255 0 254 255 0 235 256 0 255 256 0 236 257 0 256 257 0
		 237 258 0 257 258 0 238 259 0 258 259 0 239 260 0 259 260 0 240 261 0 260 261 0 261 213 0
		 262 264 0 263 265 0 214 262 0 262 263 0 263 215 0 264 265 0 264 216 0 265 217 0 266 243 0
		 267 242 0 218 266 0 266 267 0 267 219 0 252 261 1 251 260 1 250 259 1 249 258 1 248 257 1
		 247 256 1 246 255 1 245 254 1 244 253 1 189 241 1 178 230 1 179 231 1 168 220 1 268 269 0
		 269 270 0 270 271 0 271 272 0 272 273 0 273 274 0 274 275 0 275 276 0 276 277 0 277 278 0
		 278 279 0 279 280 0 280 281 0 281 282 0 282 283 0 283 284 0 284 285 0 285 286 0 286 287 0
		 287 268 0 288 289 0 289 290 0 290 291 0 291 292 0 292 293 0 293 294 0;
	setAttr ".ed[498:663]" 294 295 0 295 296 0 296 297 0 297 298 0 298 299 0 299 300 0
		 300 301 0 301 302 0 302 303 0 303 304 0 304 305 0 305 306 0 306 307 0 307 288 0 268 308 1
		 269 309 1 308 309 0 270 310 1 309 310 0 271 311 1 310 311 0 272 312 1 311 312 0 273 313 1
		 312 313 0 274 314 1 313 314 0 275 315 1 314 315 0 276 316 1 315 316 0 277 317 1 316 317 0
		 278 318 1 317 318 0 279 319 1 318 319 0 280 320 1 319 320 0 281 321 1 320 321 0 282 322 1
		 321 322 0 283 323 1 322 323 0 284 324 1 323 324 0 285 325 1 324 325 0 286 326 1 325 326 0
		 287 327 1 326 327 0 327 308 0 308 328 1 309 329 1 328 329 0 310 330 1 329 330 0 311 331 1
		 330 331 0 312 332 1 331 332 0 313 333 1 332 333 0 314 334 1 333 334 0 315 335 1 334 335 0
		 316 336 1 335 336 0 317 337 1 336 337 0 318 338 1 337 338 0 319 339 1 338 339 0 320 340 1
		 339 340 0 321 341 1 340 341 0 322 342 1 341 342 0 323 343 1 342 343 0 324 344 1 343 344 0
		 325 345 1 344 345 0 326 346 1 345 346 0 327 347 1 346 347 0 347 328 0 289 348 0 288 349 0
		 349 348 0 290 350 0 348 350 0 291 351 0 350 351 0 292 352 0 351 352 0 293 353 0 352 353 0
		 294 354 0 353 354 0 295 355 0 354 355 0 296 356 0 355 356 0 297 357 0 356 357 0 298 358 0
		 357 358 0 299 359 0 358 359 0 300 360 0 359 360 0 301 361 0 360 361 0 302 362 0 361 362 0
		 303 363 0 362 363 0 304 364 0 363 364 0 305 365 0 364 365 0 306 366 0 365 366 0 307 367 0
		 366 367 0 367 349 0 368 369 0 369 370 0 370 371 0 371 372 0 372 373 0 373 374 0 374 375 0
		 375 376 0 376 377 0 377 378 0 378 379 0 379 380 0 380 381 0 381 382 0 382 383 0 383 384 0
		 384 385 0 385 386 0 386 387 0 387 368 0 368 388 1 369 389 1 388 389 1 370 390 1 389 390 1
		 371 391 1 390 391 1 372 392 1 391 392 1 373 393 1 392 393 1 374 394 1;
	setAttr ".ed[664:829]" 393 394 1 375 395 1 394 395 1 376 396 1 395 396 1 377 397 1
		 396 397 1 378 398 1 397 398 1 379 399 1 398 399 1 380 400 1 399 400 1 381 401 1 400 401 1
		 382 402 1 401 402 1 383 403 1 402 403 1 384 404 1 403 404 1 385 405 1 404 405 1 386 406 1
		 405 406 1 387 407 1 406 407 1 407 388 1 388 408 1 389 408 1 390 408 1 391 408 1 392 408 1
		 393 408 1 394 408 1 395 408 1 396 408 1 397 408 1 398 408 1 399 408 1 400 408 1 401 408 1
		 402 408 1 403 408 1 404 408 1 405 408 1 406 408 1 407 408 1 409 348 1 410 349 1 411 367 1
		 412 366 1 413 365 1 414 364 1 415 363 1 416 362 1 417 361 1 418 360 1 419 359 1 420 358 1
		 421 357 1 422 356 1 423 355 1 424 354 1 425 353 1 426 352 1 427 351 1 428 350 1 409 410 0
		 410 411 0 411 412 0 412 413 0 413 414 0 414 415 0 415 416 0 416 417 0 417 418 0 418 419 0
		 419 420 0 420 421 0 421 422 0 422 423 0 423 424 0 424 425 0 425 426 0 426 427 0 427 428 0
		 428 409 0 429 368 1 430 369 1 431 370 1 432 371 1 433 372 1 434 373 1 435 374 1 436 375 1
		 437 376 1 438 377 1 439 378 1 440 379 1 441 380 1 442 381 1 443 382 1 444 383 1 445 384 1
		 446 385 1 447 386 1 448 387 1 429 430 0 430 431 0 431 432 0 432 433 0 433 434 0 434 435 0
		 435 436 0 436 437 0 437 438 0 438 439 0 439 440 0 440 441 0 441 442 0 442 443 0 443 444 0
		 444 445 0 445 446 0 446 447 0 447 448 0 448 429 0 507 506 1 506 449 1 451 508 1 508 507 1
		 451 450 1 454 451 1 450 449 1 449 452 1 454 453 1 457 454 1 453 452 1 452 455 1 457 456 1
		 460 457 1 456 455 1 455 458 1 460 459 1 463 460 1 459 458 1 458 461 1 463 462 1 466 463 1
		 462 461 1 461 464 1 466 465 1 469 466 1 465 464 1 464 467 1 469 468 1 472 469 1 468 467 1
		 467 470 1 472 471 1 475 472 1 471 470 1 470 473 1 475 474 1 478 475 1;
	setAttr ".ed[830:995]" 474 473 1 473 476 1 478 477 1 481 478 1 477 476 1 476 479 1
		 481 480 1 484 481 1 480 479 1 479 482 1 484 483 1 487 484 1 483 482 1 482 485 1 487 486 1
		 490 487 1 486 485 1 485 488 1 490 489 1 493 490 1 489 488 1 488 491 1 493 492 1 496 493 1
		 492 491 1 491 494 1 496 495 1 499 496 1 495 494 1 494 497 1 499 498 1 502 499 1 498 497 1
		 497 500 1 502 501 1 505 502 1 501 500 1 500 503 1 505 504 1 508 505 1 504 503 1 503 506 1
		 449 410 1 409 452 1 506 411 1 503 412 1 500 413 1 497 414 1 494 415 1 491 416 1 488 417 1
		 485 418 1 482 419 1 479 420 1 476 421 1 473 422 1 470 423 1 467 424 1 464 425 1 461 426 1
		 458 427 1 455 428 1 454 430 1 429 451 1 457 431 1 460 432 1 463 433 1 466 434 1 469 435 1
		 472 436 1 475 437 1 478 438 1 481 439 1 484 440 1 487 441 1 490 442 1 493 443 1 496 444 1
		 499 445 1 502 446 1 505 447 1 508 448 1 450 507 1 450 453 1 453 456 1 456 459 1 459 462 1
		 462 465 1 465 468 1 468 471 1 471 474 1 474 477 1 477 480 1 480 483 1 483 486 1 486 489 1
		 489 492 1 492 495 1 495 498 1 498 501 1 501 504 1 504 507 1 509 300 1 510 299 1 509 510 1
		 511 298 1 510 511 1 512 297 1 511 512 1 513 296 1 512 513 1 514 295 1 513 514 1 515 294 1
		 514 515 1 516 293 1 515 516 1 517 292 1 516 517 1 518 291 1 517 518 1 519 290 1 518 519 1
		 520 289 1 519 520 1 521 288 1 520 521 1 522 307 1 521 522 1 523 306 1 522 523 1 524 305 1
		 523 524 1 525 304 1 524 525 1 526 303 1 525 526 1 527 302 1 526 527 1 528 301 1 527 528 1
		 528 509 1 280 509 1 279 510 1 278 511 1 277 512 1 276 513 1 275 514 1 274 515 1 273 516 1
		 272 517 1 271 518 1 270 519 1 269 520 1 268 521 1 287 522 1 286 523 1 285 524 1 284 525 1
		 283 526 1 282 527 1 281 528 1 529 530 0 530 531 0 531 532 0 532 533 0;
	setAttr ".ed[996:1089]" 533 534 0 534 535 0 535 536 0 536 529 0 537 538 0 538 539 0
		 539 540 0 540 541 0 541 542 0 542 543 0 543 544 0 544 537 0 529 537 1 530 538 1 531 539 1
		 532 540 1 533 541 1 534 542 1 535 543 1 536 544 1 537 545 1 538 545 1 539 545 1 540 545 1
		 541 545 1 542 545 1 543 545 1 544 545 1 546 547 0 547 548 0 548 549 0 549 550 0 550 551 0
		 551 546 0 552 553 0 553 554 0 554 555 0 555 556 0 556 557 0 557 552 0 546 552 0 547 553 0
		 548 554 0 549 555 0 550 556 0 551 557 0 558 546 1 558 547 1 558 548 1 558 549 1 558 550 1
		 558 551 1 552 559 1 553 559 1 554 559 1 555 559 1 556 559 1 557 559 1 560 561 0 564 565 0
		 560 566 0 562 563 0 564 560 0 565 561 0 561 562 0 563 565 0 567 564 0 567 566 0 567 568 0
		 566 569 0 568 569 0 562 570 0 569 570 0 563 571 0 570 571 0 571 568 0 562 566 1 563 567 1
		 572 573 0 576 577 0 572 578 0 574 575 0 576 572 0 577 573 0 573 574 0 575 577 0 579 576 0
		 579 578 0 579 568 0 578 569 0 574 570 0 575 571 0 574 578 1 575 579 1;
	setAttr -s 514 -ch 2036 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 16 8 -18 -1
		mu 0 4 0 1 2 3
		f 4 17 9 -19 -2
		mu 0 4 3 2 4 5
		f 4 18 10 -20 -3
		mu 0 4 5 4 6 7
		f 4 19 11 -21 -4
		mu 0 4 8 9 10 11
		f 4 20 12 -22 -5
		mu 0 4 11 10 12 13
		f 4 21 13 -23 -6
		mu 0 4 13 12 14 15
		f 4 22 14 -24 -7
		mu 0 4 15 14 16 17
		f 4 23 15 -17 -8
		mu 0 4 17 16 1 0
		f 4 24 59 -42 -59
		mu 0 4 18 19 20 21
		f 4 25 60 -43 -60
		mu 0 4 19 22 23 20
		f 4 26 61 -44 -61
		mu 0 4 22 24 25 23
		f 4 27 62 -45 -62
		mu 0 4 24 26 27 25
		f 4 28 63 -46 -63
		mu 0 4 26 28 29 27
		f 4 29 64 -47 -64
		mu 0 4 28 30 31 29
		f 4 30 65 -48 -65
		mu 0 4 30 32 33 31
		f 4 31 66 -49 -66
		mu 0 4 32 34 35 33
		f 4 32 67 -50 -67
		mu 0 4 34 36 37 35
		f 4 33 68 -51 -68
		mu 0 4 36 38 39 37
		f 4 34 69 -52 -69
		mu 0 4 38 40 41 39
		f 4 35 70 -53 -70
		mu 0 4 40 42 43 41
		f 4 36 71 -54 -71
		mu 0 4 42 44 45 43
		f 4 37 72 -55 -72
		mu 0 4 44 46 47 45
		f 4 38 73 -56 -73
		mu 0 4 46 48 49 47
		f 4 39 74 -57 -74
		mu 0 4 48 50 51 49
		f 4 40 75 -58 -75
		mu 0 4 50 52 53 51
		f 4 -76 155 76 -157
		mu 0 4 53 52 54 55
		f 4 -77 165 161 -167
		mu 0 4 55 54 56 57
		f 4 -178 179 205 -183
		mu 0 4 58 59 60 61
		f 4 77 79 -79 -25
		mu 0 4 62 63 64 65
		f 4 80 -83 -82 41
		mu 0 4 66 67 68 69
		f 4 78 84 -84 -26
		mu 0 4 65 64 70 71
		f 4 85 -87 -81 42
		mu 0 4 72 73 67 66
		f 4 83 88 -88 -27
		mu 0 4 71 70 74 75
		f 4 89 -91 -86 43
		mu 0 4 76 77 73 72
		f 4 87 92 -92 -28
		mu 0 4 75 74 78 79
		f 4 93 -95 -90 44
		mu 0 4 80 81 77 76
		f 4 91 96 -96 -29
		mu 0 4 79 78 82 83
		f 4 97 -99 -94 45
		mu 0 4 84 85 81 80
		f 4 95 100 -100 -30
		mu 0 4 83 82 86 87
		f 4 101 -103 -98 46
		mu 0 4 88 89 85 84
		f 4 99 104 -104 -31
		mu 0 4 87 86 90 91
		f 4 105 -107 -102 47
		mu 0 4 92 93 89 88
		f 4 103 108 -108 -32
		mu 0 4 91 90 94 95
		f 4 109 -111 -106 48
		mu 0 4 96 97 93 92
		f 4 107 112 -112 -33
		mu 0 4 95 94 98 99
		f 4 113 -115 -110 49
		mu 0 4 100 101 97 96
		f 4 111 116 -116 -34
		mu 0 4 99 98 102 103
		f 4 117 -119 -114 50
		mu 0 4 104 105 101 100
		f 4 115 120 -120 -35
		mu 0 4 103 102 106 107
		f 4 121 -123 -118 51
		mu 0 4 108 109 105 104
		f 4 119 124 -124 -36
		mu 0 4 107 106 110 111
		f 4 125 -127 -122 52
		mu 0 4 112 113 109 108
		f 4 123 128 -128 -37
		mu 0 4 111 110 114 115
		f 4 129 -131 -126 53
		mu 0 4 116 117 113 112
		f 4 127 132 -132 -38
		mu 0 4 115 114 118 119
		f 4 133 -135 -130 54
		mu 0 4 120 121 117 116
		f 4 131 136 -136 -39
		mu 0 4 119 118 122 123
		f 4 137 -139 -134 55
		mu 0 4 124 125 121 120
		f 4 135 140 -140 -40
		mu 0 4 123 122 126 127
		f 4 141 -143 -138 56
		mu 0 4 128 129 125 124
		f 4 139 144 -144 -41
		mu 0 4 127 126 130 131
		f 4 145 -147 -142 57
		mu 0 4 132 133 129 128
		f 4 143 154 -148 -156
		mu 0 4 131 130 134 135
		f 4 -150 -146 156 148
		mu 0 4 136 133 132 137
		f 4 147 164 159 -166
		mu 0 4 135 134 138 139
		f 4 -153 -149 166 163
		mu 0 4 140 136 137 141
		f 4 150 171 174 -173
		mu 0 4 142 143 144 145
		f 4 -154 -152 173 176
		mu 0 4 146 147 148 149
		f 4 -159 -160 157 -151
		mu 0 4 142 139 138 143
		f 4 -185 -187 187 196
		mu 0 4 150 151 152 153
		f 4 -163 -164 160 151
		mu 0 4 147 140 141 148
		f 4 -169 -175 167 -78
		mu 0 4 62 145 144 63
		f 4 -170 -176 168 58
		mu 0 4 21 154 155 18
		f 4 -171 -177 169 81
		mu 0 4 68 146 149 69
		f 6 172 178 -198 -201 -204 -180
		mu 0 6 142 145 156 157 158 159
		f 4 175 180 -182 -179
		mu 0 4 160 161 162 163
		f 6 -174 182 204 201 198 -181
		mu 0 6 149 148 164 165 166 167
		f 6 -161 183 184 195 192 189
		mu 0 6 148 141 168 169 170 171
		f 4 -162 185 186 -184
		mu 0 4 172 173 152 151
		f 6 158 -189 -192 -195 -188 -186
		mu 0 6 139 142 174 175 176 177
		f 4 -190 -191 188 177
		mu 0 4 178 179 180 181
		f 4 -193 -194 191 190
		mu 0 4 179 182 183 180
		f 4 -196 -197 194 193
		mu 0 4 182 150 153 183
		f 4 -200 197 181 -199
		mu 0 4 184 185 163 162
		f 4 -203 200 199 -202
		mu 0 4 186 187 185 184
		f 4 -206 203 202 -205
		mu 0 4 61 60 187 186
		f 4 206 223 -215 -223
		mu 0 4 188 189 190 191
		f 4 207 224 -216 -224
		mu 0 4 189 192 193 190
		f 4 208 225 -217 -225
		mu 0 4 192 194 195 193
		f 4 209 226 -218 -226
		mu 0 4 196 197 198 199
		f 4 210 227 -219 -227
		mu 0 4 197 200 201 198
		f 4 211 228 -220 -228
		mu 0 4 200 202 203 201
		f 4 212 229 -221 -229
		mu 0 4 202 204 205 203
		f 4 213 222 -222 -230
		mu 0 4 204 188 191 205
		f 4 230 247 -239 -247
		mu 0 4 206 207 208 209
		f 4 231 248 -240 -248
		mu 0 4 207 210 211 208
		f 4 232 249 -241 -249
		mu 0 4 210 212 213 211
		f 4 233 250 -242 -250
		mu 0 4 214 215 216 217
		f 4 234 251 -243 -251
		mu 0 4 215 218 219 216
		f 4 235 252 -244 -252
		mu 0 4 218 220 221 219
		f 4 236 253 -245 -253
		mu 0 4 220 222 223 221
		f 4 237 246 -246 -254
		mu 0 4 222 206 209 223
		f 4 254 271 -263 -271
		mu 0 4 224 225 226 227
		f 4 255 272 -264 -272
		mu 0 4 225 228 229 226
		f 4 256 273 -265 -273
		mu 0 4 228 230 231 229
		f 4 257 274 -266 -274
		mu 0 4 232 233 234 235
		f 4 258 275 -267 -275
		mu 0 4 233 236 237 234
		f 4 259 276 -268 -276
		mu 0 4 236 238 239 237
		f 4 260 277 -269 -277
		mu 0 4 238 240 241 239
		f 4 261 270 -270 -278
		mu 0 4 240 224 227 241
		f 4 278 299 -289 -299
		mu 0 4 242 243 244 245
		f 4 279 300 -290 -300
		mu 0 4 243 246 247 244
		f 4 280 301 -291 -301
		mu 0 4 246 248 249 247
		f 4 281 302 -292 -302
		mu 0 4 248 250 251 249
		f 4 282 303 -293 -303
		mu 0 4 250 252 253 251
		f 4 283 304 -294 -304
		mu 0 4 252 254 255 253
		f 4 284 305 -295 -305
		mu 0 4 254 256 257 255
		f 4 285 306 -296 -306
		mu 0 4 256 258 259 257
		f 4 286 307 -297 -307
		mu 0 4 258 260 261 259
		f 4 287 308 -298 -308
		mu 0 4 260 262 263 261
		f 4 358 357 311 -357
		mu 0 4 264 265 266 267
		f 4 -312 -405 403 405
		mu 0 4 268 269 270 271
		f 7 315 -315 -279 471 370 408 -410
		mu 0 7 272 273 274 275 276 277 278
		f 4 -280 314 317 -317
		mu 0 4 279 274 273 280
		f 4 -281 316 319 -319
		mu 0 4 281 279 280 282
		f 4 -282 318 321 -321
		mu 0 4 283 281 282 284
		f 4 -283 320 323 -323
		mu 0 4 285 283 284 286
		f 4 -284 322 325 -325
		mu 0 4 287 285 286 288
		f 4 -285 324 327 -327
		mu 0 4 289 287 288 290
		f 4 -286 326 329 -329
		mu 0 4 291 289 290 292
		f 4 -287 328 331 -331
		mu 0 4 293 291 292 294
		f 4 289 335 -337 -334
		mu 0 4 295 296 297 298
		f 4 290 337 -339 -336
		mu 0 4 296 299 300 297
		f 4 291 339 -341 -338
		mu 0 4 299 301 302 300
		f 4 292 341 -343 -340
		mu 0 4 301 303 304 302
		f 4 293 343 -345 -342
		mu 0 4 303 305 306 304
		f 4 294 345 -347 -344
		mu 0 4 305 307 308 306
		f 4 295 347 -349 -346
		mu 0 4 307 309 310 308
		f 4 296 349 -351 -348
		mu 0 4 309 311 312 310
		f 7 -352 -350 297 468 -390 443 445
		mu 0 7 313 312 311 314 315 316 317
		f 4 352 -453 -447 -449
		mu 0 4 318 319 320 321
		f 4 298 313 -355 -313
		mu 0 4 322 323 324 325
		f 4 -353 354 353 -356
		mu 0 4 326 325 324 327
		f 4 -309 309 -359 -311
		mu 0 4 328 329 265 264
		f 4 -333 361 351 -361
		mu 0 4 330 331 332 333
		f 4 -332 362 350 -362
		mu 0 4 331 334 335 332
		f 4 -330 363 348 -363
		mu 0 4 334 336 337 335
		f 4 -328 364 346 -364
		mu 0 4 336 338 339 337
		f 4 -326 365 344 -365
		mu 0 4 338 340 341 339
		f 4 -324 366 342 -366
		mu 0 4 340 342 343 341
		f 4 -322 367 340 -367
		mu 0 4 342 344 345 343
		f 4 -320 368 338 -368
		mu 0 4 344 346 347 345
		f 4 -318 369 336 -369
		mu 0 4 346 348 349 347
		f 4 -316 359 334 -370
		mu 0 4 348 350 351 349
		f 4 390 380 -392 -371
		mu 0 4 352 353 354 355
		f 4 391 381 -393 -372
		mu 0 4 355 354 356 357
		f 4 392 382 -394 -373
		mu 0 4 357 356 358 359
		f 4 393 383 -395 -374
		mu 0 4 359 358 360 361
		f 4 394 384 -396 -375
		mu 0 4 361 360 362 363
		f 4 395 385 -397 -376
		mu 0 4 363 362 364 365
		f 4 396 386 -398 -377
		mu 0 4 365 364 366 367
		f 4 397 387 -399 -378
		mu 0 4 367 366 368 369
		f 4 398 388 -400 -379
		mu 0 4 369 368 370 371
		f 4 399 389 -401 -380
		mu 0 4 371 370 372 373
		f 4 454 -404 -456 -458
		mu 0 4 374 375 376 377
		f 4 -454 -452 452 355
		mu 0 4 378 379 380 381
		f 4 410 -412 -409 371
		mu 0 4 382 383 278 277
		f 4 412 -414 -411 372
		mu 0 4 384 385 383 382
		f 4 414 -416 -413 373
		mu 0 4 386 387 385 384
		f 4 416 -418 -415 374
		mu 0 4 388 389 387 386
		f 4 418 -420 -417 375
		mu 0 4 390 391 389 388
		f 4 420 -422 -419 376
		mu 0 4 392 393 391 390
		f 4 422 -424 -421 377
		mu 0 4 394 395 393 392
		f 4 424 -426 -423 378
		mu 0 4 396 397 395 394
		f 4 469 401 458 -310
		mu 0 4 398 399 400 401
		f 4 470 407 450 -314
		mu 0 4 402 403 404 405
		f 4 427 430 -430 -382
		mu 0 4 406 407 408 409
		f 4 429 432 -432 -383
		mu 0 4 409 408 410 411
		f 4 431 434 -434 -384
		mu 0 4 411 410 412 413
		f 4 433 436 -436 -385
		mu 0 4 413 412 414 415
		f 4 435 438 -438 -386
		mu 0 4 415 414 416 417
		f 4 437 440 -440 -387
		mu 0 4 417 416 418 419
		f 4 439 442 -442 -388
		mu 0 4 419 418 420 421
		f 4 441 444 -444 -389
		mu 0 4 421 420 317 316
		f 4 -406 -455 -457 356
		mu 0 4 422 423 424 425
		f 4 -459 455 404 -358
		mu 0 4 401 400 426 427
		f 4 -451 447 453 -354
		mu 0 4 405 404 428 429
		f 4 406 449 -408 -391
		mu 0 4 430 431 432 433
		f 4 451 -448 -450 446
		mu 0 4 434 435 432 431
		f 4 402 457 -402 400
		mu 0 4 436 374 377 437
		f 4 360 -446 -460 426
		mu 0 4 330 333 438 439
		f 4 459 -445 -461 425
		mu 0 4 439 438 440 441
		f 4 460 -443 -462 423
		mu 0 4 441 440 442 443
		f 4 461 -441 -463 421
		mu 0 4 443 442 444 445
		f 4 462 -439 -464 419
		mu 0 4 445 444 446 447
		f 4 463 -437 -465 417
		mu 0 4 447 446 448 449
		f 4 464 -435 -466 415
		mu 0 4 449 448 450 451
		f 4 465 -433 -467 413
		mu 0 4 451 450 452 453
		f 4 466 -431 -468 411
		mu 0 4 453 452 454 455
		f 4 467 -429 -360 409
		mu 0 4 455 454 456 457
		f 4 -469 310 456 -403
		mu 0 4 315 314 425 424
		f 7 -427 -425 379 -470 -288 330 332
		mu 0 7 458 397 396 399 398 293 294
		f 7 428 -428 -381 -471 288 333 -335
		mu 0 7 459 407 406 403 402 295 298
		f 4 -472 312 448 -407
		mu 0 4 276 275 318 321
		f 4 732 713 594 -713
		mu 0 4 460 461 462 463
		f 4 751 712 596 -732
		mu 0 4 464 460 463 465
		f 4 750 731 598 -731
		mu 0 4 466 464 465 467
		f 4 749 730 600 -730
		mu 0 4 468 466 467 469
		f 4 748 729 602 -729
		mu 0 4 470 468 469 471
		f 4 747 728 604 -728
		mu 0 4 472 470 471 473
		f 4 746 727 606 -727
		mu 0 4 474 472 473 475
		f 4 745 726 608 -726
		mu 0 4 476 474 475 477
		f 4 744 725 610 -725
		mu 0 4 478 476 477 479
		f 4 743 724 612 -724
		mu 0 4 480 478 479 481
		f 4 742 723 614 -723
		mu 0 4 482 480 481 483
		f 4 741 722 616 -722
		mu 0 4 484 482 483 485
		f 4 740 721 618 -721
		mu 0 4 486 484 485 487
		f 4 739 720 620 -720
		mu 0 4 488 486 487 489
		f 4 738 719 622 -719
		mu 0 4 490 491 492 493
		f 4 737 718 624 -718
		mu 0 4 494 490 493 495
		f 4 736 717 626 -717
		mu 0 4 496 494 495 497
		f 4 735 716 628 -716
		mu 0 4 498 496 497 499
		f 4 734 715 630 -715
		mu 0 4 500 498 499 501
		f 4 733 714 631 -714
		mu 0 4 461 500 501 462
		f 4 772 753 -633 -753
		mu 0 4 502 503 504 505
		f 4 773 754 -634 -754
		mu 0 4 503 506 507 504
		f 4 774 755 -635 -755
		mu 0 4 506 508 509 507
		f 4 775 756 -636 -756
		mu 0 4 508 510 511 509
		f 4 776 757 -637 -757
		mu 0 4 510 512 513 511
		f 4 777 758 -638 -758
		mu 0 4 512 514 515 513
		f 4 778 759 -639 -759
		mu 0 4 514 516 517 515
		f 4 779 760 -640 -760
		mu 0 4 516 518 519 517
		f 4 780 761 -641 -761
		mu 0 4 518 520 521 519
		f 4 781 762 -642 -762
		mu 0 4 520 522 523 521
		f 4 782 763 -643 -763
		mu 0 4 522 524 525 523
		f 4 783 764 -644 -764
		mu 0 4 524 526 527 525
		f 4 784 765 -645 -765
		mu 0 4 526 528 529 527
		f 4 785 766 -646 -766
		mu 0 4 528 530 531 529
		f 4 786 767 -647 -767
		mu 0 4 532 533 534 535
		f 4 787 768 -648 -768
		mu 0 4 533 536 537 534
		f 4 788 769 -649 -769
		mu 0 4 536 538 539 537
		f 4 789 770 -650 -770
		mu 0 4 538 540 541 539
		f 4 790 771 -651 -771
		mu 0 4 540 542 543 541
		f 4 791 752 -652 -772
		mu 0 4 542 502 505 543
		f 4 472 983 956 -985
		mu 0 4 544 545 546 547
		f 4 473 982 954 -984
		mu 0 4 545 548 549 546
		f 4 474 981 952 -983
		mu 0 4 548 550 551 549
		f 4 475 980 950 -982
		mu 0 4 550 552 553 551
		f 4 476 979 948 -981
		mu 0 4 552 554 555 553
		f 4 477 978 946 -980
		mu 0 4 554 556 557 555
		f 4 478 977 944 -979
		mu 0 4 556 558 559 557
		f 4 479 976 942 -978
		mu 0 4 558 560 561 559
		f 4 480 975 940 -977
		mu 0 4 560 562 563 561
		f 4 481 974 938 -976
		mu 0 4 562 564 565 563
		f 4 482 973 936 -975
		mu 0 4 564 566 567 565
		f 4 483 972 934 -974
		mu 0 4 566 568 569 567
		f 4 484 991 971 -973
		mu 0 4 568 570 571 569
		f 4 485 990 970 -992
		mu 0 4 570 572 573 571
		f 4 486 989 968 -991
		mu 0 4 574 575 576 577
		f 4 487 988 966 -990
		mu 0 4 575 578 579 576
		f 4 488 987 964 -989
		mu 0 4 578 580 581 579
		f 4 489 986 962 -988
		mu 0 4 580 582 583 581
		f 4 490 985 960 -987
		mu 0 4 582 584 585 583
		f 4 491 984 958 -986
		mu 0 4 584 544 547 585
		f 4 -473 512 514 -514
		mu 0 4 586 587 588 589
		f 4 -474 513 516 -516
		mu 0 4 590 586 589 591
		f 4 -475 515 518 -518
		mu 0 4 592 590 591 593
		f 4 -476 517 520 -520
		mu 0 4 594 592 593 595
		f 4 -477 519 522 -522
		mu 0 4 596 594 595 597
		f 4 -478 521 524 -524
		mu 0 4 598 596 597 599
		f 4 -479 523 526 -526
		mu 0 4 600 598 599 601
		f 4 -480 525 528 -528
		mu 0 4 602 600 601 603
		f 4 -481 527 530 -530
		mu 0 4 604 602 603 605
		f 4 -482 529 532 -532
		mu 0 4 606 604 605 607
		f 4 -483 531 534 -534
		mu 0 4 608 606 607 609
		f 4 -484 533 536 -536
		mu 0 4 610 608 609 611
		f 4 -485 535 538 -538
		mu 0 4 612 610 611 613
		f 4 -486 537 540 -540
		mu 0 4 614 612 613 615
		f 4 -487 539 542 -542
		mu 0 4 616 617 618 619
		f 4 -488 541 544 -544
		mu 0 4 620 616 619 621
		f 4 -489 543 546 -546
		mu 0 4 622 620 621 623
		f 4 -490 545 548 -548
		mu 0 4 624 622 623 625
		f 4 -491 547 550 -550
		mu 0 4 626 624 625 627
		f 4 -492 549 551 -513
		mu 0 4 587 626 627 588
		f 4 -515 552 554 -554
		mu 0 4 628 629 630 631
		f 4 -517 553 556 -556
		mu 0 4 632 628 631 633
		f 4 -519 555 558 -558
		mu 0 4 634 632 633 635
		f 4 -521 557 560 -560
		mu 0 4 636 634 635 637
		f 4 -523 559 562 -562
		mu 0 4 638 636 637 639
		f 4 -525 561 564 -564
		mu 0 4 640 638 639 641
		f 4 -527 563 566 -566
		mu 0 4 642 640 641 643
		f 4 -529 565 568 -568
		mu 0 4 644 642 643 645
		f 4 -531 567 570 -570
		mu 0 4 646 644 645 647
		f 4 -533 569 572 -572
		mu 0 4 648 646 647 649
		f 4 -535 571 574 -574
		mu 0 4 650 648 649 651
		f 4 -537 573 576 -576
		mu 0 4 652 650 651 653
		f 4 -539 575 578 -578
		mu 0 4 654 652 653 655
		f 4 -541 577 580 -580
		mu 0 4 656 654 655 657
		f 4 -543 579 582 -582
		mu 0 4 658 659 660 661
		f 4 -545 581 584 -584
		mu 0 4 662 658 661 663
		f 4 -547 583 586 -586
		mu 0 4 664 662 663 665
		f 4 -549 585 588 -588
		mu 0 4 666 664 665 667
		f 4 -551 587 590 -590
		mu 0 4 668 666 667 669
		f 4 -552 589 591 -553
		mu 0 4 629 668 669 630
		f 4 592 -595 -594 492
		mu 0 4 670 671 672 673
		f 4 595 -597 -593 493
		mu 0 4 674 675 671 670
		f 4 597 -599 -596 494
		mu 0 4 676 677 675 674
		f 4 599 -601 -598 495
		mu 0 4 678 679 677 676
		f 4 601 -603 -600 496
		mu 0 4 680 681 679 678
		f 4 603 -605 -602 497
		mu 0 4 682 683 681 680
		f 4 605 -607 -604 498
		mu 0 4 684 685 683 682
		f 4 607 -609 -606 499
		mu 0 4 686 687 685 684
		f 4 609 -611 -608 500
		mu 0 4 688 689 687 686
		f 4 611 -613 -610 501
		mu 0 4 690 691 689 688
		f 4 613 -615 -612 502
		mu 0 4 692 693 691 690
		f 4 615 -617 -614 503
		mu 0 4 694 695 693 692
		f 4 617 -619 -616 504
		mu 0 4 696 697 695 694
		f 4 619 -621 -618 505
		mu 0 4 698 699 697 696
		f 4 621 -623 -620 506
		mu 0 4 700 701 702 703
		f 4 623 -625 -622 507
		mu 0 4 704 705 701 700
		f 4 625 -627 -624 508
		mu 0 4 706 707 705 704
		f 4 627 -629 -626 509
		mu 0 4 708 709 707 706
		f 4 629 -631 -628 510
		mu 0 4 710 711 709 708
		f 4 593 -632 -630 511
		mu 0 4 673 672 711 710
		f 4 653 -655 -653 632
		mu 0 4 712 713 714 715
		f 4 655 -657 -654 633
		mu 0 4 716 717 713 712
		f 4 657 -659 -656 634
		mu 0 4 718 719 717 716
		f 4 659 -661 -658 635
		mu 0 4 720 721 719 718
		f 4 661 -663 -660 636
		mu 0 4 722 723 721 720
		f 4 663 -665 -662 637
		mu 0 4 724 725 723 722
		f 4 665 -667 -664 638
		mu 0 4 726 727 725 724
		f 4 667 -669 -666 639
		mu 0 4 728 729 727 726
		f 4 669 -671 -668 640
		mu 0 4 730 731 729 728
		f 4 671 -673 -670 641
		mu 0 4 732 733 731 730
		f 4 673 -675 -672 642
		mu 0 4 734 735 733 732
		f 4 675 -677 -674 643
		mu 0 4 736 737 735 734
		f 4 677 -679 -676 644
		mu 0 4 738 739 737 736
		f 4 679 -681 -678 645
		mu 0 4 740 741 739 738
		f 4 681 -683 -680 646
		mu 0 4 742 743 744 745
		f 4 683 -685 -682 647
		mu 0 4 746 747 743 742
		f 4 685 -687 -684 648
		mu 0 4 748 749 747 746
		f 4 687 -689 -686 649
		mu 0 4 750 751 749 748
		f 4 689 -691 -688 650
		mu 0 4 752 753 751 750
		f 4 652 -692 -690 651
		mu 0 4 715 714 753 752
		f 3 654 693 -693
		mu 0 3 754 755 756
		f 3 656 694 -694
		mu 0 3 755 757 756
		f 3 658 695 -695
		mu 0 3 757 758 756
		f 3 660 696 -696
		mu 0 3 758 759 756
		f 3 662 697 -697
		mu 0 3 759 760 756
		f 3 664 698 -698
		mu 0 3 760 761 756
		f 3 666 699 -699
		mu 0 3 761 762 756
		f 3 668 700 -700
		mu 0 3 762 763 756
		f 3 670 701 -701
		mu 0 3 763 764 756
		f 3 672 702 -702
		mu 0 3 764 765 756
		f 3 674 703 -703
		mu 0 3 765 766 756
		f 3 676 704 -704
		mu 0 3 766 767 756
		f 3 678 705 -705
		mu 0 3 767 768 756
		f 3 680 706 -706
		mu 0 3 768 769 756
		f 3 682 707 -707
		mu 0 3 769 770 756
		f 3 684 708 -708
		mu 0 3 770 771 756
		f 3 686 709 -709
		mu 0 3 771 772 756
		f 3 688 710 -710
		mu 0 3 772 773 756
		f 3 690 711 -711
		mu 0 3 773 774 756
		f 3 691 692 -712
		mu 0 3 774 754 756
		f 4 872 -733 873 -800
		mu 0 4 775 776 777 778
		f 4 874 -734 -873 -794
		mu 0 4 779 780 776 775
		f 4 875 -735 -875 -872
		mu 0 4 781 782 780 779
		f 4 876 -736 -876 -868
		mu 0 4 783 784 782 781
		f 4 877 -737 -877 -864
		mu 0 4 785 786 784 783
		f 4 878 -738 -878 -860
		mu 0 4 787 788 786 785
		f 4 879 -739 -879 -856
		mu 0 4 789 790 788 787
		f 4 880 -740 -880 -852
		mu 0 4 791 792 793 794
		f 4 881 -741 -881 -848
		mu 0 4 795 796 792 791
		f 4 882 -742 -882 -844
		mu 0 4 797 798 796 795
		f 4 883 -743 -883 -840
		mu 0 4 799 800 798 797
		f 4 884 -744 -884 -836
		mu 0 4 801 802 800 799
		f 4 885 -745 -885 -832
		mu 0 4 803 804 802 801
		f 4 886 -746 -886 -828
		mu 0 4 805 806 804 803
		f 4 887 -747 -887 -824
		mu 0 4 807 808 806 805
		f 4 888 -748 -888 -820
		mu 0 4 809 810 808 807
		f 4 889 -749 -889 -816
		mu 0 4 811 812 810 809
		f 4 890 -750 -890 -812
		mu 0 4 813 814 812 811
		f 4 891 -751 -891 -808
		mu 0 4 815 816 814 813
		f 4 -874 -752 -892 -804
		mu 0 4 778 777 816 815
		f 4 892 -773 893 -798
		mu 0 4 817 818 819 820
		f 4 894 -774 -893 -802
		mu 0 4 821 822 818 817
		f 4 895 -775 -895 -806
		mu 0 4 823 824 822 821
		f 4 896 -776 -896 -810
		mu 0 4 825 826 824 823
		f 4 897 -777 -897 -814
		mu 0 4 827 828 826 825
		f 4 898 -778 -898 -818
		mu 0 4 829 830 828 827
		f 4 899 -779 -899 -822
		mu 0 4 831 832 830 829
		f 4 900 -780 -900 -826
		mu 0 4 833 834 832 831
		f 4 901 -781 -901 -830
		mu 0 4 835 836 834 833
		f 4 902 -782 -902 -834
		mu 0 4 837 838 836 835
		f 4 903 -783 -903 -838
		mu 0 4 839 840 838 837
		f 4 904 -784 -904 -842
		mu 0 4 841 842 840 839
		f 4 905 -785 -905 -846
		mu 0 4 843 844 842 841
		f 4 906 -786 -906 -850
		mu 0 4 845 846 844 843
		f 4 907 -787 -907 -854
		mu 0 4 847 848 849 850
		f 4 908 -788 -908 -858
		mu 0 4 851 852 848 847
		f 4 909 -789 -909 -862
		mu 0 4 853 854 852 851
		f 4 910 -790 -910 -866
		mu 0 4 855 856 854 853
		f 4 911 -791 -911 -870
		mu 0 4 857 858 856 855
		f 4 -894 -792 -912 -795
		mu 0 4 820 819 858 857
		f 4 -799 912 792 793
		mu 0 4 775 859 860 779
		f 4 -797 794 795 -913
		mu 0 4 859 820 857 860
		f 4 796 913 -801 797
		mu 0 4 820 859 861 817
		f 4 798 799 -803 -914
		mu 0 4 859 775 778 861
		f 4 800 914 -805 801
		mu 0 4 817 861 862 821
		f 4 802 803 -807 -915
		mu 0 4 861 778 815 862
		f 4 804 915 -809 805
		mu 0 4 821 862 863 823
		f 4 806 807 -811 -916
		mu 0 4 862 815 813 863
		f 4 808 916 -813 809
		mu 0 4 823 863 864 825
		f 4 810 811 -815 -917
		mu 0 4 863 813 811 864
		f 4 812 917 -817 813
		mu 0 4 825 864 865 827
		f 4 814 815 -819 -918
		mu 0 4 864 811 809 865
		f 4 816 918 -821 817
		mu 0 4 827 865 866 829
		f 4 818 819 -823 -919
		mu 0 4 865 809 807 866
		f 4 820 919 -825 821
		mu 0 4 829 866 867 831
		f 4 822 823 -827 -920
		mu 0 4 866 807 805 867
		f 4 824 920 -829 825
		mu 0 4 831 867 868 833
		f 4 826 827 -831 -921
		mu 0 4 867 805 803 868
		f 4 828 921 -833 829
		mu 0 4 833 868 869 835
		f 4 830 831 -835 -922
		mu 0 4 868 803 801 869
		f 4 832 922 -837 833
		mu 0 4 835 869 870 837
		f 4 834 835 -839 -923
		mu 0 4 869 801 799 870
		f 4 836 923 -841 837
		mu 0 4 837 870 871 839
		f 4 838 839 -843 -924
		mu 0 4 870 799 797 871
		f 4 840 924 -845 841
		mu 0 4 839 871 872 841
		f 4 842 843 -847 -925
		mu 0 4 871 797 795 872
		f 4 844 925 -849 845
		mu 0 4 841 872 873 843
		f 4 846 847 -851 -926
		mu 0 4 872 795 791 873
		f 4 848 926 -853 849
		mu 0 4 843 873 874 845
		f 4 850 851 -855 -927
		mu 0 4 873 791 794 874
		f 4 852 927 -857 853
		mu 0 4 850 875 876 847
		f 4 854 855 -859 -928
		mu 0 4 875 789 787 876
		f 4 856 928 -861 857
		mu 0 4 847 876 877 851
		f 4 858 859 -863 -929
		mu 0 4 876 787 785 877
		f 4 860 929 -865 861
		mu 0 4 851 877 878 853
		f 4 862 863 -867 -930
		mu 0 4 877 785 783 878
		f 4 864 930 -869 865
		mu 0 4 853 878 879 855
		f 4 866 867 -871 -931
		mu 0 4 878 783 781 879
		f 4 868 931 -796 869
		mu 0 4 855 879 860 857
		f 4 870 871 -793 -932
		mu 0 4 879 781 779 860
		f 4 -934 -935 932 -504
		mu 0 4 880 567 569 881
		f 4 -936 -937 933 -503
		mu 0 4 882 565 567 880
		f 4 -938 -939 935 -502
		mu 0 4 883 563 565 882
		f 4 -940 -941 937 -501
		mu 0 4 884 561 563 883
		f 4 -942 -943 939 -500
		mu 0 4 885 559 561 884
		f 4 -944 -945 941 -499
		mu 0 4 886 557 559 885
		f 4 -946 -947 943 -498
		mu 0 4 887 555 557 886
		f 4 -948 -949 945 -497
		mu 0 4 888 553 555 887
		f 4 -950 -951 947 -496
		mu 0 4 889 551 553 888
		f 4 -952 -953 949 -495
		mu 0 4 890 549 551 889
		f 4 -954 -955 951 -494
		mu 0 4 891 546 549 890
		f 4 -956 -957 953 -493
		mu 0 4 892 547 546 891
		f 4 -958 -959 955 -512
		mu 0 4 893 585 547 892
		f 4 -960 -961 957 -511
		mu 0 4 894 583 585 893
		f 4 -962 -963 959 -510
		mu 0 4 895 581 583 894
		f 4 -964 -965 961 -509
		mu 0 4 896 579 581 895
		f 4 -966 -967 963 -508
		mu 0 4 897 576 579 896
		f 4 -968 -969 965 -507
		mu 0 4 898 577 576 897
		f 4 -970 -971 967 -506
		mu 0 4 899 571 573 900
		f 4 -933 -972 969 -505
		mu 0 4 881 569 571 899
		f 4 992 1009 -1001 -1009
		mu 0 4 901 902 903 904
		f 4 993 1010 -1002 -1010
		mu 0 4 902 905 906 903
		f 4 994 1011 -1003 -1011
		mu 0 4 905 907 908 906
		f 4 995 1012 -1004 -1012
		mu 0 4 907 909 910 908
		f 4 996 1013 -1005 -1013
		mu 0 4 909 911 912 910
		f 4 997 1014 -1006 -1014
		mu 0 4 911 913 914 912
		f 4 998 1015 -1007 -1015
		mu 0 4 913 915 916 914
		f 4 999 1008 -1008 -1016
		mu 0 4 915 917 918 916
		f 3 1000 1017 -1017
		mu 0 3 919 920 921
		f 3 1001 1018 -1018
		mu 0 3 920 922 921
		f 3 1002 1019 -1019
		mu 0 3 922 923 921
		f 3 1003 1020 -1020
		mu 0 3 923 924 921
		f 3 1004 1021 -1021
		mu 0 3 924 925 921
		f 3 1005 1022 -1022
		mu 0 3 925 926 921
		f 3 1006 1023 -1023
		mu 0 3 926 927 921
		f 3 1007 1016 -1024
		mu 0 3 927 919 921
		f 4 1024 1037 -1031 -1037
		mu 0 4 928 929 930 931
		f 4 1025 1038 -1032 -1038
		mu 0 4 932 933 934 935
		f 4 1026 1039 -1033 -1039
		mu 0 4 933 936 937 934
		f 4 1027 1040 -1034 -1040
		mu 0 4 936 938 939 937
		f 4 1028 1041 -1035 -1041
		mu 0 4 938 940 941 939
		f 4 1029 1036 -1036 -1042
		mu 0 4 940 928 931 941
		f 3 -1025 -1043 1043
		mu 0 3 942 943 944
		f 3 -1026 -1044 1044
		mu 0 3 945 942 944
		f 3 -1027 -1045 1045
		mu 0 3 946 945 944
		f 3 -1028 -1046 1046
		mu 0 3 947 946 944
		f 3 -1029 -1047 1047
		mu 0 3 948 947 944
		f 3 -1030 -1048 1042
		mu 0 3 943 948 944
		f 3 1030 1049 -1049
		mu 0 3 949 950 951
		f 3 1031 1050 -1050
		mu 0 3 950 952 951
		f 3 1032 1051 -1051
		mu 0 3 952 953 951
		f 3 1033 1052 -1052
		mu 0 3 953 954 951
		f 3 1034 1053 -1053
		mu 0 3 954 955 951
		f 3 1035 1048 -1054
		mu 0 3 955 949 951
		f 4 1060 1072 -1057 1054
		mu 0 4 956 957 958 959
		f 4 -1058 -1061 -1060 -1062
		mu 0 4 960 961 962 963;
	setAttr ".fc[500:513]"
		f 4 1058 1056 -1064 1062
		mu 0 4 964 965 966 967
		f 4 1063 1065 -1067 -1065
		mu 0 4 968 969 970 971
		f 4 1067 -1069 -1066 -1073
		mu 0 4 957 972 973 958
		f 4 1069 -1071 -1068 1057
		mu 0 4 974 975 976 977
		f 4 1064 -1072 -1070 1073
		mu 0 4 978 979 980 981
		f 4 -1074 1061 -1056 -1063
		mu 0 4 978 981 982 983
		f 4 -1075 1076 -1089 -1081
		mu 0 4 984 985 986 987
		f 4 1081 1079 1080 1077
		mu 0 4 988 989 990 991
		f 4 -1083 1083 -1077 -1079
		mu 0 4 992 993 994 995
		f 4 1084 1066 -1086 -1084
		mu 0 4 996 997 998 999
		f 4 1088 1085 1068 -1087
		mu 0 4 987 986 1000 1001
		f 4 -1078 1086 1070 -1088
		mu 0 4 1002 1003 1004 1005
		f 4 -1090 1087 1071 -1085
		mu 0 4 1006 1007 1008 1009
		f 4 1082 1075 -1082 1089
		mu 0 4 1006 1010 1011 1007;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "top_hook" -p "coupling_extend_start";
	rename -uid "208381D3-4E22-C2B8-BB3D-4AB30580F5FB";
	addAttr -ci true -sn "i3D_xmlIdentifier" -ln "i3D_xmlIdentifier" -dt "string";
	addAttr -ci true -sn "i3D_objectMask" -ln "i3D_objectMask" -at "long";
	addAttr -ci true -sn "i3D_dynamic" -ln "i3D_dynamic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_joint" -ln "i3D_joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_dynamicFriction" -ln "i3D_dynamicFriction" -at "float";
	addAttr -ci true -sn "i3D_ccd" -ln "i3D_ccd" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_density" -ln "i3D_density" -at "float";
	addAttr -ci true -sn "i3D_splitType" -ln "i3D_splitType" -at "long";
	addAttr -ci true -sn "i3D_splitMinU" -ln "i3D_splitMinU" -at "float";
	addAttr -ci true -sn "i3D_splitMinV" -ln "i3D_splitMinV" -at "float";
	addAttr -ci true -sn "i3D_driveForceLimit" -ln "i3D_driveForceLimit" -at "float";
	addAttr -ci true -sn "i3D_angularDamping" -ln "i3D_angularDamping" -at "float";
	addAttr -ci true -sn "i3D_splitUvWorldScale" -ln "i3D_splitUvWorldScale" -at "float";
	addAttr -ci true -sn "i3D_projection" -ln "i3D_projection" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_driveSpring" -ln "i3D_driveSpring" -at "float";
	addAttr -ci true -sn "i3D_breakableJoint" -ln "i3D_breakableJoint" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_projDistance" -ln "i3D_projDistance" -at "float";
	addAttr -ci true -sn "i3D_driveDamping" -ln "i3D_driveDamping" -at "float";
	addAttr -ci true -sn "i3D_xAxisDrive" -ln "i3D_xAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_compound" -ln "i3D_compound" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_clipDistance" -ln "i3D_clipDistance" -at "float";
	addAttr -ci true -sn "i3D_collision" -ln "i3D_collision" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_scaled" -ln "i3D_scaled" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_projAngle" -ln "i3D_projAngle" -at "float";
	addAttr -ci true -sn "i3D_mergeGroupRoot" -ln "i3D_mergeGroupRoot" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_jointBreakTorque" -ln "i3D_jointBreakTorque" -at "float";
	addAttr -ci true -sn "i3D_restitution" -ln "i3D_restitution" -at "float";
	addAttr -ci true -sn "i3D_yAxisDrive" -ln "i3D_yAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_mergeGroup" -ln "i3D_mergeGroup" -at "long";
	addAttr -ci true -sn "i3D_jointBreakForce" -ln "i3D_jointBreakForce" -at "float";
	addAttr -ci true -sn "i3D_lod1" -ln "i3D_lod1" -at "float";
	addAttr -ci true -sn "i3D_lod2" -ln "i3D_lod2" -at "float";
	addAttr -ci true -sn "i3D_oc" -ln "i3D_oc" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_kinematic" -ln "i3D_kinematic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_trigger" -ln "i3D_trigger" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_static" -ln "i3D_static" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lightMask" -ln "i3D_lightMask" -dt "string";
	addAttr -ci true -sn "i3D_linearDamping" -ln "i3D_linearDamping" -at "float";
	addAttr -ci true -sn "i3D_lod3" -ln "i3D_lod3" -at "float";
	addAttr -ci true -sn "i3D_drivePos" -ln "i3D_drivePos" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lod" -ln "i3D_lod" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_solverIterationCount" -ln "i3D_solverIterationCount" -at "long";
	addAttr -ci true -sn "i3D_nonRenderable" -ln "i3D_nonRenderable" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_boundingVolume" -ln "i3D_boundingVolume" -dt "string";
	addAttr -ci true -sn "i3D_collisionMask" -ln "i3D_collisionMask" -at "long";
	addAttr -ci true -sn "i3D_zAxisDrive" -ln "i3D_zAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_cpuMesh" -ln "i3D_cpuMesh" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_staticFriction" -ln "i3D_staticFriction" -at "float";
	addAttr -ci true -sn "i3D_decalLayer" -ln "i3D_decalLayer" -at "long";
	addAttr -ci true -sn "i3D_splitMaxV" -ln "i3D_splitMaxV" -at "float";
	addAttr -ci true -sn "i3D_splitMaxU" -ln "i3D_splitMaxU" -at "float";
	addAttr -ci true -sn "i3D_compoundChild" -ln "i3D_compoundChild" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 2.9802322387695313e-08 0.097082175314426422 0.046995706044695065 ;
	setAttr ".i3D_xmlIdentifier" -type "string" "top_hook";
	setAttr ".i3D_objectMask" 255;
	setAttr ".i3D_dynamicFriction" 0.5;
	setAttr ".i3D_density" 1;
	setAttr ".i3D_driveForceLimit" 100000;
	setAttr ".i3D_angularDamping" 0.0099999997764825821;
	setAttr ".i3D_splitUvWorldScale" 1;
	setAttr ".i3D_driveSpring" 1;
	setAttr ".i3D_projDistance" 0.0099999997764825821;
	setAttr ".i3D_driveDamping" 0.0099999997764825821;
	setAttr ".i3D_clipDistance" 300;
	setAttr ".i3D_projAngle" 0.0099999997764825821;
	setAttr ".i3D_mergeGroup" 1;
	setAttr ".i3D_lightMask" -type "string" "FFFF";
	setAttr ".i3D_solverIterationCount" 4;
	setAttr ".i3D_boundingVolume" -type "string" "";
	setAttr ".i3D_collisionMask" 255;
	setAttr ".i3D_staticFriction" 0.5;
	setAttr ".i3D_splitMaxV" 1;
	setAttr ".i3D_splitMaxU" 1;
createNode mesh -n "top_hookShape" -p "top_hook";
	rename -uid "421618C1-4E0B-8027-9931-3680D858AB7C";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:145]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 344 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 4.67989588 0.96016216 4.68394327
		 0.96016216 4.68394327 0.96628237 4.67989588 0.96628237 4.67989683 0.93001437 4.68394375
		 0.93001425 4.68394375 0.93543983 4.67989731 0.93543983 4.67989731 0.92593646 4.68394375
		 0.92593646 4.67989731 0.91968977 4.68394375 0.91968977 4.68394375 0.94265604 4.67989731
		 0.94265604 4.68394375 0.90841389 4.67989731 0.90841413 4.67989731 0.89768696 4.68394375
		 0.89768696 4.67989588 0.89112663 4.68394327 0.89112663 4.62438726 0.94496894 4.62010002
		 0.94496894 4.62010002 0.9401648 4.62438726 0.9401648 4.62432051 0.97070789 4.62013054
		 0.97070789 4.62013054 0.96044207 4.62432051 0.96044207 4.6202817 0.91096032 4.62456751
		 0.91098237 4.62438726 0.93084311 4.62009954 0.93084311 4.73563194 0.89780664 4.7385664
		 0.90745044 4.73280048 0.91034257 4.72597694 0.91271377 4.72433138 0.90550029 4.62013054
		 0.95585632 4.62432003 0.95585632 4.70715618 0.96610129 4.72075319 0.96489143 4.71895647
		 0.97723079 4.70671082 0.97897947 4.70617104 0.97370112 4.70695114 0.95357513 4.72087526
		 0.95160413 4.70302391 0.94100487 4.71678734 0.93894434 4.69995213 0.93438816 4.71062851
		 0.93295562 4.71431541 0.93468094 4.69761276 0.93023908 4.71310472 0.92757726 4.7130208
		 0.93019021 4.69471025 0.92460608 4.71187449 0.921839 4.65128231 0.99689007 4.63881969
		 0.99689007 4.63881874 0.98809242 4.65128136 0.98809242 4.62037563 0.89595795 4.61084652
		 0.89580727 4.61092091 0.89192653 4.62469816 0.89214277 4.65128183 0.91105652 4.63881922
		 0.91105652 4.63881874 0.89011228 4.65128183 0.89011228 4.65128183 0.9297694 4.63881922
		 0.9297694 4.65128183 0.94971085 4.63881922 0.94971085 4.65128183 0.96967697 4.63881922
		 0.96967697 4.65128136 0.97707176 4.63881874 0.97707176 4.63881874 0.98417234 4.65128136
		 0.98417234 4.62436152 0.98538136 4.62436247 0.99335146 4.6192317 0.99335122 4.61923122
		 0.98538125 4.68394327 0.96898937 4.68394566 0.97034168 4.67989683 0.97034168 4.67989588
		 0.96898937 4.67989588 0.96763563 4.68394327 0.96763563 4.67989731 0.9514091 4.68394375
		 0.9514091 4.6968646 0.89679122 4.70068979 0.89075756 4.70196581 0.8898232 4.70353508
		 0.89000046 4.70457029 0.89119625 4.71516323 0.92114663 4.69254589 0.9164598 4.69297075
		 0.9062438 4.65128136 0.98062086 4.63881874 0.98062086 4.71331596 0.93253756 4.62013054
		 0.95344722 4.62432051 0.95344722 4.62009907 0.94732666 4.62438679 0.94732666 4.69389343
		 0.9742744 4.69283819 0.98134971 4.68894482 0.97629428 4.6889596 0.97262049 4.69020319
		 0.97166204 4.69173336 0.97187543 4.72189236 0.91409254 4.72057199 0.91143537 4.72392559
		 0.91520452 4.72259188 0.91550076 4.71439505 0.99042094 4.70420408 0.98874712 4.70082045
		 0.97634208 4.67989588 0.88852167 4.68394327 0.88852167 4.62013054 0.9759438 4.62432051
		 0.9759438 4.70450544 0.97624516 4.73826027 0.91274309 4.73648548 0.91027641 4.68394566
		 0.99754333 4.67989683 0.99754333 4.74969435 0.95612669 4.75025129 0.9588294 4.731637
		 0.95651865 4.75347471 0.90835857 4.75568151 0.92092204 4.73958015 0.92028868 4.66431761
		 0.99700832 4.66431475 0.98814392 4.67191124 0.98814249 4.67190933 0.99700689 4.65946484
		 0.98408294 4.67191029 0.98408294 4.65946388 0.98814392 4.65946531 0.96990895 4.67191029
		 0.96990895 4.67191076 0.9770838 4.65946579 0.9770838 4.65946579 0.95040941 4.67190933
		 0.95040941 4.65946579 0.93053639 4.67191076 0.93053639 4.65946579 0.91178846 4.67191076
		 0.91178846 4.65946579 0.89027119 4.67190886 0.89027119 4.65946484 0.98058319 4.67191029
		 0.98058319 4.74956083 0.96481848 4.72898912 0.96227217 4.74968052 0.95374203 4.73378706
		 0.95227242 4.75290871 0.94724751 4.75057793 0.95153785 4.73656368 0.94553232 4.75632668
		 0.9344275 4.7399292 0.93280578 4.74821472 0.89469767 4.74030924 0.99519634 4.73932981
		 0.99643421 4.73776627 0.99668264 4.73645353 0.99580574 4.73236561 0.98995018 4.72806025
		 0.9806838 4.72718763 0.97049856 4.65946388 0.99700832 4.67989588 0.96016216 4.67989588
		 0.96628237 4.68394327 0.96628237 4.68394327 0.96016216 4.67989683 0.93001437 4.67989731
		 0.93543983 4.68394375 0.93543983 4.68394375 0.93001425 4.68394375 0.92593646 4.67989731
		 0.92593646 4.68394375 0.91968977 4.67989731 0.91968977 4.67989731 0.94265604 4.68394375
		 0.94265604 4.68394375 0.90841389 4.68394375 0.89768696 4.67989731 0.89768696 4.67989731
		 0.90841413 4.68394327 0.89112663 4.67989588 0.89112663 4.62438726 0.94496894 4.62438726
		 0.9401648 4.62010002 0.9401648 4.62010002 0.94496894 4.62432051 0.97070789 4.62432051
		 0.96044207 4.62013054 0.96044207 4.62013054 0.97070789 4.6202817 0.91096032 4.62009954
		 0.93084311 4.62438726 0.93084311 4.62456751 0.91098237 4.73563194 0.89780664 4.72433138
		 0.90550029 4.72597694 0.91271377 4.73280048 0.91034257 4.7385664 0.90745044 4.62432003
		 0.95585632 4.62013054 0.95585632 4.70715618 0.96610129 4.70617104 0.97370112 4.70671082
		 0.97897947 4.71895647 0.97723079 4.72075319 0.96489143 4.70695114 0.95357513 4.72087526
		 0.95160413 4.70302391 0.94100487 4.71678734 0.93894434 4.69995213 0.93438816 4.71431541
		 0.93468094 4.71062851 0.93295562 4.69761276 0.93023908 4.7130208 0.93019021 4.71310472
		 0.92757726 4.71187449 0.921839 4.69471025 0.92460608 4.65128231 0.99689007 4.65128136
		 0.98809242 4.63881874 0.98809242 4.63881969 0.99689007 4.62037563 0.89595795 4.62469816
		 0.89214277 4.61092091 0.89192653 4.61084652 0.89580727 4.65128183 0.91105652 4.65128183
		 0.89011228 4.63881874 0.89011228 4.63881922 0.91105652 4.65128183 0.9297694 4.63881922
		 0.9297694 4.65128183 0.94971085 4.63881922 0.94971085 4.65128183 0.96967697 4.63881922
		 0.96967697 4.65128136 0.97707176 4.63881874 0.97707176 4.65128136 0.98417234 4.63881874
		 0.98417234;
	setAttr ".uvst[0].uvsp[250:343]" 4.62436152 0.98538136 4.61923122 0.98538125
		 4.6192317 0.99335122 4.62436247 0.99335146 4.68394327 0.96898937 4.67989588 0.96898937
		 4.67989683 0.97034168 4.68394566 0.97034168 4.68394327 0.96763563 4.67989588 0.96763563
		 4.68394375 0.9514091 4.67989731 0.9514091 4.6968646 0.89679122 4.69297075 0.9062438
		 4.69254589 0.9164598 4.71516323 0.92114663 4.70457029 0.89119625 4.70353508 0.89000046
		 4.70196581 0.8898232 4.70068979 0.89075756 4.63881874 0.98062086 4.65128136 0.98062086
		 4.71331596 0.93253756 4.62432051 0.95344722 4.62013054 0.95344722 4.62009907 0.94732666
		 4.62438679 0.94732666 4.69389343 0.9742744 4.69173336 0.97187543 4.69020319 0.97166204
		 4.6889596 0.97262049 4.68894482 0.97629428 4.69283819 0.98134971 4.72189236 0.91409254
		 4.72259188 0.91550076 4.72392559 0.91520452 4.72057199 0.91143537 4.70420408 0.98874712
		 4.71439505 0.99042094 4.70082045 0.97634208 4.68394327 0.88852167 4.67989588 0.88852167
		 4.62013054 0.9759438 4.62432051 0.9759438 4.70450544 0.97624516 4.73826027 0.91274309
		 4.73648548 0.91027641 4.68394566 0.99754333 4.67989683 0.99754333 4.74969435 0.95612669
		 4.731637 0.95651865 4.75025129 0.9588294 4.75347471 0.90835857 4.73958015 0.92028868
		 4.75568151 0.92092204 4.66431761 0.99700832 4.67190933 0.99700689 4.67191124 0.98814249
		 4.66431475 0.98814392 4.65946484 0.98408294 4.65946388 0.98814392 4.67191029 0.98408294
		 4.65946531 0.96990895 4.65946579 0.9770838 4.67191076 0.9770838 4.67191029 0.96990895
		 4.65946579 0.95040941 4.67190933 0.95040941 4.65946579 0.93053639 4.67191076 0.93053639
		 4.65946579 0.91178846 4.67191076 0.91178846 4.67190886 0.89027119 4.65946579 0.89027119
		 4.67191029 0.98058319 4.65946484 0.98058319 4.72898912 0.96227217 4.74956083 0.96481848
		 4.74968052 0.95374203 4.73378706 0.95227242 4.75290871 0.94724751 4.73656368 0.94553232
		 4.75057793 0.95153785 4.75632668 0.9344275 4.7399292 0.93280578 4.74821472 0.89469767
		 4.72718763 0.97049856 4.72806025 0.9806838 4.73236561 0.98995018 4.73645353 0.99580574
		 4.73776627 0.99668264 4.73932981 0.99643421 4.74030924 0.99519634 4.65946388 0.99700832;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 162 ".pt[0:161]" -type "float3"  -2.9802322e-08 -0.10361241 
		-0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 
		-2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 
		-0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 
		-0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 
		-2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 
		-0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 
		-0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 
		-2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 
		-0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 
		-0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 
		-2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 
		-0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 
		-0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 
		-2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 
		-0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 
		-0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 
		-2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 
		-0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 
		-0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 
		-2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 
		-0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 
		-0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 
		-2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 
		-0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 
		-0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 
		-2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 
		-0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 
		-0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 
		-2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 
		-0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 
		-0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 
		-2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 
		-0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 
		-0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 
		-2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 
		-0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 
		-0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 
		-2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 
		-0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 
		-0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 
		-2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 
		-0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 
		-0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 
		-2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 
		-0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 
		-0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 
		-2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 
		-0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 
		-0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 
		-2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 
		-0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 
		-0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 
		-2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 
		-0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 
		-0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 
		-2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 
		-0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 
		-0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 
		-2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 
		-0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 
		-0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 
		-2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 
		-0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 
		-0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 
		-2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 
		-0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 
		-0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 
		-2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 
		-0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 -0.11317394 -2.9802322e-08 -0.10361241 
		-0.11317394;
	setAttr -s 162 ".vt[0:161]"  -0.0072567766 0.099549606 0.13095281 -0.010547489 0.099549025 0.13095038
		 -0.010551959 0.10188823 0.13639757 -0.0072611887 0.10188881 0.13640001 -0.010558815 0.10480569 0.14499684
		 -0.0072681014 0.10480625 0.14499927 -0.007254215 0.12248354 0.12204841 -0.010541586 0.096712172 0.12359099
		 -0.007250817 0.096712798 0.12359342 -0.01060173 0.099882059 0.20423841 -0.0073110168 0.099882625 0.2042408
		 -0.01057091 0.10798365 0.16107938 -0.0072801951 0.10798422 0.16108181 -0.0072917645 0.10656367 0.1766099
		 -0.01058248 0.10656308 0.17660743 -0.0072948653 0.089058183 0.18495117 -0.010585576 0.089057647 0.18494877
		 -0.0073009436 0.086443417 0.19378722 -0.010591658 0.086442843 0.19378479 -0.0072949822 0.083025306 0.18656826
		 -0.010585696 0.08302474 0.18656585 -0.0073157246 0.11227004 0.20767498 -0.0073054135 0.11967847 0.19196166
		 -0.0072949822 0.12355341 0.17693123 -0.0072828191 0.12548199 0.16050351 -0.0072706034 0.12211409 0.14429007
		 -0.0072592804 0.1190778 0.12973027 -0.0072537968 0.11832142 0.12246569 2.9802322e-08 0.11907907 0.12973563
		 2.9802322e-08 0.11832269 0.12247102 2.9802322e-08 0.12248482 0.12205376 2.9802322e-08 0.12286948 0.12955332
		 2.9802322e-08 0.12525624 0.14416033 2.9802322e-08 0.12849374 0.16036263 2.9802322e-08 0.12662564 0.17709768
		 2.9802322e-08 0.12289362 0.19253862 2.9802322e-08 0.11527729 0.20910197 2.9802322e-08 0.11227129 0.20768033
		 2.9802322e-08 0.11967972 0.19196701 2.9802322e-08 0.12355475 0.17693657 2.9802322e-08 0.12548324 0.16050886
		 2.9802322e-08 0.1221153 0.14429545 -0.0072225649 0.10863773 0.082505666 -0.0072221463 0.11034065 0.081518963
		 -0.007222801 0.11226133 0.081949092 -0.0072241714 0.11338072 0.083567895 -0.010513276 0.10863715 0.082503237
		 -0.010514947 0.11338011 0.083565466 -0.010513516 0.11226077 0.081946656 -0.01051286 0.11034007 0.081516527
		 -0.0072267358 0.10309418 0.089460835 -0.0072428877 0.095124282 0.11322429 -0.0072339494 0.097012632 0.10063938
		 -0.010517448 0.1030936 0.089458399 -0.010524662 0.097012028 0.10063694 -0.010533661 0.095123708 0.11322186
		 2.9802322e-08 0.12196611 0.13287283 2.9802322e-08 0.12175952 0.13583124 2.9802322e-08 0.12269895 0.13864404
		 -0.0072638099 0.11867604 0.13589737 -0.0072660167 0.11962749 0.13868397 -0.0072633331 0.11529456 0.13605498
		 -0.0072616036 0.11862633 0.13295323 2.9802322e-08 0.11962876 0.13868934 2.9802322e-08 0.11867735 0.1359027
		 2.9802322e-08 0.11862759 0.13295856 -0.0072920034 0.083304465 0.18246073 -0.007291168 0.084707908 0.18100967
		 -0.0072920038 0.086705081 0.18169342 -0.010582716 0.083303899 0.18245831 -0.010582775 0.086704493 0.18169102
		 -0.010581881 0.08470732 0.18100724 -0.0073030903 0.10429159 0.19248798 -0.0072988584 0.097352616 0.18843673
		 -0.0072999918 0.10192536 0.18880969 -0.0072982018 0.10432746 0.18588385 -0.010593862 0.10429083 0.19248398
		 -0.010588974 0.10432684 0.18588141 -0.010590704 0.10192475 0.18880726 -0.010589629 0.097352013 0.1884343
		 -0.010519031 0.12286802 0.12954712 -0.010521352 0.12196462 0.13286665 -0.010513425 0.12248333 0.12204757
		 -0.010530235 0.12525479 0.14415413 -0.010542447 0.12849227 0.16035643 -0.01055485 0.12662412 0.17709149
		 -0.010565578 0.12289216 0.19253242 -0.010576487 0.11527582 0.20909575 -0.010525705 0.1226975 0.13863787
		 -0.0105235 0.12175809 0.13582507 -0.0072542499 0.12286854 0.12954916 0.0072568362 0.099549606 0.13095281
		 0.010547549 0.099549025 0.13095038 0.010552019 0.10188823 0.13639757 0.0072612483 0.10188881 0.13640001
		 0.010558874 0.10480569 0.14499684 0.007268161 0.10480625 0.14499927 0.0072542746 0.12248354 0.12204841
		 0.010541646 0.096712172 0.12359099 0.0072508766 0.096712798 0.12359342 0.01060179 0.099882059 0.20423841
		 0.0073110764 0.099882625 0.2042408 0.010570969 0.10798365 0.16107938 0.0072802547 0.10798422 0.16108181
		 0.0072918241 0.10656367 0.1766099 0.010582539 0.10656308 0.17660743 0.0072949249 0.089058183 0.18495117
		 0.010585636 0.089057647 0.18494877 0.0073010032 0.086443417 0.19378722 0.010591717 0.086442843 0.19378479
		 0.0072950418 0.083025306 0.18656826 0.010585756 0.08302474 0.18656585 0.0073157842 0.11227004 0.20767498
		 0.0073054731 0.11967847 0.19196166 0.0072950418 0.12355341 0.17693123 0.0072828787 0.12548199 0.16050351
		 0.007270663 0.12211409 0.14429007 0.00725934 0.1190778 0.12973027 0.0072538564 0.11832142 0.12246569
		 0.0072226245 0.10863773 0.082505666 0.0072222059 0.11034065 0.081518963 0.0072228606 0.11226133 0.081949092
		 0.007224231 0.11338072 0.083567895 0.010513335 0.10863715 0.082503237 0.010515006 0.11338011 0.083565466
		 0.010513576 0.11226077 0.081946656 0.010512919 0.11034007 0.081516527 0.0072267954 0.10309418 0.089460835
		 0.0072429474 0.095124282 0.11322429 0.007234009 0.097012632 0.10063938 0.010517508 0.1030936 0.089458399
		 0.010524722 0.097012028 0.10063694 0.01053372 0.095123708 0.11322186 0.0072638695 0.11867604 0.13589737
		 0.0072660763 0.11962749 0.13868397 0.0072633927 0.11529456 0.13605498 0.0072616632 0.11862633 0.13295323
		 0.007292063 0.083304465 0.18246073 0.0072912276 0.084707908 0.18100967 0.0072920634 0.086705081 0.18169342
		 0.010582776 0.083303899 0.18245831 0.010582834 0.086704493 0.18169102 0.01058194 0.08470732 0.18100724
		 0.0073031499 0.10429159 0.19248798 0.007298918 0.097352616 0.18843673 0.0073000514 0.10192536 0.18880969
		 0.0072982614 0.10432746 0.18588385 0.010593922 0.10429083 0.19248398 0.010589033 0.10432684 0.18588141
		 0.010590764 0.10192475 0.18880726 0.010589689 0.097352013 0.1884343 0.010519091 0.12286802 0.12954712
		 0.010521412 0.12196462 0.13286665 0.010513484 0.12248333 0.12204757 0.010530295 0.12525479 0.14415413
		 0.010542506 0.12849227 0.16035643 0.01055491 0.12662412 0.17709149 0.010565638 0.12289216 0.19253242
		 0.010576546 0.11527582 0.20909575 0.010525765 0.1226975 0.13863787 0.01052356 0.12175809 0.13582507
		 0.0072543095 0.12286854 0.12954916;
	setAttr -s 306 ".ed";
	setAttr ".ed[0:165]"  0 1 1 0 8 0 1 7 0 1 2 0 0 3 0 3 2 1 2 4 0 3 5 0 5 4 1
		 7 55 0 8 51 0 7 8 1 8 27 1 4 11 0 5 12 0 10 9 1 11 14 0 12 13 0 11 12 1 12 24 1 13 75 0
		 14 77 0 13 14 1 15 16 1 10 17 0 15 17 1 9 18 0 17 18 1 16 18 1 15 68 0 16 70 0 17 19 0
		 18 20 0 19 20 1 21 10 0 22 72 1 23 13 1 25 5 1 26 0 0 21 22 0 22 23 0 23 24 0 24 25 0
		 25 60 0 26 27 0 28 26 1 29 27 0 30 6 0 36 87 0 37 21 0 38 22 1 39 23 1 40 24 1 41 25 1
		 28 29 0 30 31 0 31 56 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 63 0 30 29 0 6 27 0 45 6 0 45 47 1 46 42 1 44 48 1 44 43 0 43 49 1 49 48 0
		 43 42 0 46 49 0 50 42 0 53 46 0 50 53 1 55 51 1 50 52 0 52 54 1 54 53 0 52 51 0 55 54 0
		 58 32 0 61 3 0 62 26 0 61 60 0 62 61 0 65 28 0 60 63 1 65 62 1 57 56 0 58 57 0 60 59 0
		 59 64 1 64 63 0 59 62 0 65 64 0 59 61 0 6 82 1 66 19 0 69 20 0 68 70 1 69 66 1 68 67 0
		 67 71 1 71 70 0 67 66 0 69 71 0 72 10 0 73 15 0 72 75 1 72 73 1 79 16 0 76 9 1 76 77 1
		 76 79 1 75 77 1 79 73 1 75 74 0 74 78 1 78 77 0 74 73 0 79 78 0 74 72 1 78 76 1 87 21 1
		 80 82 0 82 7 0 81 80 0 89 81 0 83 88 0 88 4 1 84 83 0 85 84 0 86 85 0 87 86 0 9 87 0
		 88 89 0 1 80 1 4 83 1 14 85 1 84 11 1 86 76 1 80 90 1 81 56 1 83 32 1 58 88 1 84 33 1
		 85 34 1 86 35 1 89 57 1 89 2 0 1 81 1 47 82 0 45 44 0 48 47 0 90 31 1 6 90 1 91 92 1
		 91 99 0 92 98 0;
	setAttr ".ed[166:305]" 92 93 0 91 94 0 94 93 1 93 95 0 94 96 0 96 95 1 98 132 0
		 99 128 0 98 99 1 99 118 1 95 102 0 96 103 0 101 100 1 102 105 0 103 104 0 102 103 1
		 103 115 1 104 146 0 105 148 0 104 105 1 106 107 1 101 108 0 106 108 1 100 109 0 108 109 1
		 107 109 1 106 139 0 107 141 0 108 110 0 109 111 0 110 111 1 112 101 0 113 143 1 114 104 1
		 116 96 1 117 91 0 112 113 0 113 114 0 114 115 0 115 116 0 116 134 0 117 118 0 28 117 1
		 29 118 0 30 97 0 36 158 0 37 112 0 38 113 1 39 114 1 40 115 1 41 116 1 97 118 0 122 97 0
		 122 124 1 123 119 1 121 125 1 121 120 0 120 126 1 126 125 0 120 119 0 123 126 0 127 119 0
		 130 123 0 127 130 1 132 128 1 127 129 0 129 131 1 131 130 0 129 128 0 132 131 0 135 94 0
		 136 117 0 135 134 0 136 135 0 134 63 1 65 136 1 134 133 0 133 64 1 133 136 0 133 135 0
		 97 153 1 137 110 0 140 111 0 139 141 1 140 137 1 139 138 0 138 142 1 142 141 0 138 137 0
		 140 142 0 143 101 0 144 106 0 143 146 1 143 144 1 150 107 0 147 100 1 147 148 1 147 150 1
		 146 148 1 150 144 1 146 145 0 145 149 1 149 148 0 145 144 0 150 149 0 145 143 1 149 147 1
		 158 112 1 151 153 0 153 98 0 152 151 0 160 152 0 154 159 0 159 95 1 155 154 0 156 155 0
		 157 156 0 158 157 0 100 158 0 159 160 0 92 151 1 95 154 1 105 156 1 155 102 1 157 147 1
		 151 161 1 152 56 1 154 32 1 58 159 1 155 33 1 156 34 1 157 35 1 160 57 1 160 93 0
		 92 152 1 124 153 0 122 121 0 125 124 0 161 31 1 97 161 1;
	setAttr -s 146 -ch 612 ".fc[0:145]" -type "polyFaces" 
		f 4 80 79 71 -79
		mu 0 4 0 1 2 3
		f 4 0 2 11 -2
		mu 0 4 4 5 6 7
		f 4 -1 4 5 -4
		mu 0 4 5 4 8 9
		f 4 -6 7 8 -7
		mu 0 4 9 8 10 11
		f 4 -12 9 81 -11
		mu 0 4 7 6 12 13
		f 4 18 17 22 -17
		mu 0 4 14 15 16 17
		f 4 -9 14 -19 -14
		mu 0 4 11 10 15 14
		f 4 -23 20 121 -22
		mu 0 4 17 16 18 19
		f 4 107 104 33 -106
		mu 0 4 20 21 22 23
		f 4 122 114 23 -118
		mu 0 4 24 25 26 27
		f 4 15 26 -28 -25
		mu 0 4 28 29 30 31
		f 5 -119 120 117 28 -27
		mu 0 5 32 33 34 35 36
		f 4 -24 29 106 -31
		mu 0 4 27 26 37 38
		f 4 27 32 -34 -32
		mu 0 4 31 30 23 22
		f 5 -37 -41 35 115 -21
		mu 0 5 39 40 41 42 43
		f 4 19 -42 36 -18
		mu 0 4 44 45 40 39
		f 4 -38 -43 -20 -15
		mu 0 4 46 47 45 44
		f 5 -89 90 -44 37 -8
		mu 0 5 48 49 50 47 46
		f 5 -39 -90 91 88 -5
		mu 0 5 51 52 53 49 48
		f 4 1 12 -45 38
		mu 0 4 51 54 55 52
		f 4 -47 -55 45 44
		mu 0 4 56 57 58 59
		f 4 -50 -62 48 130
		mu 0 4 60 61 62 63
		f 4 -51 -63 49 39
		mu 0 4 64 65 66 67
		f 4 -52 -64 50 40
		mu 0 4 68 69 65 64
		f 4 -53 -65 51 41
		mu 0 4 70 71 69 68
		f 4 -54 -66 52 42
		mu 0 4 72 73 71 70
		f 4 93 -67 53 43
		mu 0 4 74 75 73 72
		f 4 -46 -93 94 89
		mu 0 4 59 58 76 77
		f 4 -48 67 46 -69
		mu 0 4 78 79 80 81
		f 4 -16 -35 -131 -142
		mu 0 4 29 28 60 63
		f 4 160 -71 159 72
		mu 0 4 82 83 84 85
		f 4 73 74 75 -73
		mu 0 4 85 86 87 82
		f 4 76 -72 77 -75
		mu 0 4 86 3 2 87
		f 4 82 83 84 -81
		mu 0 4 0 88 89 1
		f 4 85 -82 86 -84
		mu 0 4 88 13 12 89
		f 10 78 -77 -74 -160 69 68 -13 10 -86 -83
		mu 0 10 90 91 92 93 94 95 55 54 96 97
		f 4 97 98 99 -94
		mu 0 4 74 98 99 75
		f 4 100 -95 101 -99
		mu 0 4 98 77 76 99
		f 3 -92 -101 102
		mu 0 3 49 53 100
		f 3 -103 -98 -91
		mu 0 3 49 100 50
		f 4 108 109 110 -107
		mu 0 4 37 101 102 38
		f 4 111 -108 112 -110
		mu 0 4 103 21 20 104
		f 6 25 31 -105 -112 -109 -30
		mu 0 6 105 106 107 108 109 110
		f 6 105 -33 -29 30 -111 -113
		mu 0 6 111 112 36 35 113 114
		f 4 -36 -40 34 -114
		mu 0 4 42 41 115 116
		f 5 -117 113 24 -26 -115
		mu 0 5 117 42 116 106 105
		f 4 123 124 125 -122
		mu 0 4 18 118 119 19
		f 4 126 -123 127 -125
		mu 0 4 120 25 24 121
		f 3 -127 128 116
		mu 0 3 117 122 42
		f 3 -129 -124 -116
		mu 0 3 42 122 43
		f 3 -126 129 119
		mu 0 3 123 124 33
		f 3 -130 -128 -121
		mu 0 3 33 124 34
		f 4 -104 -70 70 158
		mu 0 4 125 126 84 83
		f 3 133 -144 157
		mu 0 3 127 128 129
		f 5 139 -146 21 -120 -148
		mu 0 5 130 131 132 123 33
		f 4 162 161 -56 47
		mu 0 4 133 134 135 136
		f 5 149 -57 -162 -149 -134
		mu 0 5 137 138 135 134 139
		f 4 150 -88 151 -136
		mu 0 4 140 141 142 143
		f 4 152 -58 -151 -138
		mu 0 4 144 145 141 140
		f 4 153 -59 -153 -139
		mu 0 4 146 147 145 144
		f 4 154 -60 -154 -140
		mu 0 4 148 149 147 146
		f 4 -141 -49 -61 -155
		mu 0 4 148 150 151 149
		f 4 -135 155 95 -150
		mu 0 4 137 152 153 138
		f 4 -143 -152 96 -156
		mu 0 4 152 143 142 153
		f 4 131 132 -3 143
		mu 0 4 128 154 155 129
		f 4 134 -158 3 -157
		mu 0 4 156 127 129 157
		f 3 135 136 144
		mu 0 3 158 159 160
		f 4 137 -145 13 -147
		mu 0 4 161 158 160 162
		f 4 138 146 16 145
		mu 0 4 131 161 162 132
		f 4 141 140 147 118
		mu 0 4 32 163 130 33
		f 4 -137 142 156 6
		mu 0 4 160 159 156 157
		f 9 -159 -161 -76 -78 -80 -85 -87 -10 -133
		mu 0 9 154 164 165 166 167 168 169 170 155
		f 4 103 -132 148 -163
		mu 0 4 133 171 139 134
		f 4 227 -221 -229 -230
		mu 0 4 172 173 174 175
		f 4 164 -175 -166 -164
		mu 0 4 176 177 178 179
		f 4 166 -169 -168 163
		mu 0 4 179 180 181 176
		f 4 169 -172 -171 168
		mu 0 4 180 182 183 181
		f 4 173 -231 -173 174
		mu 0 4 177 184 185 178
		f 4 179 -186 -181 -182
		mu 0 4 186 187 188 189
		f 4 176 181 -178 171
		mu 0 4 182 186 189 183
		f 4 184 -265 -184 185
		mu 0 4 187 190 191 188
		f 4 248 -197 -248 -251
		mu 0 4 192 193 194 195
		f 4 260 -187 -258 -266
		mu 0 4 196 197 198 199
		f 4 187 190 -190 -179
		mu 0 4 200 201 202 203
		f 5 189 -192 -261 -264 261
		mu 0 5 204 205 206 207 208
		f 4 193 -250 -193 186
		mu 0 4 197 209 210 198
		f 4 194 196 -196 -191
		mu 0 4 201 194 193 202
		f 5 183 -259 -199 203 199
		mu 0 5 211 212 213 214 215
		f 4 180 -200 204 -183
		mu 0 4 216 211 215 217
		f 4 177 182 205 200
		mu 0 4 218 216 217 219
		f 5 170 -201 206 -239 236
		mu 0 5 220 218 219 221 222
		f 5 167 -237 -240 237 201
		mu 0 5 223 220 222 224 225
		f 4 -202 207 -176 -165
		mu 0 4 223 225 226 227
		f 4 -208 -209 54 209
		mu 0 4 228 229 230 231
		f 4 -274 -212 61 212
		mu 0 4 232 233 234 235
		f 4 -203 -213 62 213
		mu 0 4 236 237 238 239
		f 4 -204 -214 63 214
		mu 0 4 240 236 239 241
		f 4 -205 -215 64 215
		mu 0 4 242 240 241 243
		f 4 -206 -216 65 216
		mu 0 4 244 242 243 245
		f 4 -207 -217 66 -241
		mu 0 4 246 244 245 247
		f 4 -238 -242 92 208
		mu 0 4 229 248 249 230
		f 4 217 -210 -68 210
		mu 0 4 250 251 252 253
		f 4 284 273 197 178
		mu 0 4 203 233 232 200
		f 4 -222 -303 219 -304
		mu 0 4 254 255 256 257
		f 4 221 -225 -224 -223
		mu 0 4 255 254 258 259
		f 4 223 -227 220 -226
		mu 0 4 259 258 174 173
		f 4 229 -234 -233 -232
		mu 0 4 172 175 260 261
		f 4 232 -236 230 -235
		mu 0 4 261 260 185 184
		f 10 231 234 -174 175 -218 -219 302 222 225 -228
		mu 0 10 262 263 264 227 226 265 266 267 268 269
		f 4 240 -100 -244 -243
		mu 0 4 246 247 270 271
		f 4 243 -102 241 -245
		mu 0 4 271 270 249 248
		f 3 -246 244 239
		mu 0 3 222 272 224
		f 3 238 242 245
		mu 0 3 222 221 272
		f 4 249 -254 -253 -252
		mu 0 4 210 209 273 274
		f 4 252 -256 250 -255
		mu 0 4 275 276 192 195
		f 6 192 251 254 247 -195 -189
		mu 0 6 277 278 279 280 281 282
		f 6 255 253 -194 191 195 -249
		mu 0 6 283 284 285 206 205 286
		f 4 256 -198 202 198
		mu 0 4 213 287 288 214
		f 5 257 188 -188 -257 259
		mu 0 5 289 277 282 287 213
		f 4 264 -269 -268 -267
		mu 0 4 191 190 290 291
		f 4 267 -271 265 -270
		mu 0 4 292 293 196 199
		f 3 -260 -272 269
		mu 0 3 289 213 294
		f 3 258 266 271
		mu 0 3 213 212 294
		f 3 -263 -273 268
		mu 0 3 295 208 296
		f 3 263 270 272
		mu 0 3 208 207 296
		f 4 -302 -220 218 246
		mu 0 4 297 257 256 298
		f 3 -301 286 -277
		mu 0 3 299 300 301
		f 5 290 262 -185 288 -283
		mu 0 5 302 208 295 303 304
		f 4 -211 55 -305 -306
		mu 0 4 305 306 307 308
		f 5 276 291 304 56 -293
		mu 0 5 309 310 308 307 311
		f 4 278 -295 87 -294
		mu 0 4 312 313 314 315
		f 4 280 293 57 -296
		mu 0 4 316 312 315 317
		f 4 281 295 58 -297
		mu 0 4 318 316 317 319
		f 4 282 296 59 -298
		mu 0 4 320 318 319 321
		f 4 297 60 211 283
		mu 0 4 320 321 322 323
		f 4 292 -96 -299 277
		mu 0 4 309 311 324 325
		f 4 298 -97 294 285
		mu 0 4 325 324 314 313
		f 4 -287 165 -276 -275
		mu 0 4 301 300 326 327
		f 4 299 -167 300 -278
		mu 0 4 328 329 300 299
		f 3 -288 -280 -279
		mu 0 3 330 331 332
		f 4 289 -177 287 -281
		mu 0 4 333 334 331 330
		f 4 -289 -180 -290 -282
		mu 0 4 304 303 334 333
		f 4 -262 -291 -284 -285
		mu 0 4 204 208 302 335
		f 4 -170 -300 -286 279
		mu 0 4 331 329 328 332
		f 9 275 172 235 233 228 226 224 303 301
		mu 0 9 327 326 336 337 338 339 340 341 342
		f 4 305 -292 274 -247
		mu 0 4 305 308 310 343;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "bottom_lever" -p "coupling_extend_start";
	rename -uid "3B84EDB2-4ADF-E52E-9055-669C06D29BD9";
	addAttr -ci true -sn "i3D_xmlIdentifier" -ln "i3D_xmlIdentifier" -dt "string";
	addAttr -ci true -sn "i3D_objectMask" -ln "i3D_objectMask" -at "long";
	addAttr -ci true -sn "i3D_dynamic" -ln "i3D_dynamic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_joint" -ln "i3D_joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_dynamicFriction" -ln "i3D_dynamicFriction" -at "float";
	addAttr -ci true -sn "i3D_ccd" -ln "i3D_ccd" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_density" -ln "i3D_density" -at "float";
	addAttr -ci true -sn "i3D_splitType" -ln "i3D_splitType" -at "long";
	addAttr -ci true -sn "i3D_splitMinU" -ln "i3D_splitMinU" -at "float";
	addAttr -ci true -sn "i3D_splitMinV" -ln "i3D_splitMinV" -at "float";
	addAttr -ci true -sn "i3D_driveForceLimit" -ln "i3D_driveForceLimit" -at "float";
	addAttr -ci true -sn "i3D_angularDamping" -ln "i3D_angularDamping" -at "float";
	addAttr -ci true -sn "i3D_splitUvWorldScale" -ln "i3D_splitUvWorldScale" -at "float";
	addAttr -ci true -sn "i3D_projection" -ln "i3D_projection" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_driveSpring" -ln "i3D_driveSpring" -at "float";
	addAttr -ci true -sn "i3D_breakableJoint" -ln "i3D_breakableJoint" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_projDistance" -ln "i3D_projDistance" -at "float";
	addAttr -ci true -sn "i3D_driveDamping" -ln "i3D_driveDamping" -at "float";
	addAttr -ci true -sn "i3D_xAxisDrive" -ln "i3D_xAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_compound" -ln "i3D_compound" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_clipDistance" -ln "i3D_clipDistance" -at "float";
	addAttr -ci true -sn "i3D_collision" -ln "i3D_collision" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_scaled" -ln "i3D_scaled" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_projAngle" -ln "i3D_projAngle" -at "float";
	addAttr -ci true -sn "i3D_mergeGroupRoot" -ln "i3D_mergeGroupRoot" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_jointBreakTorque" -ln "i3D_jointBreakTorque" -at "float";
	addAttr -ci true -sn "i3D_restitution" -ln "i3D_restitution" -at "float";
	addAttr -ci true -sn "i3D_yAxisDrive" -ln "i3D_yAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_mergeGroup" -ln "i3D_mergeGroup" -at "long";
	addAttr -ci true -sn "i3D_jointBreakForce" -ln "i3D_jointBreakForce" -at "float";
	addAttr -ci true -sn "i3D_lod1" -ln "i3D_lod1" -at "float";
	addAttr -ci true -sn "i3D_lod2" -ln "i3D_lod2" -at "float";
	addAttr -ci true -sn "i3D_oc" -ln "i3D_oc" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_kinematic" -ln "i3D_kinematic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_trigger" -ln "i3D_trigger" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_static" -ln "i3D_static" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lightMask" -ln "i3D_lightMask" -dt "string";
	addAttr -ci true -sn "i3D_linearDamping" -ln "i3D_linearDamping" -at "float";
	addAttr -ci true -sn "i3D_lod3" -ln "i3D_lod3" -at "float";
	addAttr -ci true -sn "i3D_drivePos" -ln "i3D_drivePos" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lod" -ln "i3D_lod" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_solverIterationCount" -ln "i3D_solverIterationCount" -at "long";
	addAttr -ci true -sn "i3D_nonRenderable" -ln "i3D_nonRenderable" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_boundingVolume" -ln "i3D_boundingVolume" -dt "string";
	addAttr -ci true -sn "i3D_collisionMask" -ln "i3D_collisionMask" -at "long";
	addAttr -ci true -sn "i3D_zAxisDrive" -ln "i3D_zAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_cpuMesh" -ln "i3D_cpuMesh" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_staticFriction" -ln "i3D_staticFriction" -at "float";
	addAttr -ci true -sn "i3D_decalLayer" -ln "i3D_decalLayer" -at "long";
	addAttr -ci true -sn "i3D_splitMaxV" -ln "i3D_splitMaxV" -at "float";
	addAttr -ci true -sn "i3D_splitMaxU" -ln "i3D_splitMaxU" -at "float";
	addAttr -ci true -sn "i3D_compoundChild" -ln "i3D_compoundChild" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 2.9802322387695313e-08 -0.13318348675966263 0.04443174154645041 ;
	setAttr ".i3D_xmlIdentifier" -type "string" "bottom_lever";
	setAttr ".i3D_objectMask" 255;
	setAttr ".i3D_dynamicFriction" 0.5;
	setAttr ".i3D_density" 1;
	setAttr ".i3D_driveForceLimit" 100000;
	setAttr ".i3D_angularDamping" 0.0099999997764825821;
	setAttr ".i3D_splitUvWorldScale" 1;
	setAttr ".i3D_driveSpring" 1;
	setAttr ".i3D_projDistance" 0.0099999997764825821;
	setAttr ".i3D_driveDamping" 0.0099999997764825821;
	setAttr ".i3D_clipDistance" 300;
	setAttr ".i3D_projAngle" 0.0099999997764825821;
	setAttr ".i3D_mergeGroup" 1;
	setAttr ".i3D_lightMask" -type "string" "FFFF";
	setAttr ".i3D_solverIterationCount" 4;
	setAttr ".i3D_boundingVolume" -type "string" "";
	setAttr ".i3D_collisionMask" 255;
	setAttr ".i3D_staticFriction" 0.5;
	setAttr ".i3D_splitMaxV" 1;
	setAttr ".i3D_splitMaxU" 1;
createNode mesh -n "bottom_leverShape" -p "bottom_lever";
	rename -uid "9D676E52-47A3-22BC-06A7-4DAD2727847C";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:99]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 262 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 4.4762249 0.67307734 4.47903395
		 0.67307734 4.47903395 0.68994999 4.4762249 0.68994999 4.47622395 0.65133309 4.4790349
		 0.65133142 4.4790349 0.6659236 4.47622395 0.6659236 4.58792877 0.93248093 4.59706116
		 0.93250751 4.59709644 0.94791973 4.5822587 0.94777799 4.58715916 0.72783017 4.59059286
		 0.72783005 4.59035397 0.74883175 4.58733082 0.74893069 4.56207466 0.9032948 4.57536316
		 0.90306973 4.57541323 0.91847992 4.56782866 0.91855943 4.57579279 0.77549016 4.5705328
		 0.77548933 4.57139301 0.75838196 4.5757947 0.75838244 4.57673168 0.74714029 4.57258177
		 0.74714029 4.57258129 0.73744655 4.57673168 0.73744822 4.59002733 0.75698566 4.58412123
		 0.7569325 4.58441925 0.75228119 4.58789682 0.75250912 4.59003448 0.75250649 4.47622442
		 0.70229411 4.4762249 0.69920707 4.47903395 0.69920707 4.47903347 0.70229387 4.4762249
		 0.69612169 4.47903442 0.69612122 4.4762249 0.69303536 4.47903347 0.6930356 4.59059286
		 0.71290183 4.59059191 0.71663463 4.58715916 0.71663487 4.58715916 0.71290207 4.59059286
		 0.72036648 4.58716011 0.72036684 4.59059191 0.72409797 4.58715916 0.72409856 4.59036779
		 0.98346853 4.58695602 0.98281646 4.58405685 0.98090816 4.58210707 0.97803497 4.58140564
		 0.97463465 4.58125877 0.955652 4.58228874 0.95215464 4.59768343 0.95204949 4.59906626
		 0.95510197 4.59920406 0.97450757 4.5985508 0.97791839 4.59664202 0.98081875 4.59376812
		 0.98276854 4.57747364 0.89894342 4.5759263 0.89893556 4.56208038 0.89891815 4.56103039
		 0.89542723 4.56107378 0.87644458 4.56175613 0.8730402 4.56369066 0.870157 4.5665803
		 0.8682332 4.56998777 0.86756182 4.57339239 0.86824489 4.57627535 0.87017965 4.57819891
		 0.87306881 4.57887125 0.87647438 4.57883739 0.89588141 4.57578945 0.80055833 4.57027006
		 0.80055761 4.57677269 0.94099498 4.57136393 0.94108403 4.47622395 0.63104057 4.4790349
		 0.63104057 4.59133863 0.90993667 4.59829569 0.90998507 4.57578707 0.82307327 4.5712738
		 0.82307255 4.57417679 0.96110535 4.56921721 0.9607172 4.47622013 0.61364627 4.47903347
		 0.61364627 4.5890789 0.89030135 4.59556484 0.88963294 4.57581043 0.84562492 4.57384777
		 0.84524727 4.56855202 0.98038673 4.56484556 0.97964144 4.47622395 0.66985023 4.47903395
		 0.66985035 4.58981133 0.79745936 4.58453274 0.79753256 4.58465481 0.77363348 4.58993244
		 0.7737155 4.58983707 0.81986451 4.58457279 0.81981754 4.57177067 0.75376129 4.57578754
		 0.75376129 4.58423471 0.86944008 4.58385754 0.86769152 4.58674955 0.86701965 4.58785248
		 0.86858845 4.57225132 0.72880864 4.57225132 0.71925664 4.5765152 0.71925664 4.5765152
		 0.72880864 4.58475399 0.84599304 4.58691978 0.8461988 4.58486366 0.84735799 4.58448887
		 0.87077236 4.58900738 0.86966634 4.59010983 0.87138534 4.58478498 0.87263918 4.58467102
		 0.84469414 4.58811569 0.84466851 4.58917236 0.84238803 4.58458233 0.84229648 4.47601318
		 0.59194446 4.47922897 0.59290767 4.4730444 0.59009945 4.47599983 0.59007335 4.47303391
		 0.59196734 4.47817898 0.59091687 4.4762249 0.67307734 4.4762249 0.68994999 4.47903395
		 0.68994999 4.47903395 0.67307734 4.47622395 0.65133309 4.47622395 0.6659236 4.4790349
		 0.6659236 4.4790349 0.65133142 4.58792877 0.93248093 4.5822587 0.94777799 4.59709644
		 0.94791973 4.59706116 0.93250751 4.58715916 0.72783017 4.58733082 0.74893069 4.59035397
		 0.74883175 4.59059286 0.72783005 4.56207466 0.9032948 4.56782866 0.91855943 4.57541323
		 0.91847992 4.57536316 0.90306973 4.57579279 0.77549016 4.5757947 0.75838244 4.57139301
		 0.75838196 4.5705328 0.77548933 4.57673168 0.74714029 4.57673168 0.73744822 4.57258129
		 0.73744655 4.57258177 0.74714029 4.59002733 0.75698566 4.59003448 0.75250649 4.58789682
		 0.75250912 4.58441925 0.75228119 4.58412123 0.7569325 4.47622442 0.70229411 4.47903347
		 0.70229387 4.47903395 0.69920707 4.4762249 0.69920707 4.47903442 0.69612122 4.4762249
		 0.69612169 4.47903347 0.6930356 4.4762249 0.69303536 4.59059286 0.71290183 4.58715916
		 0.71290207 4.58715916 0.71663487 4.59059191 0.71663463 4.58716011 0.72036684 4.59059286
		 0.72036648 4.58715916 0.72409856 4.59059191 0.72409797 4.59036779 0.98346853 4.59376812
		 0.98276854 4.59664202 0.98081875 4.5985508 0.97791839 4.59920406 0.97450757 4.59906626
		 0.95510197 4.59768343 0.95204949 4.58228874 0.95215464 4.58125877 0.955652 4.58140564
		 0.97463465 4.58210707 0.97803497 4.58405685 0.98090816 4.58695602 0.98281646 4.57747364
		 0.89894342 4.57883739 0.89588141 4.57887125 0.87647438 4.57819891 0.87306881 4.57627535
		 0.87017965 4.57339239 0.86824489 4.56998777 0.86756182 4.5665803 0.8682332 4.56369066
		 0.870157 4.56175613 0.8730402 4.56107378 0.87644458 4.56103039 0.89542723 4.56208038
		 0.89891815 4.5759263 0.89893556 4.57578945 0.80055833 4.57027006 0.80055761 4.57136393
		 0.94108403 4.57677269 0.94099498 4.47622395 0.63104057 4.4790349 0.63104057 4.59133863
		 0.90993667 4.59829569 0.90998507 4.57578707 0.82307327 4.5712738 0.82307255 4.56921721
		 0.9607172 4.57417679 0.96110535 4.47622013 0.61364627 4.47903347 0.61364627 4.5890789
		 0.89030135 4.59556484 0.88963294 4.57384777 0.84524727 4.57581043 0.84562492 4.56484556
		 0.97964144 4.56855202 0.98038673 4.47622395 0.66985023 4.47903395 0.66985035 4.58981133
		 0.79745936 4.58993244 0.7737155 4.58465481 0.77363348 4.58453274 0.79753256 4.58983707
		 0.81986451 4.58457279 0.81981754 4.57578754 0.75376129 4.57177067 0.75376129 4.58423471
		 0.86944008 4.58785248 0.86858845 4.58674955 0.86701965 4.58385754 0.86769152 4.57225132
		 0.72880864 4.5765152 0.72880864 4.5765152 0.71925664 4.57225132 0.71925664 4.58475399
		 0.84599304 4.58486366 0.84735799 4.58691978 0.8461988 4.58448887 0.87077236 4.58478498
		 0.87263918;
	setAttr ".uvst[0].uvsp[250:261]" 4.59010983 0.87138534 4.58900738 0.86966634
		 4.58467102 0.84469414 4.58811569 0.84466851 4.58458233 0.84229648 4.58917236 0.84238803
		 4.47922897 0.59290767 4.47601318 0.59194446 4.4730444 0.59009945 4.47303391 0.59196734
		 4.47599983 0.59007335 4.47817898 0.59091687;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 119 ".pt[0:118]" -type "float3"  -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998;
	setAttr -s 119 ".vt[0:118]"  2.9802322e-08 -0.13491753 0.086111456 2.9802322e-08 -0.13679235 0.086111456
		 2.9802322e-08 -0.13432625 0.062469117 2.9802322e-08 -0.13600951 0.035191312 2.9802322e-08 -0.13290331 0.010843314
		 2.9802322e-08 -0.1381027 0.062469117 2.9802322e-08 -0.13978595 0.035191312 2.9802322e-08 -0.13665581 0.010488011
		 2.9802322e-08 -0.13424133 0.081119031 2.9802322e-08 -0.13611615 0.081119031 -0.0043881238 -0.13679235 0.086111456
		 -0.0043881238 -0.11813947 0.086111456 -0.0070498884 -0.11813947 0.086111456 -0.0070498884 -0.13679235 0.086111456
		 -0.0043881238 -0.13491753 0.086111456 -0.0039984286 -0.12764448 0.12410428 -0.0039984286 -0.11686221 0.11332309
		 -0.0039984286 -0.11768287 0.11744887 -0.0039984286 -0.12001996 0.12094654 -0.0039984286 -0.12351762 0.12328362
		 -0.0074395835 -0.12764448 0.12410428 -0.0074395835 -0.12351762 0.12328362 -0.0074395835 -0.12001996 0.12094654
		 -0.0074395835 -0.11768287 0.11744887 -0.0074395835 -0.11686221 0.11332309 -0.0074395835 -0.13842675 0.11332309
		 -0.0074395835 -0.13760608 0.11744887 -0.0074395835 -0.135269 0.12094654 -0.0074395835 -0.13177136 0.12328362
		 -0.0039984286 -0.13177136 0.12328362 -0.0039984286 -0.135269 0.12094654 -0.0039984286 -0.13760608 0.11744887
		 -0.0039984286 -0.13842675 0.11332309 -0.0057338178 -0.13432625 0.062469117 -0.0057338178 -0.12513599 0.062360875
		 -0.0083955228 -0.12513599 0.062360875 -0.0083955228 -0.13620107 0.062469117 -0.0060172975 -0.13600951 0.035191312
		 -0.0059867799 -0.12945609 0.035074152 -0.0085889995 -0.12945609 0.035074152 -0.0086432397 -0.13788433 0.035191312
		 -0.004919976 -0.13290331 0.010843314 -0.004919976 -0.12689205 0.011304572 -0.0071813762 -0.12689205 0.011304572
		 -0.0071813762 -0.13475522 0.010551192 -0.0039984286 -0.11686221 0.090322457 -0.0074395835 -0.11686221 0.090322457
		 -0.0074395835 -0.13842675 0.089807555 -0.0039984286 -0.13842675 0.089807555 -0.007460326 -0.13611615 0.081119031
		 -0.007460326 -0.11813947 0.080824323 -0.0047986209 -0.11813947 0.080824323 -0.0047986209 -0.13424133 0.081119031
		 2.9802322e-08 -0.12636402 -0.012857221 -0.0020979941 -0.12164216 -0.011462361 -0.0021108687 -0.12613443 -0.012366004
		 -0.0020970404 -0.12142351 -0.012951203 2.9802322e-08 -0.12134974 -0.013492383 -0.0021090209 -0.12581334 -0.01395978
		 2.9802322e-08 -0.1248704 -0.014222473 2.9802322e-08 -0.12619185 -0.013951264 2.9802322e-08 -0.12880947 -0.011497937
		 2.9802322e-08 -0.12731858 -0.013334811 -0.0044986904 -0.12831745 -0.011447057 -0.0033836067 -0.12705974 -0.013262592
		 -0.003398329 -0.12157603 -0.011960894 -0.0044880211 -0.12185851 -0.0099667311 2.9802322e-08 -0.12164216 -0.011462316
		 0.0043881834 -0.13679235 0.086111456 0.0043881834 -0.11813947 0.086111456 0.007049948 -0.11813947 0.086111456
		 0.007049948 -0.13679235 0.086111456 0.0043881834 -0.13491753 0.086111456 0.0039984882 -0.12764448 0.12410428
		 0.0039984882 -0.11686221 0.11332309 0.0039984882 -0.11768287 0.11744887 0.0039984882 -0.12001996 0.12094654
		 0.0039984882 -0.12351762 0.12328362 0.0074396431 -0.12764448 0.12410428 0.0074396431 -0.12351762 0.12328362
		 0.0074396431 -0.12001996 0.12094654 0.0074396431 -0.11768287 0.11744887 0.0074396431 -0.11686221 0.11332309
		 0.0074396431 -0.13842675 0.11332309 0.0074396431 -0.13760608 0.11744887 0.0074396431 -0.135269 0.12094654
		 0.0074396431 -0.13177136 0.12328362 0.0039984882 -0.13177136 0.12328362 0.0039984882 -0.135269 0.12094654
		 0.0039984882 -0.13760608 0.11744887 0.0039984882 -0.13842675 0.11332309 0.0057338774 -0.13432625 0.062469117
		 0.0057338774 -0.12513599 0.062360875 0.0083955824 -0.12513599 0.062360875 0.0083955824 -0.13620107 0.062469117
		 0.0060173571 -0.13600951 0.035191312 0.0059868395 -0.12945609 0.035074152 0.0085890591 -0.12945609 0.035074152
		 0.0086432993 -0.13788433 0.035191312 0.0049200356 -0.13290331 0.010843314 0.0049200356 -0.12689205 0.011304572
		 0.0071814358 -0.12689205 0.011304572 0.0071814358 -0.13475522 0.010551192 0.0039984882 -0.11686221 0.090322457
		 0.0074396431 -0.11686221 0.090322457 0.0074396431 -0.13842675 0.089807555 0.0039984882 -0.13842675 0.089807555
		 0.0074603856 -0.13611615 0.081119031 0.0074603856 -0.11813947 0.080824323 0.0047986805 -0.11813947 0.080824323
		 0.0047986805 -0.13424133 0.081119031 0.0020980537 -0.12164216 -0.011462361 0.0021109283 -0.12613443 -0.012366004
		 0.0020971 -0.12142351 -0.012951203 0.0021090806 -0.12581334 -0.01395978 0.00449875 -0.12831745 -0.011447057
		 0.0033836663 -0.12705974 -0.013262592 0.0033983886 -0.12157603 -0.011960894 0.0044880807 -0.12185851 -0.0099667311;
	setAttr -s 217 ".ed";
	setAttr ".ed[0:165]"  1 0 0 1 9 0 2 8 0 3 2 0 4 3 0 5 6 0 6 7 0 8 0 0 9 5 0
		 11 45 0 12 46 0 13 49 0 10 14 0 11 12 1 13 10 0 12 13 0 14 11 0 14 0 0 10 1 0 25 47 0
		 32 48 0 15 20 1 24 16 1 32 25 1 15 19 0 19 21 1 21 20 0 19 18 0 18 22 1 22 21 0 18 17 0
		 17 23 1 23 22 0 17 16 0 24 23 0 20 28 0 28 29 1 29 15 0 28 27 0 27 30 1 30 29 0 27 26 0
		 26 31 1 31 30 0 26 25 0 32 31 0 33 52 0 34 51 0 35 50 0 36 40 0 2 33 1 33 34 0 34 35 1
		 35 36 1 37 33 0 38 34 0 39 35 0 40 44 0 3 37 1 37 38 0 38 39 1 39 40 1 41 37 0 42 38 0
		 43 39 0 4 41 1 41 42 0 42 43 1 43 44 1 45 16 0 46 24 0 45 46 1 36 5 1 40 6 1 44 7 1
		 47 13 0 48 10 0 47 48 1 49 36 0 50 12 0 51 11 0 52 14 0 49 50 1 50 51 1 51 52 0 52 8 1
		 49 9 1 53 4 0 41 55 0 42 54 0 53 55 0 58 60 1 55 54 0 56 58 1 56 57 0 59 58 0 57 59 0
		 59 60 0 65 56 0 66 43 0 64 62 1 62 61 0 61 63 1 65 64 1 64 63 0 63 66 1 66 65 0 7 61 0
		 64 58 0 60 62 0 63 44 0 54 56 1 54 65 1 54 66 1 67 54 0 57 67 0 53 67 0 69 103 0
		 70 104 0 71 107 0 68 72 0 69 70 1 71 68 0 70 71 0 72 69 0 72 0 0 68 1 0 83 105 0
		 90 106 0 73 78 1 82 74 1 90 83 1 73 77 0 77 79 1 79 78 0 77 76 0 76 80 1 80 79 0
		 76 75 0 75 81 1 81 80 0 75 74 0 82 81 0 78 86 0 86 87 1 87 73 0 86 85 0 85 88 1 88 87 0
		 85 84 0 84 89 1 89 88 0 84 83 0 90 89 0 91 110 0 92 109 0 93 108 0 94 98 0 2 91 1
		 91 92 0 92 93 1 93 94 1 95 91 0 96 92 0 97 93 0 98 102 0;
	setAttr ".ed[166:216]" 3 95 1 95 96 0 96 97 1 97 98 1 99 95 0 100 96 0 101 97 0
		 4 99 1 99 100 0 100 101 1 101 102 1 103 74 0 104 82 0 103 104 1 94 5 1 98 6 1 102 7 1
		 105 71 0 106 68 0 105 106 1 107 94 0 108 70 0 109 69 0 110 72 0 107 108 1 108 109 1
		 109 110 0 110 8 1 107 9 1 99 112 0 100 111 0 53 112 0 114 60 1 112 111 0 113 114 1
		 113 57 0 59 114 0 117 113 0 118 101 0 116 62 1 61 115 1 117 116 1 116 115 0 115 118 1
		 118 117 0 116 114 0 115 102 0 111 113 1 111 117 1 111 118 1 67 111 0;
	setAttr -s 100 -ch 434 ".fc[0:99]" -type "polyFaces" 
		f 4 71 70 22 -70
		mu 0 4 0 1 2 3
		f 4 52 48 83 -48
		mu 0 4 4 5 6 7
		f 4 53 -79 82 -49
		mu 0 4 8 9 10 11
		f 4 23 19 77 -21
		mu 0 4 12 13 14 15
		f 4 84 -47 51 47
		mu 0 4 16 17 18 19
		f 4 50 46 85 -3
		mu 0 4 20 21 22 23
		f 4 -13 18 0 -18
		mu 0 4 24 25 26 27
		f 5 86 -2 -19 -15 11
		mu 0 5 28 29 30 31 32
		f 4 24 25 26 -22
		mu 0 4 33 34 35 36
		f 4 27 28 29 -26
		mu 0 4 34 37 38 35
		f 4 30 31 32 -29
		mu 0 4 37 39 40 38
		f 4 33 -23 34 -32
		mu 0 4 39 3 2 40
		f 4 35 36 37 21
		mu 0 4 41 42 43 44
		f 4 38 39 40 -37
		mu 0 4 42 45 46 43
		f 4 41 42 43 -40
		mu 0 4 45 47 48 46
		f 4 44 -24 45 -43
		mu 0 4 47 13 12 48
		f 13 -27 -30 -33 -35 -71 -11 15 -76 -20 -45 -42 -39 -36
		mu 0 13 49 50 51 52 53 54 55 56 57 58 59 60 61
		f 14 12 16 9 69 -34 -31 -28 -25 -38 -41 -44 -46 20 76
		mu 0 14 62 63 64 65 66 67 68 69 70 71 72 73 74 75
		f 4 58 54 -51 -4
		mu 0 4 76 77 21 20
		f 4 -52 -55 59 55
		mu 0 4 19 18 78 79
		f 4 60 56 -53 -56
		mu 0 4 80 81 5 4
		f 4 61 -50 -54 -57
		mu 0 4 82 83 9 8
		f 4 65 62 -59 -5
		mu 0 4 84 85 77 76
		f 4 -60 -63 66 63
		mu 0 4 79 78 86 87
		f 4 67 64 -61 -64
		mu 0 4 88 89 81 80
		f 4 68 -58 -62 -65
		mu 0 4 90 91 83 82
		f 4 -66 -88 90 -89
		mu 0 4 85 84 92 93
		f 4 -67 88 92 -90
		mu 0 4 87 86 94 95
		f 4 13 10 -72 -10
		mu 0 4 96 97 1 0
		f 4 73 -6 -73 49
		mu 0 4 98 99 100 101
		f 4 74 -7 -74 57
		mu 0 4 102 103 99 98
		f 4 -78 75 14 -77
		mu 0 4 15 14 32 31
		f 4 -83 -12 -16 -80
		mu 0 4 11 10 56 55
		f 4 -84 79 -14 -81
		mu 0 4 7 6 97 96
		f 4 -17 -82 -85 80
		mu 0 4 64 63 17 16
		f 4 -86 81 17 -8
		mu 0 4 23 22 104 105
		f 4 72 -9 -87 78
		mu 0 4 101 100 29 28
		f 4 94 96 95 -94
		mu 0 4 106 107 108 109
		f 4 116 114 -93 -91
		mu 0 4 110 111 112 113
		f 3 -92 -96 97
		mu 0 3 114 115 116
		f 4 103 104 105 106
		mu 0 4 117 118 119 120
		f 4 -101 108 91 109
		mu 0 4 121 122 115 114
		f 4 -69 -100 -106 110
		mu 0 4 91 90 120 119
		f 4 -75 -111 -103 -108
		mu 0 4 103 102 123 124
		f 4 -104 98 93 -109
		mu 0 4 118 117 106 109
		f 4 -68 89 113 99
		mu 0 4 89 88 125 126
		f 4 100 101 102 -105
		mu 0 4 122 121 124 123
		f 4 -95 -112 -115 -116
		mu 0 4 127 128 125 129
		f 3 -113 111 -99
		mu 0 3 130 125 128
		f 3 -107 -114 112
		mu 0 3 130 126 125
		f 4 177 -131 -179 -180
		mu 0 4 131 132 133 134
		f 4 155 -192 -157 -161
		mu 0 4 135 136 137 138
		f 4 156 -191 186 -162
		mu 0 4 139 140 141 142
		f 4 128 -186 -128 -132
		mu 0 4 143 144 145 146
		f 4 -156 -160 154 -193
		mu 0 4 147 148 149 150
		f 4 2 -194 -155 -159
		mu 0 4 151 152 153 154
		f 4 125 -1 -127 120
		mu 0 4 155 156 157 158
		f 5 -120 122 126 1 -195
		mu 0 5 159 160 161 162 163
		f 4 129 -135 -134 -133
		mu 0 4 164 165 166 167
		f 4 133 -138 -137 -136
		mu 0 4 167 166 168 169
		f 4 136 -141 -140 -139
		mu 0 4 169 168 170 171
		f 4 139 -143 130 -142
		mu 0 4 171 170 133 132
		f 4 -130 -146 -145 -144
		mu 0 4 172 173 174 175
		f 4 144 -149 -148 -147
		mu 0 4 175 174 176 177
		f 4 147 -152 -151 -150
		mu 0 4 177 176 178 179
		f 4 150 -154 131 -153
		mu 0 4 179 178 143 146
		f 13 143 146 149 152 127 183 -124 118 178 142 140 137 134
		mu 0 13 180 181 182 183 184 185 186 187 188 189 190 191 192
		f 14 -185 -129 153 151 148 145 132 135 138 141 -178 -118 -125 -121
		mu 0 14 193 194 195 196 197 198 199 200 201 202 203 204 205 206
		f 4 3 158 -163 -167
		mu 0 4 207 151 154 208
		f 4 -164 -168 162 159
		mu 0 4 148 209 210 149
		f 4 163 160 -165 -169
		mu 0 4 211 135 138 212
		f 4 164 161 157 -170
		mu 0 4 213 139 142 214
		f 4 4 166 -171 -174
		mu 0 4 215 207 208 216
		f 4 -172 -175 170 167
		mu 0 4 209 217 218 210
		f 4 171 168 -173 -176
		mu 0 4 219 211 212 220
		f 4 172 169 165 -177
		mu 0 4 221 213 214 222
		f 4 195 -198 87 173
		mu 0 4 216 223 224 215
		f 4 196 -200 -196 174
		mu 0 4 217 225 226 218
		f 4 117 179 -119 -122
		mu 0 4 227 131 134 228
		f 4 -158 180 5 -182
		mu 0 4 229 230 231 232
		f 4 -166 181 6 -183
		mu 0 4 233 229 232 234
		f 4 184 -123 -184 185
		mu 0 4 144 161 160 145
		f 4 187 123 119 190
		mu 0 4 140 187 186 141
		f 4 188 121 -188 191
		mu 0 4 136 227 228 137
		f 4 -189 192 189 124
		mu 0 4 205 147 150 206
		f 4 7 -126 -190 193
		mu 0 4 152 235 236 153
		f 4 -187 194 8 -181
		mu 0 4 230 159 163 231
		f 4 200 -203 -97 -202
		mu 0 4 237 238 239 240
		f 4 197 199 -217 -117
		mu 0 4 241 242 243 244
		f 3 -98 202 198
		mu 0 3 245 246 247
		f 4 -211 -210 -209 -208
		mu 0 4 248 249 250 251
		f 4 -110 -199 -212 205
		mu 0 4 252 245 247 253
		f 4 -213 209 204 176
		mu 0 4 222 250 249 221
		f 4 107 206 212 182
		mu 0 4 234 254 255 233
		f 4 211 -201 -204 207
		mu 0 4 251 238 237 248
		f 4 -205 -216 -197 175
		mu 0 4 220 256 257 219
		f 4 208 -207 -102 -206
		mu 0 4 253 255 254 252
		f 4 115 216 213 201
		mu 0 4 258 259 257 260
		f 3 203 -214 214
		mu 0 3 261 260 257
		f 3 -215 215 210
		mu 0 3 261 257 256;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "bottom_hook" -p "bottom_lever";
	rename -uid "775E49A2-4F21-A92A-C568-FFB8E4EF4CD5";
	addAttr -ci true -sn "i3D_xmlIdentifier" -ln "i3D_xmlIdentifier" -dt "string";
	addAttr -ci true -sn "i3D_objectMask" -ln "i3D_objectMask" -at "long";
	addAttr -ci true -sn "i3D_dynamic" -ln "i3D_dynamic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_joint" -ln "i3D_joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_dynamicFriction" -ln "i3D_dynamicFriction" -at "float";
	addAttr -ci true -sn "i3D_ccd" -ln "i3D_ccd" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_density" -ln "i3D_density" -at "float";
	addAttr -ci true -sn "i3D_splitType" -ln "i3D_splitType" -at "long";
	addAttr -ci true -sn "i3D_splitMinU" -ln "i3D_splitMinU" -at "float";
	addAttr -ci true -sn "i3D_splitMinV" -ln "i3D_splitMinV" -at "float";
	addAttr -ci true -sn "i3D_driveForceLimit" -ln "i3D_driveForceLimit" -at "float";
	addAttr -ci true -sn "i3D_angularDamping" -ln "i3D_angularDamping" -at "float";
	addAttr -ci true -sn "i3D_splitUvWorldScale" -ln "i3D_splitUvWorldScale" -at "float";
	addAttr -ci true -sn "i3D_projection" -ln "i3D_projection" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_driveSpring" -ln "i3D_driveSpring" -at "float";
	addAttr -ci true -sn "i3D_breakableJoint" -ln "i3D_breakableJoint" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_projDistance" -ln "i3D_projDistance" -at "float";
	addAttr -ci true -sn "i3D_driveDamping" -ln "i3D_driveDamping" -at "float";
	addAttr -ci true -sn "i3D_xAxisDrive" -ln "i3D_xAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_compound" -ln "i3D_compound" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_clipDistance" -ln "i3D_clipDistance" -at "float";
	addAttr -ci true -sn "i3D_collision" -ln "i3D_collision" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_scaled" -ln "i3D_scaled" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_projAngle" -ln "i3D_projAngle" -at "float";
	addAttr -ci true -sn "i3D_mergeGroupRoot" -ln "i3D_mergeGroupRoot" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_jointBreakTorque" -ln "i3D_jointBreakTorque" -at "float";
	addAttr -ci true -sn "i3D_restitution" -ln "i3D_restitution" -at "float";
	addAttr -ci true -sn "i3D_yAxisDrive" -ln "i3D_yAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_mergeGroup" -ln "i3D_mergeGroup" -at "long";
	addAttr -ci true -sn "i3D_jointBreakForce" -ln "i3D_jointBreakForce" -at "float";
	addAttr -ci true -sn "i3D_lod1" -ln "i3D_lod1" -at "float";
	addAttr -ci true -sn "i3D_lod2" -ln "i3D_lod2" -at "float";
	addAttr -ci true -sn "i3D_oc" -ln "i3D_oc" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_kinematic" -ln "i3D_kinematic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_trigger" -ln "i3D_trigger" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_static" -ln "i3D_static" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lightMask" -ln "i3D_lightMask" -dt "string";
	addAttr -ci true -sn "i3D_linearDamping" -ln "i3D_linearDamping" -at "float";
	addAttr -ci true -sn "i3D_lod3" -ln "i3D_lod3" -at "float";
	addAttr -ci true -sn "i3D_drivePos" -ln "i3D_drivePos" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lod" -ln "i3D_lod" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_solverIterationCount" -ln "i3D_solverIterationCount" -at "long";
	addAttr -ci true -sn "i3D_nonRenderable" -ln "i3D_nonRenderable" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_boundingVolume" -ln "i3D_boundingVolume" -dt "string";
	addAttr -ci true -sn "i3D_collisionMask" -ln "i3D_collisionMask" -at "long";
	addAttr -ci true -sn "i3D_zAxisDrive" -ln "i3D_zAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_cpuMesh" -ln "i3D_cpuMesh" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_staticFriction" -ln "i3D_staticFriction" -at "float";
	addAttr -ci true -sn "i3D_decalLayer" -ln "i3D_decalLayer" -at "long";
	addAttr -ci true -sn "i3D_splitMaxV" -ln "i3D_splitMaxV" -at "float";
	addAttr -ci true -sn "i3D_splitMaxU" -ln "i3D_splitMaxU" -at "float";
	addAttr -ci true -sn "i3D_compoundChild" -ln "i3D_compoundChild" -min 0 -max 1 -at "bool";
	setAttr ".i3D_xmlIdentifier" -type "string" "bottom_hook";
	setAttr ".i3D_objectMask" 255;
	setAttr ".i3D_dynamicFriction" 0.5;
	setAttr ".i3D_density" 1;
	setAttr ".i3D_driveForceLimit" 100000;
	setAttr ".i3D_angularDamping" 0.0099999997764825821;
	setAttr ".i3D_splitUvWorldScale" 1;
	setAttr ".i3D_driveSpring" 1;
	setAttr ".i3D_projDistance" 0.0099999997764825821;
	setAttr ".i3D_driveDamping" 0.0099999997764825821;
	setAttr ".i3D_clipDistance" 300;
	setAttr ".i3D_projAngle" 0.0099999997764825821;
	setAttr ".i3D_mergeGroup" 1;
	setAttr ".i3D_lightMask" -type "string" "FFFF";
	setAttr ".i3D_solverIterationCount" 4;
	setAttr ".i3D_boundingVolume" -type "string" "";
	setAttr ".i3D_collisionMask" 255;
	setAttr ".i3D_staticFriction" 0.5;
	setAttr ".i3D_splitMaxV" 1;
	setAttr ".i3D_splitMaxU" 1;
createNode mesh -n "bottom_hookShape" -p "bottom_hook";
	rename -uid "605D93F4-4262-05BD-1DEB-DAA47A204026";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:109]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 284 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 4.53158331 0.16330671 4.52758312
		 0.16330636 4.52758265 0.14837992 4.53158283 0.14837992 4.58210135 0.29148102 4.56582642
		 0.29263437 4.56343508 0.27771127 4.57956266 0.27523685 4.53158331 0.17998433 4.52758312
		 0.17998433 4.58197784 0.31063986 4.56570053 0.30951619 4.53158283 0.19635081 4.52758312
		 0.19635069 4.57788754 0.3277359 4.56170702 0.32562876 4.55877686 0.2157445 4.56054974
		 0.23150063 4.5602932 0.2348361 4.55890894 0.23788023 4.55635452 0.24046755 4.55280542
		 0.24205112 4.54878902 0.2422123 4.54538298 0.24100733 4.54297924 0.2384696 4.54186726
		 0.23515558 4.5395956 0.21509695 4.52758026 0.20066619 4.53158712 0.20066631 4.53158712
		 0.21632457 4.52758026 0.21632457 4.5275836 0.13615775 4.53158331 0.13615775 4.56023169
		 0.26573694 4.57610559 0.26334536 4.54268265 0.14192533 4.53831863 0.14192533 4.53831959
		 0.13763094 4.54268074 0.13763082 4.55533028 0.24898589 4.56921577 0.25290358 4.54426908
		 0.34366012 4.54758978 0.34366095 4.54759216 0.35032129 4.54427004 0.35032153 4.55577612
		 0.26384234 4.54929161 0.25629008 4.53831863 0.146209 4.54268074 0.146209 4.53832006
		 0.1360743 4.54268217 0.1360743 4.54426765 0.35187101 4.54758978 0.35187101 4.58289337
		 0.15466714 4.5782032 0.15754342 4.57465744 0.15573108 4.58231735 0.14932764 4.53158569
		 0.23036027 4.53158522 0.23432922 4.52758121 0.23432946 4.52758074 0.23036027 4.53158617
		 0.23790002 4.52758169 0.23790002 4.53158283 0.24135065 4.52758121 0.24135065 4.53158379
		 0.24480081 4.52758026 0.24480152 4.52758169 0.22652292 4.53158474 0.22652364 4.52757931
		 0.22293401 4.53158283 0.22293401 4.52757931 0.21962893 4.53158283 0.21962893 4.5778718
		 0.16649818 4.5883379 0.16649759 4.58833838 0.17008901 4.5778718 0.17008746 4.58073568
		 0.3281064 4.57524061 0.34752822 4.57360554 0.35061169 4.57082415 0.35272932 4.56726551
		 0.35336685 4.56333065 0.35255527 4.56008816 0.35041523 4.55798578 0.34745169 4.5571146
		 0.34422112 4.5574007 0.34088683 4.53710318 0.33459306 4.53710318 0.34958613 4.52711916
		 0.34958577 4.52711916 0.3345927 4.53710413 0.32241702 4.52711868 0.32241702 4.5371027
		 0.30621934 4.52712107 0.30621862 4.5371027 0.28752077 4.52712107 0.28752077 4.53710318
		 0.27034795 4.52711821 0.27034795 4.54426861 0.33753181 4.54759026 0.33753181 4.54426956
		 0.33058667 4.54759026 0.33058703 4.56995201 0.15687799 4.57745457 0.14051056 4.5807476
		 0.16062093 4.58351183 0.16039908 4.58194256 0.16143048 4.5478301 0.26146162 4.55198479
		 0.26505613 4.54897404 0.26767945 4.54626846 0.26700401 4.54766226 0.26828516 4.53834009
		 0.19741893 4.55745029 0.19919324 4.57800341 0.24134207 4.57800341 0.22918332 4.58820772
		 0.22918367 4.58820772 0.24134183 4.57800341 0.25670958 4.58820772 0.25670934 4.57800341
		 0.21260142 4.58820772 0.21260178 4.57800341 0.19333017 4.58820677 0.19333005 4.58042336
		 0.1758759 4.58820677 0.17587626 4.57800293 0.1758759 4.54759169 0.31212652 4.54427004
		 0.30888963 4.5548625 0.30884469 4.55487394 0.31209624 4.54139042 0.17810893 4.54659939
		 0.16223359 4.56484699 0.16817546 4.5600667 0.18251276 4.5519557 0.15118027 4.56054258
		 0.14233804 4.54268026 0.15142024 4.53831863 0.15142071 4.52758026 0.26473808 4.53158712
		 0.26473808 4.53158331 0.16330671 4.53158283 0.14837992 4.52758265 0.14837992 4.52758312
		 0.16330636 4.58210135 0.29148102 4.57956266 0.27523685 4.56343508 0.27771127 4.56582642
		 0.29263437 4.52758312 0.17998433 4.53158331 0.17998433 4.58197784 0.31063986 4.56570053
		 0.30951619 4.52758312 0.19635069 4.53158283 0.19635081 4.57788754 0.3277359 4.56170702
		 0.32562876 4.55877686 0.2157445 4.5395956 0.21509695 4.54186726 0.23515558 4.54297924
		 0.2384696 4.54538298 0.24100733 4.54878902 0.2422123 4.55280542 0.24205112 4.55635452
		 0.24046755 4.55890894 0.23788023 4.5602932 0.2348361 4.56054974 0.23150063 4.52758026
		 0.20066619 4.52758026 0.21632457 4.53158712 0.21632457 4.53158712 0.20066631 4.53158331
		 0.13615775 4.5275836 0.13615775 4.57610559 0.26334536 4.56023169 0.26573694 4.54268265
		 0.14192533 4.54268074 0.13763082 4.53831959 0.13763094 4.53831863 0.14192533 4.56921577
		 0.25290358 4.55533028 0.24898589 4.54426908 0.34366012 4.54427004 0.35032153 4.54759216
		 0.35032129 4.54758978 0.34366095 4.55577612 0.26384234 4.54929161 0.25629008 4.53831863
		 0.146209 4.54268074 0.146209 4.54268217 0.1360743 4.53832006 0.1360743 4.54426765
		 0.35187101 4.54758978 0.35187101 4.58289337 0.15466714 4.58231735 0.14932764 4.57465744
		 0.15573108 4.5782032 0.15754342 4.53158569 0.23036027 4.52758074 0.23036027 4.52758121
		 0.23432946 4.53158522 0.23432922 4.52758169 0.23790002 4.53158617 0.23790002 4.52758121
		 0.24135065 4.53158283 0.24135065 4.52758026 0.24480152 4.53158379 0.24480081 4.53158474
		 0.22652364 4.52758169 0.22652292 4.53158283 0.22293401 4.52757931 0.22293401 4.53158283
		 0.21962893 4.52757931 0.21962893 4.5778718 0.16649818 4.5778718 0.17008746 4.58833838
		 0.17008901 4.5883379 0.16649759 4.5574007 0.34088683 4.5571146 0.34422112 4.55798578
		 0.34745169 4.56008816 0.35041523 4.56333065 0.35255527 4.56726551 0.35336685 4.57082415
		 0.35272932 4.57360554 0.35061169 4.57524061 0.34752822 4.58073568 0.3281064 4.53710318
		 0.33459306 4.52711916 0.3345927 4.52711916 0.34958577 4.53710318 0.34958613 4.53710413
		 0.32241702 4.52711868 0.32241702 4.5371027 0.30621934 4.52712107 0.30621862 4.5371027
		 0.28752077 4.52712107 0.28752077 4.53710318 0.27034795 4.52711821 0.27034795 4.54759026
		 0.33753181 4.54426861 0.33753181 4.54759026 0.33058703 4.54426956 0.33058667 4.57745457
		 0.14051056 4.56995201 0.15687799 4.5807476 0.16062093 4.58194256 0.16143048 4.58351183
		 0.16039908;
	setAttr ".uvst[0].uvsp[250:283]" 4.5478301 0.26146162 4.54626846 0.26700401
		 4.54897404 0.26767945 4.55198479 0.26505613 4.54766226 0.26828516 4.55745029 0.19919324
		 4.53834009 0.19741893 4.57800341 0.24134207 4.58820772 0.24134183 4.58820772 0.22918367
		 4.57800341 0.22918332 4.57800341 0.25670958 4.58820772 0.25670934 4.57800341 0.21260142
		 4.58820772 0.21260178 4.57800341 0.19333017 4.58820677 0.19333005 4.58042336 0.1758759
		 4.57800293 0.1758759 4.58820677 0.17587626 4.54759169 0.31212652 4.55487394 0.31209624
		 4.5548625 0.30884469 4.54427004 0.30888963 4.54139042 0.17810893 4.5600667 0.18251276
		 4.56484699 0.16817546 4.54659939 0.16223359 4.5519557 0.15118027 4.56054258 0.14233804
		 4.53831863 0.15142071 4.54268026 0.15142024 4.52758026 0.26473808 4.53158712 0.26473808;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 126 ".pt[0:125]" -type "float3"  -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 
		-0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 
		-2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998 -2.9802322e-08 
		0.12665325 -0.11060998 -2.9802322e-08 0.12665325 -0.11060998;
	setAttr -s 126 ".vt[0:125]"  -0.0073996484 -0.12689933 0.16033435 -0.010419458 -0.12689933 0.16033435
		 -0.0067112148 -0.12475879 0.17573819 -0.0097311437 -0.12475879 0.17573819 -0.011655301 -0.12641191 0.14299241
		 -0.0086354911 -0.12641191 0.14299241 -0.0086354911 -0.1414986 0.12352481 -0.011655301 -0.12195323 0.1264839
		 -0.0086354911 -0.12195323 0.1264839 -0.0067112148 -0.12171523 0.18813941 -0.0097311437 -0.12171523 0.18813941
		 -0.0067112148 -0.11588211 0.20174131 -0.0097311437 -0.11588211 0.20174131 -0.0067112148 -0.11716557 0.19018665
		 -0.0097311437 -0.11716557 0.19018665 -0.0097311437 -0.108426 0.19299307 -0.0067112148 -0.108426 0.19299307
		 -0.0067112148 -0.11323374 0.18901803 -0.0097311437 -0.11323374 0.18901803 -0.0097311437 -0.10871423 0.18578358
		 -0.0097311437 -0.11007901 0.18638064 -0.0097311437 -0.10791643 0.18694764 -0.0067112148 -0.11007901 0.18638064
		 -0.0067112148 -0.10871423 0.18578358 -0.0067112148 -0.10791643 0.18694764 -0.0086354911 -0.12304749 0.098719835
		 -0.0086354911 -0.13542254 0.10364036 -0.0086354911 -0.13367143 0.10049624 -0.0086354911 -0.1307615 0.098378628
		 -0.0086354911 -0.12708268 0.097797759 -0.011655301 -0.12304749 0.098719835 -0.011655301 -0.12708268 0.097797759
		 -0.011655301 -0.1307615 0.098378628 -0.011655301 -0.13367143 0.10049624 -0.011655301 -0.13542254 0.10364036
		 -0.011655301 -0.11682314 0.10743533 -0.011655301 -0.11765096 0.10408911 -0.011655301 -0.11975271 0.10099145
		 -0.011655301 -0.11719096 0.11086274 -0.0086354911 -0.11975271 0.10099145 -0.0086354911 -0.11765096 0.10408911
		 -0.0086354911 -0.11682314 0.10743533 -0.0086354911 -0.11719096 0.11086274 -0.0067112148 -0.13238595 0.2049178
		 -0.0067112148 -0.13811488 0.19026327 -0.0067112148 -0.14142033 0.17794234 -0.0072314441 -0.14368552 0.16116551
		 -0.0086354911 -0.1431511 0.14148706 -0.0086354911 -0.13857056 0.1239681 2.9802322e-08 -0.13811488 0.19026327
		 2.9802322e-08 -0.14101113 0.19052267 2.9802322e-08 -0.13238595 0.2049178 2.9802322e-08 -0.13529398 0.20547751
		 2.9802322e-08 -0.14141449 0.17789575 2.9802322e-08 -0.14435034 0.17828414 2.9802322e-08 -0.14662462 0.16109061
		 2.9802322e-08 -0.14366686 0.16094416 2.9802322e-08 -0.14313489 0.14131248 2.9802322e-08 -0.1460844 0.14104724
		 2.9802322e-08 -0.13857056 0.1239681 2.9802322e-08 -0.1414986 0.12352481 -0.0097311437 -0.1107246 0.19807947
		 -0.0067112148 -0.1107246 0.19807947 -0.01022467 -0.1466399 0.16127196 -0.0097284019 -0.14435507 0.17832203
		 -0.01165244 -0.14609791 0.14119297 -0.01165387 -0.1414986 0.12352481 -0.009729594 -0.14101113 0.19052267
		 -0.009729594 -0.13529398 0.20547751 0.007399708 -0.12689933 0.16033435 0.010419518 -0.12689933 0.16033435
		 0.0067112744 -0.12475879 0.17573819 0.0097312033 -0.12475879 0.17573819 0.01165536 -0.12641191 0.14299241
		 0.0086355507 -0.12641191 0.14299241 0.0086355507 -0.1414986 0.12352481 0.01165536 -0.12195323 0.1264839
		 0.0086355507 -0.12195323 0.1264839 0.0067112744 -0.12171523 0.18813941 0.0097312033 -0.12171523 0.18813941
		 0.0067112744 -0.11588211 0.20174131 0.0097312033 -0.11588211 0.20174131 0.0067112744 -0.11716557 0.19018665
		 0.0097312033 -0.11716557 0.19018665 0.0097312033 -0.108426 0.19299307 0.0067112744 -0.108426 0.19299307
		 0.0067112744 -0.11323374 0.18901803 0.0097312033 -0.11323374 0.18901803 0.0097312033 -0.10871423 0.18578358
		 0.0097312033 -0.11007901 0.18638064 0.0097312033 -0.10791643 0.18694764 0.0067112744 -0.11007901 0.18638064
		 0.0067112744 -0.10871423 0.18578358 0.0067112744 -0.10791643 0.18694764 0.0086355507 -0.12304749 0.098719835
		 0.0086355507 -0.13542254 0.10364036 0.0086355507 -0.13367143 0.10049624 0.0086355507 -0.1307615 0.098378628
		 0.0086355507 -0.12708268 0.097797759 0.01165536 -0.12304749 0.098719835 0.01165536 -0.12708268 0.097797759
		 0.01165536 -0.1307615 0.098378628 0.01165536 -0.13367143 0.10049624 0.01165536 -0.13542254 0.10364036
		 0.01165536 -0.11682314 0.10743533 0.01165536 -0.11765096 0.10408911 0.01165536 -0.11975271 0.10099145
		 0.01165536 -0.11719096 0.11086274 0.0086355507 -0.11975271 0.10099145 0.0086355507 -0.11765096 0.10408911
		 0.0086355507 -0.11682314 0.10743533 0.0086355507 -0.11719096 0.11086274 0.0067112744 -0.13238595 0.2049178
		 0.0067112744 -0.13811488 0.19026327 0.0067112744 -0.14142033 0.17794234 0.0072315037 -0.14368552 0.16116551
		 0.0086355507 -0.1431511 0.14148706 0.0086355507 -0.13857056 0.1239681 0.0097312033 -0.1107246 0.19807947
		 0.0067112744 -0.1107246 0.19807947 0.01022473 -0.1466399 0.16127196 0.0097284615 -0.14435507 0.17832203
		 0.011652499 -0.14609791 0.14119297 0.01165393 -0.1414986 0.12352481 0.0097296536 -0.14101113 0.19052267
		 0.0097296536 -0.13529398 0.20547751;
	setAttr -s 234 ".ed";
	setAttr ".ed[0:165]"  0 1 1 2 3 1 0 2 0 1 3 0 2 45 1 1 4 0 0 5 0 5 4 1 6 66 1
		 4 7 0 5 8 0 8 7 1 6 26 0 7 38 0 8 42 0 2 9 0 3 10 0 9 10 0 9 44 1 9 11 0 10 12 1
		 11 12 1 11 43 0 9 13 0 10 14 0 12 61 0 11 62 0 13 17 0 14 18 0 17 18 1 15 21 0 18 20 0
		 16 24 0 17 22 0 20 22 1 24 21 1 20 19 0 19 23 1 23 22 0 19 21 0 24 23 0 25 30 1 34 26 1
		 42 38 1 25 29 0 29 31 1 31 30 0 29 28 0 28 32 1 32 31 0 28 27 0 27 33 1 33 32 0 27 26 0
		 34 33 0 30 37 0 37 39 1 39 25 0 37 36 0 36 40 1 40 39 0 36 35 0 35 41 1 41 40 0 35 38 0
		 42 41 0 46 0 1 47 5 1 48 8 1 44 49 1 43 51 0 51 49 0 51 52 0 50 52 0 45 53 1 49 53 0
		 54 50 0 54 55 0 46 56 1 53 56 0 47 57 1 56 57 0 55 58 0 48 59 0 57 59 0 6 60 0 58 60 0
		 60 59 0 6 48 0 43 44 0 44 45 0 45 46 0 46 47 0 47 48 0 15 16 1 61 15 0 62 16 0 61 62 1
		 14 61 1 15 18 1 13 62 1 16 17 1 22 24 1 20 21 1 68 52 0 63 64 0 64 3 1 65 63 0 64 67 0
		 67 10 1 66 65 0 7 66 0 67 68 0 68 12 0 1 63 1 4 65 1 64 54 1 50 67 1 63 55 1 65 58 1
		 13 14 1 43 68 1 34 66 0 69 70 1 71 72 1 69 71 0 70 72 0 71 114 1 70 73 0 69 74 0
		 74 73 1 75 123 1 73 76 0 74 77 0 77 76 1 75 95 0 76 107 0 77 111 0 71 78 0 72 79 0
		 78 79 0 78 113 1 78 80 0 79 81 1 80 81 1 80 112 0 78 82 0 79 83 0 81 118 0 80 119 0
		 82 86 0 83 87 0 86 87 1 84 90 0 87 89 0 85 93 0 86 91 0 89 91 1 93 90 1 89 88 0 88 92 1
		 92 91 0 88 90 0 93 92 0 94 99 1 103 95 1;
	setAttr ".ed[166:233]" 111 107 1 94 98 0 98 100 1 100 99 0 98 97 0 97 101 1
		 101 100 0 97 96 0 96 102 1 102 101 0 96 95 0 103 102 0 99 106 0 106 108 1 108 94 0
		 106 105 0 105 109 1 109 108 0 105 104 0 104 110 1 110 109 0 104 107 0 111 110 0 115 69 1
		 116 74 1 117 77 1 113 49 1 112 51 0 114 53 1 115 56 1 116 57 1 117 59 0 75 60 0 75 117 0
		 112 113 0 113 114 0 114 115 0 115 116 0 116 117 0 84 85 1 118 84 0 119 85 0 118 119 1
		 83 118 1 84 87 1 82 119 1 85 86 1 91 93 1 89 90 1 125 52 0 120 121 0 121 72 1 122 120 0
		 121 124 0 124 79 1 123 122 0 76 123 0 124 125 0 125 81 0 70 120 1 73 122 1 121 54 1
		 50 124 1 120 55 1 122 58 1 82 83 1 112 125 1 103 123 0;
	setAttr -s 110 -ch 468 ".fc[0:109]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 0 1 2 3
		f 4 66 2 4 91
		mu 0 4 4 5 6 7
		f 4 -1 6 7 -6
		mu 0 4 1 0 8 9
		f 4 67 -7 -67 92
		mu 0 4 10 11 5 4
		f 4 -8 10 11 -10
		mu 0 4 9 8 12 13
		f 4 68 -11 -68 93
		mu 0 4 14 15 11 10
		f 11 13 -65 -62 -59 -56 -47 -50 -53 -55 122 -112
		mu 0 11 16 17 18 19 20 21 22 23 24 25 26
		f 4 -12 14 43 -14
		mu 0 4 27 28 29 30
		f 4 1 16 -18 -16
		mu 0 4 3 2 31 32
		f 4 -5 15 18 90
		mu 0 4 7 6 33 34
		f 4 29 31 34 -34
		mu 0 4 35 36 37 38
		f 4 -19 19 22 89
		mu 0 4 34 33 39 40
		f 4 94 32 35 -31
		mu 0 4 41 42 43 44
		f 4 100 -27 -20 23
		mu 0 4 45 46 39 33
		f 4 28 -30 -28 120
		mu 0 4 47 36 35 48
		f 4 36 37 38 -35
		mu 0 4 37 49 50 38
		f 4 39 -36 40 -38
		mu 0 4 51 44 43 52
		f 4 99 -29 98 95
		mu 0 4 53 54 55 56
		f 4 44 45 46 -42
		mu 0 4 57 58 59 60
		f 4 47 48 49 -46
		mu 0 4 58 61 62 59
		f 4 50 51 52 -49
		mu 0 4 61 63 64 62
		f 4 53 -43 54 -52
		mu 0 4 63 65 66 64
		f 4 55 56 57 41
		mu 0 4 60 67 68 57
		f 4 58 59 60 -57
		mu 0 4 67 69 70 68
		f 4 61 62 63 -60
		mu 0 4 69 71 72 70
		f 4 64 -44 65 -63
		mu 0 4 71 30 29 72
		f 4 83 -88 -86 88
		mu 0 4 73 74 75 76
		f 12 -89 12 -54 -51 -48 -45 -58 -61 -64 -66 -15 -69
		mu 0 12 14 77 78 79 80 81 82 83 84 85 86 15
		f 4 -90 70 71 -70
		mu 0 4 87 88 89 90
		f 4 -91 69 75 -75
		mu 0 4 91 87 90 92
		f 4 -92 74 79 -79
		mu 0 4 93 91 92 94
		f 4 -93 78 81 -81
		mu 0 4 95 93 94 96
		f 4 -94 80 84 -84
		mu 0 4 97 95 96 98
		f 4 -96 97 96 -95
		mu 0 4 41 99 100 42
		f 4 -98 -26 -22 26
		mu 0 4 100 99 101 102
		f 4 -99 -25 20 25
		mu 0 4 56 55 103 104
		f 3 103 -40 -37
		mu 0 3 105 106 107
		f 4 101 33 102 -33
		mu 0 4 108 109 110 111
		f 4 -97 -101 27 -102
		mu 0 4 108 46 45 109
		f 3 -103 -39 -41
		mu 0 3 111 110 112
		f 4 30 -104 -32 -100
		mu 0 4 53 106 105 54
		f 4 111 110 -116 9
		mu 0 4 16 26 113 114
		f 4 -109 116 76 117
		mu 0 4 115 116 117 118
		f 4 -113 -118 73 -105
		mu 0 4 119 115 118 120
		f 4 118 -78 -117 -106
		mu 0 4 121 122 117 116
		f 4 119 -83 -119 -108
		mu 0 4 123 124 122 121
		f 5 85 -87 -120 -111 -9
		mu 0 5 125 126 124 123 127
		f 4 121 104 -73 -71
		mu 0 4 128 129 130 131
		f 4 105 106 -4 114
		mu 0 4 132 133 134 135
		f 4 -107 108 109 -17
		mu 0 4 134 133 136 103
		f 4 107 -115 5 115
		mu 0 4 113 132 135 114
		f 4 -110 112 113 -21
		mu 0 4 103 136 137 104
		f 4 -121 -24 17 24
		mu 0 4 47 48 138 139
		f 4 -23 21 -114 -122
		mu 0 4 128 102 101 129
		f 4 -123 42 -13 8
		mu 0 4 140 66 65 141
		f 4 125 124 -127 -124
		mu 0 4 142 143 144 145
		f 4 -203 -128 -126 -190
		mu 0 4 146 147 148 149
		f 4 128 -131 -130 123
		mu 0 4 145 150 151 142
		f 4 -204 189 129 -191
		mu 0 4 152 146 149 153
		f 4 132 -135 -134 130
		mu 0 4 150 154 155 151
		f 4 -205 190 133 -192
		mu 0 4 156 152 153 157
		f 11 222 -234 177 175 172 169 178 181 184 187 -137
		mu 0 11 158 159 160 161 162 163 164 165 166 167 168
		f 4 136 -167 -138 134
		mu 0 4 169 170 171 172
		f 4 138 140 -140 -125
		mu 0 4 143 173 174 144
		f 4 -202 -142 -139 127
		mu 0 4 147 175 176 148
		f 4 156 -158 -155 -153
		mu 0 4 177 178 179 180
		f 4 -201 -146 -143 141
		mu 0 4 175 181 182 176
		f 4 153 -159 -156 -206
		mu 0 4 183 184 185 186
		f 4 -147 142 149 -212
		mu 0 4 187 176 182 188
		f 4 -232 150 152 -152
		mu 0 4 189 190 177 180
		f 4 157 -162 -161 -160
		mu 0 4 179 178 191 192
		f 4 160 -164 158 -163
		mu 0 4 193 194 185 184
		f 4 -207 -210 151 -211
		mu 0 4 195 196 197 198
		f 4 164 -170 -169 -168
		mu 0 4 199 200 201 202
		f 4 168 -173 -172 -171
		mu 0 4 202 201 203 204
		f 4 171 -176 -175 -174
		mu 0 4 204 203 205 206
		f 4 174 -178 165 -177
		mu 0 4 206 205 207 208
		f 4 -165 -181 -180 -179
		mu 0 4 200 199 209 210
		f 4 179 -184 -183 -182
		mu 0 4 210 209 211 212
		f 4 182 -187 -186 -185
		mu 0 4 212 211 213 214
		f 4 185 -189 166 -188
		mu 0 4 214 213 171 170
		f 4 -200 198 87 -198
		mu 0 4 215 216 217 218
		f 12 191 137 188 186 183 180 167 170 173 176 -136 199
		mu 0 12 156 157 219 220 221 222 223 224 225 226 227 228
		f 4 192 -72 -194 200
		mu 0 4 229 230 231 232
		f 4 194 -76 -193 201
		mu 0 4 233 234 230 229
		f 4 195 -80 -195 202
		mu 0 4 235 236 234 233
		f 4 196 -82 -196 203
		mu 0 4 237 238 236 235
		f 4 197 -85 -197 204
		mu 0 4 239 240 238 237
		f 4 205 -208 -209 206
		mu 0 4 183 186 241 242
		f 4 -150 144 148 208
		mu 0 4 241 243 244 242
		f 4 -149 -144 147 209
		mu 0 4 196 245 246 197
		f 3 159 162 -215
		mu 0 3 247 248 249
		f 4 155 -214 -157 -213
		mu 0 4 250 251 252 253
		f 4 212 -151 211 207
		mu 0 4 250 253 187 188
		f 3 163 161 213
		mu 0 3 251 254 252
		f 4 210 154 214 -154
		mu 0 4 195 198 247 249
		f 4 -133 226 -222 -223
		mu 0 4 158 255 256 159
		f 4 -229 -77 -228 219
		mu 0 4 257 258 259 260
		f 4 215 -74 228 223
		mu 0 4 261 262 258 257
		f 4 216 227 77 -230
		mu 0 4 263 260 259 264
		f 4 218 229 82 -231
		mu 0 4 265 263 264 266
		f 5 131 221 230 86 -199
		mu 0 5 267 268 265 266 269
		f 4 193 72 -216 -233
		mu 0 4 270 271 272 273
		f 4 -226 126 -218 -217
		mu 0 4 274 275 276 277
		f 4 139 -221 -220 217
		mu 0 4 276 246 278 277
		f 4 -227 -129 225 -219
		mu 0 4 256 255 275 274
		f 4 143 -225 -224 220
		mu 0 4 246 245 279 278
		f 4 -148 -141 146 231
		mu 0 4 189 280 281 190
		f 4 232 224 -145 145
		mu 0 4 270 273 244 243
		f 4 -132 135 -166 233
		mu 0 4 282 283 208 207;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "grabNode1" -p "hose_main_component1";
	rename -uid "176E82C5-4281-DD8A-DDCB-CEBBB88754E5";
	addAttr -ci true -sn "i3D_objectMask" -ln "i3D_objectMask" -at "long";
	addAttr -ci true -sn "i3D_dynamic" -ln "i3D_dynamic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_joint" -ln "i3D_joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_dynamicFriction" -ln "i3D_dynamicFriction" -at "float";
	addAttr -ci true -sn "i3D_ccd" -ln "i3D_ccd" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_density" -ln "i3D_density" -at "float";
	addAttr -ci true -sn "i3D_splitType" -ln "i3D_splitType" -at "long";
	addAttr -ci true -sn "i3D_splitMinU" -ln "i3D_splitMinU" -at "float";
	addAttr -ci true -sn "i3D_splitMinV" -ln "i3D_splitMinV" -at "float";
	addAttr -ci true -sn "i3D_driveForceLimit" -ln "i3D_driveForceLimit" -at "float";
	addAttr -ci true -sn "i3D_angularDamping" -ln "i3D_angularDamping" -at "float";
	addAttr -ci true -sn "i3D_splitUvWorldScale" -ln "i3D_splitUvWorldScale" -at "float";
	addAttr -ci true -sn "i3D_projection" -ln "i3D_projection" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_driveSpring" -ln "i3D_driveSpring" -at "float";
	addAttr -ci true -sn "i3D_breakableJoint" -ln "i3D_breakableJoint" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_projDistance" -ln "i3D_projDistance" -at "float";
	addAttr -ci true -sn "i3D_driveDamping" -ln "i3D_driveDamping" -at "float";
	addAttr -ci true -sn "i3D_xAxisDrive" -ln "i3D_xAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_compound" -ln "i3D_compound" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_clipDistance" -ln "i3D_clipDistance" -at "float";
	addAttr -ci true -sn "i3D_collision" -ln "i3D_collision" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_projAngle" -ln "i3D_projAngle" -at "float";
	addAttr -ci true -sn "i3D_mergeGroupRoot" -ln "i3D_mergeGroupRoot" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_jointBreakTorque" -ln "i3D_jointBreakTorque" -at "float";
	addAttr -ci true -sn "i3D_restitution" -ln "i3D_restitution" -at "float";
	addAttr -ci true -sn "i3D_yAxisDrive" -ln "i3D_yAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_mergeGroup" -ln "i3D_mergeGroup" -at "long";
	addAttr -ci true -sn "i3D_jointBreakForce" -ln "i3D_jointBreakForce" -at "float";
	addAttr -ci true -sn "i3D_lod1" -ln "i3D_lod1" -at "float";
	addAttr -ci true -sn "i3D_lod2" -ln "i3D_lod2" -at "float";
	addAttr -ci true -sn "i3D_oc" -ln "i3D_oc" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_kinematic" -ln "i3D_kinematic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_trigger" -ln "i3D_trigger" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_static" -ln "i3D_static" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lightMask" -ln "i3D_lightMask" -dt "string";
	addAttr -ci true -sn "i3D_linearDamping" -ln "i3D_linearDamping" -at "float";
	addAttr -ci true -sn "i3D_lod3" -ln "i3D_lod3" -at "float";
	addAttr -ci true -sn "i3D_drivePos" -ln "i3D_drivePos" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lod" -ln "i3D_lod" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_solverIterationCount" -ln "i3D_solverIterationCount" -at "long";
	addAttr -ci true -sn "i3D_nonRenderable" -ln "i3D_nonRenderable" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_boundingVolume" -ln "i3D_boundingVolume" -dt "string";
	addAttr -ci true -sn "i3D_collisionMask" -ln "i3D_collisionMask" -at "long";
	addAttr -ci true -sn "i3D_zAxisDrive" -ln "i3D_zAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_staticFriction" -ln "i3D_staticFriction" -at "float";
	addAttr -ci true -sn "i3D_decalLayer" -ln "i3D_decalLayer" -at "long";
	addAttr -ci true -sn "i3D_splitMaxV" -ln "i3D_splitMaxV" -at "float";
	addAttr -ci true -sn "i3D_splitMaxU" -ln "i3D_splitMaxU" -at "float";
	addAttr -ci true -sn "i3D_compoundChild" -ln "i3D_compoundChild" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_xmlIdentifier" -ln "i3D_xmlIdentifier" -dt "string";
	setAttr ".i3D_objectMask" 255;
	setAttr ".i3D_dynamicFriction" 0.5;
	setAttr ".i3D_density" 1;
	setAttr ".i3D_driveForceLimit" 100000;
	setAttr ".i3D_angularDamping" 0.0099999997764825821;
	setAttr ".i3D_splitUvWorldScale" 1;
	setAttr ".i3D_driveSpring" 1;
	setAttr ".i3D_projDistance" 0.0099999997764825821;
	setAttr ".i3D_driveDamping" 0.0099999997764825821;
	setAttr ".i3D_clipDistance" 300;
	setAttr ".i3D_projAngle" 0.0099999997764825821;
	setAttr ".i3D_lightMask" -type "string" "FFFF";
	setAttr ".i3D_solverIterationCount" 4;
	setAttr ".i3D_boundingVolume" -type "string" "MERGEGROUP_5";
	setAttr ".i3D_collisionMask" 255;
	setAttr ".i3D_staticFriction" 0.5;
	setAttr ".i3D_splitMaxV" 1;
	setAttr ".i3D_splitMaxU" 1;
	setAttr ".i3D_xmlIdentifier" -type "string" "grabNode1";
createNode transform -n "componentJoint1" -p "hose_main_component1";
	rename -uid "AF3B5FD1-4730-31D1-D0C8-86A941544A3E";
	addAttr -ci true -sn "i3D_objectMask" -ln "i3D_objectMask" -at "long";
	addAttr -ci true -sn "i3D_dynamic" -ln "i3D_dynamic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_joint" -ln "i3D_joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_dynamicFriction" -ln "i3D_dynamicFriction" -at "float";
	addAttr -ci true -sn "i3D_ccd" -ln "i3D_ccd" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_density" -ln "i3D_density" -at "float";
	addAttr -ci true -sn "i3D_splitType" -ln "i3D_splitType" -at "long";
	addAttr -ci true -sn "i3D_splitMinU" -ln "i3D_splitMinU" -at "float";
	addAttr -ci true -sn "i3D_splitMinV" -ln "i3D_splitMinV" -at "float";
	addAttr -ci true -sn "i3D_driveForceLimit" -ln "i3D_driveForceLimit" -at "float";
	addAttr -ci true -sn "i3D_angularDamping" -ln "i3D_angularDamping" -at "float";
	addAttr -ci true -sn "i3D_splitUvWorldScale" -ln "i3D_splitUvWorldScale" -at "float";
	addAttr -ci true -sn "i3D_projection" -ln "i3D_projection" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_driveSpring" -ln "i3D_driveSpring" -at "float";
	addAttr -ci true -sn "i3D_breakableJoint" -ln "i3D_breakableJoint" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_projDistance" -ln "i3D_projDistance" -at "float";
	addAttr -ci true -sn "i3D_driveDamping" -ln "i3D_driveDamping" -at "float";
	addAttr -ci true -sn "i3D_xAxisDrive" -ln "i3D_xAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_compound" -ln "i3D_compound" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_clipDistance" -ln "i3D_clipDistance" -at "float";
	addAttr -ci true -sn "i3D_collision" -ln "i3D_collision" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_projAngle" -ln "i3D_projAngle" -at "float";
	addAttr -ci true -sn "i3D_mergeGroupRoot" -ln "i3D_mergeGroupRoot" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_jointBreakTorque" -ln "i3D_jointBreakTorque" -at "float";
	addAttr -ci true -sn "i3D_restitution" -ln "i3D_restitution" -at "float";
	addAttr -ci true -sn "i3D_yAxisDrive" -ln "i3D_yAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_mergeGroup" -ln "i3D_mergeGroup" -at "long";
	addAttr -ci true -sn "i3D_jointBreakForce" -ln "i3D_jointBreakForce" -at "float";
	addAttr -ci true -sn "i3D_lod1" -ln "i3D_lod1" -at "float";
	addAttr -ci true -sn "i3D_lod2" -ln "i3D_lod2" -at "float";
	addAttr -ci true -sn "i3D_oc" -ln "i3D_oc" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_kinematic" -ln "i3D_kinematic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_trigger" -ln "i3D_trigger" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_static" -ln "i3D_static" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lightMask" -ln "i3D_lightMask" -dt "string";
	addAttr -ci true -sn "i3D_linearDamping" -ln "i3D_linearDamping" -at "float";
	addAttr -ci true -sn "i3D_lod3" -ln "i3D_lod3" -at "float";
	addAttr -ci true -sn "i3D_drivePos" -ln "i3D_drivePos" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lod" -ln "i3D_lod" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_solverIterationCount" -ln "i3D_solverIterationCount" -at "long";
	addAttr -ci true -sn "i3D_nonRenderable" -ln "i3D_nonRenderable" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_boundingVolume" -ln "i3D_boundingVolume" -dt "string";
	addAttr -ci true -sn "i3D_collisionMask" -ln "i3D_collisionMask" -at "long";
	addAttr -ci true -sn "i3D_zAxisDrive" -ln "i3D_zAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_staticFriction" -ln "i3D_staticFriction" -at "float";
	addAttr -ci true -sn "i3D_decalLayer" -ln "i3D_decalLayer" -at "long";
	addAttr -ci true -sn "i3D_splitMaxV" -ln "i3D_splitMaxV" -at "float";
	addAttr -ci true -sn "i3D_splitMaxU" -ln "i3D_splitMaxU" -at "float";
	addAttr -ci true -sn "i3D_compoundChild" -ln "i3D_compoundChild" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_xmlIdentifier" -ln "i3D_xmlIdentifier" -dt "string";
	setAttr ".t" -type "double3" 1.8369701961596905e-16 0 -1.125 ;
	setAttr ".dla" yes;
	setAttr ".i3D_objectMask" 255;
	setAttr ".i3D_dynamicFriction" 0.5;
	setAttr ".i3D_density" 1;
	setAttr ".i3D_driveForceLimit" 100000;
	setAttr ".i3D_angularDamping" 0.0099999997764825821;
	setAttr ".i3D_splitUvWorldScale" 1;
	setAttr ".i3D_driveSpring" 1;
	setAttr ".i3D_projDistance" 0.0099999997764825821;
	setAttr ".i3D_driveDamping" 0.0099999997764825821;
	setAttr ".i3D_clipDistance" 300;
	setAttr ".i3D_projAngle" 0.0099999997764825821;
	setAttr ".i3D_lightMask" -type "string" "FFFF";
	setAttr ".i3D_solverIterationCount" 4;
	setAttr ".i3D_boundingVolume" -type "string" "MERGEGROUP_5";
	setAttr ".i3D_collisionMask" 255;
	setAttr ".i3D_staticFriction" 0.5;
	setAttr ".i3D_splitMaxV" 1;
	setAttr ".i3D_splitMaxU" 1;
	setAttr ".i3D_xmlIdentifier" -type "string" "componentJoint1";
createNode transform -n "raycastNode1" -p "hose_main_component1";
	rename -uid "133CD733-435D-4A80-346C-0E81C385C7D1";
	addAttr -ci true -sn "i3D_objectMask" -ln "i3D_objectMask" -at "long";
	addAttr -ci true -sn "i3D_dynamic" -ln "i3D_dynamic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_joint" -ln "i3D_joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_dynamicFriction" -ln "i3D_dynamicFriction" -at "float";
	addAttr -ci true -sn "i3D_ccd" -ln "i3D_ccd" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_density" -ln "i3D_density" -at "float";
	addAttr -ci true -sn "i3D_splitType" -ln "i3D_splitType" -at "long";
	addAttr -ci true -sn "i3D_splitMinU" -ln "i3D_splitMinU" -at "float";
	addAttr -ci true -sn "i3D_splitMinV" -ln "i3D_splitMinV" -at "float";
	addAttr -ci true -sn "i3D_driveForceLimit" -ln "i3D_driveForceLimit" -at "float";
	addAttr -ci true -sn "i3D_angularDamping" -ln "i3D_angularDamping" -at "float";
	addAttr -ci true -sn "i3D_splitUvWorldScale" -ln "i3D_splitUvWorldScale" -at "float";
	addAttr -ci true -sn "i3D_projection" -ln "i3D_projection" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_driveSpring" -ln "i3D_driveSpring" -at "float";
	addAttr -ci true -sn "i3D_breakableJoint" -ln "i3D_breakableJoint" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_projDistance" -ln "i3D_projDistance" -at "float";
	addAttr -ci true -sn "i3D_driveDamping" -ln "i3D_driveDamping" -at "float";
	addAttr -ci true -sn "i3D_xAxisDrive" -ln "i3D_xAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_compound" -ln "i3D_compound" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_clipDistance" -ln "i3D_clipDistance" -at "float";
	addAttr -ci true -sn "i3D_collision" -ln "i3D_collision" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_projAngle" -ln "i3D_projAngle" -at "float";
	addAttr -ci true -sn "i3D_mergeGroupRoot" -ln "i3D_mergeGroupRoot" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_jointBreakTorque" -ln "i3D_jointBreakTorque" -at "float";
	addAttr -ci true -sn "i3D_restitution" -ln "i3D_restitution" -at "float";
	addAttr -ci true -sn "i3D_yAxisDrive" -ln "i3D_yAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_mergeGroup" -ln "i3D_mergeGroup" -at "long";
	addAttr -ci true -sn "i3D_jointBreakForce" -ln "i3D_jointBreakForce" -at "float";
	addAttr -ci true -sn "i3D_lod1" -ln "i3D_lod1" -at "float";
	addAttr -ci true -sn "i3D_lod2" -ln "i3D_lod2" -at "float";
	addAttr -ci true -sn "i3D_oc" -ln "i3D_oc" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_kinematic" -ln "i3D_kinematic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_trigger" -ln "i3D_trigger" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_static" -ln "i3D_static" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lightMask" -ln "i3D_lightMask" -dt "string";
	addAttr -ci true -sn "i3D_linearDamping" -ln "i3D_linearDamping" -at "float";
	addAttr -ci true -sn "i3D_lod3" -ln "i3D_lod3" -at "float";
	addAttr -ci true -sn "i3D_drivePos" -ln "i3D_drivePos" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lod" -ln "i3D_lod" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_solverIterationCount" -ln "i3D_solverIterationCount" -at "long";
	addAttr -ci true -sn "i3D_nonRenderable" -ln "i3D_nonRenderable" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_boundingVolume" -ln "i3D_boundingVolume" -dt "string";
	addAttr -ci true -sn "i3D_collisionMask" -ln "i3D_collisionMask" -at "long";
	addAttr -ci true -sn "i3D_zAxisDrive" -ln "i3D_zAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_staticFriction" -ln "i3D_staticFriction" -at "float";
	addAttr -ci true -sn "i3D_decalLayer" -ln "i3D_decalLayer" -at "long";
	addAttr -ci true -sn "i3D_splitMaxV" -ln "i3D_splitMaxV" -at "float";
	addAttr -ci true -sn "i3D_splitMaxU" -ln "i3D_splitMaxU" -at "float";
	addAttr -ci true -sn "i3D_compoundChild" -ln "i3D_compoundChild" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_xmlIdentifier" -ln "i3D_xmlIdentifier" -dt "string";
	setAttr ".i3D_objectMask" 255;
	setAttr ".i3D_dynamicFriction" 0.5;
	setAttr ".i3D_density" 1;
	setAttr ".i3D_driveForceLimit" 100000;
	setAttr ".i3D_angularDamping" 0.0099999997764825821;
	setAttr ".i3D_splitUvWorldScale" 1;
	setAttr ".i3D_driveSpring" 1;
	setAttr ".i3D_projDistance" 0.0099999997764825821;
	setAttr ".i3D_driveDamping" 0.0099999997764825821;
	setAttr ".i3D_clipDistance" 300;
	setAttr ".i3D_projAngle" 0.0099999997764825821;
	setAttr ".i3D_lightMask" -type "string" "FFFF";
	setAttr ".i3D_solverIterationCount" 4;
	setAttr ".i3D_boundingVolume" -type "string" "MERGEGROUP_5";
	setAttr ".i3D_collisionMask" 255;
	setAttr ".i3D_staticFriction" 0.5;
	setAttr ".i3D_splitMaxV" 1;
	setAttr ".i3D_splitMaxU" 1;
	setAttr ".i3D_xmlIdentifier" -type "string" "raycastNode1";
createNode transform -n "hose_main_component2";
	rename -uid "5C3692F0-4663-C8E6-5AC3-289E9687BE35";
	addAttr -ci true -sn "i3D_objectMask" -ln "i3D_objectMask" -at "long";
	addAttr -ci true -sn "i3D_dynamic" -ln "i3D_dynamic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_joint" -ln "i3D_joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_dynamicFriction" -ln "i3D_dynamicFriction" -at "float";
	addAttr -ci true -sn "i3D_ccd" -ln "i3D_ccd" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_density" -ln "i3D_density" -at "float";
	addAttr -ci true -sn "i3D_splitType" -ln "i3D_splitType" -at "long";
	addAttr -ci true -sn "i3D_splitMinU" -ln "i3D_splitMinU" -at "float";
	addAttr -ci true -sn "i3D_splitMinV" -ln "i3D_splitMinV" -at "float";
	addAttr -ci true -sn "i3D_driveForceLimit" -ln "i3D_driveForceLimit" -at "float";
	addAttr -ci true -sn "i3D_angularDamping" -ln "i3D_angularDamping" -at "float";
	addAttr -ci true -sn "i3D_splitUvWorldScale" -ln "i3D_splitUvWorldScale" -at "float";
	addAttr -ci true -sn "i3D_projection" -ln "i3D_projection" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_driveSpring" -ln "i3D_driveSpring" -at "float";
	addAttr -ci true -sn "i3D_breakableJoint" -ln "i3D_breakableJoint" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_projDistance" -ln "i3D_projDistance" -at "float";
	addAttr -ci true -sn "i3D_driveDamping" -ln "i3D_driveDamping" -at "float";
	addAttr -ci true -sn "i3D_xAxisDrive" -ln "i3D_xAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_compound" -ln "i3D_compound" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_clipDistance" -ln "i3D_clipDistance" -at "float";
	addAttr -ci true -sn "i3D_collision" -ln "i3D_collision" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_scaled" -ln "i3D_scaled" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_projAngle" -ln "i3D_projAngle" -at "float";
	addAttr -ci true -sn "i3D_mergeGroupRoot" -ln "i3D_mergeGroupRoot" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_jointBreakTorque" -ln "i3D_jointBreakTorque" -at "float";
	addAttr -ci true -sn "i3D_restitution" -ln "i3D_restitution" -at "float";
	addAttr -ci true -sn "i3D_yAxisDrive" -ln "i3D_yAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_mergeGroup" -ln "i3D_mergeGroup" -at "long";
	addAttr -ci true -sn "i3D_jointBreakForce" -ln "i3D_jointBreakForce" -at "float";
	addAttr -ci true -sn "i3D_lod1" -ln "i3D_lod1" -at "float";
	addAttr -ci true -sn "i3D_lod2" -ln "i3D_lod2" -at "float";
	addAttr -ci true -sn "i3D_oc" -ln "i3D_oc" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_kinematic" -ln "i3D_kinematic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_trigger" -ln "i3D_trigger" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_static" -ln "i3D_static" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lightMask" -ln "i3D_lightMask" -dt "string";
	addAttr -ci true -sn "i3D_linearDamping" -ln "i3D_linearDamping" -at "float";
	addAttr -ci true -sn "i3D_lod3" -ln "i3D_lod3" -at "float";
	addAttr -ci true -sn "i3D_drivePos" -ln "i3D_drivePos" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lod" -ln "i3D_lod" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_solverIterationCount" -ln "i3D_solverIterationCount" -at "long";
	addAttr -ci true -sn "i3D_nonRenderable" -ln "i3D_nonRenderable" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_boundingVolume" -ln "i3D_boundingVolume" -dt "string";
	addAttr -ci true -sn "i3D_collisionMask" -ln "i3D_collisionMask" -at "long";
	addAttr -ci true -sn "i3D_zAxisDrive" -ln "i3D_zAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_cpuMesh" -ln "i3D_cpuMesh" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_staticFriction" -ln "i3D_staticFriction" -at "float";
	addAttr -ci true -sn "i3D_decalLayer" -ln "i3D_decalLayer" -at "long";
	addAttr -ci true -sn "i3D_splitMaxV" -ln "i3D_splitMaxV" -at "float";
	addAttr -ci true -sn "i3D_splitMaxU" -ln "i3D_splitMaxU" -at "float";
	addAttr -ci true -sn "i3D_compoundChild" -ln "i3D_compoundChild" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_xmlIdentifier" -ln "i3D_xmlIdentifier" -dt "string";
	setAttr ".t" -type "double3" 7.4505805969238281e-09 -3.7252902984619141e-09 -1.85 ;
	setAttr ".i3D_objectMask" 255;
	setAttr ".i3D_dynamic" yes;
	setAttr ".i3D_dynamicFriction" 0.5;
	setAttr ".i3D_density" 1;
	setAttr ".i3D_driveForceLimit" 100000;
	setAttr ".i3D_angularDamping" 0.0099999997764825821;
	setAttr ".i3D_splitUvWorldScale" 1;
	setAttr ".i3D_driveSpring" 1;
	setAttr ".i3D_projDistance" 0.0099999997764825821;
	setAttr ".i3D_driveDamping" 0.0099999997764825821;
	setAttr ".i3D_compound" yes;
	setAttr ".i3D_clipDistance" 300;
	setAttr ".i3D_collision" yes;
	setAttr ".i3D_projAngle" 0.0099999997764825821;
	setAttr ".i3D_lightMask" -type "string" "FFFF";
	setAttr ".i3D_solverIterationCount" 4;
	setAttr ".i3D_nonRenderable" yes;
	setAttr ".i3D_boundingVolume" -type "string" "";
	setAttr ".i3D_collisionMask" 8194;
	setAttr ".i3D_cpuMesh" yes;
	setAttr ".i3D_staticFriction" 0.5;
	setAttr ".i3D_splitMaxV" 1;
	setAttr ".i3D_splitMaxU" 1;
	setAttr ".i3D_xmlIdentifier" -type "string" "hose_main_component2";
createNode mesh -n "hose_main_componentShape2" -p "hose_main_component2";
	rename -uid "CFBBE25A-48A8-5D8D-91DF-D5A71D4D3EB6";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-08 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt[0:17]" -type "float3"  -7.4505806e-09 3.7252903e-09 
		2.4726563 -7.4505806e-09 3.7252903e-09 2.4726563 -7.4505806e-09 3.7252903e-09 2.4726563 
		-7.4505806e-09 3.7252903e-09 2.4726563 -7.4505806e-09 3.7252903e-09 2.4726563 -7.4505806e-09 
		3.7252903e-09 2.4726563 -7.4505806e-09 3.7252903e-09 2.4726563 -7.4505806e-09 3.7252903e-09 
		2.4726563 -7.4505806e-09 3.7252903e-09 0.52734375 -7.4505806e-09 3.7252903e-09 0.52734375 
		-7.4505806e-09 3.7252903e-09 0.52734375 -7.4505806e-09 3.7252903e-09 0.52734375 -7.4505806e-09 
		3.7252903e-09 0.52734375 -7.4505806e-09 3.7252903e-09 0.52734375 -7.4505806e-09 3.7252903e-09 
		0.52734375 -7.4505806e-09 3.7252903e-09 0.52734375 -7.4505806e-09 3.7252903e-09 2.4726563 
		-7.4505806e-09 3.7252903e-09 0.52734375;
	setAttr -s 18 ".vt[0:17]"  0.070710674 0.070710674 -3 0 0.099999987 -3
		 -0.070710674 0.070710674 -3 -0.099999987 -4.4408921e-16 -3 -0.070710674 -0.070710674 -3
		 0 -0.099999994 -3 0.070710681 -0.070710681 -3 0.1 -4.4408921e-16 -3 0.070710674 0.070710674 -1.5700924e-17
		 0 0.099999987 -2.2204458e-17 -0.070710674 0.070710674 -1.5700924e-17 -0.099999987 2.220446e-16 -4.9303807e-32
		 -0.070710674 -0.070710674 1.5700924e-17 0 -0.099999994 2.2204459e-17 0.070710681 -0.070710681 1.5700925e-17
		 0.1 2.220446e-16 -4.9303807e-32 0 -4.4408921e-16 -3 0 2.220446e-16 -4.9303807e-32;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1;
	setAttr -s 24 -ch 80 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 8 33 -33
		mu 0 3 32 31 35
		f 3 9 34 -34
		mu 0 3 31 30 35
		f 3 10 35 -35
		mu 0 3 30 29 35
		f 3 11 36 -36
		mu 0 3 29 28 35
		f 3 12 37 -37
		mu 0 3 28 27 35
		f 3 13 38 -38
		mu 0 3 27 26 35
		f 3 14 39 -39
		mu 0 3 26 33 35
		f 3 15 32 -40
		mu 0 3 33 32 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "componentJoint2" -p "hose_main_component2";
	rename -uid "5B46EFCD-4168-6126-05C2-F28BCAD7874B";
	addAttr -ci true -sn "i3D_objectMask" -ln "i3D_objectMask" -at "long";
	addAttr -ci true -sn "i3D_dynamic" -ln "i3D_dynamic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_joint" -ln "i3D_joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_dynamicFriction" -ln "i3D_dynamicFriction" -at "float";
	addAttr -ci true -sn "i3D_ccd" -ln "i3D_ccd" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_density" -ln "i3D_density" -at "float";
	addAttr -ci true -sn "i3D_splitType" -ln "i3D_splitType" -at "long";
	addAttr -ci true -sn "i3D_splitMinU" -ln "i3D_splitMinU" -at "float";
	addAttr -ci true -sn "i3D_splitMinV" -ln "i3D_splitMinV" -at "float";
	addAttr -ci true -sn "i3D_driveForceLimit" -ln "i3D_driveForceLimit" -at "float";
	addAttr -ci true -sn "i3D_angularDamping" -ln "i3D_angularDamping" -at "float";
	addAttr -ci true -sn "i3D_splitUvWorldScale" -ln "i3D_splitUvWorldScale" -at "float";
	addAttr -ci true -sn "i3D_projection" -ln "i3D_projection" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_driveSpring" -ln "i3D_driveSpring" -at "float";
	addAttr -ci true -sn "i3D_breakableJoint" -ln "i3D_breakableJoint" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_projDistance" -ln "i3D_projDistance" -at "float";
	addAttr -ci true -sn "i3D_driveDamping" -ln "i3D_driveDamping" -at "float";
	addAttr -ci true -sn "i3D_xAxisDrive" -ln "i3D_xAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_compound" -ln "i3D_compound" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_clipDistance" -ln "i3D_clipDistance" -at "float";
	addAttr -ci true -sn "i3D_collision" -ln "i3D_collision" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_projAngle" -ln "i3D_projAngle" -at "float";
	addAttr -ci true -sn "i3D_mergeGroupRoot" -ln "i3D_mergeGroupRoot" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_jointBreakTorque" -ln "i3D_jointBreakTorque" -at "float";
	addAttr -ci true -sn "i3D_restitution" -ln "i3D_restitution" -at "float";
	addAttr -ci true -sn "i3D_yAxisDrive" -ln "i3D_yAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_mergeGroup" -ln "i3D_mergeGroup" -at "long";
	addAttr -ci true -sn "i3D_jointBreakForce" -ln "i3D_jointBreakForce" -at "float";
	addAttr -ci true -sn "i3D_lod1" -ln "i3D_lod1" -at "float";
	addAttr -ci true -sn "i3D_lod2" -ln "i3D_lod2" -at "float";
	addAttr -ci true -sn "i3D_oc" -ln "i3D_oc" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_kinematic" -ln "i3D_kinematic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_trigger" -ln "i3D_trigger" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_static" -ln "i3D_static" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lightMask" -ln "i3D_lightMask" -dt "string";
	addAttr -ci true -sn "i3D_linearDamping" -ln "i3D_linearDamping" -at "float";
	addAttr -ci true -sn "i3D_lod3" -ln "i3D_lod3" -at "float";
	addAttr -ci true -sn "i3D_drivePos" -ln "i3D_drivePos" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lod" -ln "i3D_lod" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_solverIterationCount" -ln "i3D_solverIterationCount" -at "long";
	addAttr -ci true -sn "i3D_nonRenderable" -ln "i3D_nonRenderable" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_boundingVolume" -ln "i3D_boundingVolume" -dt "string";
	addAttr -ci true -sn "i3D_collisionMask" -ln "i3D_collisionMask" -at "long";
	addAttr -ci true -sn "i3D_zAxisDrive" -ln "i3D_zAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_staticFriction" -ln "i3D_staticFriction" -at "float";
	addAttr -ci true -sn "i3D_decalLayer" -ln "i3D_decalLayer" -at "long";
	addAttr -ci true -sn "i3D_splitMaxV" -ln "i3D_splitMaxV" -at "float";
	addAttr -ci true -sn "i3D_splitMaxU" -ln "i3D_splitMaxU" -at "float";
	addAttr -ci true -sn "i3D_compoundChild" -ln "i3D_compoundChild" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_xmlIdentifier" -ln "i3D_xmlIdentifier" -dt "string";
	setAttr ".t" -type "double3" -7.4505802295297881e-09 2.9802322387695313e-08 -1.40625 ;
	setAttr ".i3D_objectMask" 255;
	setAttr ".i3D_dynamicFriction" 0.5;
	setAttr ".i3D_density" 1;
	setAttr ".i3D_driveForceLimit" 100000;
	setAttr ".i3D_angularDamping" 0.0099999997764825821;
	setAttr ".i3D_splitUvWorldScale" 1;
	setAttr ".i3D_driveSpring" 1;
	setAttr ".i3D_projDistance" 0.0099999997764825821;
	setAttr ".i3D_driveDamping" 0.0099999997764825821;
	setAttr ".i3D_clipDistance" 300;
	setAttr ".i3D_projAngle" 0.0099999997764825821;
	setAttr ".i3D_lightMask" -type "string" "FFFF";
	setAttr ".i3D_solverIterationCount" 4;
	setAttr ".i3D_boundingVolume" -type "string" "MERGEGROUP_5";
	setAttr ".i3D_collisionMask" 255;
	setAttr ".i3D_staticFriction" 0.5;
	setAttr ".i3D_splitMaxV" 1;
	setAttr ".i3D_splitMaxU" 1;
	setAttr ".i3D_xmlIdentifier" -type "string" "componentJoint2";
createNode transform -n "hose_main_component3";
	rename -uid "4B79269C-4C79-93CD-3BC8-43ACB46D21B4";
	addAttr -ci true -sn "i3D_objectMask" -ln "i3D_objectMask" -at "long";
	addAttr -ci true -sn "i3D_dynamic" -ln "i3D_dynamic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_joint" -ln "i3D_joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_dynamicFriction" -ln "i3D_dynamicFriction" -at "float";
	addAttr -ci true -sn "i3D_ccd" -ln "i3D_ccd" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_density" -ln "i3D_density" -at "float";
	addAttr -ci true -sn "i3D_splitType" -ln "i3D_splitType" -at "long";
	addAttr -ci true -sn "i3D_splitMinU" -ln "i3D_splitMinU" -at "float";
	addAttr -ci true -sn "i3D_splitMinV" -ln "i3D_splitMinV" -at "float";
	addAttr -ci true -sn "i3D_driveForceLimit" -ln "i3D_driveForceLimit" -at "float";
	addAttr -ci true -sn "i3D_angularDamping" -ln "i3D_angularDamping" -at "float";
	addAttr -ci true -sn "i3D_splitUvWorldScale" -ln "i3D_splitUvWorldScale" -at "float";
	addAttr -ci true -sn "i3D_projection" -ln "i3D_projection" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_driveSpring" -ln "i3D_driveSpring" -at "float";
	addAttr -ci true -sn "i3D_breakableJoint" -ln "i3D_breakableJoint" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_projDistance" -ln "i3D_projDistance" -at "float";
	addAttr -ci true -sn "i3D_driveDamping" -ln "i3D_driveDamping" -at "float";
	addAttr -ci true -sn "i3D_xAxisDrive" -ln "i3D_xAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_compound" -ln "i3D_compound" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_clipDistance" -ln "i3D_clipDistance" -at "float";
	addAttr -ci true -sn "i3D_collision" -ln "i3D_collision" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_scaled" -ln "i3D_scaled" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_projAngle" -ln "i3D_projAngle" -at "float";
	addAttr -ci true -sn "i3D_mergeGroupRoot" -ln "i3D_mergeGroupRoot" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_jointBreakTorque" -ln "i3D_jointBreakTorque" -at "float";
	addAttr -ci true -sn "i3D_restitution" -ln "i3D_restitution" -at "float";
	addAttr -ci true -sn "i3D_yAxisDrive" -ln "i3D_yAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_mergeGroup" -ln "i3D_mergeGroup" -at "long";
	addAttr -ci true -sn "i3D_jointBreakForce" -ln "i3D_jointBreakForce" -at "float";
	addAttr -ci true -sn "i3D_lod1" -ln "i3D_lod1" -at "float";
	addAttr -ci true -sn "i3D_lod2" -ln "i3D_lod2" -at "float";
	addAttr -ci true -sn "i3D_oc" -ln "i3D_oc" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_kinematic" -ln "i3D_kinematic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_trigger" -ln "i3D_trigger" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_static" -ln "i3D_static" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lightMask" -ln "i3D_lightMask" -dt "string";
	addAttr -ci true -sn "i3D_linearDamping" -ln "i3D_linearDamping" -at "float";
	addAttr -ci true -sn "i3D_lod3" -ln "i3D_lod3" -at "float";
	addAttr -ci true -sn "i3D_drivePos" -ln "i3D_drivePos" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lod" -ln "i3D_lod" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_solverIterationCount" -ln "i3D_solverIterationCount" -at "long";
	addAttr -ci true -sn "i3D_nonRenderable" -ln "i3D_nonRenderable" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_boundingVolume" -ln "i3D_boundingVolume" -dt "string";
	addAttr -ci true -sn "i3D_collisionMask" -ln "i3D_collisionMask" -at "long";
	addAttr -ci true -sn "i3D_zAxisDrive" -ln "i3D_zAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_cpuMesh" -ln "i3D_cpuMesh" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_staticFriction" -ln "i3D_staticFriction" -at "float";
	addAttr -ci true -sn "i3D_decalLayer" -ln "i3D_decalLayer" -at "long";
	addAttr -ci true -sn "i3D_splitMaxV" -ln "i3D_splitMaxV" -at "float";
	addAttr -ci true -sn "i3D_splitMaxU" -ln "i3D_splitMaxU" -at "float";
	addAttr -ci true -sn "i3D_compoundChild" -ln "i3D_compoundChild" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_xmlIdentifier" -ln "i3D_xmlIdentifier" -dt "string";
	setAttr ".t" -type "double3" 7.4505805969238281e-09 -3.7252902984619141e-09 -3.25 ;
	setAttr ".i3D_objectMask" 255;
	setAttr ".i3D_dynamic" yes;
	setAttr ".i3D_dynamicFriction" 0.5;
	setAttr ".i3D_density" 1;
	setAttr ".i3D_driveForceLimit" 100000;
	setAttr ".i3D_angularDamping" 0.0099999997764825821;
	setAttr ".i3D_splitUvWorldScale" 1;
	setAttr ".i3D_driveSpring" 1;
	setAttr ".i3D_projDistance" 0.0099999997764825821;
	setAttr ".i3D_driveDamping" 0.0099999997764825821;
	setAttr ".i3D_compound" yes;
	setAttr ".i3D_clipDistance" 300;
	setAttr ".i3D_collision" yes;
	setAttr ".i3D_projAngle" 0.0099999997764825821;
	setAttr ".i3D_lightMask" -type "string" "FFFF";
	setAttr ".i3D_solverIterationCount" 4;
	setAttr ".i3D_nonRenderable" yes;
	setAttr ".i3D_boundingVolume" -type "string" "";
	setAttr ".i3D_collisionMask" 8194;
	setAttr ".i3D_cpuMesh" yes;
	setAttr ".i3D_staticFriction" 0.5;
	setAttr ".i3D_splitMaxV" 1;
	setAttr ".i3D_splitMaxU" 1;
	setAttr ".i3D_xmlIdentifier" -type "string" "hose_main_component3";
createNode mesh -n "hose_main_componentShape3" -p "hose_main_component3";
	rename -uid "CBA1B566-4061-5F1E-0C47-06AD9B8CBE38";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-08 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt[0:17]" -type "float3"  -7.4505806e-09 3.7252903e-09 
		2.4726563 -7.4505806e-09 3.7252903e-09 2.4726563 -7.4505806e-09 3.7252903e-09 2.4726563 
		-7.4505806e-09 3.7252903e-09 2.4726563 -7.4505806e-09 3.7252903e-09 2.4726563 -7.4505806e-09 
		3.7252903e-09 2.4726563 -7.4505806e-09 3.7252903e-09 2.4726563 -7.4505806e-09 3.7252903e-09 
		2.4726563 -7.4505806e-09 3.7252903e-09 0.52734375 -7.4505806e-09 3.7252903e-09 0.52734375 
		-7.4505806e-09 3.7252903e-09 0.52734375 -7.4505806e-09 3.7252903e-09 0.52734375 -7.4505806e-09 
		3.7252903e-09 0.52734375 -7.4505806e-09 3.7252903e-09 0.52734375 -7.4505806e-09 3.7252903e-09 
		0.52734375 -7.4505806e-09 3.7252903e-09 0.52734375 -7.4505806e-09 3.7252903e-09 2.4726563 
		-7.4505806e-09 3.7252903e-09 0.52734375;
	setAttr -s 18 ".vt[0:17]"  0.070710674 0.070710674 -3 0 0.099999987 -3
		 -0.070710674 0.070710674 -3 -0.099999987 -4.4408921e-16 -3 -0.070710674 -0.070710674 -3
		 0 -0.099999994 -3 0.070710681 -0.070710681 -3 0.1 -4.4408921e-16 -3 0.070710674 0.070710674 -1.5700924e-17
		 0 0.099999987 -2.2204458e-17 -0.070710674 0.070710674 -1.5700924e-17 -0.099999987 2.220446e-16 -4.9303807e-32
		 -0.070710674 -0.070710674 1.5700924e-17 0 -0.099999994 2.2204459e-17 0.070710681 -0.070710681 1.5700925e-17
		 0.1 2.220446e-16 -4.9303807e-32 0 -4.4408921e-16 -3 0 2.220446e-16 -4.9303807e-32;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1;
	setAttr -s 24 -ch 80 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 8 33 -33
		mu 0 3 32 31 35
		f 3 9 34 -34
		mu 0 3 31 30 35
		f 3 10 35 -35
		mu 0 3 30 29 35
		f 3 11 36 -36
		mu 0 3 29 28 35
		f 3 12 37 -37
		mu 0 3 28 27 35
		f 3 13 38 -38
		mu 0 3 27 26 35
		f 3 14 39 -39
		mu 0 3 26 33 35
		f 3 15 32 -40
		mu 0 3 33 32 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "hose_main_component4";
	rename -uid "7888C758-4FFF-BC34-2F92-CB9D0C59FD5D";
	addAttr -ci true -sn "i3D_objectMask" -ln "i3D_objectMask" -at "long";
	addAttr -ci true -sn "i3D_dynamic" -ln "i3D_dynamic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_joint" -ln "i3D_joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_dynamicFriction" -ln "i3D_dynamicFriction" -at "float";
	addAttr -ci true -sn "i3D_ccd" -ln "i3D_ccd" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_density" -ln "i3D_density" -at "float";
	addAttr -ci true -sn "i3D_splitType" -ln "i3D_splitType" -at "long";
	addAttr -ci true -sn "i3D_splitMinU" -ln "i3D_splitMinU" -at "float";
	addAttr -ci true -sn "i3D_splitMinV" -ln "i3D_splitMinV" -at "float";
	addAttr -ci true -sn "i3D_driveForceLimit" -ln "i3D_driveForceLimit" -at "float";
	addAttr -ci true -sn "i3D_angularDamping" -ln "i3D_angularDamping" -at "float";
	addAttr -ci true -sn "i3D_splitUvWorldScale" -ln "i3D_splitUvWorldScale" -at "float";
	addAttr -ci true -sn "i3D_projection" -ln "i3D_projection" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_driveSpring" -ln "i3D_driveSpring" -at "float";
	addAttr -ci true -sn "i3D_breakableJoint" -ln "i3D_breakableJoint" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_projDistance" -ln "i3D_projDistance" -at "float";
	addAttr -ci true -sn "i3D_driveDamping" -ln "i3D_driveDamping" -at "float";
	addAttr -ci true -sn "i3D_xAxisDrive" -ln "i3D_xAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_compound" -ln "i3D_compound" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_clipDistance" -ln "i3D_clipDistance" -at "float";
	addAttr -ci true -sn "i3D_collision" -ln "i3D_collision" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_scaled" -ln "i3D_scaled" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_projAngle" -ln "i3D_projAngle" -at "float";
	addAttr -ci true -sn "i3D_mergeGroupRoot" -ln "i3D_mergeGroupRoot" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_jointBreakTorque" -ln "i3D_jointBreakTorque" -at "float";
	addAttr -ci true -sn "i3D_restitution" -ln "i3D_restitution" -at "float";
	addAttr -ci true -sn "i3D_yAxisDrive" -ln "i3D_yAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_mergeGroup" -ln "i3D_mergeGroup" -at "long";
	addAttr -ci true -sn "i3D_jointBreakForce" -ln "i3D_jointBreakForce" -at "float";
	addAttr -ci true -sn "i3D_lod1" -ln "i3D_lod1" -at "float";
	addAttr -ci true -sn "i3D_lod2" -ln "i3D_lod2" -at "float";
	addAttr -ci true -sn "i3D_oc" -ln "i3D_oc" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_kinematic" -ln "i3D_kinematic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_trigger" -ln "i3D_trigger" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_static" -ln "i3D_static" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lightMask" -ln "i3D_lightMask" -dt "string";
	addAttr -ci true -sn "i3D_linearDamping" -ln "i3D_linearDamping" -at "float";
	addAttr -ci true -sn "i3D_lod3" -ln "i3D_lod3" -at "float";
	addAttr -ci true -sn "i3D_drivePos" -ln "i3D_drivePos" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lod" -ln "i3D_lod" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_solverIterationCount" -ln "i3D_solverIterationCount" -at "long";
	addAttr -ci true -sn "i3D_nonRenderable" -ln "i3D_nonRenderable" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_boundingVolume" -ln "i3D_boundingVolume" -dt "string";
	addAttr -ci true -sn "i3D_collisionMask" -ln "i3D_collisionMask" -at "long";
	addAttr -ci true -sn "i3D_zAxisDrive" -ln "i3D_zAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_cpuMesh" -ln "i3D_cpuMesh" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_staticFriction" -ln "i3D_staticFriction" -at "float";
	addAttr -ci true -sn "i3D_decalLayer" -ln "i3D_decalLayer" -at "long";
	addAttr -ci true -sn "i3D_splitMaxV" -ln "i3D_splitMaxV" -at "float";
	addAttr -ci true -sn "i3D_splitMaxU" -ln "i3D_splitMaxU" -at "float";
	addAttr -ci true -sn "i3D_compoundChild" -ln "i3D_compoundChild" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_xmlIdentifier" -ln "i3D_xmlIdentifier" -dt "string";
	setAttr ".t" -type "double3" 0 0 -5.1 ;
	setAttr ".i3D_objectMask" 255;
	setAttr ".i3D_dynamic" yes;
	setAttr ".i3D_dynamicFriction" 0.5;
	setAttr ".i3D_density" 1;
	setAttr ".i3D_driveForceLimit" 100000;
	setAttr ".i3D_angularDamping" 0.0099999997764825821;
	setAttr ".i3D_splitUvWorldScale" 1;
	setAttr ".i3D_driveSpring" 1;
	setAttr ".i3D_projDistance" 0.0099999997764825821;
	setAttr ".i3D_driveDamping" 0.0099999997764825821;
	setAttr ".i3D_compound" yes;
	setAttr ".i3D_clipDistance" 300;
	setAttr ".i3D_collision" yes;
	setAttr ".i3D_projAngle" 0.0099999997764825821;
	setAttr ".i3D_lightMask" -type "string" "FFFF";
	setAttr ".i3D_solverIterationCount" 4;
	setAttr ".i3D_nonRenderable" yes;
	setAttr ".i3D_boundingVolume" -type "string" "";
	setAttr ".i3D_collisionMask" 8194;
	setAttr ".i3D_cpuMesh" yes;
	setAttr ".i3D_staticFriction" 0.5;
	setAttr ".i3D_splitMaxV" 1;
	setAttr ".i3D_splitMaxU" 1;
	setAttr ".i3D_xmlIdentifier" -type "string" "hose_main_component4";
createNode mesh -n "hose_main_componentShape4" -p "hose_main_component4";
	rename -uid "3D0109FC-41F0-DC6E-42B1-16BB33DF0C3B";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-08 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt[0:17]" -type "float3"  0 0 3 0 0 3 0 0 3 0 0 3 0 
		0 3 0 0 3 0 0 3 0 0 3 0 0 1.0546875 0 0 1.0546875 0 0 1.0546875 0 0 1.0546875 0 0 
		1.0546875 0 0 1.0546875 0 0 1.0546875 0 0 1.0546875 0 0 3 0 0 1.0546875;
	setAttr -s 18 ".vt[0:17]"  0.070710674 0.070710674 -3 0 0.099999987 -3
		 -0.070710674 0.070710674 -3 -0.099999987 -4.4408921e-16 -3 -0.070710674 -0.070710674 -3
		 0 -0.099999994 -3 0.070710681 -0.070710681 -3 0.1 -4.4408921e-16 -3 0.070710674 0.070710674 -1.5700924e-17
		 0 0.099999987 -2.2204458e-17 -0.070710674 0.070710674 -1.5700924e-17 -0.099999987 2.220446e-16 -4.9303807e-32
		 -0.070710674 -0.070710674 1.5700924e-17 0 -0.099999994 2.2204459e-17 0.070710681 -0.070710681 1.5700925e-17
		 0.1 2.220446e-16 -4.9303807e-32 0 -4.4408921e-16 -3 0 2.220446e-16 -4.9303807e-32;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1;
	setAttr -s 24 -ch 80 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 8 33 -33
		mu 0 3 32 31 35
		f 3 9 34 -34
		mu 0 3 31 30 35
		f 3 10 35 -35
		mu 0 3 30 29 35
		f 3 11 36 -36
		mu 0 3 29 28 35
		f 3 12 37 -37
		mu 0 3 28 27 35
		f 3 13 38 -38
		mu 0 3 27 26 35
		f 3 14 39 -39
		mu 0 3 26 33 35
		f 3 15 32 -40
		mu 0 3 33 32 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "grabNode2" -p "hose_main_component4";
	rename -uid "3878F635-4DD3-06AC-8DE0-D6ACA59B43AD";
	addAttr -ci true -sn "i3D_objectMask" -ln "i3D_objectMask" -at "long";
	addAttr -ci true -sn "i3D_dynamic" -ln "i3D_dynamic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_joint" -ln "i3D_joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_dynamicFriction" -ln "i3D_dynamicFriction" -at "float";
	addAttr -ci true -sn "i3D_ccd" -ln "i3D_ccd" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_density" -ln "i3D_density" -at "float";
	addAttr -ci true -sn "i3D_splitType" -ln "i3D_splitType" -at "long";
	addAttr -ci true -sn "i3D_splitMinU" -ln "i3D_splitMinU" -at "float";
	addAttr -ci true -sn "i3D_splitMinV" -ln "i3D_splitMinV" -at "float";
	addAttr -ci true -sn "i3D_driveForceLimit" -ln "i3D_driveForceLimit" -at "float";
	addAttr -ci true -sn "i3D_angularDamping" -ln "i3D_angularDamping" -at "float";
	addAttr -ci true -sn "i3D_splitUvWorldScale" -ln "i3D_splitUvWorldScale" -at "float";
	addAttr -ci true -sn "i3D_projection" -ln "i3D_projection" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_driveSpring" -ln "i3D_driveSpring" -at "float";
	addAttr -ci true -sn "i3D_breakableJoint" -ln "i3D_breakableJoint" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_projDistance" -ln "i3D_projDistance" -at "float";
	addAttr -ci true -sn "i3D_driveDamping" -ln "i3D_driveDamping" -at "float";
	addAttr -ci true -sn "i3D_xAxisDrive" -ln "i3D_xAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_compound" -ln "i3D_compound" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_clipDistance" -ln "i3D_clipDistance" -at "float";
	addAttr -ci true -sn "i3D_collision" -ln "i3D_collision" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_projAngle" -ln "i3D_projAngle" -at "float";
	addAttr -ci true -sn "i3D_mergeGroupRoot" -ln "i3D_mergeGroupRoot" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_jointBreakTorque" -ln "i3D_jointBreakTorque" -at "float";
	addAttr -ci true -sn "i3D_restitution" -ln "i3D_restitution" -at "float";
	addAttr -ci true -sn "i3D_yAxisDrive" -ln "i3D_yAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_mergeGroup" -ln "i3D_mergeGroup" -at "long";
	addAttr -ci true -sn "i3D_jointBreakForce" -ln "i3D_jointBreakForce" -at "float";
	addAttr -ci true -sn "i3D_lod1" -ln "i3D_lod1" -at "float";
	addAttr -ci true -sn "i3D_lod2" -ln "i3D_lod2" -at "float";
	addAttr -ci true -sn "i3D_oc" -ln "i3D_oc" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_kinematic" -ln "i3D_kinematic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_trigger" -ln "i3D_trigger" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_static" -ln "i3D_static" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lightMask" -ln "i3D_lightMask" -dt "string";
	addAttr -ci true -sn "i3D_linearDamping" -ln "i3D_linearDamping" -at "float";
	addAttr -ci true -sn "i3D_lod3" -ln "i3D_lod3" -at "float";
	addAttr -ci true -sn "i3D_drivePos" -ln "i3D_drivePos" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lod" -ln "i3D_lod" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_solverIterationCount" -ln "i3D_solverIterationCount" -at "long";
	addAttr -ci true -sn "i3D_nonRenderable" -ln "i3D_nonRenderable" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_boundingVolume" -ln "i3D_boundingVolume" -dt "string";
	addAttr -ci true -sn "i3D_collisionMask" -ln "i3D_collisionMask" -at "long";
	addAttr -ci true -sn "i3D_zAxisDrive" -ln "i3D_zAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_staticFriction" -ln "i3D_staticFriction" -at "float";
	addAttr -ci true -sn "i3D_decalLayer" -ln "i3D_decalLayer" -at "long";
	addAttr -ci true -sn "i3D_splitMaxV" -ln "i3D_splitMaxV" -at "float";
	addAttr -ci true -sn "i3D_splitMaxU" -ln "i3D_splitMaxU" -at "float";
	addAttr -ci true -sn "i3D_compoundChild" -ln "i3D_compoundChild" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_xmlIdentifier" -ln "i3D_xmlIdentifier" -dt "string";
	setAttr ".t" -type "double3" 3.6739404005911872e-16 2.6077032089233398e-08 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".i3D_objectMask" 255;
	setAttr ".i3D_dynamicFriction" 0.5;
	setAttr ".i3D_density" 1;
	setAttr ".i3D_driveForceLimit" 100000;
	setAttr ".i3D_angularDamping" 0.0099999997764825821;
	setAttr ".i3D_splitUvWorldScale" 1;
	setAttr ".i3D_driveSpring" 1;
	setAttr ".i3D_projDistance" 0.0099999997764825821;
	setAttr ".i3D_driveDamping" 0.0099999997764825821;
	setAttr ".i3D_clipDistance" 300;
	setAttr ".i3D_projAngle" 0.0099999997764825821;
	setAttr ".i3D_lightMask" -type "string" "FFFF";
	setAttr ".i3D_solverIterationCount" 4;
	setAttr ".i3D_boundingVolume" -type "string" "MERGEGROUP_5";
	setAttr ".i3D_collisionMask" 255;
	setAttr ".i3D_staticFriction" 0.5;
	setAttr ".i3D_splitMaxV" 1;
	setAttr ".i3D_splitMaxU" 1;
	setAttr ".i3D_xmlIdentifier" -type "string" "grabNode2";
createNode transform -n "target" -p "hose_main_component4";
	rename -uid "45ABEB99-4EE8-F9F6-9432-EFA2837826DA";
	addAttr -ci true -sn "i3D_objectMask" -ln "i3D_objectMask" -at "long";
	addAttr -ci true -sn "i3D_dynamic" -ln "i3D_dynamic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_joint" -ln "i3D_joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_dynamicFriction" -ln "i3D_dynamicFriction" -at "float";
	addAttr -ci true -sn "i3D_ccd" -ln "i3D_ccd" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_density" -ln "i3D_density" -at "float";
	addAttr -ci true -sn "i3D_splitType" -ln "i3D_splitType" -at "long";
	addAttr -ci true -sn "i3D_splitMinU" -ln "i3D_splitMinU" -at "float";
	addAttr -ci true -sn "i3D_splitMinV" -ln "i3D_splitMinV" -at "float";
	addAttr -ci true -sn "i3D_driveForceLimit" -ln "i3D_driveForceLimit" -at "float";
	addAttr -ci true -sn "i3D_angularDamping" -ln "i3D_angularDamping" -at "float";
	addAttr -ci true -sn "i3D_splitUvWorldScale" -ln "i3D_splitUvWorldScale" -at "float";
	addAttr -ci true -sn "i3D_projection" -ln "i3D_projection" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_driveSpring" -ln "i3D_driveSpring" -at "float";
	addAttr -ci true -sn "i3D_breakableJoint" -ln "i3D_breakableJoint" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_projDistance" -ln "i3D_projDistance" -at "float";
	addAttr -ci true -sn "i3D_driveDamping" -ln "i3D_driveDamping" -at "float";
	addAttr -ci true -sn "i3D_xAxisDrive" -ln "i3D_xAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_compound" -ln "i3D_compound" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_clipDistance" -ln "i3D_clipDistance" -at "float";
	addAttr -ci true -sn "i3D_collision" -ln "i3D_collision" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_projAngle" -ln "i3D_projAngle" -at "float";
	addAttr -ci true -sn "i3D_mergeGroupRoot" -ln "i3D_mergeGroupRoot" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_jointBreakTorque" -ln "i3D_jointBreakTorque" -at "float";
	addAttr -ci true -sn "i3D_restitution" -ln "i3D_restitution" -at "float";
	addAttr -ci true -sn "i3D_yAxisDrive" -ln "i3D_yAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_mergeGroup" -ln "i3D_mergeGroup" -at "long";
	addAttr -ci true -sn "i3D_jointBreakForce" -ln "i3D_jointBreakForce" -at "float";
	addAttr -ci true -sn "i3D_lod1" -ln "i3D_lod1" -at "float";
	addAttr -ci true -sn "i3D_lod2" -ln "i3D_lod2" -at "float";
	addAttr -ci true -sn "i3D_oc" -ln "i3D_oc" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_kinematic" -ln "i3D_kinematic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_trigger" -ln "i3D_trigger" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_static" -ln "i3D_static" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lightMask" -ln "i3D_lightMask" -dt "string";
	addAttr -ci true -sn "i3D_linearDamping" -ln "i3D_linearDamping" -at "float";
	addAttr -ci true -sn "i3D_lod3" -ln "i3D_lod3" -at "float";
	addAttr -ci true -sn "i3D_drivePos" -ln "i3D_drivePos" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lod" -ln "i3D_lod" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_solverIterationCount" -ln "i3D_solverIterationCount" -at "long";
	addAttr -ci true -sn "i3D_nonRenderable" -ln "i3D_nonRenderable" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_boundingVolume" -ln "i3D_boundingVolume" -dt "string";
	addAttr -ci true -sn "i3D_collisionMask" -ln "i3D_collisionMask" -at "long";
	addAttr -ci true -sn "i3D_zAxisDrive" -ln "i3D_zAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_staticFriction" -ln "i3D_staticFriction" -at "float";
	addAttr -ci true -sn "i3D_decalLayer" -ln "i3D_decalLayer" -at "long";
	addAttr -ci true -sn "i3D_splitMaxV" -ln "i3D_splitMaxV" -at "float";
	addAttr -ci true -sn "i3D_splitMaxU" -ln "i3D_splitMaxU" -at "float";
	addAttr -ci true -sn "i3D_compoundChild" -ln "i3D_compoundChild" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_xmlIdentifier" -ln "i3D_xmlIdentifier" -dt "string";
	setAttr ".t" -type "double3" 3.6739404005911872e-16 2.6077032089233398e-08 0.030000000000000249 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".i3D_objectMask" 255;
	setAttr ".i3D_dynamicFriction" 0.5;
	setAttr ".i3D_density" 1;
	setAttr ".i3D_driveForceLimit" 100000;
	setAttr ".i3D_angularDamping" 0.0099999997764825821;
	setAttr ".i3D_splitUvWorldScale" 1;
	setAttr ".i3D_driveSpring" 1;
	setAttr ".i3D_projDistance" 0.0099999997764825821;
	setAttr ".i3D_driveDamping" 0.0099999997764825821;
	setAttr ".i3D_clipDistance" 300;
	setAttr ".i3D_projAngle" 0.0099999997764825821;
	setAttr ".i3D_lightMask" -type "string" "FFFF";
	setAttr ".i3D_solverIterationCount" 4;
	setAttr ".i3D_boundingVolume" -type "string" "MERGEGROUP_5";
	setAttr ".i3D_collisionMask" 255;
	setAttr ".i3D_staticFriction" 0.5;
	setAttr ".i3D_splitMaxV" 1;
	setAttr ".i3D_splitMaxU" 1;
	setAttr ".i3D_xmlIdentifier" -type "string" "target";
createNode transform -n "coupling_normal_end" -p "hose_main_component4";
	rename -uid "C2F1D411-4B58-9BF0-643B-4884D4789156";
	addAttr -ci true -sn "i3D_objectMask" -ln "i3D_objectMask" -at "long";
	addAttr -ci true -sn "i3D_dynamic" -ln "i3D_dynamic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_joint" -ln "i3D_joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_dynamicFriction" -ln "i3D_dynamicFriction" -at "float";
	addAttr -ci true -sn "i3D_ccd" -ln "i3D_ccd" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_density" -ln "i3D_density" -at "float";
	addAttr -ci true -sn "i3D_splitType" -ln "i3D_splitType" -at "long";
	addAttr -ci true -sn "i3D_splitMinU" -ln "i3D_splitMinU" -at "float";
	addAttr -ci true -sn "i3D_splitMinV" -ln "i3D_splitMinV" -at "float";
	addAttr -ci true -sn "i3D_driveForceLimit" -ln "i3D_driveForceLimit" -at "float";
	addAttr -ci true -sn "i3D_angularDamping" -ln "i3D_angularDamping" -at "float";
	addAttr -ci true -sn "i3D_splitUvWorldScale" -ln "i3D_splitUvWorldScale" -at "float";
	addAttr -ci true -sn "i3D_projection" -ln "i3D_projection" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_driveSpring" -ln "i3D_driveSpring" -at "float";
	addAttr -ci true -sn "i3D_breakableJoint" -ln "i3D_breakableJoint" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_projDistance" -ln "i3D_projDistance" -at "float";
	addAttr -ci true -sn "i3D_driveDamping" -ln "i3D_driveDamping" -at "float";
	addAttr -ci true -sn "i3D_xAxisDrive" -ln "i3D_xAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_compound" -ln "i3D_compound" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_clipDistance" -ln "i3D_clipDistance" -at "float";
	addAttr -ci true -sn "i3D_collision" -ln "i3D_collision" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_scaled" -ln "i3D_scaled" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_projAngle" -ln "i3D_projAngle" -at "float";
	addAttr -ci true -sn "i3D_mergeGroupRoot" -ln "i3D_mergeGroupRoot" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_jointBreakTorque" -ln "i3D_jointBreakTorque" -at "float";
	addAttr -ci true -sn "i3D_restitution" -ln "i3D_restitution" -at "float";
	addAttr -ci true -sn "i3D_yAxisDrive" -ln "i3D_yAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_mergeGroup" -ln "i3D_mergeGroup" -at "long";
	addAttr -ci true -sn "i3D_jointBreakForce" -ln "i3D_jointBreakForce" -at "float";
	addAttr -ci true -sn "i3D_lod1" -ln "i3D_lod1" -at "float";
	addAttr -ci true -sn "i3D_lod2" -ln "i3D_lod2" -at "float";
	addAttr -ci true -sn "i3D_oc" -ln "i3D_oc" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_kinematic" -ln "i3D_kinematic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_trigger" -ln "i3D_trigger" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_static" -ln "i3D_static" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lightMask" -ln "i3D_lightMask" -dt "string";
	addAttr -ci true -sn "i3D_linearDamping" -ln "i3D_linearDamping" -at "float";
	addAttr -ci true -sn "i3D_lod3" -ln "i3D_lod3" -at "float";
	addAttr -ci true -sn "i3D_drivePos" -ln "i3D_drivePos" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lod" -ln "i3D_lod" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_solverIterationCount" -ln "i3D_solverIterationCount" -at "long";
	addAttr -ci true -sn "i3D_nonRenderable" -ln "i3D_nonRenderable" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_boundingVolume" -ln "i3D_boundingVolume" -dt "string";
	addAttr -ci true -sn "i3D_collisionMask" -ln "i3D_collisionMask" -at "long";
	addAttr -ci true -sn "i3D_zAxisDrive" -ln "i3D_zAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_cpuMesh" -ln "i3D_cpuMesh" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_staticFriction" -ln "i3D_staticFriction" -at "float";
	addAttr -ci true -sn "i3D_decalLayer" -ln "i3D_decalLayer" -at "long";
	addAttr -ci true -sn "i3D_splitMaxV" -ln "i3D_splitMaxV" -at "float";
	addAttr -ci true -sn "i3D_splitMaxU" -ln "i3D_splitMaxU" -at "float";
	addAttr -ci true -sn "i3D_compoundChild" -ln "i3D_compoundChild" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_xmlIdentifier" -ln "i3D_xmlIdentifier" -dt "string";
	setAttr ".t" -type "double3" 2.9802322734639994e-08 0 0 ;
	setAttr ".dla" yes;
	setAttr ".i3D_objectMask" 255;
	setAttr ".i3D_dynamicFriction" 0.5;
	setAttr ".i3D_density" 1;
	setAttr ".i3D_driveForceLimit" 100000;
	setAttr ".i3D_angularDamping" 0.0099999997764825821;
	setAttr ".i3D_splitUvWorldScale" 1;
	setAttr ".i3D_driveSpring" 1;
	setAttr ".i3D_projDistance" 0.0099999997764825821;
	setAttr ".i3D_driveDamping" 0.0099999997764825821;
	setAttr ".i3D_clipDistance" 300;
	setAttr ".i3D_projAngle" 0.0099999997764825821;
	setAttr ".i3D_lightMask" -type "string" "FFFF";
	setAttr ".i3D_solverIterationCount" 4;
	setAttr ".i3D_boundingVolume" -type "string" "";
	setAttr ".i3D_collisionMask" 255;
	setAttr ".i3D_staticFriction" 0.5;
	setAttr ".i3D_splitMaxV" 1;
	setAttr ".i3D_splitMaxU" 1;
	setAttr ".i3D_xmlIdentifier" -type "string" "coupling_normal_end";
createNode mesh -n "coupling_normal_endShape" -p "coupling_normal_end";
	rename -uid "E589D8CC-48F6-8BBB-483F-F891D6AD1F78";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:271]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 4.776463508605957 0.45794433355331421 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 540 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 4.67544031 0.45419073 4.65831995
		 0.45419073 4.65831947 0.4199872 4.67543936 0.41998732 4.63780594 0.45419073 4.63780594
		 0.41998732 4.62136221 0.45419073 4.62136221 0.41998732 4.60285854 0.45419073 4.60285854
		 0.41998732 4.99093342 0.45419073 4.97253418 0.45419073 4.97253418 0.4199872 4.9909339
		 0.4199872 4.95528507 0.45419073 4.95528507 0.4199872 4.93263388 0.45419073 4.93263388
		 0.4199872 4.91638708 0.45419073 4.91638708 0.4199872 4.8975811 0.45419073 4.8975811
		 0.4199872 4.87904024 0.45419073 4.87904024 0.4199872 4.85522079 0.45419073 4.85522079
		 0.4199872 4.82814407 0.45419073 4.82814407 0.4199872 4.81340551 0.45419073 4.81340551
		 0.4199872 4.79467678 0.45419073 4.79467678 0.4199872 4.77601624 0.45419061 4.77601624
		 0.4199872 4.76197958 0.45419073 4.7619791 0.4199872 4.73500633 0.45419061 4.73500633
		 0.4199872 4.71281004 0.45419073 4.71281004 0.41998732 4.69418859 0.45419073 4.69418859
		 0.41998732 4.67992258 0.46169794 4.67992306 0.4654181 4.66053867 0.46541774 4.66053867
		 0.46169829 4.66061926 0.41003501 4.66061926 0.40293872 4.68002987 0.40293884 4.68002987
		 0.41003501 4.64116192 0.46541786 4.64116144 0.46169782 4.64119959 0.41003513 4.64119959
		 0.40293884 4.6219244 0.4654181 4.6219244 0.46169829 4.62161398 0.41003513 4.62161398
		 0.40293884 4.60317898 0.4654181 4.60317898 0.46169794 4.60267591 0.41003513 4.60267591
		 0.40293884 4.99061394 0.46169782 4.98832035 0.46541786 4.97120094 0.46541786 4.97120094
		 0.46169829 4.97154331 0.41003513 4.97154331 0.40293884 4.991117 0.40293884 4.99111748
		 0.41003537 4.95163345 0.46541762 4.95163345 0.46169782 4.95210695 0.41003513 4.95210695
		 0.40293884 4.93221283 0.46541786 4.93221283 0.46169817 4.9326725 0.41003537 4.93267202
		 0.40293884 4.91279697 0.46541786 4.91279745 0.46169782 4.91323709 0.41003513 4.91323709
		 0.40293884 4.89338255 0.46541762 4.89338207 0.46169817 4.89380312 0.41003513 4.89380312
		 0.40293884 4.87396717 0.46541786 4.87396765 0.46169782 4.87436914 0.41003513 4.87436914
		 0.40293884 4.8545537 0.46541762 4.8545537 0.46169782 4.85493422 0.41003513 4.85493422
		 0.40293884 4.83514023 0.46541786 4.83514023 0.46169782 4.83550024 0.41003513 4.83550024
		 0.40293884 4.81572723 0.46541786 4.81572723 0.46169782 4.81606579 0.41003537 4.81606627
		 0.40293884 4.79631758 0.46541762 4.79631758 0.46169782 4.79663086 0.41003537 4.79663134
		 0.40293884 4.77691031 0.46541762 4.77691078 0.46169806 4.77719736 0.41003513 4.77719736
		 0.40293884 4.75750446 0.46541762 4.75750446 0.46169782 4.75776434 0.41003513 4.75776434
		 0.40293884 4.73810387 0.46541786 4.73810387 0.46169782 4.73832941 0.41003501 4.73832941
		 0.40293872 4.71870518 0.46541786 4.71870518 0.46169806 4.71889496 0.41003501 4.71889496
		 0.40293884 4.69931173 0.46541762 4.69931221 0.46169829 4.69946098 0.41003501 4.69946098
		 0.40293884 4.68065786 0.39243531 4.66128445 0.392434 4.66128445 0.25259042 4.68065786
		 0.25259042 4.64191198 0.39243531 4.64191198 0.25258994 4.62253904 0.39243531 4.62253904
		 0.25259042 4.6031661 0.39243436 4.6031661 0.25259042 4.99062634 0.39243531 4.9712534
		 0.39243531 4.9712534 0.25259042 4.99062634 0.25259042 4.95188046 0.39243436 4.95188046
		 0.25259018 4.93250751 0.39243531 4.93250751 0.25259042 4.91313457 0.39243436 4.91313457
		 0.25259042 4.89376163 0.39243436 4.89376163 0.25259042 4.87438822 0.39243472 4.87438869
		 0.25259042 4.85501575 0.39243507 4.85501575 0.25259042 4.83564281 0.39243531 4.83564281
		 0.25259042 4.81626892 0.39243531 4.81626892 0.25259018 4.79689598 0.39243472 4.79689598
		 0.25259042 4.77752304 0.39243484 4.77752352 0.25258994 4.7581501 0.39243507 4.7581501
		 0.25258994 4.73877716 0.39243472 4.73877764 0.25259042 4.71940422 0.3924346 4.71940422
		 0.25259042 4.70003128 0.39243531 4.70003128 0.25259042 4.5328393 0.68205488 4.5232048
		 0.67627501 4.54626846 0.64875042 4.51582813 0.66780114 4.51143122 0.65746236 4.51044416
		 0.64627075 4.51296425 0.63532209 4.51874352 0.62568796 4.52721786 0.61831081 4.53755665
		 0.61391377 4.54874802 0.61292672 4.55969667 0.61544657 4.56933117 0.62122631 4.57670784
		 0.6297003 4.58110476 0.64003885 4.58209181 0.65123057 4.57957268 0.66217947 4.57379246
		 0.67181361 4.56531811 0.6791904 4.5549798 0.68358743 4.54378796 0.68457437 4.66131878
		 0.47297382 4.68069839 0.47297382 4.68069839 0.48104191 4.66131878 0.48104191 4.64194775
		 0.47297382 4.64194775 0.48104191 4.62257481 0.47297382 4.62257481 0.48104191 4.60306549
		 0.47297382 4.60306549 0.48104191 4.97121906 0.47297382 4.99072695 0.47297382 4.99072695
		 0.48104191 4.97121906 0.48104167 4.95184422 0.47297382 4.95184422 0.48104191 4.93247414
		 0.47297382 4.93247414 0.48104191 4.91309166 0.47297406 4.91309166 0.48104191 4.89373207
		 0.47297382 4.89373207 0.48104191 4.8743515 0.47297359 4.8743515 0.48104191 4.85498428
		 0.47297382 4.85498428 0.48104179 4.83562803 0.47297359 4.83562756 0.48104179 4.81625271
		 0.47297359 4.81625271 0.48104215 4.7969141 0.47297382 4.7969141 0.48104191 4.77753592
		 0.47297382 4.77753639 0.48104191 4.7581749 0.47297382 4.7581749 0.48104215 4.73880005
		 0.47297382 4.73880005 0.48104191 4.71943426 0.47297382 4.71943474 0.48104191 4.70005846
		 0.47297382 4.70005798 0.48104191 4.66137028 0.48864603 4.68073177 0.48864603 4.68073177
		 0.49959576 4.66137028 0.49959576 4.64200878 0.48864603 4.64200878 0.49959576 4.62263584
		 0.48864603 4.62263584 0.49959576 4.6030674 0.48864603 4.6030674 0.49959576 4.97115755
		 0.48864651 4.99072552 0.48864591 4.99072504 0.49959612 4.97115755 0.49959517 4.95178509
		 0.48864591 4.95178509 0.49959564 4.93242359 0.48864591 4.93242359 0.49959564 4.913064
		 0.48864603;
	setAttr ".uvst[0].uvsp[250:499]" 4.913064 0.49959576 4.89370251 0.48864603
		 4.89370251 0.49959576 4.87434101 0.48864603 4.87434101 0.49959588 4.85498047 0.48864603
		 4.85498047 0.49959576 4.83561897 0.48864603 4.83561897 0.49959576 4.81625843 0.48864603
		 4.81625938 0.49959588 4.79689789 0.48864603 4.79689789 0.49959588 4.77753639 0.48864603
		 4.77753639 0.49959576 4.7581749 0.48864603 4.7581749 0.49959576 4.73881435 0.48864603
		 4.73881435 0.49959576 4.71945381 0.48864603 4.71945381 0.49959576 4.70009327 0.48864603
		 4.70009327 0.49959576 4.66126013 0.50686312 4.68063688 0.50687134 4.68063641 0.53907967
		 4.6612606 0.53908777 4.64188385 0.50685835 4.64188385 0.53909206 4.62250757 0.50685656
		 4.6225071 0.53909397 4.60313129 0.50685596 4.60313129 0.53909445 4.97128487 0.50685656
		 4.9906621 0.50685656 4.99066162 0.53909445 4.97128534 0.53909445 4.95190811 0.50685859
		 4.95190907 0.5390923 4.93253231 0.50686395 4.93253183 0.53908825 4.91315556 0.50687146
		 4.91315556 0.53907979 4.8937788 0.50687873 4.89377928 0.53907228 4.87440252 0.50684285
		 4.87440252 0.53910828 4.85502577 0.50684261 4.85502577 0.5391078 4.83564949 0.50684261
		 4.83564949 0.53910804 4.81627274 0.50684261 4.81627274 0.53910804 4.79689598 0.50684261
		 4.79689598 0.53910804 4.77752018 0.50684261 4.77752018 0.53910804 4.75814342 0.50684261
		 4.75814342 0.53910804 4.73876667 0.50684261 4.73876667 0.53910804 4.71939039 0.50684261
		 4.71939039 0.53910804 4.70001364 0.50687838 4.70001364 0.5390718 6.42330933 3.99370813
		 6.40262604 3.99370813 6.40262604 3.97471929 6.42330933 3.97471929 6.38194275 3.99370813
		 6.38194275 3.97471929 6.36125946 3.99370813 6.36125946 3.97471929 6.34057617 3.99370813
		 6.34057617 3.97471929 6.31989431 3.99370813 6.31989431 3.97471929 6.2992115 3.99370813
		 6.2992115 3.97471929 6.27852917 3.99370813 6.27852917 3.97471929 6.25784588 3.99370813
		 6.25784588 3.97471929 6.23716259 3.99370813 6.23716259 3.97471929 6.21647835 3.99370813
		 6.21647835 3.97471929 6.19579697 3.99370813 6.19579697 3.97471929 6.17511177 3.99370813
		 6.17511177 3.97471929 6.15442753 3.99370813 6.15442753 3.97471929 6.13374519 3.99370813
		 6.13374519 3.97471929 6.1130619 3.99370813 6.1130619 3.97471929 6.09237957 3.99370813
		 6.09237957 3.97471929 6.07169342 3.99370813 6.07169342 3.97471929 6.051012039 3.99370813
		 6.051012039 3.97471929 6.040967941 3.99370813 6.040967941 3.97471929 4.46374702 0.97512722
		 4.4637475 0.99423742 4.45792055 0.99423695 4.45792055 0.9751246 6.52666187 3.90166974
		 6.52617455 3.90023279 6.53806257 3.89398432 6.53896999 3.89520001 6.48631096 3.79307175
		 6.48723841 3.79177999 6.49982119 3.79809785 6.4993391 3.79961348 6.54743767 3.88436723
		 6.54867649 3.88524342 6.47594261 3.78282404 6.4772234 3.78188205 6.55338287 3.87232375
		 6.5548315 3.87277436 6.46924829 3.7698741 6.47075748 3.76937389 6.55531549 3.85903287
		 6.55683184 3.8590138 6.46688271 3.75548959 6.46847343 3.75547957 6.5530448 3.84579587
		 6.55448198 3.84530878 6.46907902 3.74107671 6.47059441 3.74155974 6.54679585 3.8339076
		 6.54801226 3.83300066 6.47562122 3.72804976 6.47691298 3.72897577 6.53718042 3.82453251
		 6.5380559 3.82329416 6.48586845 3.71768045 6.48681116 3.71896219 6.52513599 3.81858802
		 6.52558899 3.81713939 6.49881887 3.71098661 6.4993186 3.71249628 6.51184559 3.81665611
		 6.51182842 3.81513906 6.51320314 3.70862007 6.51321268 3.7102108 6.49860859 3.81892538
		 6.49812031 3.81748867 6.52761459 3.71081924 6.52713156 3.71233368 6.48672009 3.82517433
		 6.48581409 3.82395887 6.54064226 3.71735954 6.53971577 3.71865082 6.47734547 3.83479071
		 6.47610664 3.83391547 6.55101061 3.72760868 6.54972935 3.72854805 6.47140026 3.84683442
		 6.46995258 3.84638405 6.55770493 3.74055576 6.55619621 3.7410593 6.46946812 3.8601253
		 6.46795177 3.86014414 6.56007004 3.75494289 6.55847979 3.75494862 6.47173786 3.87336206
		 6.47030067 3.87384963 6.55787468 3.76935387 6.55635929 3.76887321 6.47798347 3.88525009
		 6.4767704 3.88615775 6.55133247 3.7823801 6.55004025 3.78145409 6.48760223 3.89462614
		 6.48671913 3.89586377 6.54108477 3.7927494 6.54014349 3.79146671 6.49963951 3.90057039
		 6.49918938 3.9020195 6.52763462 3.79792976 6.52813482 3.79944229 6.50496101 3.90134287
		 6.50469971 3.90281892 6.52207756 3.79884624 6.52238178 3.80038929 6.51295567 3.90402675
		 6.5129385 3.9025023 6.52088022 3.90114117 6.52118111 3.90260983 6.50538921 3.79894662
		 6.51374149 3.80021906 6.51375103 3.80181599 6.50510359 3.80049133 4.021411419 0.97471595
		 4.024793625 0.97471595 4.024793625 0.99382889 4.021411419 0.99382889 6.43158245 3.97471929
		 6.43158245 3.99370813 6.52001095 3.90570259 6.51846027 3.90738034 6.51660728 3.90823674
		 6.51479912 3.90750694 4.44373465 0.9942373 4.44373465 0.97512543 4.44862986 0.97512507
		 4.44862986 0.99423754 6.5118885 3.80550003 6.51000834 3.80630016 6.50804853 3.80543947
		 6.50638914 3.80371141 6.52113342 3.80362415 6.51949501 3.80537224 6.51754522 3.8062582
		 6.51565647 3.80547667 4.029689789 0.97471642 4.029689789 0.99382794 6.51120567 3.90755272
		 6.50941849 3.90832829 6.50754166 3.90751839 6.50595093 3.90588188 4.0096764565 0.97471571
		 4.01550436 0.97471547 4.01550436 0.99382794 4.0096764565 0.99382889 4.018389225 0.97471547
		 4.018389702 0.9938283 4.45201206 0.97512412 4.45201206 0.99423742 4.45503426 0.9751246
		 4.45503426 0.99423695 0.8205905 1.21316648 0.82059097 1.20692444 0.82569981 1.20692444
		 0.82570124 1.21316648 0.8205905 1.2443769 0.8205905 1.23813486 0.82570124 1.23813498
		 0.82570076 1.24437726 0.82059097 1.23189282 0.82570076 1.23189294 0.8205905 1.22565067
		 0.82570124 1.22565079 0.8205905 1.21940851 0.82570124 1.21940851 0.811831 1.22906744;
	setAttr ".uvst[0].uvsp[500:539]" 0.81566954 1.23579335 0.8079257 1.23575485
		 0.80408669 1.22902858 0.80018234 1.23571527 0.80401993 1.24244237 0.81176376 1.24248052
		 0.81182051 1.22309625 0.80407667 1.22312188 0.80792618 1.21640265 0.80018282 1.21642852
		 0.80403185 1.20970917 0.81177568 1.20968437 0.81566906 1.21637666 0.66798019 1.13682914
		 0.6706152 1.13682914 0.6706152 1.20140803 0.66798019 1.20140803 0.6732502 1.13682926
		 0.6732502 1.20140839 0.67588568 1.13682926 0.67588568 1.20140803 0.67852068 1.13682926
		 0.67852068 1.20140803 0.68115568 1.13682926 0.68115568 1.20140803 0.68379116 1.13682938
		 0.68379116 1.20140815 0.68642616 1.13682926 0.68642616 1.20140803 0.68906164 1.13682938
		 0.68906164 1.20140815 0.48340845 1.49261379 0.47738695 1.49510849 0.47738695 1.48659253
		 0.47136402 1.49261379 0.46886969 1.48659253 0.47136402 1.48056889 0.47738695 1.47807539
		 0.48340893 1.48056889 0.48590326 1.48659241;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 296 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 0.012334227 -0.0040076417 2.9937873 0.010492118 
		-0.0076229875 2.9937873 0.0076229684 -0.01049214 2.9937873 0.0040076184 -0.01233425 
		2.9937873 -2.5661963e-08 -0.012968997 2.9937873 -0.0040076668 -0.01233425 2.9937873 
		-0.0076230112 -0.01049214 2.9937873 -0.010492173 -0.0076229763 2.9937873 -0.012334281 
		-0.0040076417 2.9937873 -0.012969016 2.2992004e-09 2.9937871 -0.012334262 0.0040076468 
		2.9937873 -0.010492173 0.0076229763 2.9937873 -0.0076230131 0.010492137 2.9937873 
		-0.0040076706 0.012334249 2.9937873 -2.609306e-08 0.012968997 2.9937873 0.0040076138 
		0.012334249 2.9937873 0.0076229572 0.010492137 2.9937873 0.010492113 0.0076229763 
		2.9937871 0.012334221 0.004007637 2.9937873 0.012968956 2.2992004e-09 2.9937871 -2.5212003e-08 
		-2.2992006e-09 2.8200924 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789;
	setAttr ".pt[166:295]" -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 
		0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789 
		-2.9802322e-08 0 2.993789 -2.9802322e-08 0 2.993789;
	setAttr -s 296 ".vt";
	setAttr ".vt[0:165]"  -0.11248755 0.036549449 -2.94603086 -0.095687687 0.069521129 -2.94603086
		 -0.069521129 0.095687687 -2.94603086 -0.036549419 0.11248755 -2.94603086 -1.2476895e-10 0.11827642 -2.94603086
		 0.036549419 0.11248755 -2.94603086 0.069521129 0.095687628 -2.94603086 0.095687628 0.069521129 -2.94603086
		 0.11248755 0.036549449 -2.94603109 0.11827642 0 -2.94603086 0.11248755 -0.036549449 -2.94603086
		 0.095687628 -0.069521129 -2.94603086 0.069521129 -0.095687628 -2.94603086 0.036549419 -0.11248755 -2.94603086
		 3.4001428e-09 -0.11827642 -2.94603086 -0.036549419 -0.11248755 -2.94603086 -0.069521129 -0.095687628 -2.94603086
		 -0.095687568 -0.069521129 -2.94603086 -0.11248755 -0.036549389 -2.94603086 -0.11827636 0 -2.94603086
		 -0.086920083 0.028242052 -2.99428105 -0.073938608 0.05371958 -2.99428105 -0.05371955 0.073938608 -2.99428105
		 -0.028242037 0.086920083 -2.99428105 3.0799669e-09 0.091393173 -2.99428105 0.028242037 0.086920083 -2.99428129
		 0.05371955 0.073938608 -2.99428105 0.073938608 0.053719521 -2.99428105 0.086920023 0.028242052 -2.99428105
		 0.091393113 0 -2.99428129 0.086920023 -0.028242052 -2.99428105 0.073938608 -0.053719521 -2.99428105
		 0.05371955 -0.073938608 -2.99428105 0.028242037 -0.086920023 -2.99428105 5.8036922e-09 -0.091393113 -2.99428105
		 -0.028242022 -0.086920023 -2.99428129 -0.053719521 -0.073938608 -2.99428105 -0.073938608 -0.053719521 -2.99428129
		 -0.086920023 -0.028241992 -2.99428105 -0.091393113 0 -2.99428129 -0.10550606 0.034281015 -2.94603086
		 -0.089748859 0.065206349 -2.94603086 -0.06799978 0.04940474 -2.99428105 -0.079938531 0.025973618 -2.99428105
		 -0.065206349 0.0897488 -2.94603109 -0.04940474 0.06799978 -2.99428105 -0.034281015 0.10550606 -2.94603086
		 -0.025973618 0.079938531 -2.99428105 -2.3283028e-10 0.11093563 -2.94603086 2.9685912e-09 0.084052324 -2.99428105
		 0.034280986 0.10550606 -2.94603086 0.025973603 0.079938531 -2.99428105 0.065206319 0.0897488 -2.94603086
		 0.049404711 0.06799978 -2.99428105 0.0897488 0.065206289 -2.94603086 0.06799978 0.04940474 -2.99428105
		 0.105506 0.034281015 -2.94603109 0.079938531 0.025973618 -2.99428105 0.11093557 0 -2.94603086
		 0.084052324 0 -2.99428129 0.105506 -0.034281015 -2.94603086 0.079938471 -0.025973618 -2.99428105
		 0.0897488 -0.065206289 -2.94603109 0.06799978 -0.049404681 -2.99428105 0.065206319 -0.0897488 -2.94603086
		 0.04940474 -0.067999721 -2.99428105 0.034281015 -0.105506 -2.94603109 0.025973618 -0.079938471 -2.99428105
		 3.3178371e-09 -0.11093557 -2.94603086 5.7625589e-09 -0.084052324 -2.99428105 -0.034280986 -0.105506 -2.94603109
		 -0.025973588 -0.079938471 -2.99428105 -0.065206289 -0.08974874 -2.94603109 -0.049404711 -0.067999721 -2.99428105
		 -0.0897488 -0.065206289 -2.94603086 -0.067999721 -0.049404681 -2.99428129 -0.105506 -0.034280956 -2.94603086
		 -0.079938471 -0.025973558 -2.99428105 -0.11093557 0 -2.94603109 -0.084052265 0 -2.99428129
		 -0.079938531 0.025973618 -2.80445313 -0.06799978 0.04940474 -2.80445313 -0.04940474 0.06799978 -2.80445313
		 -0.025973618 0.079938531 -2.80445313 2.9685912e-09 0.084052354 -2.80445313 0.025973603 0.079938531 -2.80445313
		 0.049404711 0.06799978 -2.80445313 0.06799978 0.049404711 -2.80445313 0.079938531 0.025973618 -2.80445313
		 0.084052324 0 -2.80445337 0.079938471 -0.025973618 -2.80445313 0.06799978 -0.049404681 -2.80445313
		 0.04940474 -0.067999721 -2.80445313 0.025973618 -0.079938471 -2.80445313 5.7625589e-09 -0.084052324 -2.80445313
		 -0.025973588 -0.079938471 -2.80445313 -0.049404711 -0.067999721 -2.80445313 -0.067999721 -0.049404681 -2.80445337
		 -0.079938471 -0.025973558 -2.80445313 -0.084052265 0 -2.80445337 5.2390352e-11 2.9802322e-08 -2.57537913
		 -0.098251641 0.03192389 -2.95771575 -0.083577871 0.060722888 -2.95771575 -0.060722888 0.083577871 -2.95771575
		 -0.03192392 0.098251641 -2.95771575 5.0384313e-10 0.1033079 -2.95771575 0.031923905 0.098251641 -2.95771575
		 0.060722858 0.083577812 -2.95771575 0.083577812 0.060722828 -2.95771599 0.098251641 0.03192389 -2.95771575
		 0.10330784 0 -2.95771575 0.098251641 -0.03192389 -2.95771575 0.083577812 -0.060722828 -2.95771575
		 0.060722858 -0.083577812 -2.95771599 0.031923905 -0.098251641 -2.95771575 3.8103729e-09 -0.10330784 -2.95771599
		 -0.031923875 -0.098251581 -2.95771575 -0.060722828 -0.083577812 -2.95771575 -0.083577812 -0.060722828 -2.95771575
		 -0.098251581 -0.03192389 -2.95771575 -0.10330784 0 -2.95771599 -0.082391798 0.026770711 -2.95771575
		 -0.070086658 0.050920963 -2.95771575 -0.050920963 0.070086658 -2.95771575 -0.026770741 0.082391798 -2.95771599
		 2.1143873e-09 0.086631894 -2.95771599 0.026770726 0.082391798 -2.95771575 0.050920933 0.070086658 -2.95771575
		 0.070086658 0.050920904 -2.95771599 0.082391798 0.026770711 -2.95771599 0.086631835 0 -2.95771599
		 0.082391798 -0.026770711 -2.95771575 0.070086658 -0.050920904 -2.95771575 0.050920933 -0.070086658 -2.95771575
		 0.026770726 -0.082391798 -2.95771575 4.8871738e-09 -0.086631835 -2.95771575 -0.026770711 -0.082391739 -2.95771575
		 -0.050920904 -0.070086598 -2.95771575 -0.070086658 -0.050920904 -2.95771575 -0.082391739 -0.026770711 -2.95771599
		 -0.086631835 0 -2.95771599 -0.082391798 0.026770711 -2.91261625 -0.070086658 0.050920963 -2.91261625
		 -0.050920963 0.070086658 -2.91261649 -0.026770741 0.082391798 -2.91261649 2.1143873e-09 0.086631894 -2.91261649
		 0.026770726 0.082391798 -2.91261649 0.050920933 0.070086658 -2.91261649 0.070086658 0.050920904 -2.91261649
		 0.082391798 0.026770711 -2.91261649 0.086631835 0 -2.91261649 0.082391798 -0.026770711 -2.91261625
		 0.070086658 -0.050920904 -2.91261625 0.050920933 -0.070086658 -2.91261649 0.026770726 -0.082391798 -2.91261625
		 4.8871738e-09 -0.086631835 -2.91261625 -0.026770711 -0.082391739 -2.91261625 -0.050920904 -0.070086598 -2.91261625
		 -0.070086658 -0.050920904 -2.91261649 -0.082391739 -0.026770711 -2.91261649 -0.086631835 0 -2.91261649
		 -0.087077878 -0.028293312 -2.91184735 -0.074072868 -0.053817071 -2.91184735 -0.053817086 -0.074072853 -2.91184735
		 -0.028293321 -0.087077849 -2.91184735 -1.4901161e-08 -0.091559067 -2.91184735;
	setAttr ".vt[166:295]" 0.028293291 -0.087077849 -2.91184735 0.053817045 -0.07407283 -2.91184735
		 0.074072815 -0.05381706 -2.91184735 0.087077811 -0.0282933 -2.91184735 0.09155903 4.13262e-18 -2.91184735
		 0.087077811 0.0282933 -2.91184735 0.074072801 0.053817049 -2.91184735 0.053817034 0.074072808 -2.91184735
		 0.028293286 0.087077811 -2.91184735 -1.217249e-08 0.091559023 -2.91184735 -0.028293304 0.087077804 -2.91184735
		 -0.053817052 0.074072808 -2.91184735 -0.074072823 0.053817049 -2.91184735 -0.087077819 0.028293295 -2.91184735
		 -0.091574579 4.13262e-18 -2.91184735 -0.087077878 -0.028293312 -2.88524485 -0.074072868 -0.053817071 -2.88524485
		 -0.053817086 -0.074072853 -2.88524485 -0.028293321 -0.087077849 -2.88524485 -1.4901161e-08 -0.091559067 -2.88524485
		 0.028293291 -0.087077849 -2.88524485 0.053817045 -0.07407283 -2.88524485 0.074072815 -0.05381706 -2.88524485
		 0.087077811 -0.0282933 -2.88524485 0.09155903 -2.7681562e-18 -2.88524485 0.087077811 0.0282933 -2.88524485
		 0.074072801 0.053817049 -2.88524485 0.053817034 0.074072808 -2.88524485 0.028293286 0.087077811 -2.88524485
		 -1.217249e-08 0.091559023 -2.88524485 -0.028293304 0.087077804 -2.88524485 -0.053817052 0.074072808 -2.88524485
		 -0.074072823 0.053817049 -2.88524485 -0.087077819 0.028293295 -2.88524485 -0.091574579 -2.7681562e-18 -2.88524485
		 -0.084105894 -0.027327662 -2.91184735 -0.071544752 -0.051980291 -2.91184735 -0.071544752 -0.051980291 -2.88524485
		 -0.084105894 -0.027327662 -2.88524485 -0.051980305 -0.071544737 -2.91184735 -0.051980305 -0.071544737 -2.88524485
		 -0.027327668 -0.084105872 -2.91184735 -0.027327668 -0.084105872 -2.88524485 -1.4901161e-08 -0.088434145 -2.91184735
		 -1.4901161e-08 -0.088434145 -2.88524485 0.027327636 -0.084105872 -2.91184735 0.027327636 -0.084105872 -2.88524485
		 0.051980264 -0.071544714 -2.91184735 0.051980264 -0.071544714 -2.88524485 0.071544699 -0.051980276 -2.91184735
		 0.071544699 -0.051980276 -2.88524485 0.084105834 -0.027327646 -2.91184735 0.084105834 -0.027327646 -2.88524485
		 0.088434108 0 -2.91184735 0.088434108 0 -2.88524485 0.084105834 0.027327646 -2.91184735
		 0.084105834 0.027327646 -2.88524485 0.071544684 0.051980268 -2.91184735 0.071544684 0.051980268 -2.88524485
		 0.051980253 0.071544699 -2.91184735 0.051980253 0.071544699 -2.88524485 0.027327631 0.084105834 -2.91184735
		 0.027327631 0.084105834 -2.88524485 -1.169974e-08 0.088434108 -2.91184735 -1.169974e-08 0.088434108 -2.88524485
		 -0.027327651 0.084105834 -2.91184735 -0.027327651 0.084105834 -2.88524485 -0.051980276 0.071544684 -2.91184735
		 -0.051980276 0.071544684 -2.88524485 -0.071544699 0.051980264 -2.91184735 -0.071544699 0.051980264 -2.88524485
		 -0.084105842 0.02732764 -2.91184735 -0.084105842 0.02732764 -2.88524485 -0.088434108 -3.434252e-09 -2.91184735
		 -0.088434108 -3.434252e-09 -2.88524485 -0.085837148 0.016396582 -2.91184735 -0.088870302 0.016975978 -2.91184735
		 -0.088870302 0.016975978 -2.88524485 -0.085837148 0.016396582 -2.88524485 -0.085837178 -0.016396597 -2.91184735
		 -0.088870347 -0.016975988 -2.91184735 -0.088870347 -0.016975988 -2.88524485 -0.085837178 -0.016396597 -2.88524485
		 -0.095212676 -0.014487225 -2.91184735 -0.095212676 -0.014487225 -2.88524485 -0.095212631 0.014487215 -2.88524485
		 -0.095212631 0.014487215 -2.91184735 -0.098792359 0.0037017064 -2.91184735 -0.098792359 0.0037017064 -2.88524485
		 -0.1003438 0.0074055092 -2.91184735 -0.1003438 0.0074055092 -2.88524485 -0.098626964 0.011246586 -2.91184735
		 -0.098626964 0.011246586 -2.88524485 -0.098626994 -0.011246593 -2.91184735 -0.098626994 -0.011246593 -2.88524485
		 -0.10034382 -0.007405512 -2.91184735 -0.10034382 -0.007405512 -2.88524485 -0.098792367 -0.0037017083 -2.91184735
		 -0.098792367 -0.0037017083 -2.88524485 -0.093688972 -0.034294464 -2.88950086 -0.087115444 -0.034294464 -2.893296
		 -0.087115444 -0.034294464 -2.90088654 -0.093688972 -0.034294464 -2.90468168 -0.1002625 -0.034294464 -2.90088654
		 -0.1002625 -0.034294464 -2.893296 -0.093688972 -0.028080687 -2.88950086 -0.087115444 -0.028080687 -2.893296
		 -0.087115444 -0.028080687 -2.90088654 -0.093688972 -0.028080687 -2.90468168 -0.1002625 -0.028080687 -2.90088654
		 -0.1002625 -0.028080687 -2.893296 -0.093688972 -0.034294464 -2.89709139 -0.093688972 -0.028080687 -2.89709139
		 -0.096517399 -0.028431982 -2.89426279 -0.093688972 -0.028431982 -2.8930912 -0.090860546 -0.028431982 -2.89426279
		 -0.089688964 -0.028431982 -2.89709139 -0.090860546 -0.028431982 -2.89991975 -0.093688972 -0.028431982 -2.90109134
		 -0.096517399 -0.028431982 -2.89991975 -0.097688973 -0.028431982 -2.89709139 -0.096517399 0.04088483 -2.89426279
		 -0.093688972 0.04088483 -2.8930912 -0.090860546 0.04088483 -2.89426279 -0.089688964 0.04088483 -2.89709139
		 -0.090860546 0.04088483 -2.89991975 -0.093688972 0.04088483 -2.90109134 -0.096517399 0.04088483 -2.89991975
		 -0.097688973 0.04088483 -2.89709139 -0.093688972 0.04088483 -2.89709139;
	setAttr -s 564 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0 0 20 1 1 21 1
		 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 0 40 1 1 41 1 40 41 0 21 42 1 20 43 1
		 43 42 0 2 44 1 41 44 0 22 45 1 42 45 0 3 46 1 44 46 0 23 47 1 45 47 0 4 48 1 46 48 0
		 24 49 1 47 49 0 5 50 1 48 50 0 25 51 1 49 51 0 6 52 1 50 52 0 26 53 1 51 53 0 7 54 1
		 52 54 0 27 55 1 53 55 0 8 56 1 54 56 0 28 57 1 55 57 0 9 58 1 56 58 0 29 59 1 57 59 0
		 10 60 1 58 60 0 30 61 1 59 61 0 11 62 1 60 62 0 31 63 1 61 63 0 12 64 1 62 64 0 32 65 1
		 63 65 0 13 66 1 64 66 0 33 67 1 65 67 0 14 68 1 66 68 0 34 69 1 67 69 0 15 70 1 68 70 0
		 35 71 1 69 71 0 16 72 1 70 72 0 36 73 1 71 73 0 17 74 1 72 74 0 37 75 1 73 75 0 18 76 1
		 74 76 0 38 77 1 75 77 0 19 78 1 76 78 0 39 79 1 77 79 0 78 40 0 79 43 0 43 80 1 42 81 1
		 80 81 1 45 82 1 81 82 1 47 83 1 82 83 1 49 84 1 83 84 1 51 85 1 84 85 1 53 86 1 85 86 1
		 55 87 1 86 87 1 57 88 1 87 88 1 59 89 1 88 89 1 61 90 1 89 90 1 63 91 1 90 91 1 65 92 1
		 91 92 1 67 93 1;
	setAttr ".ed[166:331]" 92 93 1 69 94 1 93 94 1 71 95 1 94 95 1 73 96 1 95 96 1
		 75 97 1 96 97 1 77 98 1 97 98 1 79 99 1 98 99 1 99 80 1 80 100 1 81 100 1 82 100 1
		 83 100 1 84 100 1 85 100 1 86 100 1 87 100 1 88 100 1 89 100 1 90 100 1 91 100 1
		 92 100 1 93 100 1 94 100 1 95 100 1 96 100 1 97 100 1 98 100 1 99 100 1 40 101 1
		 41 102 1 101 102 0 44 103 1 102 103 0 46 104 1 103 104 0 48 105 1 104 105 0 50 106 1
		 105 106 0 52 107 1 106 107 0 54 108 1 107 108 0 56 109 1 108 109 0 58 110 1 109 110 0
		 60 111 1 110 111 0 62 112 1 111 112 0 64 113 1 112 113 0 66 114 1 113 114 0 68 115 1
		 114 115 0 70 116 1 115 116 0 72 117 1 116 117 0 74 118 1 117 118 0 76 119 1 118 119 0
		 78 120 1 119 120 0 120 101 0 101 121 0 102 122 0 121 122 0 103 123 0 122 123 0 104 124 0
		 123 124 0 105 125 0 124 125 0 106 126 0 125 126 0 107 127 0 126 127 0 108 128 0 127 128 0
		 109 129 0 128 129 0 110 130 0 129 130 0 111 131 0 130 131 0 112 132 0 131 132 0 113 133 0
		 132 133 0 114 134 0 133 134 0 115 135 0 134 135 0 116 136 0 135 136 0 117 137 0 136 137 0
		 118 138 0 137 138 0 119 139 0 138 139 0 120 140 0 139 140 0 140 121 0 121 141 1 122 142 1
		 141 142 0 123 143 1 142 143 0 124 144 1 143 144 0 125 145 1 144 145 0 126 146 1 145 146 0
		 127 147 1 146 147 0 128 148 1 147 148 0 129 149 1 148 149 0 130 150 1 149 150 0 131 151 1
		 150 151 0 132 152 1 151 152 0 133 153 1 152 153 0 134 154 1 153 154 0 135 155 1 154 155 0
		 136 156 1 155 156 0 137 157 1 156 157 0 138 158 1 157 158 0 139 159 1 158 159 0 140 160 1
		 159 160 0 160 141 0 161 162 0 162 163 0 163 164 0 164 165 0 165 166 0 166 167 0 167 168 0
		 168 169 0 169 170 0 170 171 0 171 172 0 172 173 0;
	setAttr ".ed[332:497]" 173 174 0 174 175 0 175 176 0 176 177 0 177 178 0 181 182 0
		 182 183 0 183 184 0 184 185 0 185 186 0 186 187 0 187 188 0 188 189 0 189 190 0 190 191 0
		 191 192 0 192 193 0 193 194 0 194 195 0 195 196 0 196 197 0 197 198 0 161 181 1 162 182 1
		 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1 169 189 1 170 190 1 171 191 1
		 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1 178 198 1 179 199 1 161 201 1
		 162 202 1 201 202 0 182 203 1 181 204 1 204 203 0 163 205 1 202 205 0 183 206 1 203 206 0
		 164 207 1 205 207 0 184 208 1 206 208 0 165 209 1 207 209 0 185 210 1 208 210 0 166 211 1
		 209 211 0 186 212 1 210 212 0 167 213 1 211 213 0 187 214 1 212 214 0 168 215 1 213 215 0
		 188 216 1 214 216 0 169 217 1 215 217 0 189 218 1 216 218 0 170 219 1 217 219 0 190 220 1
		 218 220 0 171 221 1 219 221 0 191 222 1 220 222 0 172 223 1 221 223 0 192 224 1 222 224 0
		 173 225 1 223 225 0 193 226 1 224 226 0 174 227 1 225 227 0 194 228 1 226 228 0 175 229 1
		 227 229 0 195 230 1 228 230 0 176 231 1 229 231 0 196 232 1 230 232 0 177 233 1 231 233 0
		 197 234 1 232 234 0 178 235 1 233 235 0 198 236 1 234 236 0 179 237 1 199 238 1 236 238 0
		 180 239 1 200 240 1 238 244 0 240 248 0 235 237 0 178 179 0 198 199 0 241 239 0 242 180 0
		 241 242 1 243 200 0 242 243 0 244 240 0 243 244 1 237 241 0 179 242 0 199 243 0 245 201 0
		 246 161 0 247 181 0 248 204 0 239 245 0 180 246 0 200 247 0 245 246 1 246 247 0 247 248 1
		 180 200 0 246 249 0 180 263 0 247 250 0 249 250 1 200 264 0 243 251 0 251 258 0 242 252 0
		 252 251 1 252 257 0 253 180 0 254 200 0 253 254 1 255 253 0 256 254 0 255 256 1 257 255 0
		 258 256 0 257 258 1 259 249 0 260 250 0 259 260 1 261 259 0 262 260 0;
	setAttr ".ed[498:563]" 261 262 1 263 261 0 264 262 0 263 264 1 265 266 0 266 267 0
		 267 268 0 268 269 0 269 270 0 270 265 0 271 272 0 272 273 0 273 274 0 274 275 0 275 276 0
		 276 271 0 265 271 0 266 272 0 267 273 0 268 274 0 269 275 0 270 276 0 277 265 1 277 266 1
		 277 267 1 277 268 1 277 269 1 277 270 1 271 278 1 272 278 1 273 278 1 274 278 1 275 278 1
		 276 278 1 279 280 0 280 281 0 281 282 0 282 283 0 283 284 0 284 285 0 285 286 0 286 279 0
		 287 288 0 288 289 0 289 290 0 290 291 0 291 292 0 292 293 0 293 294 0 294 287 0 279 287 1
		 280 288 1 281 289 1 282 290 1 283 291 1 284 292 1 285 293 1 286 294 1 287 295 1 288 295 1
		 289 295 1 290 295 1 291 295 1 292 295 1 293 295 1 294 295 1;
	setAttr -s 272 -ch 1056 ".fc[0:271]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 0 1 2 3
		f 4 1 42 -22 -42
		mu 0 4 1 4 5 2
		f 4 2 43 -23 -43
		mu 0 4 4 6 7 5
		f 4 3 44 -24 -44
		mu 0 4 6 8 9 7
		f 4 4 45 -25 -45
		mu 0 4 10 11 12 13
		f 4 5 46 -26 -46
		mu 0 4 11 14 15 12
		f 4 6 47 -27 -47
		mu 0 4 14 16 17 15
		f 4 7 48 -28 -48
		mu 0 4 16 18 19 17
		f 4 8 49 -29 -49
		mu 0 4 18 20 21 19
		f 4 9 50 -30 -50
		mu 0 4 20 22 23 21
		f 4 10 51 -31 -51
		mu 0 4 22 24 25 23
		f 4 11 52 -32 -52
		mu 0 4 24 26 27 25
		f 4 12 53 -33 -53
		mu 0 4 26 28 29 27
		f 4 13 54 -34 -54
		mu 0 4 28 30 31 29
		f 4 14 55 -35 -55
		mu 0 4 30 32 33 31
		f 4 15 56 -36 -56
		mu 0 4 32 34 35 33
		f 4 16 57 -37 -57
		mu 0 4 34 36 37 35
		f 4 17 58 -38 -58
		mu 0 4 36 38 39 37
		f 4 18 59 -39 -59
		mu 0 4 38 40 41 39
		f 4 19 40 -40 -60
		mu 0 4 40 0 3 41
		f 4 60 62 -62 -1
		mu 0 4 42 43 44 45
		f 4 63 -66 -65 20
		mu 0 4 46 47 48 49
		f 4 61 67 -67 -2
		mu 0 4 45 44 50 51
		f 4 68 -70 -64 21
		mu 0 4 52 53 47 46
		f 4 66 71 -71 -3
		mu 0 4 51 50 54 55
		f 4 72 -74 -69 22
		mu 0 4 56 57 53 52
		f 4 70 75 -75 -4
		mu 0 4 55 54 58 59
		f 4 76 -78 -73 23
		mu 0 4 60 61 57 56
		f 4 74 79 -79 -5
		mu 0 4 62 63 64 65
		f 4 80 -82 -77 24
		mu 0 4 66 67 68 69
		f 4 78 83 -83 -6
		mu 0 4 65 64 70 71
		f 4 84 -86 -81 25
		mu 0 4 72 73 67 66
		f 4 82 87 -87 -7
		mu 0 4 71 70 74 75
		f 4 88 -90 -85 26
		mu 0 4 76 77 73 72
		f 4 86 91 -91 -8
		mu 0 4 75 74 78 79
		f 4 92 -94 -89 27
		mu 0 4 80 81 77 76
		f 4 90 95 -95 -9
		mu 0 4 79 78 82 83
		f 4 96 -98 -93 28
		mu 0 4 84 85 81 80
		f 4 94 99 -99 -10
		mu 0 4 83 82 86 87
		f 4 100 -102 -97 29
		mu 0 4 88 89 85 84
		f 4 98 103 -103 -11
		mu 0 4 87 86 90 91
		f 4 104 -106 -101 30
		mu 0 4 92 93 89 88
		f 4 102 107 -107 -12
		mu 0 4 91 90 94 95
		f 4 108 -110 -105 31
		mu 0 4 96 97 93 92
		f 4 106 111 -111 -13
		mu 0 4 95 94 98 99
		f 4 112 -114 -109 32
		mu 0 4 100 101 97 96
		f 4 110 115 -115 -14
		mu 0 4 99 98 102 103
		f 4 116 -118 -113 33
		mu 0 4 104 105 101 100
		f 4 114 119 -119 -15
		mu 0 4 103 102 106 107
		f 4 120 -122 -117 34
		mu 0 4 108 109 105 104
		f 4 118 123 -123 -16
		mu 0 4 107 106 110 111
		f 4 124 -126 -121 35
		mu 0 4 112 113 109 108
		f 4 122 127 -127 -17
		mu 0 4 111 110 114 115
		f 4 128 -130 -125 36
		mu 0 4 116 117 113 112
		f 4 126 131 -131 -18
		mu 0 4 115 114 118 119
		f 4 132 -134 -129 37
		mu 0 4 120 121 117 116
		f 4 130 135 -135 -19
		mu 0 4 119 118 122 123
		f 4 136 -138 -133 38
		mu 0 4 124 125 121 120
		f 4 134 138 -61 -20
		mu 0 4 123 122 43 42
		f 4 64 -140 -137 39
		mu 0 4 49 48 125 124
		f 4 65 141 -143 -141
		mu 0 4 126 127 128 129
		f 4 69 143 -145 -142
		mu 0 4 127 130 131 128
		f 4 73 145 -147 -144
		mu 0 4 130 132 133 131
		f 4 77 147 -149 -146
		mu 0 4 132 134 135 133
		f 4 81 149 -151 -148
		mu 0 4 136 137 138 139
		f 4 85 151 -153 -150
		mu 0 4 137 140 141 138
		f 4 89 153 -155 -152
		mu 0 4 140 142 143 141
		f 4 93 155 -157 -154
		mu 0 4 142 144 145 143
		f 4 97 157 -159 -156
		mu 0 4 144 146 147 145
		f 4 101 159 -161 -158
		mu 0 4 146 148 149 147
		f 4 105 161 -163 -160
		mu 0 4 148 150 151 149
		f 4 109 163 -165 -162
		mu 0 4 150 152 153 151
		f 4 113 165 -167 -164
		mu 0 4 152 154 155 153
		f 4 117 167 -169 -166
		mu 0 4 154 156 157 155
		f 4 121 169 -171 -168
		mu 0 4 156 158 159 157
		f 4 125 171 -173 -170
		mu 0 4 158 160 161 159
		f 4 129 173 -175 -172
		mu 0 4 160 162 163 161
		f 4 133 175 -177 -174
		mu 0 4 162 164 165 163
		f 4 137 177 -179 -176
		mu 0 4 164 166 167 165
		f 4 139 140 -180 -178
		mu 0 4 166 126 129 167
		f 3 142 181 -181
		mu 0 3 168 169 170
		f 3 144 182 -182
		mu 0 3 169 171 170
		f 3 146 183 -183
		mu 0 3 171 172 170
		f 3 148 184 -184
		mu 0 3 172 173 170
		f 3 150 185 -185
		mu 0 3 173 174 170
		f 3 152 186 -186
		mu 0 3 174 175 170
		f 3 154 187 -187
		mu 0 3 175 176 170
		f 3 156 188 -188
		mu 0 3 176 177 170
		f 3 158 189 -189
		mu 0 3 177 178 170
		f 3 160 190 -190
		mu 0 3 178 179 170
		f 3 162 191 -191
		mu 0 3 179 180 170
		f 3 164 192 -192
		mu 0 3 180 181 170
		f 3 166 193 -193
		mu 0 3 181 182 170
		f 3 168 194 -194
		mu 0 3 182 183 170
		f 3 170 195 -195
		mu 0 3 183 184 170
		f 3 172 196 -196
		mu 0 3 184 185 170
		f 3 174 197 -197
		mu 0 3 185 186 170
		f 3 176 198 -198
		mu 0 3 186 187 170
		f 3 178 199 -199
		mu 0 3 187 188 170
		f 3 179 180 -200
		mu 0 3 188 168 170
		f 4 -63 200 202 -202
		mu 0 4 189 190 191 192
		f 4 -68 201 204 -204
		mu 0 4 193 189 192 194
		f 4 -72 203 206 -206
		mu 0 4 195 193 194 196
		f 4 -76 205 208 -208
		mu 0 4 197 195 196 198
		f 4 -80 207 210 -210
		mu 0 4 199 200 201 202
		f 4 -84 209 212 -212
		mu 0 4 203 199 202 204
		f 4 -88 211 214 -214
		mu 0 4 205 203 204 206
		f 4 -92 213 216 -216
		mu 0 4 207 205 206 208
		f 4 -96 215 218 -218
		mu 0 4 209 207 208 210
		f 4 -100 217 220 -220
		mu 0 4 211 209 210 212
		f 4 -104 219 222 -222
		mu 0 4 213 211 212 214
		f 4 -108 221 224 -224
		mu 0 4 215 213 214 216
		f 4 -112 223 226 -226
		mu 0 4 217 215 216 218
		f 4 -116 225 228 -228
		mu 0 4 219 217 218 220
		f 4 -120 227 230 -230
		mu 0 4 221 219 220 222
		f 4 -124 229 232 -232
		mu 0 4 223 221 222 224
		f 4 -128 231 234 -234
		mu 0 4 225 223 224 226
		f 4 -132 233 236 -236
		mu 0 4 227 225 226 228
		f 4 -136 235 238 -238
		mu 0 4 229 227 228 230
		f 4 -139 237 239 -201
		mu 0 4 190 229 230 191
		f 4 -203 240 242 -242
		mu 0 4 231 232 233 234
		f 4 -205 241 244 -244
		mu 0 4 235 231 234 236
		f 4 -207 243 246 -246
		mu 0 4 237 235 236 238
		f 4 -209 245 248 -248
		mu 0 4 239 237 238 240
		f 4 -211 247 250 -250
		mu 0 4 241 242 243 244
		f 4 -213 249 252 -252
		mu 0 4 245 241 244 246
		f 4 -215 251 254 -254
		mu 0 4 247 245 246 248
		f 4 -217 253 256 -256
		mu 0 4 249 247 248 250
		f 4 -219 255 258 -258
		mu 0 4 251 249 250 252
		f 4 -221 257 260 -260
		mu 0 4 253 251 252 254
		f 4 -223 259 262 -262
		mu 0 4 255 253 254 256
		f 4 -225 261 264 -264
		mu 0 4 257 255 256 258
		f 4 -227 263 266 -266
		mu 0 4 259 257 258 260
		f 4 -229 265 268 -268
		mu 0 4 261 259 260 262
		f 4 -231 267 270 -270
		mu 0 4 263 261 262 264
		f 4 -233 269 272 -272
		mu 0 4 265 263 264 266
		f 4 -235 271 274 -274
		mu 0 4 267 265 266 268
		f 4 -237 273 276 -276
		mu 0 4 269 267 268 270
		f 4 -239 275 278 -278
		mu 0 4 271 269 270 272
		f 4 -240 277 279 -241
		mu 0 4 232 271 272 233
		f 4 -243 280 282 -282
		mu 0 4 273 274 275 276
		f 4 -245 281 284 -284
		mu 0 4 277 273 276 278
		f 4 -247 283 286 -286
		mu 0 4 279 277 278 280
		f 4 -249 285 288 -288
		mu 0 4 281 279 280 282
		f 4 -251 287 290 -290
		mu 0 4 283 284 285 286
		f 4 -253 289 292 -292
		mu 0 4 287 283 286 288
		f 4 -255 291 294 -294
		mu 0 4 289 287 288 290
		f 4 -257 293 296 -296
		mu 0 4 291 289 290 292
		f 4 -259 295 298 -298
		mu 0 4 293 291 292 294
		f 4 -261 297 300 -300
		mu 0 4 295 293 294 296
		f 4 -263 299 302 -302
		mu 0 4 297 295 296 298
		f 4 -265 301 304 -304
		mu 0 4 299 297 298 300
		f 4 -267 303 306 -306
		mu 0 4 301 299 300 302
		f 4 -269 305 308 -308
		mu 0 4 303 301 302 304
		f 4 -271 307 310 -310
		mu 0 4 305 303 304 306
		f 4 -273 309 312 -312
		mu 0 4 307 305 306 308
		f 4 -275 311 314 -314
		mu 0 4 309 307 308 310
		f 4 -277 313 316 -316
		mu 0 4 311 309 310 312
		f 4 -279 315 318 -318
		mu 0 4 313 311 312 314
		f 4 -280 317 319 -281
		mu 0 4 274 313 314 275
		f 4 320 355 -338 -355
		mu 0 4 315 316 317 318
		f 4 321 356 -339 -356
		mu 0 4 316 319 320 317
		f 4 322 357 -340 -357
		mu 0 4 319 321 322 320
		f 4 323 358 -341 -358
		mu 0 4 321 323 324 322
		f 4 324 359 -342 -359
		mu 0 4 323 325 326 324
		f 4 325 360 -343 -360
		mu 0 4 325 327 328 326
		f 4 326 361 -344 -361
		mu 0 4 327 329 330 328
		f 4 327 362 -345 -362
		mu 0 4 329 331 332 330
		f 4 328 363 -346 -363
		mu 0 4 331 333 334 332
		f 4 329 364 -347 -364
		mu 0 4 333 335 336 334
		f 4 330 365 -348 -365
		mu 0 4 335 337 338 336
		f 4 331 366 -349 -366
		mu 0 4 337 339 340 338
		f 4 332 367 -350 -367
		mu 0 4 339 341 342 340
		f 4 333 368 -351 -368
		mu 0 4 341 343 344 342
		f 4 334 369 -352 -369
		mu 0 4 343 345 346 344
		f 4 335 370 -353 -370
		mu 0 4 345 347 348 346
		f 4 336 371 -354 -371
		mu 0 4 347 349 350 348
		f 4 -372 451 372 -453
		mu 0 4 350 349 351 352
		f 4 -373 461 457 -463
		mu 0 4 352 351 353 354
		f 4 -474 475 501 -479
		mu 0 4 355 356 357 358
		f 4 373 375 -375 -321
		mu 0 4 359 360 361 362
		f 4 376 -379 -378 337
		mu 0 4 363 364 365 366
		f 4 374 380 -380 -322
		mu 0 4 362 361 367 368
		f 4 381 -383 -377 338
		mu 0 4 369 370 364 363
		f 4 379 384 -384 -323
		mu 0 4 368 367 371 372
		f 4 385 -387 -382 339
		mu 0 4 373 374 370 369
		f 4 383 388 -388 -324
		mu 0 4 372 371 375 376
		f 4 389 -391 -386 340
		mu 0 4 377 378 374 373
		f 4 387 392 -392 -325
		mu 0 4 376 375 379 380
		f 4 393 -395 -390 341
		mu 0 4 381 382 378 377
		f 4 391 396 -396 -326
		mu 0 4 380 379 383 384
		f 4 397 -399 -394 342
		mu 0 4 385 386 382 381
		f 4 395 400 -400 -327
		mu 0 4 384 383 387 388
		f 4 401 -403 -398 343
		mu 0 4 389 390 386 385
		f 4 399 404 -404 -328
		mu 0 4 388 387 391 392
		f 4 405 -407 -402 344
		mu 0 4 393 394 390 389
		f 4 403 408 -408 -329
		mu 0 4 392 391 395 396
		f 4 409 -411 -406 345
		mu 0 4 397 398 394 393
		f 4 407 412 -412 -330
		mu 0 4 396 395 399 400
		f 4 413 -415 -410 346
		mu 0 4 401 402 398 397
		f 4 411 416 -416 -331
		mu 0 4 400 399 403 404
		f 4 417 -419 -414 347
		mu 0 4 405 406 402 401
		f 4 415 420 -420 -332
		mu 0 4 404 403 407 408
		f 4 421 -423 -418 348
		mu 0 4 409 410 406 405
		f 4 419 424 -424 -333
		mu 0 4 408 407 411 412
		f 4 425 -427 -422 349
		mu 0 4 413 414 410 409
		f 4 423 428 -428 -334
		mu 0 4 412 411 415 416
		f 4 429 -431 -426 350
		mu 0 4 417 418 414 413
		f 4 427 432 -432 -335
		mu 0 4 416 415 419 420
		f 4 433 -435 -430 351
		mu 0 4 421 422 418 417
		f 4 431 436 -436 -336
		mu 0 4 420 419 423 424
		f 4 437 -439 -434 352
		mu 0 4 425 426 422 421
		f 4 435 440 -440 -337
		mu 0 4 424 423 427 428
		f 4 441 -443 -438 353
		mu 0 4 429 430 426 425
		f 4 439 450 -444 -452
		mu 0 4 428 427 431 432
		f 4 -446 -442 452 444
		mu 0 4 433 430 429 434
		f 4 443 460 455 -462
		mu 0 4 432 431 435 436
		f 4 -449 -445 462 459
		mu 0 4 437 433 434 438
		f 4 446 467 470 -469
		mu 0 4 439 440 441 442
		f 4 -450 -448 469 472
		mu 0 4 443 444 445 446
		f 4 -455 -456 453 -447
		mu 0 4 439 436 435 440
		f 4 -481 -483 483 492
		mu 0 4 447 448 449 450
		f 4 -459 -460 456 447
		mu 0 4 444 437 438 445
		f 4 -465 -471 463 -374
		mu 0 4 359 442 441 360
		f 4 -466 -472 464 354
		mu 0 4 318 451 452 315
		f 4 -467 -473 465 377
		mu 0 4 365 443 446 366
		f 6 468 474 -494 -497 -500 -476
		mu 0 6 439 442 453 454 455 456
		f 4 471 476 -478 -475
		mu 0 4 457 458 459 460
		f 6 -470 478 500 497 494 -477
		mu 0 6 446 445 461 462 463 464
		f 6 -457 479 480 491 488 485
		mu 0 6 445 438 465 466 467 468
		f 4 -458 481 482 -480
		mu 0 4 469 470 449 448
		f 6 454 -485 -488 -491 -484 -482
		mu 0 6 436 439 471 472 473 474
		f 4 -486 -487 484 473
		mu 0 4 475 476 477 478
		f 4 -489 -490 487 486
		mu 0 4 476 479 480 477
		f 4 -492 -493 490 489
		mu 0 4 479 447 450 480
		f 4 -496 493 477 -495
		mu 0 4 481 482 460 459
		f 4 -499 496 495 -498
		mu 0 4 483 484 482 481
		f 4 -502 499 498 -501
		mu 0 4 358 357 484 483
		f 4 502 515 -509 -515
		mu 0 4 485 486 487 488
		f 4 503 516 -510 -516
		mu 0 4 489 490 491 492
		f 4 504 517 -511 -517
		mu 0 4 490 493 494 491
		f 4 505 518 -512 -518
		mu 0 4 493 495 496 494
		f 4 506 519 -513 -519
		mu 0 4 495 497 498 496
		f 4 507 514 -514 -520
		mu 0 4 497 485 488 498
		f 3 -503 -521 521
		mu 0 3 499 500 501
		f 3 -504 -522 522
		mu 0 3 502 499 501
		f 3 -505 -523 523
		mu 0 3 503 502 501
		f 3 -506 -524 524
		mu 0 3 504 503 501
		f 3 -507 -525 525
		mu 0 3 505 504 501
		f 3 -508 -526 520
		mu 0 3 500 505 501
		f 3 508 527 -527
		mu 0 3 506 507 508
		f 3 509 528 -528
		mu 0 3 507 509 508
		f 3 510 529 -529
		mu 0 3 509 510 508
		f 3 511 530 -530
		mu 0 3 510 511 508
		f 3 512 531 -531
		mu 0 3 511 512 508
		f 3 513 526 -532
		mu 0 3 512 506 508
		f 4 532 549 -541 -549
		mu 0 4 513 514 515 516
		f 4 533 550 -542 -550
		mu 0 4 514 517 518 515
		f 4 534 551 -543 -551
		mu 0 4 517 519 520 518
		f 4 535 552 -544 -552
		mu 0 4 519 521 522 520
		f 4 536 553 -545 -553
		mu 0 4 521 523 524 522
		f 4 537 554 -546 -554
		mu 0 4 523 525 526 524
		f 4 538 555 -547 -555
		mu 0 4 525 527 528 526
		f 4 539 548 -548 -556
		mu 0 4 527 529 530 528
		f 3 540 557 -557
		mu 0 3 531 532 533
		f 3 541 558 -558
		mu 0 3 532 534 533
		f 3 542 559 -559
		mu 0 3 534 535 533
		f 3 543 560 -560
		mu 0 3 535 536 533
		f 3 544 561 -561
		mu 0 3 536 537 533
		f 3 545 562 -562
		mu 0 3 537 538 533
		f 3 546 563 -563
		mu 0 3 538 539 533
		f 3 547 556 -564
		mu 0 3 539 531 533;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "componentJoint3" -p "hose_main_component4";
	rename -uid "63263488-4DF8-8487-F303-249FE5FB7ADA";
	addAttr -ci true -sn "i3D_objectMask" -ln "i3D_objectMask" -at "long";
	addAttr -ci true -sn "i3D_dynamic" -ln "i3D_dynamic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_joint" -ln "i3D_joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_dynamicFriction" -ln "i3D_dynamicFriction" -at "float";
	addAttr -ci true -sn "i3D_ccd" -ln "i3D_ccd" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_density" -ln "i3D_density" -at "float";
	addAttr -ci true -sn "i3D_splitType" -ln "i3D_splitType" -at "long";
	addAttr -ci true -sn "i3D_splitMinU" -ln "i3D_splitMinU" -at "float";
	addAttr -ci true -sn "i3D_splitMinV" -ln "i3D_splitMinV" -at "float";
	addAttr -ci true -sn "i3D_driveForceLimit" -ln "i3D_driveForceLimit" -at "float";
	addAttr -ci true -sn "i3D_angularDamping" -ln "i3D_angularDamping" -at "float";
	addAttr -ci true -sn "i3D_splitUvWorldScale" -ln "i3D_splitUvWorldScale" -at "float";
	addAttr -ci true -sn "i3D_projection" -ln "i3D_projection" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_driveSpring" -ln "i3D_driveSpring" -at "float";
	addAttr -ci true -sn "i3D_breakableJoint" -ln "i3D_breakableJoint" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_projDistance" -ln "i3D_projDistance" -at "float";
	addAttr -ci true -sn "i3D_driveDamping" -ln "i3D_driveDamping" -at "float";
	addAttr -ci true -sn "i3D_xAxisDrive" -ln "i3D_xAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_compound" -ln "i3D_compound" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_clipDistance" -ln "i3D_clipDistance" -at "float";
	addAttr -ci true -sn "i3D_collision" -ln "i3D_collision" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_projAngle" -ln "i3D_projAngle" -at "float";
	addAttr -ci true -sn "i3D_mergeGroupRoot" -ln "i3D_mergeGroupRoot" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_jointBreakTorque" -ln "i3D_jointBreakTorque" -at "float";
	addAttr -ci true -sn "i3D_restitution" -ln "i3D_restitution" -at "float";
	addAttr -ci true -sn "i3D_yAxisDrive" -ln "i3D_yAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_mergeGroup" -ln "i3D_mergeGroup" -at "long";
	addAttr -ci true -sn "i3D_jointBreakForce" -ln "i3D_jointBreakForce" -at "float";
	addAttr -ci true -sn "i3D_lod1" -ln "i3D_lod1" -at "float";
	addAttr -ci true -sn "i3D_lod2" -ln "i3D_lod2" -at "float";
	addAttr -ci true -sn "i3D_oc" -ln "i3D_oc" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_kinematic" -ln "i3D_kinematic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_trigger" -ln "i3D_trigger" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_static" -ln "i3D_static" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lightMask" -ln "i3D_lightMask" -dt "string";
	addAttr -ci true -sn "i3D_linearDamping" -ln "i3D_linearDamping" -at "float";
	addAttr -ci true -sn "i3D_lod3" -ln "i3D_lod3" -at "float";
	addAttr -ci true -sn "i3D_drivePos" -ln "i3D_drivePos" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lod" -ln "i3D_lod" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_solverIterationCount" -ln "i3D_solverIterationCount" -at "long";
	addAttr -ci true -sn "i3D_nonRenderable" -ln "i3D_nonRenderable" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_boundingVolume" -ln "i3D_boundingVolume" -dt "string";
	addAttr -ci true -sn "i3D_collisionMask" -ln "i3D_collisionMask" -at "long";
	addAttr -ci true -sn "i3D_zAxisDrive" -ln "i3D_zAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_staticFriction" -ln "i3D_staticFriction" -at "float";
	addAttr -ci true -sn "i3D_decalLayer" -ln "i3D_decalLayer" -at "long";
	addAttr -ci true -sn "i3D_splitMaxV" -ln "i3D_splitMaxV" -at "float";
	addAttr -ci true -sn "i3D_splitMaxU" -ln "i3D_splitMaxU" -at "float";
	addAttr -ci true -sn "i3D_compoundChild" -ln "i3D_compoundChild" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_xmlIdentifier" -ln "i3D_xmlIdentifier" -dt "string";
	setAttr ".t" -type "double3" 3.6739404005911872e-16 2.6077032089233398e-08 1.225 ;
	setAttr ".i3D_objectMask" 255;
	setAttr ".i3D_dynamicFriction" 0.5;
	setAttr ".i3D_density" 1;
	setAttr ".i3D_driveForceLimit" 100000;
	setAttr ".i3D_angularDamping" 0.0099999997764825821;
	setAttr ".i3D_splitUvWorldScale" 1;
	setAttr ".i3D_driveSpring" 1;
	setAttr ".i3D_projDistance" 0.0099999997764825821;
	setAttr ".i3D_driveDamping" 0.0099999997764825821;
	setAttr ".i3D_clipDistance" 300;
	setAttr ".i3D_projAngle" 0.0099999997764825821;
	setAttr ".i3D_lightMask" -type "string" "FFFF";
	setAttr ".i3D_solverIterationCount" 4;
	setAttr ".i3D_boundingVolume" -type "string" "MERGEGROUP_5";
	setAttr ".i3D_collisionMask" 255;
	setAttr ".i3D_staticFriction" 0.5;
	setAttr ".i3D_splitMaxV" 1;
	setAttr ".i3D_splitMaxU" 1;
	setAttr ".i3D_xmlIdentifier" -type "string" "componentJoint3";
createNode transform -n "raycastNode2" -p "hose_main_component4";
	rename -uid "A71C4679-4B65-2D56-2BDA-DEA50B2A85B5";
	addAttr -ci true -sn "i3D_objectMask" -ln "i3D_objectMask" -at "long";
	addAttr -ci true -sn "i3D_dynamic" -ln "i3D_dynamic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_joint" -ln "i3D_joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_dynamicFriction" -ln "i3D_dynamicFriction" -at "float";
	addAttr -ci true -sn "i3D_ccd" -ln "i3D_ccd" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_density" -ln "i3D_density" -at "float";
	addAttr -ci true -sn "i3D_splitType" -ln "i3D_splitType" -at "long";
	addAttr -ci true -sn "i3D_splitMinU" -ln "i3D_splitMinU" -at "float";
	addAttr -ci true -sn "i3D_splitMinV" -ln "i3D_splitMinV" -at "float";
	addAttr -ci true -sn "i3D_driveForceLimit" -ln "i3D_driveForceLimit" -at "float";
	addAttr -ci true -sn "i3D_angularDamping" -ln "i3D_angularDamping" -at "float";
	addAttr -ci true -sn "i3D_splitUvWorldScale" -ln "i3D_splitUvWorldScale" -at "float";
	addAttr -ci true -sn "i3D_projection" -ln "i3D_projection" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_driveSpring" -ln "i3D_driveSpring" -at "float";
	addAttr -ci true -sn "i3D_breakableJoint" -ln "i3D_breakableJoint" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_projDistance" -ln "i3D_projDistance" -at "float";
	addAttr -ci true -sn "i3D_driveDamping" -ln "i3D_driveDamping" -at "float";
	addAttr -ci true -sn "i3D_xAxisDrive" -ln "i3D_xAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_compound" -ln "i3D_compound" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_clipDistance" -ln "i3D_clipDistance" -at "float";
	addAttr -ci true -sn "i3D_collision" -ln "i3D_collision" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_projAngle" -ln "i3D_projAngle" -at "float";
	addAttr -ci true -sn "i3D_mergeGroupRoot" -ln "i3D_mergeGroupRoot" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "i3D_jointBreakTorque" -ln "i3D_jointBreakTorque" -at "float";
	addAttr -ci true -sn "i3D_restitution" -ln "i3D_restitution" -at "float";
	addAttr -ci true -sn "i3D_yAxisDrive" -ln "i3D_yAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_mergeGroup" -ln "i3D_mergeGroup" -at "long";
	addAttr -ci true -sn "i3D_jointBreakForce" -ln "i3D_jointBreakForce" -at "float";
	addAttr -ci true -sn "i3D_lod1" -ln "i3D_lod1" -at "float";
	addAttr -ci true -sn "i3D_lod2" -ln "i3D_lod2" -at "float";
	addAttr -ci true -sn "i3D_oc" -ln "i3D_oc" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_kinematic" -ln "i3D_kinematic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_trigger" -ln "i3D_trigger" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_static" -ln "i3D_static" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lightMask" -ln "i3D_lightMask" -dt "string";
	addAttr -ci true -sn "i3D_linearDamping" -ln "i3D_linearDamping" -at "float";
	addAttr -ci true -sn "i3D_lod3" -ln "i3D_lod3" -at "float";
	addAttr -ci true -sn "i3D_drivePos" -ln "i3D_drivePos" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_lod" -ln "i3D_lod" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_solverIterationCount" -ln "i3D_solverIterationCount" -at "long";
	addAttr -ci true -sn "i3D_nonRenderable" -ln "i3D_nonRenderable" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_boundingVolume" -ln "i3D_boundingVolume" -dt "string";
	addAttr -ci true -sn "i3D_collisionMask" -ln "i3D_collisionMask" -at "long";
	addAttr -ci true -sn "i3D_zAxisDrive" -ln "i3D_zAxisDrive" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_staticFriction" -ln "i3D_staticFriction" -at "float";
	addAttr -ci true -sn "i3D_decalLayer" -ln "i3D_decalLayer" -at "long";
	addAttr -ci true -sn "i3D_splitMaxV" -ln "i3D_splitMaxV" -at "float";
	addAttr -ci true -sn "i3D_splitMaxU" -ln "i3D_splitMaxU" -at "float";
	addAttr -ci true -sn "i3D_compoundChild" -ln "i3D_compoundChild" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_xmlIdentifier" -ln "i3D_xmlIdentifier" -dt "string";
	setAttr ".t" -type "double3" 3.6739404005911872e-16 2.6077032089233398e-08 0 ;
	setAttr ".dla" yes;
	setAttr ".i3D_objectMask" 255;
	setAttr ".i3D_dynamicFriction" 0.5;
	setAttr ".i3D_density" 1;
	setAttr ".i3D_driveForceLimit" 100000;
	setAttr ".i3D_angularDamping" 0.0099999997764825821;
	setAttr ".i3D_splitUvWorldScale" 1;
	setAttr ".i3D_driveSpring" 1;
	setAttr ".i3D_projDistance" 0.0099999997764825821;
	setAttr ".i3D_driveDamping" 0.0099999997764825821;
	setAttr ".i3D_clipDistance" 300;
	setAttr ".i3D_projAngle" 0.0099999997764825821;
	setAttr ".i3D_lightMask" -type "string" "FFFF";
	setAttr ".i3D_solverIterationCount" 4;
	setAttr ".i3D_boundingVolume" -type "string" "MERGEGROUP_5";
	setAttr ".i3D_collisionMask" 255;
	setAttr ".i3D_staticFriction" 0.5;
	setAttr ".i3D_splitMaxV" 1;
	setAttr ".i3D_splitMaxU" 1;
	setAttr ".i3D_xmlIdentifier" -type "string" "raycastNode2";
createNode displayLayer -n "MERGEGROUP_0";
	rename -uid "4BAF1145-4405-879F-71F7-11A942768A80";
	setAttr ".c" 4;
	setAttr ".do" 1;
createNode displayLayerManager -n "layerManager";
	rename -uid "77E234FE-49C3-A3C6-0217-9EAB3B3BD53D";
	setAttr ".cdl" 5;
	setAttr -s 7 ".dli[1:6]"  1 2 3 7 5 6;
	setAttr -s 7 ".dli";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "B7D8247D-40A8-582D-7FFD-CB898A49B150";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "F1F7B0F2-4E6C-C87B-7615-A89D64928C8C";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "B84C6496-40C2-B144-E2F3-B59BB0DE772C";
createNode displayLayer -n "defaultLayer";
	rename -uid "CD4B63CD-4A6A-87DC-A03F-6D97460CCB64";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "F92D1207-47EE-DDB6-C5C7-B2A375AA9D3A";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "D346F8D5-45ED-4CCC-58E5-8DB27E108A88";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "F2FE407D-4AF5-D997-92C5-7B94818B3F62";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 0\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 736\n            -height 336\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 0\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 736\n            -height 336\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 736\n            -height 336\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 0\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 736\n            -height 336\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 0\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
		+ "            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n"
		+ "                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n"
		+ "                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n"
		+ "\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n"
		+ "\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"quad\\\" -ps 1 50 50 -ps 2 50 50 -ps 3 50 50 -ps 4 50 50 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 0\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 736\\n    -height 336\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 0\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 736\\n    -height 336\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 0\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 736\\n    -height 336\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 0\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 736\\n    -height 336\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 0\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 736\\n    -height 336\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 0\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 736\\n    -height 336\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Front View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 736\\n    -height 336\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 736\\n    -height 336\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "2128C638-4E64-6FEC-7F48-1D8FCECCC5C4";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "effect_MERGEGROUP_0";
	rename -uid "8EDF8A21-4FAD-EF7D-B9F4-10B0A39F4ACD";
	setAttr ".do" 2;
createNode displayLayer -n "MERGEGROUP_1";
	rename -uid "04357B2D-4BD7-8732-99AF-C0858AEB3C30";
	setAttr ".c" 2;
	setAttr ".do" 3;
createNode displayLayer -n "MERGEGROUP_5";
	rename -uid "2B462EBA-472A-F76B-77FE-75B1EA4CEC5D";
	setAttr ".do" 4;
createNode polyCylinder -n "polyCylinder2";
	rename -uid "041AAC53-4E75-C4E3-EFB5-67B064CBC395";
	setAttr ".sa" 8;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode transformGeometry -n "transformGeometry46";
	rename -uid "EC7F936C-4ABC-031D-018F-76A055D0089C";
	setAttr ".txf" -type "matrix" 0.10000000000000001 0 0 0 0 1 0 0 0 0 0.10000000000000001 0
		 0 0 0 1;
createNode transformGeometry -n "transformGeometry47";
	rename -uid "E55C5C48-4BFF-0303-4066-4C8762360CEB";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1.5 0 0 0 0 1 0 0 -0.5 0 1;
createNode transformGeometry -n "transformGeometry48";
	rename -uid "44A88DB4-4C28-A3B8-6227-FE9A9E5AA39E";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -1 -2.2204460492503131e-16 1;
createNode transformGeometry -n "transformGeometry49";
	rename -uid "2F959048-4CE2-043E-7F32-3490FCC89DE7";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 2.2204460492503131e-16 1 0 0 -1 2.2204460492503131e-16 0
		 0 0 0 1;
createNode transformGeometry -n "transformGeometry50";
	rename -uid "1E4571B2-4A3D-383E-148A-E983216449BB";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 0.25 0 0 0 0 1;
createNode transformGeometry -n "transformGeometry51";
	rename -uid "8474AB4A-42E6-0B77-9AE8-3AA0A4FBC656";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 0.75 0 0 0 0 1;
createNode displayLayer -n "SlurryHose:uvmapped";
	rename -uid "219B948D-467B-4F4B-6B98-D79044C74F87";
	setAttr ".c" 19;
	setAttr ".do" 1;
createNode renderLayerManager -n "SlurryHose:renderLayerManager";
	rename -uid "5E86C97E-41E5-1546-E124-17BC032133E6";
createNode renderLayer -n "SlurryHose:defaultRenderLayer";
	rename -uid "1CDA5C14-46F2-5B7D-CBD0-68898830C621";
	setAttr ".g" yes;
createNode phong -n "hose_mat";
	rename -uid "1E0ECE0E-41AF-55DE-AF02-0BB0280E3669";
	addAttr -ci true -sn "customShader" -ln "customShader" -nn "customShader" -dt "string";
	addAttr -ci true -sn "customParameter_RDT" -ln "customParameter_RDT" -nn "customParameter_RDT" 
		-dt "string";
	addAttr -ci true -sn "customParameter_colorMat0" -ln "customParameter_colorMat0" 
		-nn "customParameter_colorMat0" -dt "string";
	addAttr -ci true -sn "customParameter_dirtColor" -ln "customParameter_dirtColor" 
		-nn "customParameter_dirtColor" -dt "string";
	addAttr -ci true -sn "customShaderVariation" -ln "customShaderVariation" -nn "customShaderVariation" 
		-dt "string";
	addAttr -ci true -sn "customParameter_lengthAndDiameter" -ln "customParameter_lengthAndDiameter" 
		-dt "string";
	addAttr -ci true -sn "customParameter_uvScale" -ln "customParameter_uvScale" -dt "string";
	setAttr ".customShader" -type "string" "$data/shaders/vehicleShader.xml";
	setAttr ".customParameter_RDT" -type "string" "1.0 1.0 0.0 0.0";
	setAttr ".customParameter_colorMat0" -type "string" "0.80 0.55 0.05 1.0";
	setAttr ".customParameter_dirtColor" -type "string" "0.20 0.14 0.08 0.0";
	setAttr ".customShaderVariation" -type "string" "LOCAL_CATMULL_ROM_colorMask_uvScale";
	setAttr ".customParameter_lengthAndDiameter" -type "string" "5 1 0 0";
	setAttr ".customParameter_uvScale" -type "string" "1 1.7 0 0";
createNode shadingEngine -n "SlurryHose:phong1SG";
	rename -uid "E1FDBA09-4DC0-958B-F193-62A9F4E981B0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "SlurryHose:materialInfo1";
	rename -uid "54B2BDB0-4223-864A-4EED-EBB550CBDFDB";
createNode file -n "hose_normal_png";
	rename -uid "FCE42B2E-434A-3AEA-3783-BFA4CB1225FB";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/Stijn Wopereis/Documents/My Games/FarmingSimulator2019/mods/FS19_manureSystem//resources/hoses/hose_normal.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "SlurryHose:place2dTexture1";
	rename -uid "44A4614B-4C63-7DED-3F9C-A19F236709A8";
createNode bump2d -n "SlurryHose:bump2d1";
	rename -uid "607AFFEB-4795-8634-B12B-7595FF82CC43";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 0.00025000004 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode phong -n "coupling_mat";
	rename -uid "C334EF2D-44FA-F9A7-1B4B-8BA55E3F84E9";
	addAttr -ci true -sn "customShader" -ln "customShader" -nn "customShader" -dt "string";
	addAttr -ci true -sn "customParameter_colorMat3" -ln "customParameter_colorMat3" 
		-nn "customParameter_colorMat3" -dt "string";
	addAttr -ci true -sn "customParameter_colorMat2" -ln "customParameter_colorMat2" 
		-nn "customParameter_colorMat2" -dt "string";
	addAttr -ci true -sn "customParameter_RDT" -ln "customParameter_RDT" -nn "customParameter_RDT" 
		-dt "string";
	addAttr -ci true -sn "customParameter_colorMat0" -ln "customParameter_colorMat0" 
		-nn "customParameter_colorMat0" -dt "string";
	addAttr -ci true -sn "customParameter_colorMat1" -ln "customParameter_colorMat1" 
		-nn "customParameter_colorMat1" -dt "string";
	addAttr -ci true -sn "customParameter_colorMat6" -ln "customParameter_colorMat6" 
		-nn "customParameter_colorMat6" -dt "string";
	addAttr -ci true -sn "customParameter_colorMat7" -ln "customParameter_colorMat7" 
		-nn "customParameter_colorMat7" -dt "string";
	addAttr -ci true -sn "customParameter_colorMat4" -ln "customParameter_colorMat4" 
		-nn "customParameter_colorMat4" -dt "string";
	addAttr -ci true -sn "customParameter_colorMat5" -ln "customParameter_colorMat5" 
		-nn "customParameter_colorMat5" -dt "string";
	addAttr -ci true -sn "customParameter_dirtColor" -ln "customParameter_dirtColor" 
		-nn "customParameter_dirtColor" -dt "string";
	addAttr -ci true -sn "customShaderVariation" -ln "customShaderVariation" -nn "customShaderVariation" 
		-dt "string";
	setAttr ".customShader" -type "string" "$data/shaders/vehicleShader.xml";
	setAttr ".customParameter_colorMat3" -type "string" "0.10 0.10 1.00 1.0";
	setAttr ".customParameter_colorMat2" -type "string" "0.10 1.00 0.10 1.0";
	setAttr ".customParameter_RDT" -type "string" "1.0 1.0 0.0 0.0";
	setAttr ".customParameter_colorMat0" -type "string" "0.80 0.55 0.05 1.0";
	setAttr ".customParameter_colorMat1" -type "string" "1.00 0.10 0.10 1.0";
	setAttr ".customParameter_colorMat6" -type "string" "1.00 0.10 1.00 1.0";
	setAttr ".customParameter_colorMat7" -type "string" "0.10 1.00 1.00 1.0";
	setAttr ".customParameter_colorMat4" -type "string" "1.00 1.00 0.10 1.0";
	setAttr ".customParameter_colorMat5" -type "string" "0.05 0.05 0.05 1.0";
	setAttr ".customParameter_dirtColor" -type "string" "0.20 0.14 0.08 0.0";
	setAttr ".customShaderVariation" -type "string" "colorMask";
createNode shadingEngine -n "SlurryHose:phong2SG";
	rename -uid "18A37DD5-4119-B2EB-A173-66BAFF0812A7";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 6 ".gn";
createNode materialInfo -n "SlurryHose:materialInfo2";
	rename -uid "2470351A-424D-520B-1A73-FDB0189FBA01";
createNode file -n "coupling_normal_png";
	rename -uid "D690E37A-487B-E04C-F763-14878F5C2767";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/Stijn Wopereis/Documents/My Games/FarmingSimulator2019/mods/FS19_manureSystem//resources/hoses/coupling_normal.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "SlurryHose:place2dTexture2";
	rename -uid "4BCDAC20-42D9-161A-79FB-7E8EF292DA82";
createNode bump2d -n "SlurryHose:bump2d2";
	rename -uid "67920CE6-4946-4E02-37A9-57B4801C7799";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 0.00031999996 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode displayLayer -n "SlurryHose:MERGEGROUP_0";
	rename -uid "5D64F099-4CDD-97A9-47A5-9998837E3A0F";
	setAttr ".c" 4;
	setAttr ".do" 2;
createNode file -n "hose_gloss_png";
	rename -uid "16583D58-464C-ED97-F072-DCBF8770C1D1";
	setAttr ".ftn" -type "string" "C:/Users/Stijn Wopereis/Documents/My Games/FarmingSimulator2019/mods/FS19_manureSystem//resources/hoses/hose_gloss.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "SlurryHose:place2dTexture3";
	rename -uid "41B2648C-42D9-FA35-0A62-C3BAEA6B09DD";
createNode file -n "couling_gloss_png";
	rename -uid "E464E5D5-497C-BDE3-1B7C-E1A33E4CB439";
	setAttr ".ftn" -type "string" "C:/Users/Stijn Wopereis/Documents/My Games/FarmingSimulator2019/mods/FS19_manureSystem//resources/hoses/coupling_gloss.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "SlurryHose:place2dTexture4";
	rename -uid "376AC09D-4C70-7E90-44ED-A896AD9ADCE9";
createNode script -n "SlurryHose:I3DExportSettings";
	rename -uid "A972093F-4D27-2E0D-A481-23B3356868FA";
	addAttr -ci true -sn "i3D_exportLights" -ln "i3D_exportLights" -nn "i3D_exportLights" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportUpdateXML" -ln "i3D_exportUpdateXML" -nn "i3D_exportUpdateXML" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportNormals" -ln "i3D_exportNormals" -nn "i3D_exportNormals" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportShapes" -ln "i3D_exportShapes" -nn "i3D_exportShapes" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportRelativePaths" -ln "i3D_exportRelativePaths" -nn "i3D_exportRelativePaths" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportColors" -ln "i3D_exportColors" -nn "i3D_exportColors" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportSkinWeigths" -ln "i3D_exportSkinWeigths" -nn "i3D_exportSkinWeigths" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportDefaultCameras" -ln "i3D_exportDefaultCameras" -nn "i3D_exportDefaultCameras" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportAnimation" -ln "i3D_exportAnimation" -nn "i3D_exportAnimation" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportIK" -ln "i3D_exportIK" -nn "i3D_exportIK" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportIgnoreBindPoses" -ln "i3D_exportIgnoreBindPoses" 
		-nn "i3D_exportIgnoreBindPoses" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportTexCoords" -ln "i3D_exportTexCoords" -nn "i3D_exportTexCoords" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportUseMayaFilename" -ln "i3D_exportUseMayaFilename" 
		-nn "i3D_exportUseMayaFilename" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportBynaryFiles" -ln "i3D_exportBynaryFiles" -nn "i3D_exportBynaryFiles" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportXMLConfigFile" -ln "i3D_exportXMLConfigFile" -nn "i3D_exportXMLConfigFile" 
		-dt "string";
	addAttr -ci true -sn "i3D_exportNurbsCurves" -ln "i3D_exportNurbsCurves" -nn "i3D_exportNurbsCurves" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportOutputFile" -ln "i3D_exportOutputFile" -nn "i3D_exportOutputFile" 
		-dt "string";
	addAttr -ci true -sn "i3D_exportMergeGroups" -ln "i3D_exportMergeGroups" -nn "i3D_exportMergeGroups" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportParticleSystems" -ln "i3D_exportParticleSystems" 
		-nn "i3D_exportParticleSystems" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportUserAttributes" -ln "i3D_exportUserAttributes" -nn "i3D_exportUserAttributes" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportFloatEpsilon" -ln "i3D_exportFloatEpsilon" -nn "i3D_exportFloatEpsilon" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportCameras" -ln "i3D_exportCameras" -nn "i3D_exportCameras" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportVerbose" -ln "i3D_exportVerbose" -nn "i3D_exportVerbose" 
		-min 0 -max 1 -at "bool";
	setAttr ".b" -type "string" (
		"if(`window -ex \"i3DExport\"`)\n{\n\tif(objExists(\"I3DExportSettings\"))\n\t{\n\t\tint $tmpInt;\n\t\tstring $tmpStr;\n\t\t\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportLights\"`))\n\t\t\tcheckBoxGrp -e -v2 $tmpInt \"ExportParts2\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportUpdateXML\"`))\n\t\t\tcheckBoxGrp -e -v1 $tmpInt \"Misc2\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportNormals\"`))\n\t\t\tcheckBoxGrp -e -v1 $tmpInt \"ShapeIncludes\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportShapes\"`))\n\t\t\tcheckBoxGrp -e -v3 $tmpInt \"ExportParts\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportRelativePaths\"`))\n\t\t\tcheckBoxGrp -e -v2 $tmpInt \"Misc\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportColors\"`))\n\t\t\tcheckBoxGrp -e -v2 $tmpInt \"ShapeIncludes\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportSkinWeigths\"`))\n\t\t\tcheckBoxGrp -e -v1 $tmpInt \"ShapeIncludes2\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportDefaultCameras\"`))\n"
		+ "\t\t\tcheckBoxGrp -e -v2 $tmpInt \"ExportParts3\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportAnimation\"`))\n\t\t\tcheckBoxGrp -e -v2 $tmpInt \"ExportParts\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportIK\"`))\n\t\t\tcheckBoxGrp -e -v1 $tmpInt \"ExportParts\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportIgnoreBindPoses\"`))\n\t\t\tcheckBoxGrp -e -v2 $tmpInt \"ExportParts4\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportTexCoords\"`))\n\t\t\tcheckBoxGrp -e -v3 $tmpInt \"ShapeIncludes\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportUseMayaFilename\"`))\n\t\t\tcheckBoxGrp -e -v1 $tmpInt \"FilenameInfo\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportBynaryFiles\"`))\n\t\t\tcheckBoxGrp -e -v1 $tmpInt \"ExportParts4\";\n\t\tif (!catchQuiet( $tmpStr = `getAttr \"I3DExportSettings.i3D_exportXMLConfigFile\"`))\n\t\t\ttextField -e -text $tmpStr \"giants_xmlConfigFileLocationPath\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportNurbsCurves\"`))\n"
		+ "\t\t\tcheckBoxGrp -e -v1 $tmpInt \"ExportParts2\";\n\t\tif (!catchQuiet( $tmpStr = `getAttr \"I3DExportSettings.i3D_exportOutputFile\"`))\n\t\t\ttextField -e -text $tmpStr \"giants_outputFileLocationPath\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportMergeGroups\"`))\n\t\t\tcheckBoxGrp -e -v2 $tmpInt \"ShapeIncludes2\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportParticleSystems\"`))\n\t\t\tcheckBoxGrp -e -v1 $tmpInt \"ExportParts3\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportUserAttributes\"`))\n\t\t\tcheckBoxGrp -e -v3 $tmpInt \"ExportParts3\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportFloatEpsilon\"`))\n\t\t\tcheckBoxGrp -e -v3 $tmpInt \"Misc\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportCameras\"`))\n\t\t\tcheckBoxGrp -e -v3 $tmpInt \"ExportParts2\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportVerbose\"`))\n\t\t\tcheckBoxGrp -e -v1 $tmpInt \"Misc\";\n\t}\n}");
	setAttr ".st" 2;
	setAttr ".i3D_exportLights" yes;
	setAttr ".i3D_exportUpdateXML" yes;
	setAttr ".i3D_exportNormals" yes;
	setAttr ".i3D_exportShapes" yes;
	setAttr ".i3D_exportRelativePaths" yes;
	setAttr ".i3D_exportColors" yes;
	setAttr ".i3D_exportSkinWeigths" yes;
	setAttr ".i3D_exportAnimation" yes;
	setAttr ".i3D_exportTexCoords" yes;
	setAttr ".i3D_exportBynaryFiles" yes;
	setAttr ".i3D_exportXMLConfigFile" -type "string" "";
	setAttr ".i3D_exportOutputFile" -type "string" "C:/Users/Stijn Wopereis/Documents/Stijn/Projects/Farming simulator/ManureSystem/hoses/slurryHose.i3d";
	setAttr ".i3D_exportMergeGroups" yes;
	setAttr ".i3D_exportUserAttributes" yes;
	setAttr ".i3D_exportFloatEpsilon" yes;
	setAttr ".i3D_exportCameras" yes;
	setAttr ".i3D_exportVerbose" yes;
createNode polyUnite -n "polyUnite1";
	rename -uid "4CC542AF-46D8-1A3F-1D2B-40855925F3ED";
createNode groupId -n "groupId191";
	rename -uid "E631C42F-4C20-8628-FC66-B1A703358FBC";
	setAttr ".ihi" 0;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "111DE851-4044-7D6A-D1DB-0D9B35CCB55F";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -3271.4284414336844 -3434.6372597626782 ;
	setAttr ".tgi[0].vh" -type "double2" 3286.9046312949067 3256.0658382870402 ;
createNode groupId -n "groupId208";
	rename -uid "4E6FED31-488C-7534-7394-AB98A0BDE6ED";
	setAttr ".ihi" 0;
createNode groupId -n "groupId209";
	rename -uid "C780109C-4A4A-862D-617F-3C85901B0FDC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId210";
	rename -uid "11E89EEE-4F4B-1755-2F7E-48ADE17FAEA0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId211";
	rename -uid "4F9AFB16-4E84-0996-C87B-C4A43918F3BD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId212";
	rename -uid "D6665721-4935-40FA-4013-D2ABF57B9267";
	setAttr ".ihi" 0;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "26F1E21A-435E-EB13-E5E1-F99D08AF0865";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40:59]";
	setAttr ".ix" -type "matrix" -1 0 -1.2246467991473532e-16 0 0 1 0 0 2.0206672185931328e-16 0 -1.6499999999999999 0
		 -1 0 -0.070000000000000007 1;
	setAttr ".wt" 0.11231625825166702;
	setAttr ".re" 54;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 32;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode transformGeometry -n "transformGeometry52";
	rename -uid "283C20EF-4F0C-3C5D-D95B-BE9F1DA78EF6";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1.5 0 0 0 0 1;
createNode transformGeometry -n "transformGeometry53";
	rename -uid "9BF30B26-475F-1733-2D0A-639DA39F9AA6";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1.25 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "F34682E7-42C8-7D85-FE68-5EAED1201085";
	setAttr ".uopa" yes;
	setAttr -s 714 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0 0.00019997358 0 0.00019997358 0 0.00019997358
		 0 0.00019997358 0 0.00019997358 0 0.00019997358 0 0.00019997358 0 -0.00019997358
		 0 -0.00019997358 0 -0.00019997358 0 -0.00019997358 0 -0.00019997358 0 -0.00019997358
		 0 -0.00019997358 0 0.00019997358 0 0.00019997358 0 0.00019997358 0 0.00020003319
		 0 0.00019997358 0 0.00019997358 0 0.00019997358 0 -0.00020000339 0 -0.00020000339
		 0 -0.00019997358 0 -0.00020000339 0 -0.00019997358 0 -0.00019997358 0 -0.00019997358
		 0 0.00019991398 0 0.00019997358 0 0.00020003319 0 -0.00019997358 0 -0.00019997358
		 0 -0.00019997358 0 0.00019997358 0 0.00019997358 0 0.00019997358 0 0.00020003319
		 0 -0.00019997358 0 -0.00019997358 0 -0.00019997358 0 -0.00019997358 0 -0.00018787384
		 0 -0.00018784404 0 -0.00018784404 0 -0.00018784404 0 -0.00018784404 0 -0.00018784404
		 0 -0.00018784404 0 -0.00018784404 0 -0.00018787384 0 -0.00018784404 0 -0.00018787384
		 0 -0.00018784404 0 -0.00018784404 0 -0.00018784404 0 -0.00018784404 0 -0.00018784404
		 0 -0.00018787384 0 -0.00018787384 0 -0.00018787384 0 -0.00018787384 0 -0.00018787384
		 0 -0.0001757443 0 -0.0001757443 0 -0.00017571449 0 -0.00017571449 0 -0.0001757443
		 0 -0.00017571449 0 -0.00017571449 0 -0.00017571449 0 -0.0001757443 0 -0.0001757443
		 0 -0.0001757443 0 -0.0001757443 0 -0.00017571449 0 -0.0001757443 0 -0.0001757443
		 0 -0.00017571449 0 -0.0001757443 0 -0.0001757443 0 -0.0001757443 0 -0.0001757443
		 0 -0.0001757443 0 -0.00016361475 0 -0.00016361475 0 -0.00016364455 0 -0.00016364455
		 0 -0.00016361475 0 -0.00016364455 0 -0.00016364455 0 -0.00016361475 0 -0.00016361475
		 0 -0.00016364455 0 -0.00016361475 0 -0.00016364455 0 -0.00016364455 0 -0.00016364455
		 0 -0.00016364455 0 -0.00016364455 0 -0.00016361475 0 -0.00016361475 0 -0.00016361475
		 0 -0.00016361475 0 -0.00016361475 0 -0.0001514852 0 -0.0001514852 0 -0.0001514852
		 0 -0.00015151501 0 -0.0001514852 0 -0.0001514852 0 -0.00015151501 0 -0.00015151501
		 0 -0.00015151501 0 -0.0001514852 0 -0.00015151501 0 -0.00015151501 0 -0.00015151501
		 0 -0.0001514852 0 -0.00015151501 0 -0.00015151501 0 -0.00015151501 0 -0.00015151501
		 0 -0.00015151501 0 -0.0001514852 0 -0.0001514852 0 -0.00013934076 0 -0.00013934076
		 0 -0.00013937056 0 -0.00013935566 0 -0.00013934076 0 -0.00013937056 0 -0.00013937056
		 0 -0.00013937056 0 -0.00013937056 0 -0.00013940036 0 -0.00013937056 0 -0.00013937056
		 0 -0.00013937056 0 -0.00013940036 0 -0.00013937056 0 -0.00013937056 0 -0.00013937056
		 0 -0.00013937056 0 -0.00013937056 0 -0.00013937056 0 -0.00013937056 0 -0.00012725592
		 0 -0.00012725592 0 -0.00012728572 0 -0.00012730062 0 -0.00012722611 0 -0.00012728572
		 0 -0.00012725592 0 -0.00012725592 0 -0.00012725592 0 -0.00012728572 0 -0.00012725592
		 0 -0.00012728572 0 -0.00012728572 0 -0.00012728572 0 -0.00012728572 0 -0.00012725592
		 0 -0.00012725592 0 -0.00012725592 0 -0.00012725592 0 -0.00012725592 0 -0.00012725592
		 0 -0.00011514127 0 -0.00011512637 0 -0.00011514127 0 -0.00011515617 0 -0.00011514127
		 0 -0.00011515617 0 -0.00011517107 0 -0.00011514127 0 -0.00011512637 0 -0.00011515617
		 0 -0.00011514127 0 -0.00011517107 0 -0.00011515617 0 -0.00011514127 0 -0.00011515617
		 0 -0.00011517107 0 -0.00011517107 0 -0.00011512637 0 -0.00011514127 0 -0.00011515617
		 0 -0.00011517107 0 -0.00010302663 0 -0.00010302663 0 -0.00010299683 0 -0.00010299683
		 0 -0.00010302663 0 -0.00010299683 0 -0.00010302663 0 -0.00010304153 0 -0.00010302663
		 0 -0.00010302663 0 -0.00010299683 0 -0.00010302663 0 -0.00010302663 0 -0.00010304153
		 0 -0.00010301173 0 -0.00010304153 0 -0.00010302663 0 -0.00010302663 0 -0.00010302663
		 0 -0.00010302663 0 -0.00010302663 0 -9.0897083e-05 0 -9.0897083e-05 0 -9.0897083e-05
		 0 -9.0897083e-05 0 -9.0897083e-05 0 -9.0897083e-05 0 -9.0897083e-05 0 -9.0897083e-05
		 0 -9.0897083e-05 0 -9.0897083e-05 0 -9.0897083e-05 0 -9.0897083e-05 0 -9.0926886e-05
		 0 -9.0897083e-05 0 -9.0897083e-05 0 -9.0926886e-05 0 -9.0897083e-05 0 -9.0897083e-05
		 0 -9.0897083e-05 0 -9.0926886e-05 0 -9.0897083e-05 0 -7.879734e-05 0 -7.8767538e-05
		 0 -7.8767538e-05 0 -7.879734e-05 0 -7.8767538e-05 0 -7.8767538e-05 0 -7.8767538e-05
		 0 -7.879734e-05 0 -7.8767538e-05 0 -7.879734e-05 0 -7.8767538e-05 0 -7.8767538e-05
		 0 -7.879734e-05 0 -7.879734e-05 0 -7.8767538e-05 0 -7.879734e-05 0 -7.879734e-05
		 0 -7.8767538e-05 0 -7.8767538e-05;
	setAttr ".uvtk[250:499]" 0 -7.8767538e-05 0 -7.879734e-05 0 -6.6667795e-05
		 0 -6.6637993e-05 0 -6.6667795e-05 0 -6.6667795e-05 0 -6.6667795e-05 0 -6.6667795e-05
		 0 -6.6637993e-05 0 -6.6667795e-05 0 -6.6667795e-05 0 -6.6667795e-05 0 -6.6637993e-05
		 0 -6.6667795e-05 0 -6.6667795e-05 0 -6.6667795e-05 0 -6.6667795e-05 0 -6.6667795e-05
		 0 -6.6667795e-05 0 -6.6667795e-05 0 -6.6667795e-05 0 -6.6667795e-05 0 -6.6667795e-05
		 0 -5.453825e-05 0 -5.4568052e-05 0 -5.453825e-05 0 -5.453825e-05 0 -5.453825e-05
		 0 -5.4568052e-05 0 -5.453825e-05 0 -5.453825e-05 0 -5.453825e-05 0 -5.453825e-05
		 0 -5.453825e-05 0 -5.453825e-05 0 -5.453825e-05 0 -5.453825e-05 0 -5.453825e-05 0
		 -5.453825e-05 0 -5.453825e-05 0 -5.453825e-05 0 -5.453825e-05 0 -5.4508448e-05 0
		 -5.453825e-05 0 -4.2438507e-05 0 -4.2408705e-05 0 -4.2408705e-05 0 -4.2408705e-05
		 0 -4.2408705e-05 0 -4.2438507e-05 0 -4.2408705e-05 0 -4.2408705e-05 0 -4.2408705e-05
		 0 -4.2408705e-05 0 -4.2408705e-05 0 -4.2408705e-05 0 -4.2438507e-05 0 -4.2408705e-05
		 0 -4.2408705e-05 0 -4.2408705e-05 0 -4.2408705e-05 0 -4.2438507e-05 0 -4.2408705e-05
		 0 -4.2438507e-05 0 -4.2438507e-05 0 -3.0308962e-05 0 -3.0308962e-05 0 -3.027916e-05
		 0 -3.0308962e-05 0 -3.0308962e-05 0 -3.0308962e-05 0 -3.027916e-05 0 -3.027916e-05
		 0 -3.027916e-05 0 -3.0308962e-05 0 -3.0308962e-05 0 -3.0308962e-05 0 -3.0308962e-05
		 0 -3.0308962e-05 0 -3.0308962e-05 0 -3.027916e-05 0 -3.0308962e-05 0 -3.0308962e-05
		 0 -3.0308962e-05 0 -3.027916e-05 0 -3.0308962e-05 0 -1.8179417e-05 0 -1.8179417e-05
		 0 -1.8179417e-05 0 -1.8179417e-05 0 -1.8179417e-05 0 -1.8179417e-05 0 -1.8179417e-05
		 0 -1.8179417e-05 0 -1.8179417e-05 0 -1.8179417e-05 0 -1.8179417e-05 0 -1.8179417e-05
		 0 -1.8179417e-05 0 -1.8179417e-05 0 -1.8179417e-05 0 -1.8179417e-05 0 -1.8179417e-05
		 0 -1.8179417e-05 0 -1.8179417e-05 0 -1.8179417e-05 0 -1.8179417e-05 0 -6.0498714e-06
		 0 -6.0498714e-06 0 -6.0498714e-06 0 -6.0498714e-06 0 -6.0498714e-06 0 -6.0498714e-06
		 0 -6.0498714e-06 0 -6.0498714e-06 0 -6.0498714e-06 0 -6.0498714e-06 0 -6.0498714e-06
		 0 -6.0796738e-06 0 -6.0498714e-06 0 -6.0498714e-06 0 -6.0796738e-06 0 -6.0796738e-06
		 0 -6.0498714e-06 0 -6.0796738e-06 0 -6.0498714e-06 0 -6.0498714e-06 0 -6.0498714e-06
		 0 6.0796738e-06 0 6.0796738e-06 0 6.0796738e-06 0 6.0796738e-06 0 6.0796738e-06 0
		 6.0796738e-06 0 6.0200691e-06 0 6.0796738e-06 0 6.0796738e-06 0 6.0796738e-06 0 6.0796738e-06
		 0 6.0796738e-06 0 6.0796738e-06 0 6.0796738e-06 0 6.0200691e-06 0 6.0796738e-06 0
		 6.0796738e-06 0 6.0796738e-06 0 6.0796738e-06 0 6.0796738e-06 0 6.0796738e-06 0 1.8179417e-05
		 0 1.8179417e-05 0 1.8179417e-05 0 1.8179417e-05 0 1.8179417e-05 0 1.8179417e-05 0
		 1.8179417e-05 0 1.8179417e-05 0 1.8179417e-05 0 1.8179417e-05 0 1.8179417e-05 0 1.8179417e-05
		 0 1.8179417e-05 0 1.8179417e-05 0 1.8179417e-05 0 1.8179417e-05 0 1.8179417e-05 0
		 1.8179417e-05 0 1.8179417e-05 0 1.8179417e-05 0 1.8179417e-05 0 3.027916e-05 0 3.0338764e-05
		 0 3.027916e-05 0 3.0338764e-05 0 3.027916e-05 0 3.027916e-05 0 3.027916e-05 0 3.0338764e-05
		 0 3.0338764e-05 0 3.027916e-05 0 3.027916e-05 0 3.0338764e-05 0 3.027916e-05 0 3.0338764e-05
		 0 3.027916e-05 0 3.0338764e-05 0 3.027916e-05 0 3.027916e-05 0 3.027916e-05 0 3.027916e-05
		 0 3.027916e-05 0 4.2378902e-05 0 4.2438507e-05 0 4.2438507e-05 0 4.2438507e-05 0
		 4.2438507e-05 0 4.2438507e-05 0 4.2378902e-05 0 4.2438507e-05 0 4.2438507e-05 0 4.2378902e-05
		 0 4.2438507e-05 0 4.2438507e-05 0 4.2378902e-05 0 4.2438507e-05 0 4.2438507e-05 0
		 4.2438507e-05 0 4.2378902e-05 0 4.2438507e-05 0 4.2438507e-05 0 4.2378902e-05 0 4.2438507e-05
		 0 5.453825e-05 0 5.453825e-05 0 5.453825e-05 0 5.453825e-05 0 5.453825e-05 0 5.453825e-05
		 0 5.453825e-05 0 5.453825e-05 0 5.453825e-05 0 5.453825e-05 0 5.453825e-05 0 5.453825e-05
		 0 5.453825e-05 0 5.453825e-05 0 5.453825e-05 0 5.453825e-05 0 5.453825e-05 0 5.453825e-05
		 0 5.453825e-05 0 5.453825e-05 0 5.453825e-05 0 6.6637993e-05 0 6.6637993e-05 0 6.6697598e-05
		 0 6.6697598e-05 0 6.6637993e-05 0 6.6697598e-05 0 6.6637993e-05 0 6.6697598e-05 0
		 6.6637993e-05 0 6.6637993e-05 0 6.6637993e-05 0 6.6697598e-05 0 6.6637993e-05 0 6.6697598e-05
		 0 6.6637993e-05 0 6.6637993e-05 0 6.6697598e-05;
	setAttr ".uvtk[500:713]" 0 6.6637993e-05 0 6.6697598e-05 0 6.6637993e-05 0
		 6.6697598e-05 0 7.8737736e-05 0 7.879734e-05 0 7.879734e-05 0 7.879734e-05 0 7.879734e-05
		 0 7.879734e-05 0 7.8737736e-05 0 7.879734e-05 0 7.879734e-05 0 7.8737736e-05 0 7.8737736e-05
		 0 7.879734e-05 0 7.879734e-05 0 7.8737736e-05 0 7.879734e-05 0 7.8737736e-05 0 7.879734e-05
		 0 7.879734e-05 0 7.879734e-05 0 7.8737736e-05 0 7.879734e-05 0 9.0897083e-05 0 9.0897083e-05
		 0 9.0897083e-05 0 9.0897083e-05 0 9.0956688e-05 0 9.0897083e-05 0 9.0897083e-05 0
		 9.0897083e-05 0 9.0897083e-05 0 9.0897083e-05 0 9.0897083e-05 0 9.0897083e-05 0 9.0897083e-05
		 0 9.0897083e-05 0 9.0897083e-05 0 9.0897083e-05 0 9.0897083e-05 0 9.0897083e-05 0
		 9.0956688e-05 0 9.0897083e-05 0 9.0897083e-05 0 0.00010299683 0 0.00010305643 0 0.00010305643
		 0 0.00010299683 0 0.00010305643 0 0.00010299683 0 0.00010305643 0 0.00010305643 0
		 0.00010299683 0 0.00010299683 0 0.00010299683 0 0.00010305643 0 0.00010305643 0 0.00010299683
		 0 0.00010305643 0 0.00010299683 0 0.00010305643 0 0.00010299683 0 0.00010299683 0
		 0.00010299683 0 0.00010305643 0 0.00011509657 0 0.00011515617 0 0.00011515617 0 0.00011515617
		 0 0.00011515617 0 0.00011515617 0 0.00011515617 0 0.00011515617 0 0.00011515617 0
		 0.00011509657 0 0.00011515617 0 0.00011509657 0 0.00011509657 0 0.00011509657 0 0.00011515617
		 0 0.00011509657 0 0.00011515617 0 0.00011515617 0 0.00011515617 0 0.00011515617 0
		 0.00011515617 0 0.00012725592 0 0.00012731552 0 0.00012725592 0 0.00012725592 0 0.00012731552
		 0 0.00012731552 0 0.00012725592 0 0.00012719631 0 0.00012725592 0 0.00012725592 0
		 0.00012725592 0 0.00012725592 0 0.00012725592 0 0.00012725592 0 0.00012725592 0 0.00012725592
		 0 0.00012725592 0 0.00012719631 0 0.00012731552 0 0.00012725592 0 0.00012725592 0
		 0.00013941526 0 0.00013941526 0 0.00013935566 0 0.00013935566 0 0.00013929605 0 0.00013935566
		 0 0.00013941526 0 0.00013935566 0 0.00013941526 0 0.00013935566 0 0.00013947487 0
		 0.00013941526 0 0.00013941526 0 0.00013935566 0 0.00013935566 0 0.00013935566 0 0.00013941526
		 0 0.00013935566 0 0.00013935566 0 0.00013941526 0 0.00013935566 0 0.00015151501 0
		 0.00015151501 0 0.00015151501 0 0.00015151501 0 0.00015151501 0 0.00015151501 0 0.0001514554
		 0 0.00015157461 0 0.00015151501 0 0.00015151501 0 0.00015151501 0 0.00015151501 0
		 0.00015151501 0 0.00015151501 0 0.00015151501 0 0.0001514554 0 0.00015151501 0 0.00015151501
		 0 0.00015151501 0 0.00015151501 0 0.0001514554 0 0.00016367435 0 0.00016367435 0
		 0.00016355515 0 0.00016355515 0 0.00016361475 0 0.00016367435 0 0.00016361475 0 0.00016355515
		 0 0.00016367435 0 0.00016367435 0 0.00016361475 0 0.00016361475 0 0.00016361475 0
		 0.00016361475 0 0.00016355515 0 0.00016361475 0 0.00016355515 0 0.00016361475 0 0.00016361475
		 0 0.00016361475 0 0.00016355515 0 0.0001757741 0 0.0001758337 0 0.0001757741 0 0.0001757741
		 0 0.00017571449 0 0.0001757741 0 0.00017571449 0 0.00017571449 0 0.0001757741 0 0.0001757741
		 0 0.0001757741 0 0.00017571449 0 0.00017571449 0 0.00017571449 0 0.00017571449 0
		 0.00017571449 0 0.00017571449 0 0.0001757741 0 0.0001757741 0 0.00017571449 0 0.00017571449
		 0 0.00018787384 0 0.00018787384 0 0.00018787384 0 0.00018787384 0 0.00018787384 0
		 0.00018787384 0 0.00018781424 0 0.00018787384 0 0.00018787384 0 0.00018787384 0 0.00018787384
		 0 0.00018787384 0 0.00018781424 0 0.00018781424 0 0.00018787384 0 0.00018781424 0
		 0.00018781424 0 0.00018787384 0 0.00018787384 0 0.00018787384 0 0.00018787384;
createNode transformGeometry -n "transformGeometry54";
	rename -uid "B9BB3926-44A0-6803-E3A3-9791DDE3A307";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1.6699999999999999 0 0 0 0 1;
createNode script -n "I3DExportSettings";
	rename -uid "C3E830BB-493E-A057-850D-EB84A77BF667";
	addAttr -ci true -sn "i3D_exportLights" -ln "i3D_exportLights" -nn "i3D_exportLights" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportUpdateXML" -ln "i3D_exportUpdateXML" -nn "i3D_exportUpdateXML" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportNormals" -ln "i3D_exportNormals" -nn "i3D_exportNormals" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportShapes" -ln "i3D_exportShapes" -nn "i3D_exportShapes" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportRelativePaths" -ln "i3D_exportRelativePaths" -nn "i3D_exportRelativePaths" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportColors" -ln "i3D_exportColors" -nn "i3D_exportColors" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportSkinWeigths" -ln "i3D_exportSkinWeigths" -nn "i3D_exportSkinWeigths" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportDefaultCameras" -ln "i3D_exportDefaultCameras" -nn "i3D_exportDefaultCameras" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportAnimation" -ln "i3D_exportAnimation" -nn "i3D_exportAnimation" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportIK" -ln "i3D_exportIK" -nn "i3D_exportIK" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportIgnoreBindPoses" -ln "i3D_exportIgnoreBindPoses" 
		-nn "i3D_exportIgnoreBindPoses" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportTexCoords" -ln "i3D_exportTexCoords" -nn "i3D_exportTexCoords" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportUseMayaFilename" -ln "i3D_exportUseMayaFilename" 
		-nn "i3D_exportUseMayaFilename" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportBynaryFiles" -ln "i3D_exportBynaryFiles" -nn "i3D_exportBynaryFiles" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportXMLConfigFile" -ln "i3D_exportXMLConfigFile" -nn "i3D_exportXMLConfigFile" 
		-dt "string";
	addAttr -ci true -sn "i3D_exportNurbsCurves" -ln "i3D_exportNurbsCurves" -nn "i3D_exportNurbsCurves" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportOutputFile" -ln "i3D_exportOutputFile" -nn "i3D_exportOutputFile" 
		-dt "string";
	addAttr -ci true -sn "i3D_exportMergeGroups" -ln "i3D_exportMergeGroups" -nn "i3D_exportMergeGroups" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportParticleSystems" -ln "i3D_exportParticleSystems" 
		-nn "i3D_exportParticleSystems" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportUserAttributes" -ln "i3D_exportUserAttributes" -nn "i3D_exportUserAttributes" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportFloatEpsilon" -ln "i3D_exportFloatEpsilon" -nn "i3D_exportFloatEpsilon" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportCameras" -ln "i3D_exportCameras" -nn "i3D_exportCameras" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "i3D_exportVerbose" -ln "i3D_exportVerbose" -nn "i3D_exportVerbose" 
		-min 0 -max 1 -at "bool";
	setAttr ".b" -type "string" (
		"if(`window -ex \"i3DExport\"`)\n{\n\tif(objExists(\"I3DExportSettings\"))\n\t{\n\t\tint $tmpInt;\n\t\tstring $tmpStr;\n\t\t\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportLights\"`))\n\t\t\tcheckBoxGrp -e -v2 $tmpInt \"ExportParts2\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportUpdateXML\"`))\n\t\t\tcheckBoxGrp -e -v1 $tmpInt \"Misc2\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportNormals\"`))\n\t\t\tcheckBoxGrp -e -v1 $tmpInt \"ShapeIncludes\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportShapes\"`))\n\t\t\tcheckBoxGrp -e -v3 $tmpInt \"ExportParts\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportRelativePaths\"`))\n\t\t\tcheckBoxGrp -e -v2 $tmpInt \"Misc\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportColors\"`))\n\t\t\tcheckBoxGrp -e -v2 $tmpInt \"ShapeIncludes\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportSkinWeigths\"`))\n\t\t\tcheckBoxGrp -e -v1 $tmpInt \"ShapeIncludes2\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportDefaultCameras\"`))\n"
		+ "\t\t\tcheckBoxGrp -e -v2 $tmpInt \"ExportParts3\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportAnimation\"`))\n\t\t\tcheckBoxGrp -e -v2 $tmpInt \"ExportParts\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportIK\"`))\n\t\t\tcheckBoxGrp -e -v1 $tmpInt \"ExportParts\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportIgnoreBindPoses\"`))\n\t\t\tcheckBoxGrp -e -v2 $tmpInt \"ExportParts4\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportTexCoords\"`))\n\t\t\tcheckBoxGrp -e -v3 $tmpInt \"ShapeIncludes\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportUseMayaFilename\"`))\n\t\t\tcheckBoxGrp -e -v1 $tmpInt \"FilenameInfo\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportBynaryFiles\"`))\n\t\t\tcheckBoxGrp -e -v1 $tmpInt \"ExportParts4\";\n\t\tif (!catchQuiet( $tmpStr = `getAttr \"I3DExportSettings.i3D_exportXMLConfigFile\"`))\n\t\t\ttextField -e -text $tmpStr \"giants_xmlConfigFileLocationPath\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportNurbsCurves\"`))\n"
		+ "\t\t\tcheckBoxGrp -e -v1 $tmpInt \"ExportParts2\";\n\t\tif (!catchQuiet( $tmpStr = `getAttr \"I3DExportSettings.i3D_exportOutputFile\"`))\n\t\t\ttextField -e -text $tmpStr \"giants_outputFileLocationPath\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportMergeGroups\"`))\n\t\t\tcheckBoxGrp -e -v2 $tmpInt \"ShapeIncludes2\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportParticleSystems\"`))\n\t\t\tcheckBoxGrp -e -v1 $tmpInt \"ExportParts3\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportUserAttributes\"`))\n\t\t\tcheckBoxGrp -e -v3 $tmpInt \"ExportParts3\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportFloatEpsilon\"`))\n\t\t\tcheckBoxGrp -e -v3 $tmpInt \"Misc\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportCameras\"`))\n\t\t\tcheckBoxGrp -e -v3 $tmpInt \"ExportParts2\";\n\t\tif (!catchQuiet( $tmpInt = `getAttr \"I3DExportSettings.i3D_exportVerbose\"`))\n\t\t\tcheckBoxGrp -e -v1 $tmpInt \"Misc\";\n\t}\n}");
	setAttr ".st" 2;
	setAttr ".i3D_exportLights" yes;
	setAttr ".i3D_exportUpdateXML" yes;
	setAttr ".i3D_exportNormals" yes;
	setAttr ".i3D_exportShapes" yes;
	setAttr ".i3D_exportRelativePaths" yes;
	setAttr ".i3D_exportColors" yes;
	setAttr ".i3D_exportSkinWeigths" yes;
	setAttr ".i3D_exportAnimation" yes;
	setAttr ".i3D_exportIK" yes;
	setAttr ".i3D_exportTexCoords" yes;
	setAttr ".i3D_exportBynaryFiles" yes;
	setAttr ".i3D_exportXMLConfigFile" -type "string" "slurryHose.xml";
	setAttr ".i3D_exportOutputFile" -type "string" "C:/Users/Stijn Wopereis/Documents/My Games/FarmingSimulator2019/mods/FS19_manureSystem/resources/hoses/slurry/slurryHose5m.i3d";
	setAttr ".i3D_exportMergeGroups" yes;
	setAttr ".i3D_exportFloatEpsilon" yes;
	setAttr ".i3D_exportCameras" yes;
	setAttr ".i3D_exportVerbose" yes;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".etmr" no;
	setAttr ".tmr" 4096;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 6 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :defaultTextureList1;
	setAttr -s 4 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 4 ".dsm";
select -ne :defaultRenderGlobals;
	setAttr ".imfkey" -type "string" "iff";
select -ne :defaultResolution;
	setAttr ".w" 1280;
	setAttr ".h" 720;
	setAttr ".pa" 1;
	setAttr ".dar" 1.7777777910232544;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "MERGEGROUP_0.di" ":persp.do";
connectAttr "MERGEGROUP_0.di" ":top.do";
connectAttr "MERGEGROUP_0.di" ":front.do";
connectAttr "MERGEGROUP_0.di" ":side.do";
connectAttr "MERGEGROUP_0.di" "hose_main_component1.do";
connectAttr "transformGeometry53.og" "hose_main_componentShape1.i";
connectAttr "MERGEGROUP_0.di" "hose.do";
connectAttr "transformGeometry54.og" "hoseShape.i";
connectAttr "polyTweakUV1.uvtk[0]" "hoseShape.uvst[0].uvtw";
connectAttr "MERGEGROUP_0.di" "coupling_normal_start.do";
connectAttr "groupId191.id" "coupling_normal_startShape.iog.og[0].gid";
connectAttr "SlurryHose:phong2SG.mwc" "coupling_normal_startShape.iog.og[0].gco"
		;
connectAttr "MERGEGROUP_1.di" "coupling_extend_start.do";
connectAttr "groupId208.id" "coupling_extend_startShape.iog.og[0].gid";
connectAttr "SlurryHose:phong2SG.mwc" "coupling_extend_startShape.iog.og[0].gco"
		;
connectAttr "MERGEGROUP_1.di" "top_hook.do";
connectAttr "groupId211.id" "top_hookShape.iog.og[0].gid";
connectAttr "SlurryHose:phong2SG.mwc" "top_hookShape.iog.og[0].gco";
connectAttr "MERGEGROUP_1.di" "bottom_lever.do";
connectAttr "groupId209.id" "bottom_leverShape.iog.og[0].gid";
connectAttr "SlurryHose:phong2SG.mwc" "bottom_leverShape.iog.og[0].gco";
connectAttr "MERGEGROUP_1.di" "bottom_hook.do";
connectAttr "groupId210.id" "bottom_hookShape.iog.og[0].gid";
connectAttr "SlurryHose:phong2SG.mwc" "bottom_hookShape.iog.og[0].gco";
connectAttr "MERGEGROUP_0.di" "grabNode1.do";
connectAttr "MERGEGROUP_0.di" "componentJoint1.do";
connectAttr "MERGEGROUP_0.di" "raycastNode1.do";
connectAttr "MERGEGROUP_0.di" "hose_main_component2.do";
connectAttr "MERGEGROUP_0.di" "componentJoint2.do";
connectAttr "MERGEGROUP_0.di" "hose_main_component3.do";
connectAttr "MERGEGROUP_0.di" "hose_main_component4.do";
connectAttr "MERGEGROUP_0.di" "grabNode2.do";
connectAttr "MERGEGROUP_0.di" "target.do";
connectAttr "MERGEGROUP_0.di" "coupling_normal_end.do";
connectAttr "groupId212.id" "coupling_normal_endShape.iog.og[0].gid";
connectAttr "SlurryHose:phong2SG.mwc" "coupling_normal_endShape.iog.og[0].gco";
connectAttr "MERGEGROUP_0.di" "componentJoint3.do";
connectAttr "MERGEGROUP_0.di" "raycastNode2.do";
connectAttr "layerManager.dli[1]" "MERGEGROUP_0.id";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "SlurryHose:phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "SlurryHose:phong2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SlurryHose:phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SlurryHose:phong2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[3]" "effect_MERGEGROUP_0.id";
connectAttr "layerManager.dli[5]" "MERGEGROUP_1.id";
connectAttr "layerManager.dli[6]" "MERGEGROUP_5.id";
connectAttr "polyCylinder2.out" "transformGeometry46.ig";
connectAttr "transformGeometry46.og" "transformGeometry47.ig";
connectAttr "transformGeometry47.og" "transformGeometry48.ig";
connectAttr "transformGeometry48.og" "transformGeometry49.ig";
connectAttr "transformGeometry49.og" "transformGeometry50.ig";
connectAttr "transformGeometry50.og" "transformGeometry51.ig";
connectAttr "layerManager.dli[2]" "SlurryHose:uvmapped.id";
connectAttr "SlurryHose:renderLayerManager.rlmi[0]" "SlurryHose:defaultRenderLayer.rlid"
		;
connectAttr "SlurryHose:bump2d1.o" "hose_mat.n";
connectAttr "hose_gloss_png.oc" "hose_mat.sc";
connectAttr "hose_mat.oc" "SlurryHose:phong1SG.ss";
connectAttr "hoseShape.iog" "SlurryHose:phong1SG.dsm" -na;
connectAttr "SlurryHose:phong1SG.msg" "SlurryHose:materialInfo1.sg";
connectAttr "hose_mat.msg" "SlurryHose:materialInfo1.m";
connectAttr "hose_normal_png.msg" "SlurryHose:materialInfo1.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "hose_normal_png.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "hose_normal_png.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "hose_normal_png.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "hose_normal_png.ws";
connectAttr "SlurryHose:place2dTexture1.c" "hose_normal_png.c";
connectAttr "SlurryHose:place2dTexture1.tf" "hose_normal_png.tf";
connectAttr "SlurryHose:place2dTexture1.rf" "hose_normal_png.rf";
connectAttr "SlurryHose:place2dTexture1.mu" "hose_normal_png.mu";
connectAttr "SlurryHose:place2dTexture1.mv" "hose_normal_png.mv";
connectAttr "SlurryHose:place2dTexture1.s" "hose_normal_png.s";
connectAttr "SlurryHose:place2dTexture1.wu" "hose_normal_png.wu";
connectAttr "SlurryHose:place2dTexture1.wv" "hose_normal_png.wv";
connectAttr "SlurryHose:place2dTexture1.re" "hose_normal_png.re";
connectAttr "SlurryHose:place2dTexture1.of" "hose_normal_png.of";
connectAttr "SlurryHose:place2dTexture1.r" "hose_normal_png.ro";
connectAttr "SlurryHose:place2dTexture1.n" "hose_normal_png.n";
connectAttr "SlurryHose:place2dTexture1.vt1" "hose_normal_png.vt1";
connectAttr "SlurryHose:place2dTexture1.vt2" "hose_normal_png.vt2";
connectAttr "SlurryHose:place2dTexture1.vt3" "hose_normal_png.vt3";
connectAttr "SlurryHose:place2dTexture1.vc1" "hose_normal_png.vc1";
connectAttr "SlurryHose:place2dTexture1.o" "hose_normal_png.uv";
connectAttr "SlurryHose:place2dTexture1.ofs" "hose_normal_png.fs";
connectAttr "hose_normal_png.oa" "SlurryHose:bump2d1.bv";
connectAttr "SlurryHose:bump2d2.o" "coupling_mat.n";
connectAttr "couling_gloss_png.oc" "coupling_mat.sc";
connectAttr "coupling_mat.oc" "SlurryHose:phong2SG.ss";
connectAttr "coupling_normal_startShape.iog.og[0]" "SlurryHose:phong2SG.dsm" -na
		;
connectAttr "coupling_extend_startShape.iog.og[0]" "SlurryHose:phong2SG.dsm" -na
		;
connectAttr "bottom_leverShape.iog.og[0]" "SlurryHose:phong2SG.dsm" -na;
connectAttr "bottom_hookShape.iog.og[0]" "SlurryHose:phong2SG.dsm" -na;
connectAttr "top_hookShape.iog.og[0]" "SlurryHose:phong2SG.dsm" -na;
connectAttr "coupling_normal_endShape.iog.og[0]" "SlurryHose:phong2SG.dsm" -na;
connectAttr "groupId191.msg" "SlurryHose:phong2SG.gn" -na;
connectAttr "groupId208.msg" "SlurryHose:phong2SG.gn" -na;
connectAttr "groupId209.msg" "SlurryHose:phong2SG.gn" -na;
connectAttr "groupId210.msg" "SlurryHose:phong2SG.gn" -na;
connectAttr "groupId211.msg" "SlurryHose:phong2SG.gn" -na;
connectAttr "groupId212.msg" "SlurryHose:phong2SG.gn" -na;
connectAttr "SlurryHose:phong2SG.msg" "SlurryHose:materialInfo2.sg";
connectAttr "coupling_mat.msg" "SlurryHose:materialInfo2.m";
connectAttr ":defaultColorMgtGlobals.cme" "coupling_normal_png.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "coupling_normal_png.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "coupling_normal_png.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "coupling_normal_png.ws";
connectAttr "SlurryHose:place2dTexture2.c" "coupling_normal_png.c";
connectAttr "SlurryHose:place2dTexture2.tf" "coupling_normal_png.tf";
connectAttr "SlurryHose:place2dTexture2.rf" "coupling_normal_png.rf";
connectAttr "SlurryHose:place2dTexture2.mu" "coupling_normal_png.mu";
connectAttr "SlurryHose:place2dTexture2.mv" "coupling_normal_png.mv";
connectAttr "SlurryHose:place2dTexture2.s" "coupling_normal_png.s";
connectAttr "SlurryHose:place2dTexture2.wu" "coupling_normal_png.wu";
connectAttr "SlurryHose:place2dTexture2.wv" "coupling_normal_png.wv";
connectAttr "SlurryHose:place2dTexture2.re" "coupling_normal_png.re";
connectAttr "SlurryHose:place2dTexture2.of" "coupling_normal_png.of";
connectAttr "SlurryHose:place2dTexture2.r" "coupling_normal_png.ro";
connectAttr "SlurryHose:place2dTexture2.n" "coupling_normal_png.n";
connectAttr "SlurryHose:place2dTexture2.vt1" "coupling_normal_png.vt1";
connectAttr "SlurryHose:place2dTexture2.vt2" "coupling_normal_png.vt2";
connectAttr "SlurryHose:place2dTexture2.vt3" "coupling_normal_png.vt3";
connectAttr "SlurryHose:place2dTexture2.vc1" "coupling_normal_png.vc1";
connectAttr "SlurryHose:place2dTexture2.o" "coupling_normal_png.uv";
connectAttr "SlurryHose:place2dTexture2.ofs" "coupling_normal_png.fs";
connectAttr "coupling_normal_png.oa" "SlurryHose:bump2d2.bv";
connectAttr "layerManager.dli[4]" "SlurryHose:MERGEGROUP_0.id";
connectAttr ":defaultColorMgtGlobals.cme" "hose_gloss_png.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "hose_gloss_png.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "hose_gloss_png.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "hose_gloss_png.ws";
connectAttr "SlurryHose:place2dTexture3.c" "hose_gloss_png.c";
connectAttr "SlurryHose:place2dTexture3.tf" "hose_gloss_png.tf";
connectAttr "SlurryHose:place2dTexture3.rf" "hose_gloss_png.rf";
connectAttr "SlurryHose:place2dTexture3.mu" "hose_gloss_png.mu";
connectAttr "SlurryHose:place2dTexture3.mv" "hose_gloss_png.mv";
connectAttr "SlurryHose:place2dTexture3.s" "hose_gloss_png.s";
connectAttr "SlurryHose:place2dTexture3.wu" "hose_gloss_png.wu";
connectAttr "SlurryHose:place2dTexture3.wv" "hose_gloss_png.wv";
connectAttr "SlurryHose:place2dTexture3.re" "hose_gloss_png.re";
connectAttr "SlurryHose:place2dTexture3.of" "hose_gloss_png.of";
connectAttr "SlurryHose:place2dTexture3.r" "hose_gloss_png.ro";
connectAttr "SlurryHose:place2dTexture3.n" "hose_gloss_png.n";
connectAttr "SlurryHose:place2dTexture3.vt1" "hose_gloss_png.vt1";
connectAttr "SlurryHose:place2dTexture3.vt2" "hose_gloss_png.vt2";
connectAttr "SlurryHose:place2dTexture3.vt3" "hose_gloss_png.vt3";
connectAttr "SlurryHose:place2dTexture3.vc1" "hose_gloss_png.vc1";
connectAttr "SlurryHose:place2dTexture3.o" "hose_gloss_png.uv";
connectAttr "SlurryHose:place2dTexture3.ofs" "hose_gloss_png.fs";
connectAttr ":defaultColorMgtGlobals.cme" "couling_gloss_png.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "couling_gloss_png.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "couling_gloss_png.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "couling_gloss_png.ws";
connectAttr "SlurryHose:place2dTexture4.c" "couling_gloss_png.c";
connectAttr "SlurryHose:place2dTexture4.tf" "couling_gloss_png.tf";
connectAttr "SlurryHose:place2dTexture4.rf" "couling_gloss_png.rf";
connectAttr "SlurryHose:place2dTexture4.mu" "couling_gloss_png.mu";
connectAttr "SlurryHose:place2dTexture4.mv" "couling_gloss_png.mv";
connectAttr "SlurryHose:place2dTexture4.s" "couling_gloss_png.s";
connectAttr "SlurryHose:place2dTexture4.wu" "couling_gloss_png.wu";
connectAttr "SlurryHose:place2dTexture4.wv" "couling_gloss_png.wv";
connectAttr "SlurryHose:place2dTexture4.re" "couling_gloss_png.re";
connectAttr "SlurryHose:place2dTexture4.of" "couling_gloss_png.of";
connectAttr "SlurryHose:place2dTexture4.r" "couling_gloss_png.ro";
connectAttr "SlurryHose:place2dTexture4.n" "couling_gloss_png.n";
connectAttr "SlurryHose:place2dTexture4.vt1" "couling_gloss_png.vt1";
connectAttr "SlurryHose:place2dTexture4.vt2" "couling_gloss_png.vt2";
connectAttr "SlurryHose:place2dTexture4.vt3" "couling_gloss_png.vt3";
connectAttr "SlurryHose:place2dTexture4.vc1" "couling_gloss_png.vc1";
connectAttr "SlurryHose:place2dTexture4.o" "couling_gloss_png.uv";
connectAttr "SlurryHose:place2dTexture4.ofs" "couling_gloss_png.fs";
connectAttr "polySurfaceShape1.o" "polySplitRing1.ip";
connectAttr "hoseShape.wm" "polySplitRing1.mp";
connectAttr "transformGeometry51.og" "transformGeometry52.ig";
connectAttr "transformGeometry52.og" "transformGeometry53.ig";
connectAttr "polySplitRing1.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "transformGeometry54.ig";
connectAttr "SlurryHose:phong1SG.pa" ":renderPartition.st" -na;
connectAttr "SlurryHose:phong2SG.pa" ":renderPartition.st" -na;
connectAttr "hose_mat.msg" ":defaultShaderList1.s" -na;
connectAttr "coupling_mat.msg" ":defaultShaderList1.s" -na;
connectAttr "SlurryHose:place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "SlurryHose:bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "SlurryHose:place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "SlurryHose:bump2d2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "SlurryHose:place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "SlurryHose:place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "SlurryHose:defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "hose_normal_png.msg" ":defaultTextureList1.tx" -na;
connectAttr "coupling_normal_png.msg" ":defaultTextureList1.tx" -na;
connectAttr "hose_gloss_png.msg" ":defaultTextureList1.tx" -na;
connectAttr "couling_gloss_png.msg" ":defaultTextureList1.tx" -na;
connectAttr "hose_main_componentShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "hose_main_componentShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "hose_main_componentShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "hose_main_componentShape3.iog" ":initialShadingGroup.dsm" -na;
// End of suctionHose5m_ingame.ma
