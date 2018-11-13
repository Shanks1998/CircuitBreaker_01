//Maya ASCII 2018 scene
//Name: IntegratedCircuit.ma
//Last modified: Sat, Sep 22, 2018 02:24:06 AM
//Codeset: 1252
requires maya "2018";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "02C8F6AC-4A87-1664-C636-8AB546D5C84A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.2214855827063804 4.8372103132566391 -8.6397684261322532 ;
	setAttr ".r" -type "double3" -21.33835272806957 861.00000000150237 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "15F258BD-46EF-001E-8424-E2A4D199E5DA";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 11.516331320958168;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "69A3E646-4159-A915-19F2-0BAFF4A999C0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "E5F43EE4-469B-0473-ED2E-71ADC24E2C3C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "A3AAAEB3-474D-587F-60F4-DC963C3A9921";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.154724823449822 1.3904631583818072 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "4CB59C2E-4A51-E990-71F3-279D93B88E64";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 19.894480288821164;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "09DE569D-4516-D035-54EC-F79B13CB4821";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "5905B0E1-469B-16A2-FCA5-A08FDB6A7006";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCube1";
	rename -uid "092DB0F8-4A59-4E81-EB26-5688F86B37C3";
	setAttr ".t" -type "double3" 0 0.78412041894022633 0 ;
	setAttr ".s" -type "double3" 1.9913763435877332 0.95192818286943581 2.6894503344550444 ;
createNode transform -n "transform2" -p "pCube1";
	rename -uid "A9CF659A-4205-570E-10C2-0C8077992468";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform2";
	rename -uid "E76A80FC-47A2-A2D6-08AC-66A143776B48";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt";
	setAttr ".pt[0]" -type "float3" 0.014893577 -3.7252903e-09 -0.014893577 ;
	setAttr ".pt[1]" -type "float3" -0.014893577 -3.7252903e-09 -0.014893577 ;
	setAttr ".pt[2]" -type "float3" 0.027572792 0 -0.027572792 ;
	setAttr ".pt[3]" -type "float3" -0.027572792 0 -0.027572792 ;
	setAttr ".pt[4]" -type "float3" 0.027572792 0 0.027572792 ;
	setAttr ".pt[5]" -type "float3" -0.027572792 0 0.027572792 ;
	setAttr ".pt[6]" -type "float3" 0.014893577 -3.7252903e-09 0.014893577 ;
	setAttr ".pt[7]" -type "float3" -0.014893577 -3.7252903e-09 0.014893577 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder1";
	rename -uid "A57737FA-45C0-C04E-FF8E-0B8A10F3CE39";
	setAttr ".t" -type "double3" 0.60275293761319182 1.3880920700113724 0.9574114307999475 ;
	setAttr ".s" -type "double3" 0.18873576955366686 0.18873576955366686 0.18873576955366686 ;
createNode transform -n "transform3" -p "pCylinder1";
	rename -uid "210A50B5-4355-17CE-3FE5-94A1FE2BA1E5";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape1" -p "transform3";
	rename -uid "59E7942E-435A-D18C-7C0D-02838D456851";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube2";
	rename -uid "EAE7024C-4B23-88D4-522B-6FBE8EBE6595";
	setAttr ".t" -type "double3" 0 0.76350985916143055 0 ;
	setAttr ".s" -type "double3" 2.0859656356079159 0.11314802314153147 2.7966516466318603 ;
createNode transform -n "transform1" -p "pCube2";
	rename -uid "1956188E-4ABB-54E5-9C74-5AAACEBD347B";
	setAttr ".v" no;
createNode mesh -n "pCubeShape2" -p "transform1";
	rename -uid "74EADA76-4D7C-707A-6B1F-888CB245BCA6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube3";
	rename -uid "7F1DB91D-4873-0351-93DB-A488BFC6BF72";
	setAttr ".rp" -type "double3" 0 0.78412042558193207 0 ;
	setAttr ".sp" -type "double3" 0 0.78412042558193207 0 ;
createNode transform -n "transform4" -p "pCube3";
	rename -uid "E63AA9E4-4EC2-6BD1-26EC-A682753C2057";
	setAttr ".v" no;
createNode mesh -n "pCube3Shape" -p "transform4";
	rename -uid "0AE9A79C-4AF0-D8CB-53E4-AAB7A9DC830C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube4";
	rename -uid "34C66CEF-43B7-B6EA-0E0F-DCB86D374461";
	setAttr ".rp" -type "double3" 0 0.78412042558193207 0 ;
	setAttr ".sp" -type "double3" 0 0.78412042558193207 0 ;
createNode transform -n "transform6" -p "pCube4";
	rename -uid "C33A994E-4B41-1870-3CD1-94950C5AD01E";
	setAttr ".v" no;
createNode mesh -n "pCube4Shape" -p "transform6";
	rename -uid "B59FED70-4136-6F4A-B139-9D94560F5402";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".ciog[0].cog";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder2";
	rename -uid "27B3123E-4B45-305B-41FD-1B93FD87E524";
	setAttr ".t" -type "double3" 0 1.3224879698234095 1.2952693554571697 ;
	setAttr ".s" -type "double3" 0.21800538206434364 0.21800538206434364 0.21800538206434364 ;
createNode transform -n "transform5" -p "pCylinder2";
	rename -uid "9B840E5E-49ED-0E94-1A2E-CD984E6AA4D4";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape2" -p "transform5";
	rename -uid "CDE842A8-4BA3-682A-176A-A89EEF920170";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 4 ".ciog[0].cog";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube5";
	rename -uid "774E4300-48B3-068A-707E-858E2254F98D";
	setAttr ".rp" -type "double3" 0 0.78412042558193207 0 ;
	setAttr ".sp" -type "double3" 0 0.78412042558193207 0 ;
createNode transform -n "transform8" -p "pCube5";
	rename -uid "B69B98FE-48F4-543F-BD4F-608927E1866A";
	setAttr ".v" no;
createNode mesh -n "pCube5Shape" -p "transform8";
	rename -uid "1E0A72AE-47D8-E2D4-15A9-2A84F65EE2FB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube6";
	rename -uid "C969991F-4F47-E522-DB23-6C9E70A60B13";
	setAttr ".t" -type "double3" 1.4508676673559464 0.83735699870195057 0.99494439649663702 ;
	setAttr ".s" -type "double3" 1 0.036194375101965479 0.30318020623670522 ;
createNode transform -n "transform9" -p "pCube6";
	rename -uid "D7809956-4831-2336-B676-7E8AE2FA6B5A";
	setAttr ".v" no;
createNode mesh -n "pCubeShape3" -p "transform9";
	rename -uid "A6066BA7-45B8-E594-01B5-A797FE0FC425";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.52618664503097534 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube7";
	rename -uid "7AADFD1F-40F3-1F66-CAA3-5D8714AE6BAF";
	setAttr ".t" -type "double3" 1.4508676673559464 0.83735699870195057 0.35029442325758797 ;
	setAttr ".s" -type "double3" 1 0.036194375101965479 0.43705032344366951 ;
createNode mesh -n "polySurfaceShape1" -p "pCube7";
	rename -uid "6D67793D-4644-1859-92C6-9697C26A20F8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.39269394 0.25 0.39269394 0.5 0.39269394 0.75 0.39269394
		 0 0.39269394 1 0.40077859 0.25 0.40077859 0.5 0.40077859 0.75 0.40077859 0 0.40077859
		 1 0.40989131 0.25 0.40989131 0.5 0.40989131 0.75 0.40989131 0 0.40989131 1 0.41879779
		 0.25 0.41879779 0.5 0.41879779 0.74999994 0.41879779 0 0.41879779 1 0.42737263 0.25
		 0.42737263 0.5 0.42737263 0.74999994 0.42737263 0 0.42737263 1 0.43540141 0.25 0.43540141
		 0.5 0.43540141 0.74999994 0.43540141 0 0.43540141 1 0.52469593 0.5 0.52469593 0.74999994
		 0.52469593 0 0.52469593 1 0.52469593 0.25 0.52618665 0.5 0.52618665 0.74999994 0.52618665
		 0 0.52618665 1 0.52618665 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[1]" -type "float3" 0 0 -0.27676734 ;
	setAttr ".pt[3]" -type "float3" 0 0 -0.27676734 ;
	setAttr ".pt[5]" -type "float3" 0 -1.4901168e-08 0.2767674 ;
	setAttr ".pt[7]" -type "float3" 0 -1.4901168e-08 0.2767674 ;
	setAttr ".pt[36]" -type "float3" 0 -1.4901172e-08 0.2767674 ;
	setAttr ".pt[37]" -type "float3" 0 -1.4901172e-08 0.2767674 ;
	setAttr ".pt[38]" -type "float3" 0 0 -0.27676734 ;
	setAttr ".pt[39]" -type "float3" 0 0 -0.27676734 ;
	setAttr -s 40 ".vt[0:39]"  -0.5 -0.5 0.5 -0.34095514 -40.29613495 0.5
		 -0.5 0.5 0.5 -0.30476084 -40.29615021 0.5 -0.5 0.5 -0.5 -0.30476084 -40.29615021 -0.49999994
		 -0.5 -0.5 -0.5 -0.34095514 -40.29613495 -0.49999994 -0.42461079 0.46819833 0.5 -0.42461079 0.46819833 -0.5
		 -0.43397856 -0.49772751 -0.5 -0.43397856 -0.49772751 0.5 -0.38683712 0.23322046 0.5
		 -0.38683712 0.23322046 -0.5 -0.40493432 -0.63280487 -0.5 -0.40493432 -0.63280487 0.5
		 -0.35365608 -0.22618735 0.5 -0.35365608 -0.22618735 -0.5 -0.37924939 -0.9332943 -0.5
		 -0.37924939 -0.9332943 0.5 -0.32682109 -0.92467618 0.5 -0.32682109 -0.92467618 -0.5
		 -0.35816634 -1.42467618 -0.5 -0.35816634 -1.42467618 0.5 -0.31096748 -1.79080653 0.5
		 -0.31096748 -1.79080653 -0.5 -0.34592855 -2.04962492 -0.5 -0.34592855 -2.04962492 0.5
		 -0.30476102 -2.89630532 0.5 -0.30476102 -2.89630532 -0.5 -0.34095538 -2.89630389 -0.5
		 -0.34095538 -2.89630389 0.5 -0.30476093 -20.51037216 -0.5 -0.34095526 -20.51036453 -0.5
		 -0.34095526 -20.51036453 0.5 -0.30476093 -20.51037216 0.5 -0.30476093 -20.8044281 -0.49999994
		 -0.34095523 -20.80442047 -0.49999994 -0.34095523 -20.80442047 0.5 -0.30476093 -20.8044281 0.5;
	setAttr -s 76 ".ed[0:75]"  0 11 0 2 8 0 4 9 0 6 10 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 12 0 9 13 0 8 9 1 10 14 0 9 10 1 11 15 0 10 11 1
		 11 8 1 12 16 0 13 17 0 12 13 1 14 18 0 13 14 1 15 19 0 14 15 1 15 12 1 16 20 0 17 21 0
		 16 17 1 18 22 0 17 18 1 19 23 0 18 19 1 19 16 1 20 24 0 21 25 0 20 21 1 22 26 0 21 22 1
		 23 27 0 22 23 1 23 20 1 24 28 0 25 29 0 24 25 1 26 30 0 25 26 1 27 31 0 26 27 1 27 24 1
		 28 35 0 29 32 0 28 29 1 30 33 0 29 30 1 31 34 0 30 31 1 31 28 1 32 36 0 33 37 0 32 33 1
		 34 38 0 33 34 1 35 39 0 34 35 1 35 32 1 36 5 0 37 7 0 36 37 1 38 1 0 37 38 1 39 3 0
		 38 39 1 39 36 1;
	setAttr -s 38 -ch 152 ".fc[0:37]" -type "polyFaces" 
		f 4 0 19 -2 -5
		mu 0 4 0 17 14 2
		f 4 1 14 -3 -7
		mu 0 4 2 14 15 4
		f 4 2 16 -4 -9
		mu 0 4 4 15 16 6
		f 4 3 18 -1 -11
		mu 0 4 6 16 18 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 22 -14 -15
		mu 0 4 14 19 20 15
		f 4 -17 13 24 -16
		mu 0 4 16 15 20 21
		f 4 -19 15 26 -18
		mu 0 4 18 16 21 23
		f 4 -20 17 27 -13
		mu 0 4 14 17 22 19
		f 4 20 30 -22 -23
		mu 0 4 19 24 25 20
		f 4 -25 21 32 -24
		mu 0 4 21 20 25 26
		f 4 -27 23 34 -26
		mu 0 4 23 21 26 28
		f 4 -28 25 35 -21
		mu 0 4 19 22 27 24
		f 4 28 38 -30 -31
		mu 0 4 24 29 30 25
		f 4 -33 29 40 -32
		mu 0 4 26 25 30 31
		f 4 -35 31 42 -34
		mu 0 4 28 26 31 33
		f 4 -36 33 43 -29
		mu 0 4 24 27 32 29
		f 4 36 46 -38 -39
		mu 0 4 29 34 35 30
		f 4 -41 37 48 -40
		mu 0 4 31 30 35 36
		f 4 -43 39 50 -42
		mu 0 4 33 31 36 38
		f 4 -44 41 51 -37
		mu 0 4 29 32 37 34
		f 4 44 54 -46 -47
		mu 0 4 34 39 40 35
		f 4 -49 45 56 -48
		mu 0 4 36 35 40 41
		f 4 -51 47 58 -50
		mu 0 4 38 36 41 43
		f 4 -52 49 59 -45
		mu 0 4 34 37 42 39
		f 4 52 67 -54 -55
		mu 0 4 39 48 44 40
		f 4 -57 53 62 -56
		mu 0 4 41 40 44 45
		f 4 -59 55 64 -58
		mu 0 4 43 41 45 47
		f 4 -60 57 66 -53
		mu 0 4 39 42 46 48
		f 4 -63 60 70 -62
		mu 0 4 45 44 49 50
		f 4 -65 61 72 -64
		mu 0 4 47 45 50 52
		f 4 -67 63 74 -66
		mu 0 4 48 46 51 53
		f 4 -68 65 75 -61
		mu 0 4 44 48 53 49
		f 4 -71 68 9 -70
		mu 0 4 50 49 5 7
		f 4 -73 69 11 -72
		mu 0 4 52 50 7 9
		f 4 -75 71 5 -74
		mu 0 4 53 51 1 3
		f 4 -76 73 7 -69
		mu 0 4 49 53 3 5;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "transform7" -p "pCube7";
	rename -uid "F6C445C5-44C5-E37C-1272-35AA54E32967";
	setAttr ".v" no;
createNode mesh -n "pCubeShape7" -p "transform7";
	rename -uid "F6B91C95-44E5-B624-2585-4EAAA4C11D72";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube8";
	rename -uid "C25193BF-4364-815C-2AB0-8DA6C5DA4659";
	setAttr ".t" -type "double3" 1.4508676673559464 0.83735699870195057 -0.35 ;
	setAttr ".s" -type "double3" 1 0.036194375101965479 0.43705032344366951 ;
createNode mesh -n "polySurfaceShape1" -p "pCube8";
	rename -uid "C393D4AF-4A94-5268-CB81-9BA3605797C8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.39269394 0.25 0.39269394 0.5 0.39269394 0.75 0.39269394
		 0 0.39269394 1 0.40077859 0.25 0.40077859 0.5 0.40077859 0.75 0.40077859 0 0.40077859
		 1 0.40989131 0.25 0.40989131 0.5 0.40989131 0.75 0.40989131 0 0.40989131 1 0.41879779
		 0.25 0.41879779 0.5 0.41879779 0.74999994 0.41879779 0 0.41879779 1 0.42737263 0.25
		 0.42737263 0.5 0.42737263 0.74999994 0.42737263 0 0.42737263 1 0.43540141 0.25 0.43540141
		 0.5 0.43540141 0.74999994 0.43540141 0 0.43540141 1 0.52469593 0.5 0.52469593 0.74999994
		 0.52469593 0 0.52469593 1 0.52469593 0.25 0.52618665 0.5 0.52618665 0.74999994 0.52618665
		 0 0.52618665 1 0.52618665 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[1]" -type "float3" 0 0 -0.27676734 ;
	setAttr ".pt[3]" -type "float3" 0 0 -0.27676734 ;
	setAttr ".pt[5]" -type "float3" 0 -1.4901168e-08 0.2767674 ;
	setAttr ".pt[7]" -type "float3" 0 -1.4901168e-08 0.2767674 ;
	setAttr ".pt[36]" -type "float3" 0 -1.4901172e-08 0.2767674 ;
	setAttr ".pt[37]" -type "float3" 0 -1.4901172e-08 0.2767674 ;
	setAttr ".pt[38]" -type "float3" 0 0 -0.27676734 ;
	setAttr ".pt[39]" -type "float3" 0 0 -0.27676734 ;
	setAttr -s 40 ".vt[0:39]"  -0.5 -0.5 0.5 -0.34095514 -40.29613495 0.5
		 -0.5 0.5 0.5 -0.30476084 -40.29615021 0.5 -0.5 0.5 -0.5 -0.30476084 -40.29615021 -0.49999994
		 -0.5 -0.5 -0.5 -0.34095514 -40.29613495 -0.49999994 -0.42461079 0.46819833 0.5 -0.42461079 0.46819833 -0.5
		 -0.43397856 -0.49772751 -0.5 -0.43397856 -0.49772751 0.5 -0.38683712 0.23322046 0.5
		 -0.38683712 0.23322046 -0.5 -0.40493432 -0.63280487 -0.5 -0.40493432 -0.63280487 0.5
		 -0.35365608 -0.22618735 0.5 -0.35365608 -0.22618735 -0.5 -0.37924939 -0.9332943 -0.5
		 -0.37924939 -0.9332943 0.5 -0.32682109 -0.92467618 0.5 -0.32682109 -0.92467618 -0.5
		 -0.35816634 -1.42467618 -0.5 -0.35816634 -1.42467618 0.5 -0.31096748 -1.79080653 0.5
		 -0.31096748 -1.79080653 -0.5 -0.34592855 -2.04962492 -0.5 -0.34592855 -2.04962492 0.5
		 -0.30476102 -2.89630532 0.5 -0.30476102 -2.89630532 -0.5 -0.34095538 -2.89630389 -0.5
		 -0.34095538 -2.89630389 0.5 -0.30476093 -20.51037216 -0.5 -0.34095526 -20.51036453 -0.5
		 -0.34095526 -20.51036453 0.5 -0.30476093 -20.51037216 0.5 -0.30476093 -20.8044281 -0.49999994
		 -0.34095523 -20.80442047 -0.49999994 -0.34095523 -20.80442047 0.5 -0.30476093 -20.8044281 0.5;
	setAttr -s 76 ".ed[0:75]"  0 11 0 2 8 0 4 9 0 6 10 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 12 0 9 13 0 8 9 1 10 14 0 9 10 1 11 15 0 10 11 1
		 11 8 1 12 16 0 13 17 0 12 13 1 14 18 0 13 14 1 15 19 0 14 15 1 15 12 1 16 20 0 17 21 0
		 16 17 1 18 22 0 17 18 1 19 23 0 18 19 1 19 16 1 20 24 0 21 25 0 20 21 1 22 26 0 21 22 1
		 23 27 0 22 23 1 23 20 1 24 28 0 25 29 0 24 25 1 26 30 0 25 26 1 27 31 0 26 27 1 27 24 1
		 28 35 0 29 32 0 28 29 1 30 33 0 29 30 1 31 34 0 30 31 1 31 28 1 32 36 0 33 37 0 32 33 1
		 34 38 0 33 34 1 35 39 0 34 35 1 35 32 1 36 5 0 37 7 0 36 37 1 38 1 0 37 38 1 39 3 0
		 38 39 1 39 36 1;
	setAttr -s 38 -ch 152 ".fc[0:37]" -type "polyFaces" 
		f 4 0 19 -2 -5
		mu 0 4 0 17 14 2
		f 4 1 14 -3 -7
		mu 0 4 2 14 15 4
		f 4 2 16 -4 -9
		mu 0 4 4 15 16 6
		f 4 3 18 -1 -11
		mu 0 4 6 16 18 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 22 -14 -15
		mu 0 4 14 19 20 15
		f 4 -17 13 24 -16
		mu 0 4 16 15 20 21
		f 4 -19 15 26 -18
		mu 0 4 18 16 21 23
		f 4 -20 17 27 -13
		mu 0 4 14 17 22 19
		f 4 20 30 -22 -23
		mu 0 4 19 24 25 20
		f 4 -25 21 32 -24
		mu 0 4 21 20 25 26
		f 4 -27 23 34 -26
		mu 0 4 23 21 26 28
		f 4 -28 25 35 -21
		mu 0 4 19 22 27 24
		f 4 28 38 -30 -31
		mu 0 4 24 29 30 25
		f 4 -33 29 40 -32
		mu 0 4 26 25 30 31
		f 4 -35 31 42 -34
		mu 0 4 28 26 31 33
		f 4 -36 33 43 -29
		mu 0 4 24 27 32 29
		f 4 36 46 -38 -39
		mu 0 4 29 34 35 30
		f 4 -41 37 48 -40
		mu 0 4 31 30 35 36
		f 4 -43 39 50 -42
		mu 0 4 33 31 36 38
		f 4 -44 41 51 -37
		mu 0 4 29 32 37 34
		f 4 44 54 -46 -47
		mu 0 4 34 39 40 35
		f 4 -49 45 56 -48
		mu 0 4 36 35 40 41
		f 4 -51 47 58 -50
		mu 0 4 38 36 41 43
		f 4 -52 49 59 -45
		mu 0 4 34 37 42 39
		f 4 52 67 -54 -55
		mu 0 4 39 48 44 40
		f 4 -57 53 62 -56
		mu 0 4 41 40 44 45
		f 4 -59 55 64 -58
		mu 0 4 43 41 45 47
		f 4 -60 57 66 -53
		mu 0 4 39 42 46 48
		f 4 -63 60 70 -62
		mu 0 4 45 44 49 50
		f 4 -65 61 72 -64
		mu 0 4 47 45 50 52
		f 4 -67 63 74 -66
		mu 0 4 48 46 51 53
		f 4 -68 65 75 -61
		mu 0 4 44 48 53 49
		f 4 -71 68 9 -70
		mu 0 4 50 49 5 7
		f 4 -73 69 11 -72
		mu 0 4 52 50 7 9
		f 4 -75 71 5 -74
		mu 0 4 53 51 1 3
		f 4 -76 73 7 -69
		mu 0 4 49 53 3 5;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape2" -p "pCube8";
	rename -uid "05609520-4696-0906-8B01-29A2ADE40E4F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 62 ".uvst[0].uvsp[0:61]" -type "float2" 0.375 0 0.375 0.25
		 0.375 0.5 0.375 0.75 0.375 1 0.125 0 0.125 0.25 0.39269394 0.25 0.39269394 0.5 0.39269394
		 0.75 0.39269394 0 0.39269394 1 0.40077859 0.25 0.40077859 0.5 0.40077859 0.75 0.40077859
		 0 0.40077859 1 0.40989131 0.25 0.40989131 0.5 0.40989131 0.75 0.40989131 0 0.40989131
		 1 0.41879779 0.25 0.41879779 0.5 0.41879779 0.74999994 0.41879779 0 0.41879779 1
		 0.42737263 0.25 0.42737263 0.5 0.42737263 0.74999994 0.42737263 0 0.42737263 1 0.43540141
		 0.25 0.43540141 0.5 0.43540141 0.74999994 0.43540141 0 0.43540141 1 0.52469593 0.5
		 0.52469593 0.74999994 0.52469593 0 0.52469593 1 0.52469593 0.25 0.52618665 0.74999994
		 0.52618665 0 0.52618665 1 0.52618665 0.25 0.52618665 0.5 0.625 0.29999495 0.625 0.45000494
		 0.61950499 0.75 0.625 0.79999506 0.625 0.95000505 0.61953449 1 0.61953455 3.4149366e-08
		 0.61953455 0.5 0.67499512 0.25 0.82500494 0 0.67499495 7.4505806e-09 0.61932224 0.25
		 0.87499994 0.24686079 0.82500499 0.25 0.87499994 5.9604645e-08;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 44 ".vt[0:43]"  -0.5 -0.5 0.5 -0.5 0.49999809 0.5 -0.5 0.49999809 -0.49999988
		 -0.5 -0.5 -0.49999988 -0.42461085 0.46819687 0.5 -0.42461085 0.46819687 -0.49999988
		 -0.43397856 -0.49772835 -0.49999988 -0.43397856 -0.49772835 0.5 -0.38683712 0.23322105 0.5
		 -0.38683712 0.23322105 -0.49999988 -0.40493429 -0.63280487 -0.49999988 -0.40493429 -0.63280487 0.5
		 -0.35365605 -0.22618675 0.5 -0.35365605 -0.22618675 -0.49999988 -0.37924933 -0.9332943 -0.49999988
		 -0.37924933 -0.9332943 0.5 -0.32682109 -0.9246788 0.5 -0.32682109 -0.9246788 -0.49999988
		 -0.35816634 -1.4246769 -0.49999988 -0.35816634 -1.4246769 0.5 -0.31096745 -1.79080963 0.5
		 -0.31096745 -1.79080963 -0.49999988 -0.34592855 -2.049625397 -0.49999988 -0.34592855 -2.049625397 0.5
		 -0.30476105 -2.89630508 0.5 -0.30476105 -2.89630508 -0.49999988 -0.34095538 -2.89630508 -0.49999988
		 -0.34095538 -2.89630508 0.5 -0.30476093 -20.51037407 -0.49999988 -0.34095526 -20.51036835 -0.49999988
		 -0.34095526 -20.51036835 0.5 -0.30476093 -20.51037407 0.5 -0.30476093 -20.80443192 -0.22323239
		 -0.34095526 -20.80442047 -0.22323239 -0.34095526 -20.80442047 0.22323287 -0.30476093 -20.80443192 0.22323287
		 -0.34095514 -39.21802902 0.22323287 -0.34095514 -40.29613495 0.13394868 -0.30476081 -39.21804428 0.22323287
		 -0.30476081 -40.29615784 0.13394868 -0.30476081 -39.21804428 -0.22323239 -0.30476081 -40.29615784 -0.13394827
		 -0.34095514 -39.21802902 -0.22323239 -0.34095514 -40.29613495 -0.13394827;
	setAttr -s 82 ".ed[0:81]"  0 7 0 1 4 0 2 5 0 3 6 0 0 1 0 1 2 0 2 3 0
		 3 0 0 4 8 0 5 9 0 4 5 1 6 10 0 5 6 1 7 11 0 6 7 1 7 4 1 8 12 0 9 13 0 8 9 1 10 14 0
		 9 10 1 11 15 0 10 11 1 11 8 1 12 16 0 13 17 0 12 13 1 14 18 0 13 14 1 15 19 0 14 15 1
		 15 12 1 16 20 0 17 21 0 16 17 1 18 22 0 17 18 1 19 23 0 18 19 1 19 16 1 20 24 0 21 25 0
		 20 21 1 22 26 0 21 22 1 23 27 0 22 23 1 23 20 1 24 31 0 25 28 0 24 25 1 26 29 0 25 26 1
		 27 30 0 26 27 1 27 24 1 28 32 0 29 33 0 28 29 1 30 34 0 29 30 1 31 35 0 30 31 1 31 28 1
		 32 40 0 33 42 0 32 33 1 34 36 0 33 34 1 35 38 0 34 35 1 35 32 1 37 36 0 39 41 0 38 39 0
		 41 40 0 43 37 0 42 43 0 36 38 0 39 37 0 40 42 0 43 41 0;
	setAttr -s 40 -ch 164 ".fc[0:39]" -type "polyFaces" 
		f 4 0 15 -2 -5
		mu 0 4 0 10 7 1
		f 4 1 10 -3 -6
		mu 0 4 1 7 8 2
		f 4 2 12 -4 -7
		mu 0 4 2 8 9 3
		f 4 3 14 -1 -8
		mu 0 4 3 9 11 4
		f 4 79 -77 81 -74
		mu 0 4 55 57 56 60
		f 4 7 4 5 6
		mu 0 4 5 0 1 6
		f 4 8 18 -10 -11
		mu 0 4 7 12 13 8
		f 4 -13 9 20 -12
		mu 0 4 9 8 13 14
		f 4 -15 11 22 -14
		mu 0 4 11 9 14 16
		f 4 -16 13 23 -9
		mu 0 4 7 10 15 12
		f 4 16 26 -18 -19
		mu 0 4 12 17 18 13
		f 4 -21 17 28 -20
		mu 0 4 14 13 18 19
		f 4 -23 19 30 -22
		mu 0 4 16 14 19 21
		f 4 -24 21 31 -17
		mu 0 4 12 15 20 17
		f 4 24 34 -26 -27
		mu 0 4 17 22 23 18
		f 4 -29 25 36 -28
		mu 0 4 19 18 23 24
		f 4 -31 27 38 -30
		mu 0 4 21 19 24 26
		f 4 -32 29 39 -25
		mu 0 4 17 20 25 22
		f 4 32 42 -34 -35
		mu 0 4 22 27 28 23
		f 4 -37 33 44 -36
		mu 0 4 24 23 28 29
		f 4 -39 35 46 -38
		mu 0 4 26 24 29 31
		f 4 -40 37 47 -33
		mu 0 4 22 25 30 27
		f 4 40 50 -42 -43
		mu 0 4 27 32 33 28
		f 4 -45 41 52 -44
		mu 0 4 29 28 33 34
		f 4 -47 43 54 -46
		mu 0 4 31 29 34 36
		f 4 -48 45 55 -41
		mu 0 4 27 30 35 32
		f 4 48 63 -50 -51
		mu 0 4 32 41 37 33
		f 4 -53 49 58 -52
		mu 0 4 34 33 37 38
		f 4 -55 51 60 -54
		mu 0 4 36 34 38 40
		f 4 -56 53 62 -49
		mu 0 4 32 35 39 41
		f 4 -59 56 66 -58
		mu 0 4 38 37 46 42
		f 4 -61 57 68 -60
		mu 0 4 40 38 42 44
		f 4 -63 59 70 -62
		mu 0 4 41 39 43 45
		f 4 -64 61 71 -57
		mu 0 4 37 41 45 46
		f 4 -67 64 80 -66
		mu 0 4 42 46 54 49
		f 6 -69 65 77 76 72 -68
		mu 0 6 44 42 49 50 51 52
		f 4 -71 67 78 -70
		mu 0 4 45 43 53 58
		f 6 -72 69 74 73 75 -65
		mu 0 6 46 45 58 47 48 54
		f 4 -73 -80 -75 -79
		mu 0 4 53 57 55 58
		f 4 -76 -82 -78 -81
		mu 0 4 59 60 56 61;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "transform10" -p "pCube8";
	rename -uid "5C59CC86-48B1-734A-397A-B890FA4D1552";
	setAttr ".v" no;
createNode mesh -n "pCubeShape8" -p "transform10";
	rename -uid "9E0400EF-4286-6DD7-7C8D-0AA259C34B18";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube9";
	rename -uid "E5D38EE3-4B89-DF4D-81FC-2CA59F69CBFC";
	setAttr ".s" -type "double3" 1 1 1.0525494172281424 ;
	setAttr ".rp" -type "double3" 7.4067524780119243e-08 0.31947362831711273 0 ;
	setAttr ".sp" -type "double3" 7.4067524780119243e-08 0.31947362831711273 0 ;
createNode transform -n "polySurface1" -p "pCube9";
	rename -uid "4FC90EF2-4AA4-5296-26D0-79B3892EF4C5";
createNode mesh -n "polySurfaceShape3" -p "polySurface1";
	rename -uid "7F5A0737-4A48-4F89-B187-2AB6C6A9486B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface2" -p "pCube9";
	rename -uid "0AEA23DC-4882-8886-B86E-8B993AC88488";
createNode mesh -n "polySurfaceShape4" -p "polySurface2";
	rename -uid "5FF1A6F7-44F1-C77C-1594-1DBAC053D381";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface3" -p "pCube9";
	rename -uid "29519AE2-42B1-70DE-6231-ECB181EA4797";
createNode mesh -n "polySurfaceShape5" -p "polySurface3";
	rename -uid "D5251096-4CD3-08CD-4AC0-E79E09CDB996";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface4" -p "pCube9";
	rename -uid "4E77F669-4B59-9BB1-5E26-71896EF5AC6A";
createNode mesh -n "polySurfaceShape6" -p "polySurface4";
	rename -uid "EE979612-471C-5202-64F4-A09C28A53233";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface5" -p "pCube9";
	rename -uid "715891BE-41EE-430F-D687-9C8A4C231F44";
createNode mesh -n "polySurfaceShape7" -p "polySurface5";
	rename -uid "3437B0A9-485C-9E84-70BA-D2AB7C236F00";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface6" -p "pCube9";
	rename -uid "0904569C-4F9C-0FA8-9B32-2AA9AF6D5819";
createNode mesh -n "polySurfaceShape8" -p "polySurface6";
	rename -uid "FC4B84BC-45BC-D872-3E66-7CADC31834A3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface7" -p "pCube9";
	rename -uid "45D46664-4D3C-6C00-CFF0-39907BD19058";
createNode mesh -n "polySurfaceShape9" -p "polySurface7";
	rename -uid "E43A9B82-4D35-F1D0-8EDA-46B3EBE3C5E9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface8" -p "pCube9";
	rename -uid "A2CF6ED3-4D26-0611-1775-BC94407E4F5F";
createNode mesh -n "polySurfaceShape10" -p "polySurface8";
	rename -uid "1819CCC9-47FB-696E-4FA7-1889D4877381";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface9" -p "pCube9";
	rename -uid "6197216C-4F2D-C4AC-81AC-F391CD8A54D1";
createNode mesh -n "polySurfaceShape11" -p "polySurface9";
	rename -uid "5D008D5B-4797-13CD-3C0A-D3A24FFF9600";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "transform11" -p "pCube9";
	rename -uid "B0FDA552-4A76-76ED-BE78-AEAB09F3DEFC";
	setAttr ".v" no;
createNode mesh -n "pCube9Shape" -p "transform11";
	rename -uid "2F69542A-4DC9-12D9-A230-FA9E2A166A0D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube10";
	rename -uid "3646E565-4E3D-99E0-A270-4980F6B1F611";
	setAttr ".t" -type "double3" 0.43454649734721207 1.0094871920693937 -1.3459808048807549 ;
	setAttr ".r" -type "double3" 0 0 18.89036329359126 ;
	setAttr ".s" -type "double3" 0.20316350917736412 0.20316350917736412 0.20316350917736412 ;
createNode mesh -n "pCubeShape9" -p "pCube10";
	rename -uid "AE99474B-4789-44D2-0988-43B2786EC3F3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "4053D119-4A18-D600-F366-F29D11B96341";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "FBC18DAE-4743-3605-2396-8B8D9C1FE9CE";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "18741BCE-4F98-B5A4-5AFF-67893E100BC0";
createNode displayLayerManager -n "layerManager";
	rename -uid "557A1B3B-414E-7EA0-74A0-82A59499C365";
createNode displayLayer -n "defaultLayer";
	rename -uid "04B06DA2-4CAB-1455-FC44-E2A95538CA80";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "9EA1504C-4CCE-2B11-E423-1EA74E1EB6D3";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "AB8ABD7C-4423-2947-745D-BCAE84E7EDA6";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "CD4B15FA-40C5-FC0A-708E-ED927EB79158";
	setAttr ".cuv" 4;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "AD83C333-4BEC-3232-0CD4-2F8B5B0DABD8";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "26691450-44EA-B3C6-A475-73AE79FBC8E2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 1.9913763435877332 0 0 0 0 0.95192818286943581 0 0 0 0 2.6894503344550444 0
		 0 0.78412041894022633 0 1;
	setAttr ".wt" 0.46702766418457031;
	setAttr ".dr" no;
	setAttr ".re" 5;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyCube -n "polyCube2";
	rename -uid "CA3A4771-46EA-533B-EDC3-B5AE3804334F";
	setAttr ".cuv" 4;
createNode polyCBoolOp -n "polyCBoolOp1";
	rename -uid "3246F9A5-4CE7-38E4-C63D-F2B9F4E949BB";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".cls" 1;
	setAttr ".mg" -type "Int32Array" 2 6 -8 ;
createNode groupId -n "groupId1";
	rename -uid "F63A3244-4B5C-04FE-93F6-1A80276AF390";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "9872F73B-46D5-444C-7D69-EEAC6581989E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:9]";
createNode groupId -n "groupId2";
	rename -uid "C17AF2AA-4714-5EBF-943A-3AA4AB079043";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "63C5BDAA-4CE6-5DB2-F621-E19AD2AF83A2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "E4E406E6-4225-E110-2976-0BA8278F4445";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId4";
	rename -uid "ED118D79-40F5-40FB-ECC5-22BDDFE0F162";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "BB4D2A37-431D-8D3B-111B-688CF551F109";
	setAttr ".ihi" 0;
createNode polySplit -n "polySplit1";
	rename -uid "6BE91D2E-49E4-0575-228E-3FB7AE6B857E";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483645 -2147483612;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "A7DB925E-4FEF-5075-D1BA-9AB38D82BD0A";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483620 -2147483618;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "D474CDCD-47F0-C7A5-2AF4-BA9DF515C5C5";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483637 -2147483634;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "E56FB687-481A-2C9F-25E8-199B141B665D";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483626 -2147483629;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCBoolOp -n "polyCBoolOp2";
	rename -uid "DF288A1D-45E2-DD71-A3BF-F2B1F4657A42";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".cls" 1;
	setAttr ".mg" -type "Int32Array" 2 11 -13 ;
createNode groupId -n "groupId6";
	rename -uid "C9D47DE4-4AAD-D9B9-0572-D58D84D74240";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "6997ED43-4FB9-3302-C177-1292FAAEC170";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:21]";
createNode groupId -n "groupId7";
	rename -uid "7CC110E6-44FC-611D-CDD0-2D9973BF4B64";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	rename -uid "1F47184F-48AB-4DD8-56F8-4F9B8EBD40C8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "36FC3AC2-47D9-8B5A-EB5B-F2AAA22E8021";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:59]";
createNode groupId -n "groupId9";
	rename -uid "F492F15B-4E8A-FED8-5130-58BD1AF59DA0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	rename -uid "C3CC1257-4E7F-F78F-531E-788FAD0AA3AD";
	setAttr ".ihi" 0;
createNode polyCylinder -n "polyCylinder2";
	rename -uid "7B8A318F-4B82-88F8-4317-6393C2481140";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCBoolOp -n "polyCBoolOp3";
	rename -uid "031F3FA7-488F-2700-C6BF-FDADFA01D1EE";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".cls" 1;
	setAttr ".mg" -type "Int32Array" 2 31 -33 ;
createNode groupId -n "groupId11";
	rename -uid "D4FEC02D-4BDF-3F70-6CB2-FD949D089374";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "614FD8EE-426B-08D3-A99C-58AA370B2553";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:62]";
createNode groupId -n "groupId12";
	rename -uid "951E3315-456E-CFEE-1EFF-ED9D2BCE6C8A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	rename -uid "AE05D7B4-4355-5DB0-CE7A-36B57335FD72";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "E7520FB6-4788-FE20-D294-D2A9A7094301";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:59]";
createNode groupId -n "groupId14";
	rename -uid "109B1B3B-48FF-5A1F-7F5C-32967AD1788B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	rename -uid "6495A6B2-4425-0326-2802-D3B35FA68EEB";
	setAttr ".ihi" 0;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "6ABF7201-48BF-9828-B759-4293A827B392";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[1]" "e[69]" "e[73:75]" "e[79]" "e[85]" "e[90]" "e[102]" "e[110]" "e[117]" "e[135]" "e[162:165]" "e[168]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel2";
	rename -uid "06F372DD-4428-6DFC-97EC-C181BB6381B3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[1:4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.06;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyCube -n "polyCube3";
	rename -uid "94FFDA61-4838-7859-FA73-B08FF8278851";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "9D2982D8-425E-3C3F-083A-FDB5F32D3BAE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.036194375101965479 0 0 0 0 0.41156554631046449 0
		 2.3664991893488283 1.8380537997923647 0 1;
	setAttr ".wt" 0.070775702595710754;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "2568BED6-47F7-43A4-63C0-DB96ADD350E5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[12:13]" "e[15]" "e[17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.036194375101965479 0 0 0 0 0.41156554631046449 0
		 2.3664991893488283 1.8380537997923647 0 1;
	setAttr ".wt" 0.034801717847585678;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "3717C97C-43B2-D817-1967-D48E24BDBFCB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[20:21]" "e[23]" "e[25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.036194375101965479 0 0 0 0 0.41156554631046449 0
		 2.3664991893488283 1.8380537997923647 0 1;
	setAttr ".wt" 0.040641713887453079;
	setAttr ".re" 20;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "FE71F121-4874-48BA-01F2-9286CA249816";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[28:29]" "e[31]" "e[33]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.036194375101965479 0 0 0 0 0.41156554631046449 0
		 2.3664991893488283 1.8380537997923647 0 1;
	setAttr ".wt" 0.041404522955417633;
	setAttr ".re" 28;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "0880576E-4B4B-1BA8-6196-41BF5C7CBE45";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[36:37]" "e[39]" "e[41]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.036194375101965479 0 0 0 0 0.41156554631046449 0
		 2.3664991893488283 1.8380537997923647 0 1;
	setAttr ".wt" 0.041584514081478119;
	setAttr ".re" 36;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "824D4818-4D23-6947-6E21-B489602828B3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[44:45]" "e[47]" "e[49]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.036194375101965479 0 0 0 0 0.41156554631046449 0
		 2.3664991893488283 1.8380537997923647 0 1;
	setAttr ".wt" 0.040625806897878647;
	setAttr ".re" 44;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "D220F92F-499F-2E2F-F21A-B381DEA8E338";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk";
	setAttr ".tk[1]" -type "float3" -0.64132941 -22.646093 0 ;
	setAttr ".tk[3]" -type "float3" -0.6063683 -23.387287 0 ;
	setAttr ".tk[5]" -type "float3" -0.6063683 -23.387287 0 ;
	setAttr ".tk[7]" -type "float3" -0.64132941 -22.646093 0 ;
	setAttr ".tk[8]" -type "float3" 0.0046135332 -0.031801678 0 ;
	setAttr ".tk[9]" -type "float3" 0.0046135332 -0.031801678 0 ;
	setAttr ".tk[10]" -type "float3" -0.0047542602 0.0022724944 0 ;
	setAttr ".tk[11]" -type "float3" -0.0047542602 0.0022724944 0 ;
	setAttr ".tk[12]" -type "float3" 0.010048569 -0.26677954 0 ;
	setAttr ".tk[13]" -type "float3" 0.010048569 -0.26677954 0 ;
	setAttr ".tk[14]" -type "float3" -0.0080486182 -0.13280487 0 ;
	setAttr ".tk[15]" -type "float3" -0.0080486182 -0.13280487 0 ;
	setAttr ".tk[16]" -type "float3" 0.006778622 -0.72618735 0 ;
	setAttr ".tk[17]" -type "float3" 0.006778622 -0.72618735 0 ;
	setAttr ".tk[18]" -type "float3" -0.018814668 -0.43329427 0 ;
	setAttr ".tk[19]" -type "float3" -0.018814668 -0.43329427 0 ;
	setAttr ".tk[20]" -type "float3" -0.0020122775 -1.4246762 0 ;
	setAttr ".tk[21]" -type "float3" -0.0020122775 -1.4246762 0 ;
	setAttr ".tk[22]" -type "float3" -0.03335752 -0.92467612 0 ;
	setAttr ".tk[23]" -type "float3" -0.03335752 -0.92467612 0 ;
	setAttr ".tk[24]" -type "float3" -0.02045792 -2.2908065 0 ;
	setAttr ".tk[25]" -type "float3" -0.02045792 -2.2908065 0 ;
	setAttr ".tk[26]" -type "float3" -0.055418998 -1.549625 0 ;
	setAttr ".tk[27]" -type "float3" -0.055418998 -1.549625 0 ;
createNode polySplitRing -n "polySplitRing8";
	rename -uid "95A49305-4827-D314-CF9B-D8B6411EFE30";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[52:53]" "e[55]" "e[57]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.036194375101965479 0 0 0 0 0.30318020623670522 0
		 1.4508676673559464 0.83735699870195057 1.007611073537467 1;
	setAttr ".wt" 0.47096630930900574;
	setAttr ".re" 53;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak2";
	rename -uid "5A7DFCBE-4936-3BF7-DDEE-DB9CA836E2A5";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[1]" -type "float3" -0.19962572 -17.15004 0 ;
	setAttr ".tk[3]" -type "float3" -0.19839254 -17.408865 0 ;
	setAttr ".tk[5]" -type "float3" -0.19839254 -17.408865 0 ;
	setAttr ".tk[7]" -type "float3" -0.19962572 -17.15004 0 ;
	setAttr ".tk[28]" -type "float3" -0.0021055476 -0.24843714 0 ;
	setAttr ".tk[29]" -type "float3" -0.0021055476 -0.24843714 0 ;
	setAttr ".tk[30]" -type "float3" -0.0033388282 0.010382019 0 ;
	setAttr ".tk[31]" -type "float3" -0.0033388282 0.010382019 0 ;
createNode polySplitRing -n "polySplitRing9";
	rename -uid "61AE9BD4-4F30-A86B-6A0B-8387485D6E8F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[60:61]" "e[63]" "e[65]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.036194375101965479 0 0 0 0 0.30318020623670522 0
		 1.4508676673559464 0.83735699870195057 1.007611073537467 1;
	setAttr ".wt" 0.014861986041069031;
	setAttr ".re" 60;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyBevel3 -n "polyBevel3";
	rename -uid "B38FDF79-4445-821A-5A7F-F4B45C444AA8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[5]" "e[9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.036194375101965479 0 0 0 0 0.30318020623670522 0
		 1.4508676673559464 0.83735699870195057 1.007611073537467 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak3";
	rename -uid "10A96299-4941-E0BC-6E8F-6D838098734C";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[5]" -type "float3" 0 -1.4901161e-08 0.52347791 ;
	setAttr ".tk[7]" -type "float3" 0 -1.4901161e-08 0.52347791 ;
	setAttr ".tk[36]" -type "float3" 0 -1.4901161e-08 0.52347791 ;
	setAttr ".tk[37]" -type "float3" 0 -1.4901161e-08 0.52347791 ;
createNode polySplit -n "polySplit5";
	rename -uid "07EAD512-4534-9FB7-823C-09876F264979";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483573 -2147483579;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "037D1D6A-452D-B71E-BCE5-BFBCBFEB98E9";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483583 -2147483576;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyBevel3 -n "polyBevel4";
	rename -uid "58A4F180-46F8-33DF-4D2D-1C9C902064D8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[5]" "e[9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.036194375101965479 0 0 0 0 0.43705032344366951 0
		 1.4508676673559464 0.83735699870195057 0.36732283094966978 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.4;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyMirror -n "polyMirror1";
	rename -uid "871D97C9-46CA-7FE7-17F1-01A4CBF7BAF1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.036194375101965479 0 0 0 0 0.30318020623670522 0
		 1.4508676673559464 0.83735699870195057 0.99494439649663702 1;
	setAttr ".ws" yes;
	setAttr ".mtt" 1;
	setAttr ".cm" yes;
	setAttr ".fnf" 42;
	setAttr ".lnf" 83;
	setAttr ".ro" -type "double3" 0 -89.999999999999972 0 ;
createNode polyMirror -n "polyMirror2";
	rename -uid "A6397649-4320-00F7-7382-6EA211E27E80";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.036194375101965479 0 0 0 0 0.30318020623670522 0
		 1.4508676673559464 0.83735699870195057 0.99494439649663702 1;
	setAttr ".ws" yes;
	setAttr ".mtt" 1;
	setAttr ".cm" yes;
	setAttr ".fnf" 84;
	setAttr ".lnf" 167;
createNode polyMirror -n "polyMirror3";
	rename -uid "1657FBAF-4C0B-70DD-009F-DA9A697D4AA7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.036194375101965479 0 0 0 0 0.43705032344366951 0
		 1.4508676673559464 0.83735699870195057 0.35029442325758797 1;
	setAttr ".ws" yes;
	setAttr ".mtt" 1;
	setAttr ".cm" yes;
	setAttr ".fnf" 40;
	setAttr ".lnf" 79;
createNode polyMirror -n "polyMirror4";
	rename -uid "463E5FA5-496C-5EBE-2901-49AC125B350C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.036194375101965479 0 0 0 0 0.43705032344366951 0
		 1.4508676673559464 0.83735699870195057 -0.34999999999999998 1;
	setAttr ".ws" yes;
	setAttr ".mtt" 1;
	setAttr ".cm" yes;
	setAttr ".fnf" 40;
	setAttr ".lnf" 79;
createNode polyUnite -n "polyUnite1";
	rename -uid "0D5F5642-4CC8-011C-85BF-738C53ABEB27";
	setAttr -s 4 ".ip";
	setAttr -s 4 ".im";
createNode groupId -n "groupId16";
	rename -uid "81BCE1DB-4E18-9433-D541-8E8F47B32298";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "D5121713-44DD-0924-128B-2F89E62353EC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:79]";
createNode groupId -n "groupId17";
	rename -uid "17237513-4602-DFE3-C023-2D9F8E4810FC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId18";
	rename -uid "0EEDD05C-4225-9589-7DEC-55A077D5E031";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "5AD209D9-4C30-8D8C-6639-BCBA216C7ED8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:167]";
createNode groupId -n "groupId19";
	rename -uid "2A110723-4A9B-0077-E4A5-FE85D19AD739";
	setAttr ".ihi" 0;
createNode groupId -n "groupId20";
	rename -uid "2A5CDA26-454E-C37A-F29C-CBA95622923A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "C01022A1-45CF-DF43-351F-3DA7B28CC589";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:104]";
createNode groupId -n "groupId21";
	rename -uid "2B0A7635-44FF-7096-5B99-1C84F1D860A9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId22";
	rename -uid "FFDA9800-44B3-175B-5FBC-F78CEA7AD02C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "CDC99EF7-4124-D08A-A1F3-219E015E6DB0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:79]";
createNode groupId -n "groupId23";
	rename -uid "CC4F8C90-4463-DA30-0C61-3F8EE833CC3A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId24";
	rename -uid "E6052A49-43EB-829A-275A-FE8D0B806B4C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	rename -uid "98E69815-4370-ADA3-D273-08B351AA83CD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:432]";
createNode polyCube -n "polyCube4";
	rename -uid "825F5708-4A07-661E-6D68-2BA000B2A88A";
	setAttr ".cuv" 4;
createNode polyMirror -n "polyMirror5";
	rename -uid "18A8A8A2-4AE1-27D8-CC34-9492C9C15E54";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 0.19222108719150469 0.065775870197032488 0 0 -0.065775870197032488 0.19222108719150469 0 0
		 0 0 0.20316350917736412 0 0.43454649734721207 1.0094871920693937 -1.3459808048807549 1;
	setAttr ".ws" yes;
	setAttr ".mtt" 1;
	setAttr ".cm" yes;
	setAttr ".fnf" 6;
	setAttr ".lnf" 11;
createNode polyTweak -n "polyTweak4";
	rename -uid "C7327A18-4FBA-5C15-DC55-8697F376666F";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[0]" -type "float3" -0.37386274 0.2135756 0 ;
	setAttr ".tk[2]" -type "float3" -0.37386274 -0.21357562 0 ;
	setAttr ".tk[4]" -type "float3" -0.37386274 -0.21357562 0 ;
	setAttr ".tk[6]" -type "float3" -0.37386274 0.2135756 0 ;
createNode layeredShader -n "layeredShader1";
	rename -uid "4435644B-496C-1F8E-CFBF-A9AFF3BFAE05";
	setAttr ".cs[0].c" -type "float3" 0.2 0.69999999 0.30000001 ;
	setAttr ".cs[0].t" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".cs[0].g" -type "float3" 0 0 0 ;
createNode shadingEngine -n "layeredShader1SG";
	rename -uid "ABE9E7CF-4532-783A-DD4A-7B8EADA790D4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "65A49B0A-42FD-7C53-FEE8-85B911B3963F";
createNode blinn -n "blinn1";
	rename -uid "0C84379F-4BF0-4416-BAE1-B2AE9BA0ABD7";
	setAttr ".c" -type "float3" 1 1 1 ;
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode shadingEngine -n "blinn1SG";
	rename -uid "8A1767F7-4DFF-B90D-DB20-B28EEE1D608B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "9CDEACD7-4EBE-BCF8-6A7F-68ABB8E76BDA";
createNode groupId -n "groupId26";
	rename -uid "05B91BA9-42E6-BC57-4886-A29C1BB34E33";
	setAttr ".ihi" 0;
createNode polySeparate -n "polySeparate1";
	rename -uid "71C11D10-4ED0-F9AF-E6E4-8B811DBE1BDF";
	setAttr ".ic" 9;
	setAttr -s 9 ".out";
createNode blinn -n "blinn2";
	rename -uid "CE03F816-43D2-9CA3-0F1B-D38FBA97F38E";
	setAttr ".c" -type "float3" 0.045454547 0.045454547 0.045454547 ;
createNode shadingEngine -n "blinn2SG";
	rename -uid "55226D15-4448-9DDC-0BA8-EB91041715DC";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "A3BCA0AE-407F-FE12-8544-018BDD9D019A";
createNode blinn -n "blinn3";
	rename -uid "DDAE9B0F-4C23-74E5-7CC4-72B5F9716BC3";
	setAttr ".c" -type "float3" 0.35064936 0.35064936 0.35064936 ;
createNode shadingEngine -n "blinn3SG";
	rename -uid "B7F2A113-4065-73D8-1D9A-C19BC74293B8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "7247507B-4CB4-9D49-3A2C-5B9E6D5DB802";
createNode blinn -n "blinn4";
	rename -uid "EAAB0231-4BB6-D950-D548-418039B508A6";
	setAttr ".c" -type "float3" 0.54545456 0.54545456 0.54545456 ;
createNode shadingEngine -n "blinn4SG";
	rename -uid "1AC477B6-4D42-D9A9-5B7B-8F8B71815020";
	setAttr ".ihi" 0;
	setAttr -s 8 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "42EB6448-4C69-7096-FF4D-CABAFEFCB9F3";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "5EB3BB19-454E-63CE-22F1-5A9F741E5DE7";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 789\n            -height 416\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 789\n            -height 416\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 789\n            -height 416\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1385\n            -height 876\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n"
		+ "                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n"
		+ "                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1385\\n    -height 876\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1385\\n    -height 876\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "C0FB45E8-44EF-287D-1DCF-3E93056B528E";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 7 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 9 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 24 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 21 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId1.id" "pCubeShape1.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[1].gco";
connectAttr "groupParts1.og" "pCubeShape1.i";
connectAttr "groupId2.id" "pCubeShape1.ciog.cog[1].cgid";
connectAttr "groupId8.id" "pCylinderShape1.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape1.iog.og[1].gco";
connectAttr "groupParts4.og" "pCylinderShape1.i";
connectAttr "groupId9.id" "pCylinderShape1.ciog.cog[1].cgid";
connectAttr "groupId3.id" "pCubeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupParts2.og" "pCubeShape2.i";
connectAttr "groupId4.id" "pCubeShape2.ciog.cog[0].cgid";
connectAttr "groupParts3.og" "pCube3Shape.i";
connectAttr "groupId6.id" "pCube3Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube3Shape.iog.og[0].gco";
connectAttr "groupId5.id" "pCube3Shape.ciog.cog[0].cgid";
connectAttr "groupId7.id" "pCube3Shape.ciog.cog[1].cgid";
connectAttr "groupParts5.og" "pCube4Shape.i";
connectAttr "groupId11.id" "pCube4Shape.iog.og[3].gid";
connectAttr ":initialShadingGroup.mwc" "pCube4Shape.iog.og[3].gco";
connectAttr "groupId10.id" "pCube4Shape.ciog.cog[0].cgid";
connectAttr "groupId12.id" "pCube4Shape.ciog.cog[4].cgid";
connectAttr "groupId13.id" "pCylinderShape2.iog.og[3].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape2.iog.og[3].gco";
connectAttr "groupParts6.og" "pCylinderShape2.i";
connectAttr "groupId14.id" "pCylinderShape2.ciog.cog[3].cgid";
connectAttr "groupParts9.og" "pCube5Shape.i";
connectAttr "groupId20.id" "pCube5Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube5Shape.iog.og[0].gco";
connectAttr "groupId15.id" "pCube5Shape.ciog.cog[0].cgid";
connectAttr "groupId21.id" "pCube5Shape.ciog.cog[1].cgid";
connectAttr "groupId18.id" "pCubeShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape3.iog.og[0].gco";
connectAttr "groupParts8.og" "pCubeShape3.i";
connectAttr "groupId19.id" "pCubeShape3.ciog.cog[0].cgid";
connectAttr "groupId22.id" "pCubeShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape7.iog.og[0].gco";
connectAttr "groupParts10.og" "pCubeShape7.i";
connectAttr "groupId23.id" "pCubeShape7.ciog.cog[0].cgid";
connectAttr "groupId16.id" "pCubeShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape8.iog.og[0].gco";
connectAttr "groupParts7.og" "pCubeShape8.i";
connectAttr "groupId17.id" "pCubeShape8.ciog.cog[0].cgid";
connectAttr "polySeparate1.out[0]" "polySurfaceShape3.i";
connectAttr "polySeparate1.out[1]" "polySurfaceShape4.i";
connectAttr "polySeparate1.out[2]" "polySurfaceShape5.i";
connectAttr "polySeparate1.out[3]" "polySurfaceShape6.i";
connectAttr "polySeparate1.out[4]" "polySurfaceShape7.i";
connectAttr "polySeparate1.out[5]" "polySurfaceShape8.i";
connectAttr "polySeparate1.out[6]" "polySurfaceShape9.i";
connectAttr "polySeparate1.out[7]" "polySurfaceShape10.i";
connectAttr "polySeparate1.out[8]" "polySurfaceShape11.i";
connectAttr "groupParts11.og" "pCube9Shape.i";
connectAttr "groupId24.id" "pCube9Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube9Shape.iog.og[0].gco";
connectAttr "polyMirror5.out" "pCubeShape9.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "layeredShader1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "layeredShader1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn4SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polySplitRing1.ip";
connectAttr "pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "pCubeShape1.o" "polyCBoolOp1.ip[0]";
connectAttr "pCubeShape2.o" "polyCBoolOp1.ip[1]";
connectAttr "pCubeShape1.wm" "polyCBoolOp1.im[0]";
connectAttr "pCubeShape2.wm" "polyCBoolOp1.im[1]";
connectAttr "polySplitRing1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyCube2.out" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyCBoolOp1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "pCube3Shape.o" "polyCBoolOp2.ip[0]";
connectAttr "pCylinderShape1.o" "polyCBoolOp2.ip[1]";
connectAttr "pCube3Shape.wm" "polyCBoolOp2.im[0]";
connectAttr "pCylinderShape1.wm" "polyCBoolOp2.im[1]";
connectAttr "polySplit4.out" "groupParts3.ig";
connectAttr "groupId6.id" "groupParts3.gi";
connectAttr "polyCylinder1.out" "groupParts4.ig";
connectAttr "groupId8.id" "groupParts4.gi";
connectAttr "pCube4Shape.o" "polyCBoolOp3.ip[0]";
connectAttr "pCylinderShape2.o" "polyCBoolOp3.ip[1]";
connectAttr "pCube4Shape.wm" "polyCBoolOp3.im[0]";
connectAttr "pCylinderShape2.wm" "polyCBoolOp3.im[1]";
connectAttr "polyCBoolOp2.out" "groupParts5.ig";
connectAttr "groupId11.id" "groupParts5.gi";
connectAttr "polyCylinder2.out" "groupParts6.ig";
connectAttr "groupId13.id" "groupParts6.gi";
connectAttr "polyCBoolOp3.out" "polyBevel1.ip";
connectAttr "pCube5Shape.wm" "polyBevel1.mp";
connectAttr "polyBevel1.out" "polyBevel2.ip";
connectAttr "pCube5Shape.wm" "polyBevel2.mp";
connectAttr "polyCube3.out" "polySplitRing2.ip";
connectAttr "pCubeShape3.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "pCubeShape3.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "pCubeShape3.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "pCubeShape3.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "pCubeShape3.wm" "polySplitRing6.mp";
connectAttr "polyTweak1.out" "polySplitRing7.ip";
connectAttr "pCubeShape3.wm" "polySplitRing7.mp";
connectAttr "polySplitRing6.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polySplitRing8.ip";
connectAttr "pCubeShape3.wm" "polySplitRing8.mp";
connectAttr "polySplitRing7.out" "polyTweak2.ip";
connectAttr "polySplitRing8.out" "polySplitRing9.ip";
connectAttr "pCubeShape3.wm" "polySplitRing9.mp";
connectAttr "polyTweak3.out" "polyBevel3.ip";
connectAttr "pCubeShape3.wm" "polyBevel3.mp";
connectAttr "polySplitRing9.out" "polyTweak3.ip";
connectAttr "polyBevel3.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "|pCube7|polySurfaceShape1.o" "polyBevel4.ip";
connectAttr "pCubeShape7.wm" "polyBevel4.mp";
connectAttr "polySplit6.out" "polyMirror1.ip";
connectAttr "pCube6.sp" "polyMirror1.sp";
connectAttr "pCubeShape3.wm" "polyMirror1.mp";
connectAttr "polyMirror1.out" "polyMirror2.ip";
connectAttr "pCube6.sp" "polyMirror2.sp";
connectAttr "pCubeShape3.wm" "polyMirror2.mp";
connectAttr "polyBevel4.out" "polyMirror3.ip";
connectAttr "pCube7.sp" "polyMirror3.sp";
connectAttr "pCubeShape7.wm" "polyMirror3.mp";
connectAttr "polySurfaceShape2.o" "polyMirror4.ip";
connectAttr "pCube8.sp" "polyMirror4.sp";
connectAttr "pCubeShape8.wm" "polyMirror4.mp";
connectAttr "pCubeShape8.o" "polyUnite1.ip[0]";
connectAttr "pCubeShape3.o" "polyUnite1.ip[1]";
connectAttr "pCube5Shape.o" "polyUnite1.ip[2]";
connectAttr "pCubeShape7.o" "polyUnite1.ip[3]";
connectAttr "pCubeShape8.wm" "polyUnite1.im[0]";
connectAttr "pCubeShape3.wm" "polyUnite1.im[1]";
connectAttr "pCube5Shape.wm" "polyUnite1.im[2]";
connectAttr "pCubeShape7.wm" "polyUnite1.im[3]";
connectAttr "polyMirror4.out" "groupParts7.ig";
connectAttr "groupId16.id" "groupParts7.gi";
connectAttr "polyMirror2.out" "groupParts8.ig";
connectAttr "groupId18.id" "groupParts8.gi";
connectAttr "polyBevel2.out" "groupParts9.ig";
connectAttr "groupId20.id" "groupParts9.gi";
connectAttr "polyMirror3.out" "groupParts10.ig";
connectAttr "groupId22.id" "groupParts10.gi";
connectAttr "polyUnite1.out" "groupParts11.ig";
connectAttr "groupId24.id" "groupParts11.gi";
connectAttr "polyTweak4.out" "polyMirror5.ip";
connectAttr "pCube10.sp" "polyMirror5.sp";
connectAttr "pCubeShape9.wm" "polyMirror5.mp";
connectAttr "polyCube4.out" "polyTweak4.ip";
connectAttr "layeredShader1.oc" "layeredShader1SG.ss";
connectAttr "layeredShader1SG.msg" "materialInfo1.sg";
connectAttr "layeredShader1.msg" "materialInfo1.m";
connectAttr "layeredShader1.msg" "materialInfo1.t" -na;
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "blinn1SG.msg" "materialInfo2.sg";
connectAttr "blinn1.msg" "materialInfo2.m";
connectAttr "pCube9Shape.o" "polySeparate1.ip";
connectAttr "blinn2.oc" "blinn2SG.ss";
connectAttr "polySurfaceShape9.iog" "blinn2SG.dsm" -na;
connectAttr "blinn2SG.msg" "materialInfo3.sg";
connectAttr "blinn2.msg" "materialInfo3.m";
connectAttr "blinn3.oc" "blinn3SG.ss";
connectAttr "pCubeShape9.iog" "blinn3SG.dsm" -na;
connectAttr "blinn3SG.msg" "materialInfo4.sg";
connectAttr "blinn3.msg" "materialInfo4.m";
connectAttr "blinn4.oc" "blinn4SG.ss";
connectAttr "polySurfaceShape7.iog" "blinn4SG.dsm" -na;
connectAttr "polySurfaceShape6.iog" "blinn4SG.dsm" -na;
connectAttr "polySurfaceShape3.iog" "blinn4SG.dsm" -na;
connectAttr "polySurfaceShape10.iog" "blinn4SG.dsm" -na;
connectAttr "polySurfaceShape5.iog" "blinn4SG.dsm" -na;
connectAttr "polySurfaceShape11.iog" "blinn4SG.dsm" -na;
connectAttr "polySurfaceShape4.iog" "blinn4SG.dsm" -na;
connectAttr "polySurfaceShape8.iog" "blinn4SG.dsm" -na;
connectAttr "blinn4SG.msg" "materialInfo5.sg";
connectAttr "blinn4.msg" "materialInfo5.m";
connectAttr "layeredShader1SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "blinn2SG.pa" ":renderPartition.st" -na;
connectAttr "blinn3SG.pa" ":renderPartition.st" -na;
connectAttr "blinn4SG.pa" ":renderPartition.st" -na;
connectAttr "layeredShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn2.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn3.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn4.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube3Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube3Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube3Shape.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube4Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube4Shape.iog.og[3]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube4Shape.ciog.cog[4]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog.og[3]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.ciog.cog[3]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube5Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube5Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube5Shape.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube9Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId21.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId22.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId23.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId24.msg" ":initialShadingGroup.gn" -na;
// End of IntegratedCircuit.ma
