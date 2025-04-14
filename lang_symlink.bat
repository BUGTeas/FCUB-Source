set SrcPath=%1
if 6%1 equ 6 (
    set SrcPath=LangFile\output
    pause
)


set ResPath=ResourcePackJava\assets


del /q %ResPath%\fcub\lang\*.json
del /q %ResPath%\lang_adv\lang\*.json
del /q %ResPath%\lang_chat_npc\lang\*.json
del /q %ResPath%\lang_chest_menu\lang\*.json
del /q %ResPath%\lang_dark\lang\*.json
del /q %ResPath%\lang_dlc\lang\*.json
del /q %ResPath%\lang_equipment\lang\*.json
del /q %ResPath%\lang_instances\lang\*.json
del /q %ResPath%\lang_misson\lang\*.json
del /q %ResPath%\lang_pvpevent\lang\*.json
del /q %ResPath%\lang_signs\lang\*.json
del /q %ResPath%\lang_special_egg\lang\*.json
del /q %ResPath%\lang_truth\lang\*.json
del /q %ResPath%\lang_weapons\lang\*.json
del /q %ResPath%\minecraft\lang\*.json
del /q %ResPath%\panling\lang\*.json
del /q %ResPath%\xsj\lang\*.json


@echo off


mklink %ResPath%\fcub\lang\zh_cn.json ..\..\..\..\%SrcPath%\fcub-java\assets\pcub\lang\zh_cn.json
mklink %ResPath%\lang_adv\lang\zh_cn.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_adv\lang\zh_cn.json
mklink %ResPath%\lang_chat_npc\lang\zh_cn.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_chat_npc\lang\zh_cn.json
mklink %ResPath%\lang_chest_menu\lang\zh_cn.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_chest_menu\lang\zh_cn.json
mklink %ResPath%\lang_dark\lang\zh_cn.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_dark\lang\zh_cn.json
mklink %ResPath%\lang_dlc\lang\zh_cn.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_dlc\lang\zh_cn.json
mklink %ResPath%\lang_equipment\lang\zh_cn.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_equipment\lang\zh_cn.json
mklink %ResPath%\lang_instances\lang\zh_cn.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_instances\lang\zh_cn.json
mklink %ResPath%\lang_misson\lang\zh_cn.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_misson\lang\zh_cn.json
mklink %ResPath%\lang_pvpevent\lang\zh_cn.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_pvpevent\lang\zh_cn.json
mklink %ResPath%\lang_signs\lang\zh_cn.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_signs\lang\zh_cn.json
mklink %ResPath%\lang_special_egg\lang\zh_cn.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_special_egg\lang\zh_cn.json
mklink %ResPath%\lang_truth\lang\zh_cn.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_truth\lang\zh_cn.json
mklink %ResPath%\lang_weapons\lang\zh_cn.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_weapons\lang\zh_cn.json
mklink %ResPath%\minecraft\lang\zh_cn.json ..\..\..\..\%SrcPath%\fcub-java\assets\minecraft\lang\zh_cn.json
mklink %ResPath%\panling\lang\zh_cn.json ..\..\..\..\%SrcPath%\fcub-java\assets\panling\lang\zh_cn.json
mklink %ResPath%\xsj\lang\zh_cn.json ..\..\..\..\%SrcPath%\fcub-java\assets\xsj\lang\zh_cn.json


mklink %ResPath%\fcub\lang\zh_hk.json ..\..\..\..\%SrcPath%\fcub-java\assets\pcub\lang\zh_hk.json
mklink %ResPath%\lang_adv\lang\zh_hk.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_adv\lang\zh_hk.json
mklink %ResPath%\lang_chat_npc\lang\zh_hk.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_chat_npc\lang\zh_hk.json
mklink %ResPath%\lang_chest_menu\lang\zh_hk.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_chest_menu\lang\zh_hk.json
mklink %ResPath%\lang_dark\lang\zh_hk.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_dark\lang\zh_hk.json
mklink %ResPath%\lang_dlc\lang\zh_hk.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_dlc\lang\zh_hk.json
mklink %ResPath%\lang_equipment\lang\zh_hk.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_equipment\lang\zh_hk.json
mklink %ResPath%\lang_instances\lang\zh_hk.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_instances\lang\zh_hk.json
mklink %ResPath%\lang_misson\lang\zh_hk.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_misson\lang\zh_hk.json
mklink %ResPath%\lang_pvpevent\lang\zh_hk.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_pvpevent\lang\zh_hk.json
mklink %ResPath%\lang_signs\lang\zh_hk.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_signs\lang\zh_hk.json
mklink %ResPath%\lang_special_egg\lang\zh_hk.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_special_egg\lang\zh_hk.json
mklink %ResPath%\lang_truth\lang\zh_hk.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_truth\lang\zh_hk.json
mklink %ResPath%\lang_weapons\lang\zh_hk.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_weapons\lang\zh_hk.json
mklink %ResPath%\minecraft\lang\zh_hk.json ..\..\..\..\%SrcPath%\fcub-java\assets\minecraft\lang\zh_hk.json
mklink %ResPath%\panling\lang\zh_hk.json ..\..\..\..\%SrcPath%\fcub-java\assets\panling\lang\zh_hk.json
mklink %ResPath%\xsj\lang\zh_hk.json ..\..\..\..\%SrcPath%\fcub-java\assets\xsj\lang\zh_hk.json


mklink %ResPath%\fcub\lang\zh_tw.json ..\..\..\..\%SrcPath%\fcub\assets\pcub\lang\zh_tw.json
mklink %ResPath%\lang_adv\lang\zh_tw.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_adv\lang\zh_tw.json
mklink %ResPath%\lang_chat_npc\lang\zh_tw.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_chat_npc\lang\zh_tw.json
mklink %ResPath%\lang_chest_menu\lang\zh_tw.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_chest_menu\lang\zh_tw.json
mklink %ResPath%\lang_dark\lang\zh_tw.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_dark\lang\zh_tw.json
mklink %ResPath%\lang_dlc\lang\zh_tw.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_dlc\lang\zh_tw.json
mklink %ResPath%\lang_equipment\lang\zh_tw.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_equipment\lang\zh_tw.json
mklink %ResPath%\lang_instances\lang\zh_tw.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_instances\lang\zh_tw.json
mklink %ResPath%\lang_misson\lang\zh_tw.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_misson\lang\zh_tw.json
mklink %ResPath%\lang_pvpevent\lang\zh_tw.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_pvpevent\lang\zh_tw.json
mklink %ResPath%\lang_signs\lang\zh_tw.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_signs\lang\zh_tw.json
mklink %ResPath%\lang_special_egg\lang\zh_tw.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_special_egg\lang\zh_tw.json
mklink %ResPath%\lang_truth\lang\zh_tw.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_truth\lang\zh_tw.json
mklink %ResPath%\lang_weapons\lang\zh_tw.json ..\..\..\..\%SrcPath%\fcub-java\assets\lang_weapons\lang\zh_tw.json
mklink %ResPath%\minecraft\lang\zh_tw.json ..\..\..\..\%SrcPath%\fcub-java\assets\minecraft\lang\zh_tw.json
mklink %ResPath%\panling\lang\zh_tw.json ..\..\..\..\%SrcPath%\fcub-java\assets\panling\lang\zh_tw.json
mklink %ResPath%\xsj\lang\zh_tw.json ..\..\..\..\%SrcPath%\fcub-java\assets\xsj\lang\zh_tw.json


mklink %ResPath%\fcub\lang\en_us.json ..\..\..\..\%SrcPath%\fcub\assets\pcub\lang\en_us.json


set ResPath=ResourcePack\texts
del %ResPath%\*.lang
mklink %ResPath%\zh_CN.lang ..\..\%SrcPath%\fcub\texts\zh_CN.lang
mklink %ResPath%\zh_TW.lang ..\..\%SrcPath%\fcub\texts\zh_TW.lang
mklink %ResPath%\en_US.lang ..\..\%SrcPath%\fcub\texts\en_US.lang


if 6%1 equ 6 pause