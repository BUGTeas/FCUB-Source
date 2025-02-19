chcp 65001
set packName="幻域无界 Java 版资源包 v.zip"
del %packName%
cd ResourcePackJava
"C:\Program Files\7-Zip\7z" a -tzip ..\%packName% *
cd ..
:end