webtalk_init -webtalk_dir /home/florian/Desktop/proteus/ntt_op_1_2/project_1/project_1.sdk/webtalk
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "2023-01-12 12:11:13" -context "software_version_and_target_device"
webtalk_add_data -client project -key product_version -value "SDK v2019.1" -context "software_version_and_target_device"
webtalk_add_data -client project -key build_version -value "2019.1" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_platform -value "amd64" -context "software_version_and_target_device"
webtalk_add_data -client project -key registration_id -value "211074094_1777518027_210734873_404" -context "software_version_and_target_device"
webtalk_add_data -client project -key tool_flow -value "SDK" -context "software_version_and_target_device"
webtalk_add_data -client project -key beta -value "false" -context "software_version_and_target_device"
webtalk_add_data -client project -key route_design -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_family -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_device -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_package -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_speed -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key random_id -value "fl9pc1nkq3331lejoor7q7e4pr" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "2019.1_15" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "15" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "Ubuntu" -context "user_environment"
webtalk_add_data -client project -key os_release -value "Ubuntu 20.04.5 LTS" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "11th Gen Intel(R) Core(TM) i7-1165G7 @ 2.80GHz" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "2097.259 MHz" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "1" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "33.379 GB" -context "user_environment"
webtalk_register_client -client sdk
webtalk_add_data -client sdk -key uid -value "1673521563000" -context "sdk\\\\hardware/1673521563000"
webtalk_add_data -client sdk -key isZynq -value "true" -context "sdk\\\\hardware/1673521563000"
webtalk_add_data -client sdk -key isZynqMP -value "false" -context "sdk\\\\hardware/1673521563000"
webtalk_add_data -client sdk -key Processors -value "2" -context "sdk\\\\hardware/1673521563000"
webtalk_add_data -client sdk -key VivadoVersion -value "2019.1" -context "sdk\\\\hardware/1673521563000"
webtalk_add_data -client sdk -key Arch -value "zynq" -context "sdk\\\\hardware/1673521563000"
webtalk_add_data -client sdk -key Device -value "7z020" -context "sdk\\\\hardware/1673521563000"
webtalk_add_data -client sdk -key IsHandoff -value "true" -context "sdk\\\\hardware/1673521563000"
webtalk_add_data -client sdk -key os -value "NA" -context "sdk\\\\hardware/1673521563000"
webtalk_add_data -client sdk -key apptemplate -value "NA" -context "sdk\\\\hardware/1673521563000"
webtalk_add_data -client sdk -key RecordType -value "HWCreation" -context "sdk\\\\hardware/1673521563000"
webtalk_add_data -client sdk -key uid -value "NA" -context "sdk\\\\bsp/1673521873077"
webtalk_add_data -client sdk -key RecordType -value "ToolUsage" -context "sdk\\\\bsp/1673521873077"
webtalk_add_data -client sdk -key BootgenCount -value "0" -context "sdk\\\\bsp/1673521873077"
webtalk_add_data -client sdk -key DebugCount -value "5" -context "sdk\\\\bsp/1673521873077"
webtalk_add_data -client sdk -key PerfCount -value "0" -context "sdk\\\\bsp/1673521873077"
webtalk_add_data -client sdk -key FlashCount -value "0" -context "sdk\\\\bsp/1673521873077"
webtalk_add_data -client sdk -key CrossTriggCount -value "0" -context "sdk\\\\bsp/1673521873077"
webtalk_add_data -client sdk -key QemuDebugCount -value "0" -context "sdk\\\\bsp/1673521873077"
webtalk_transmit -clientid 3585119643 -regid "211074094_1777518027_210734873_404" -xml /home/florian/Desktop/proteus/ntt_op_1_2/project_1/project_1.sdk/webtalk/usage_statistics_ext_sdk.xml -html /home/florian/Desktop/proteus/ntt_op_1_2/project_1/project_1.sdk/webtalk/usage_statistics_ext_sdk.html -wdm /home/florian/Desktop/proteus/ntt_op_1_2/project_1/project_1.sdk/webtalk/sdk_webtalk.wdm -intro "<H3>SDK Usage Report</H3><BR>"
webtalk_terminate
