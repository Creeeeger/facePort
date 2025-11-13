.class public Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;
.super Ljava/lang/Object;
.source "XmlManager.java"


# static fields
.field public static final DEFAULT_VALUE_BLOCK_LIST:[Ljava/lang/String;


# instance fields
.field private final BACKUP_DATA_SET:Ljava/lang/String;

.field private final SETTINGS_DEFAULT_FILE_FULL_PATH:Ljava/lang/String;

.field private final SETTINGS_DTD_FILE_NAME:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "/Settings/Connections/Location"

    const-string v1, "/Settings/Connections/LocationMethod"

    const-string v2, "/Settings/Connections/LocationWifiScan"

    const-string v3, "/Settings/Connections/LocationBluetoothScan"

    const-string v4, "/Settings/Connections/Nfc"

    const-string v5, "/Settings/Connections/WiFi/Advanced/SwitchToMobileData/Enabled"

    const-string v6, "/Settings/Connections/WiFi/Advanced/SwitchToMobileData/Aggressive"

    const-string v7, "/Settings/Display/NightMode"

    .line 64
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;->DEFAULT_VALUE_BLOCK_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Eternal/XmlManager"

    .line 59
    iput-object v0, p0, Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;->TAG:Ljava/lang/String;

    const-string v0, "BackupDataSet"

    .line 60
    iput-object v0, p0, Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;->BACKUP_DATA_SET:Ljava/lang/String;

    const-string v0, "SettingsBnRDTD_T_OS.xml"

    .line 61
    iput-object v0, p0, Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;->SETTINGS_DTD_FILE_NAME:Ljava/lang/String;

    const-string v0, "/efs/sec_efs/SettingsBackup.xml"

    .line 62
    iput-object v0, p0, Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;->SETTINGS_DEFAULT_FILE_FULL_PATH:Ljava/lang/String;

    return-void
.end method

.method private buildKeySetOfBackupData(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 228
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    .line 229
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 230
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 231
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 232
    invoke-interface {v1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, p3}, Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;->buildKeySetOfBackupData(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 235
    :cond_0
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 236
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "\\s"

    const-string v3, ""

    .line 238
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 239
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getUidOfBackupDataNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 3

    .line 277
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 280
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 281
    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 282
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 283
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method private parseBackupDataNode(Lorg/w3c/dom/Node;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/lib/episode/Scene;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 295
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 296
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 297
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;->searchNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 298
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 299
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;->parseNode(Ljava/lang/String;Lorg/w3c/dom/Node;)Lcom/samsung/android/lib/episode/Scene;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 301
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private parseNode(Ljava/lang/String;Lorg/w3c/dom/Node;)Lcom/samsung/android/lib/episode/Scene;
    .locals 3

    .line 309
    new-instance p0, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p0, p1}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-interface {p2}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 311
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    const/4 v0, 0x0

    .line 312
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 313
    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 317
    :cond_0
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_1
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 321
    invoke-virtual {p0}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p0

    return-object p0
.end method

.method private parseXml(Ljava/io/File;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/lib/episode/Scene;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 185
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 188
    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 192
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 193
    invoke-virtual {v1, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object p1
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 195
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    return-object v0

    .line 202
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    const-string v1, "BackupDataSet"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;->searchNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    const-string v1, "Eternal/XmlManager"

    if-nez p1, :cond_2

    const-string p0, "getKeyListMapOfDTD() backupDataSet is null"

    .line 204
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 207
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p0, "getKeyListMapOfDTD() backupDataSetList is null"

    .line 209
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 212
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 215
    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 216
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 217
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    goto :goto_2

    .line 220
    :cond_4
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;->getUidOfBackupDataNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    .line 221
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;->parseBackupDataNode(Lorg/w3c/dom/Node;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 222
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    return-object v0
.end method

.method private searchFromChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 4

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 248
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 250
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 252
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 253
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method private searchNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 2

    .line 262
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "/"

    invoke-direct {v0, p2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 265
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    .line 266
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;->searchFromChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public deleteOldDefaultXmlFile()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    new-instance p0, Ljava/io/File;

    const-string v0, "/efs/sec_efs/SettingsBackup.xml"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Eternal/XmlManager"

    const-string v1, "deleteOldDefaultXmlFile"

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getKeyListMapOfDTD(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "getKeyListMapOfDTD() "

    const-string v1, "Eternal/XmlManager"

    .line 126
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 127
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    const/4 v4, 0x0

    .line 131
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v5, "SettingsBnRDTD_T_OS.xml"

    invoke-virtual {p1, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v4

    :goto_0
    if-nez p1, :cond_0

    const-string p0, "getKeySetOfDTD() - doc is null"

    .line 144
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 148
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->normalize()V

    .line 149
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    const-string v0, "BackupDataSet"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;->searchNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "getKeyListMapOfDTD() backupDataSet is null"

    .line 151
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 155
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 156
    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 157
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 158
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;->getUidOfBackupDataNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    .line 159
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 162
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    .line 165
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 166
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, ""

    .line 167
    invoke-direct {p0, v3, v6, v5}, Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;->buildKeySetOfBackupData(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/util/List;)V

    .line 168
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 169
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const-string p0, "Settings"

    .line 174
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_6

    .line 176
    sget-object p1, Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;->DEFAULT_VALUE_BLOCK_LIST:[Ljava/lang/String;

    array-length p2, p1

    :goto_3
    if-ge v0, p2, :cond_6

    aget-object v1, p1, v0

    .line 177
    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    return-object v2

    :catch_1
    move-exception p0

    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public getSettingsDefaultValue(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/lib/episode/Scene;",
            ">;"
        }
    .end annotation

    const-string v0, "Settings"

    .line 85
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;->getKeyListMapOfDTD(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p0, "Eternal/XmlManager"

    const-string p1, "getSettingsDefaultValue dtdKeyMap is null"

    .line 87
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 90
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/sec_efs/SettingsBackup.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-direct {p0, v2, p1}, Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;->parseXml(Ljava/io/File;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/util/List;

    :goto_0
    return-object v1
.end method

.method public hasOldDefaultXmlFile()Z
    .locals 4

    .line 101
    new-instance p0, Ljava/io/File;

    const-string v0, "/efs/sec_efs/SettingsBackup.xml"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
