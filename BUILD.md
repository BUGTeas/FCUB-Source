# 构建说明（幻域无界专用数据包+插件+资源包+互通套件）

## 构建插件

进入 Plugin 目录，新建 libs 文件夹，放入任意 MultiLogin v0.6.11 插件，使用 gradlew build 构建，成品插件路径为 build/libs/FCUB.jar



## 打包数据包

将 `DataPack` 目录中的所有文件打包压缩，建议命名为 `fcub.zip`



## 生成语言文件

如果需要对游戏内的本地化文本进行修改，或者使用某一特定版本的外部 DLC（附带资源包的），您可能需要重新生成一份语言文件。否则可能会因为与数据包版本不符，导致文本内容显示不正确。

在互通服务端中，原先由 JE 资源包加载的本地化文本都需要合并为单个 JSON 后由 Geyser 加载。但 UI 界面是个例外，由客户端资源包进行加载。

**环境要求:** Node.js、Git

1. 进入 `LangFile` 目录
3. 准备 `罪如歌材质包`，将其中 `assets` 文件夹放到 `resources/sins` 目录下
2. 准备 `panling1.20-资源包-1.1.0b.zip`，将其中 `assets` 文件夹解压到 `resources/panling` 目录下
4. 准备幻域魔改版本的万通，将其资源包（非幻域成品包）中的 `assets` 文件夹解压到 `resources/xsj` 目录下
5. 安装依赖项：
   - (必要) 语言文件生成工具，可通过下方任一方式安装：
     - Gitee：`npm install git+https://gitee.com/BugTeaON/pcub-locale#v2`
     - GitHub：`npm install git+https://github.com/BUGTeas/pcub-locale#v2`
   - (可选) 繁体转换器，否则输出的繁体语言文件（`zh_tw` 及 `zh_hk`）都将是简体内容：
     - `npm install git+https://github.com/BYVoid/OpenCC`
6. 执行命令 `node index.js` 开始生成
7. 在 `output/fcub` 目录下会出现以下文件夹：
   - overrides：**重要!** 包含了 Geyser 自定义语言文件，“.json”格式，需要与 Geyser 原有文件进行合并，否则部分内容显示乱码！合并步骤见“配置文件合并”
   - texts：由基岩客户端资源包加载，“.lang”格式，通常用于显示 UI 内容
   - assets：为 Java 版客户端资源包语言文件，“.json”格式，用于整合各 DLC 资源包，确保其加载顺序，并提供繁体支持



## 打包基岩端资源包

将生成的 `LangFile/fcub/texts` 文件夹合并到 `ResourcePack/texts`，然后将 `ResourcePack` 目录中的所有文件打包压缩，改后缀为 `.mcpack` 即可直接导入到基岩版客户端中测试。

将许可证文件 `LICENSE` 放入，即可作为成品资源包。如需在服务端加载，将其放入 `plugins/Geyser-Spigot/packs` 目录下即可。在官方版本中，它被命名为 `FCUBPack.zip`。



## 打包 Java 端资源包

1. 将生成的 `LangFile/fcub-java/assets` 文件夹合并到 `ResourcePackJava/assets`
2. 将 `.gitignore` 文件中 “来自盘灵古域资源包综合优化补丁” 下所提及的文件，在**盘灵资源包综合优化补丁**中找到，并放入对应位置
3. 将 `ResourcePackJava` 放入客户端资源包文件夹中即可加载以测试

将其中的所有文件打包压缩，并将许可证文件 `LICENSE` 放入，即可作为成品资源包。



## 配置文件

**注意**：本仓库只包括和专用插件 / 数据包紧密关联的配置文件，其余位于另有的配置文件仓库。

在源码文件夹中还包含有已经调整好的一些插件配置文件，它们都在 `Config` 目录下，且相对于标准服务端目录结构存放：
```
server-root
├─plugins
│   └─Geyser-Spigot (Geyser 配置文件目录)
│       └─custom_mappings (将部分物品/方块映射为Addon类型而非原版，从而在基岩版客户端中自定义模型、纹理)
│               fcub.json (幻域所需的映射内容)
└─fcub_merge (由专用启动脚本将其中的内容自动合并到特定文件中)
    └─plugins
      ├─CrossplatForms (CrossPlatForm 配置文件目录)
      │      bedrock-forms.yml  (新增或覆盖基岩版 Forms 界面)
      │      config.yml         (增加一些自定义命令)
      │
      └─Geyser-Spigot (Geyser 配置文件目录)
          └─locales/overrides   (需要合并到 Geyser 自定义本地化的 Java 版语言文件)
                  *.json  (请手动将“LangFile/output/fcub/overrides”目录下的文件放入此处)
```
您只需要将 `server-root` 目录中的结构，合并到现有服务端中即可。