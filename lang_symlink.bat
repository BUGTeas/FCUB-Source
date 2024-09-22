set ResPath=ResourcePackJava\assets
set SrcPath=%1
if 6%1 equ 6 (
    set SrcPath=.\LangFile\output
    pause
)


del /q %ResPath%\pcub_fcub\lang
del /q %ResPath%\lang_adv\lang
del /q %ResPath%\lang_chat_npc\lang
del /q %ResPath%\lang_chest_menu\lang
del /q %ResPath%\lang_dark\lang
del /q %ResPath%\lang_dlc\lang
del /q %ResPath%\lang_equipment\lang
del /q %ResPath%\lang_instances\lang
del /q %ResPath%\lang_misson\lang
del /q %ResPath%\lang_pvpevent\lang
del /q %ResPath%\lang_signs\lang
del /q %ResPath%\lang_special_egg\lang
del /q %ResPath%\lang_truth\lang
del /q %ResPath%\lang_weapons\lang
del /q %ResPath%\minecraft\lang
del /q %ResPath%\panling\lang
del /q %ResPath%\pcub\lang


touch %ResPath%\pcub_fcub\lang\none
touch %ResPath%\lang_adv\lang\none
touch %ResPath%\lang_chat_npc\lang\none
touch %ResPath%\lang_chest_menu\lang\none
touch %ResPath%\lang_dark\lang\none
touch %ResPath%\lang_dlc\lang\none
touch %ResPath%\lang_equipment\lang\none
touch %ResPath%\lang_instances\lang\none
touch %ResPath%\lang_misson\lang\none
touch %ResPath%\lang_pvpevent\lang\none
touch %ResPath%\lang_signs\lang\none
touch %ResPath%\lang_special_egg\lang\none
touch %ResPath%\lang_truth\lang\none
touch %ResPath%\lang_weapons\lang\none
touch %ResPath%\minecraft\lang\none
touch %ResPath%\panling\lang\none
touch %ResPath%\pcub\lang\none


mklink %ResPath%\pcub_fcub\lang\zh_cn.json %SrcPath%\fcub\assets\pcub\lang\zh_cn.json
mklink %ResPath%\lang_adv\lang\zh_cn.json %SrcPath%\sins\assets\lang_adv\lang\zh_cn.json
mklink %ResPath%\lang_chat_npc\lang\zh_cn.json %SrcPath%\panling\assets\lang_chat_npc\lang\zh_cn.json
mklink %ResPath%\lang_chest_menu\lang\zh_cn.json %SrcPath%\panling\assets\lang_chest_menu\lang\zh_cn.json
mklink %ResPath%\lang_dark\lang\zh_cn.json %SrcPath%\sins\assets\lang_dark\lang\zh_cn.json
mklink %ResPath%\lang_dlc\lang\zh_cn.json %SrcPath%\sins\assets\lang_dlc\lang\zh_cn.json
mklink %ResPath%\lang_equipment\lang\zh_cn.json %SrcPath%\panling\assets\lang_equipment\lang\zh_cn.json
mklink %ResPath%\lang_instances\lang\zh_cn.json %SrcPath%\panling\assets\lang_instances\lang\zh_cn.json
mklink %ResPath%\lang_misson\lang\zh_cn.json %SrcPath%\panling\assets\lang_misson\lang\zh_cn.json
mklink %ResPath%\lang_pvpevent\lang\zh_cn.json %SrcPath%\panling\assets\lang_pvpevent\lang\zh_cn.json
mklink %ResPath%\lang_signs\lang\zh_cn.json %SrcPath%\panling\assets\lang_signs\lang\zh_cn.json
mklink %ResPath%\lang_special_egg\lang\zh_cn.json %SrcPath%\panling\assets\lang_special_egg\lang\zh_cn.json
mklink %ResPath%\lang_truth\lang\zh_cn.json %SrcPath%\panling\assets\lang_truth\lang\zh_cn.json
mklink %ResPath%\lang_weapons\lang\zh_cn.json %SrcPath%\sins\assets\lang_weapons\lang\zh_cn.json
mklink %ResPath%\minecraft\lang\zh_cn.json %SrcPath%\panling\assets\minecraft\lang\zh_cn.json
mklink %ResPath%\panling\lang\zh_cn.json %SrcPath%\panling\assets\panling\lang\zh_cn.json
mklink %ResPath%\pcub\lang\zh_cn.json %SrcPath%\pcub_mod\assets\pcub\lang\zh_cn.json


mklink %ResPath%\pcub_fcub\lang\zh_hk.json %SrcPath%\fcub\assets\pcub\lang\zh_hk.json
mklink %ResPath%\lang_adv\lang\zh_hk.json %SrcPath%\sins\assets\lang_adv\lang\zh_hk.json
mklink %ResPath%\lang_chat_npc\lang\zh_hk.json %SrcPath%\panling\assets\lang_chat_npc\lang\zh_hk.json
mklink %ResPath%\lang_chest_menu\lang\zh_hk.json %SrcPath%\panling\assets\lang_chest_menu\lang\zh_hk.json
mklink %ResPath%\lang_dark\lang\zh_hk.json %SrcPath%\sins\assets\lang_dark\lang\zh_hk.json
mklink %ResPath%\lang_dlc\lang\zh_hk.json %SrcPath%\sins\assets\lang_dlc\lang\zh_hk.json
mklink %ResPath%\lang_equipment\lang\zh_hk.json %SrcPath%\panling\assets\lang_equipment\lang\zh_hk.json
mklink %ResPath%\lang_instances\lang\zh_hk.json %SrcPath%\panling\assets\lang_instances\lang\zh_hk.json
mklink %ResPath%\lang_misson\lang\zh_hk.json %SrcPath%\panling\assets\lang_misson\lang\zh_hk.json
mklink %ResPath%\lang_pvpevent\lang\zh_hk.json %SrcPath%\panling\assets\lang_pvpevent\lang\zh_hk.json
mklink %ResPath%\lang_signs\lang\zh_hk.json %SrcPath%\panling\assets\lang_signs\lang\zh_hk.json
mklink %ResPath%\lang_special_egg\lang\zh_hk.json %SrcPath%\panling\assets\lang_special_egg\lang\zh_hk.json
mklink %ResPath%\lang_truth\lang\zh_hk.json %SrcPath%\panling\assets\lang_truth\lang\zh_hk.json
mklink %ResPath%\lang_weapons\lang\zh_hk.json %SrcPath%\sins\assets\lang_weapons\lang\zh_hk.json
mklink %ResPath%\minecraft\lang\zh_hk.json %SrcPath%\panling\assets\minecraft\lang\zh_hk.json
mklink %ResPath%\panling\lang\zh_hk.json %SrcPath%\panling\assets\panling\lang\zh_hk.json
mklink %ResPath%\pcub\lang\zh_hk.json %SrcPath%\pcub_mod\assets\pcub\lang\zh_hk.json


mklink %ResPath%\pcub_fcub\lang\zh_tw.json %SrcPath%\fcub\assets\pcub\lang\zh_tw.json
mklink %ResPath%\lang_adv\lang\zh_tw.json %SrcPath%\sins\assets\lang_adv\lang\zh_tw.json
mklink %ResPath%\lang_chat_npc\lang\zh_tw.json %SrcPath%\panling\assets\lang_chat_npc\lang\zh_tw.json
mklink %ResPath%\lang_chest_menu\lang\zh_tw.json %SrcPath%\panling\assets\lang_chest_menu\lang\zh_tw.json
mklink %ResPath%\lang_dark\lang\zh_tw.json %SrcPath%\sins\assets\lang_dark\lang\zh_tw.json
mklink %ResPath%\lang_dlc\lang\zh_tw.json %SrcPath%\sins\assets\lang_dlc\lang\zh_tw.json
mklink %ResPath%\lang_equipment\lang\zh_tw.json %SrcPath%\panling\assets\lang_equipment\lang\zh_tw.json
mklink %ResPath%\lang_instances\lang\zh_tw.json %SrcPath%\panling\assets\lang_instances\lang\zh_tw.json
mklink %ResPath%\lang_misson\lang\zh_tw.json %SrcPath%\panling\assets\lang_misson\lang\zh_tw.json
mklink %ResPath%\lang_pvpevent\lang\zh_tw.json %SrcPath%\panling\assets\lang_pvpevent\lang\zh_tw.json
mklink %ResPath%\lang_signs\lang\zh_tw.json %SrcPath%\panling\assets\lang_signs\lang\zh_tw.json
mklink %ResPath%\lang_special_egg\lang\zh_tw.json %SrcPath%\panling\assets\lang_special_egg\lang\zh_tw.json
mklink %ResPath%\lang_truth\lang\zh_tw.json %SrcPath%\panling\assets\lang_truth\lang\zh_tw.json
mklink %ResPath%\lang_weapons\lang\zh_tw.json %SrcPath%\sins\assets\lang_weapons\lang\zh_tw.json
mklink %ResPath%\minecraft\lang\zh_tw.json %SrcPath%\panling\assets\minecraft\lang\zh_tw.json
mklink %ResPath%\panling\lang\zh_tw.json %SrcPath%\panling\assets\panling\lang\zh_tw.json
mklink %ResPath%\pcub\lang\zh_tw.json %SrcPath%\pcub_mod\assets\pcub\lang\zh_tw.json


mklink %ResPath%\pcub_fcub\lang\en_us.json %SrcPath%\fcub\assets\pcub\lang\en_us.json
mklink %ResPath%\pcub\lang\en_us.json %SrcPath%\pcub_mod\assets\pcub\lang\en_us.json


pause