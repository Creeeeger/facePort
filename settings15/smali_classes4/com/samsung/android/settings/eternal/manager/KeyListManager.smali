.class public final Lcom/samsung/android/settings/eternal/manager/KeyListManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final GENERAL_KEY_LIST:[Ljava/lang/String;


# instance fields
.field public mDTDItemHashMap:Ljava/util/HashMap;

.field public mKeyListHashMap:Ljava/util/HashMap;

.field public final mSupplierInfoHashMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v6, "/GeneralInfo/OneUIVersion"

    const-string v7, "/GeneralInfo/PackageList"

    const-string v0, "/GeneralInfo/Version"

    const-string v1, "/GeneralInfo/BuildNum"

    const-string v2, "/GeneralInfo/CreatedTime"

    const-string v3, "/GeneralInfo/InitialOsVersion"

    const-string v4, "/GeneralInfo/DeviceType"

    const-string v5, "/GeneralInfo/OSVersion"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/eternal/manager/KeyListManager;->GENERAL_KEY_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/manager/KeyListManager;->mSupplierInfoHashMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final getDTDItemHashMap(Lcom/samsung/android/settings/eternal/manager/XmlManager;I)Ljava/util/HashMap;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    iget-object v0, v1, Lcom/samsung/android/settings/eternal/manager/KeyListManager;->mDTDItemHashMap:Ljava/util/HashMap;

    const/4 v5, 0x0

    if-nez v0, :cond_15

    iget-object v6, v1, Lcom/samsung/android/settings/eternal/manager/KeyListManager;->mSupplierInfoHashMap:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, ""

    const-string v8, "getDTDItemHashMap() - Get DTD Base ver. "

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v10

    const-string v11, "Settings"

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v12, "Eternal/XmlManager"

    if-nez v0, :cond_0

    const-string v0, "getDTDItemHashMap() - supplierInfo of BASE_DTD is null"

    invoke-static {v12, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v9, v5

    goto/16 :goto_12

    :cond_0
    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/eternal/data/SupplierInfo;

    iget-object v0, v0, Lcom/samsung/android/settings/eternal/data/SupplierInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/eternal/manager/XmlManager;->getRemoteContextByPkgName(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v13

    if-nez v13, :cond_1

    const-string v0, "getDTDItemHashMap() - Critical error: get SecSettings context is failed."

    invoke-static {v12, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "getBaseDTDVersion ["

    const-string v14, "content://com.samsung.android.settings.eternal"

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    :try_start_0
    iget-object v15, v2, Lcom/samsung/android/settings/eternal/manager/XmlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    invoke-virtual {v15, v14}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v15, :cond_2

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] contentProviderClient is null"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v4, v0

    goto :goto_3

    :cond_2
    const-string v0, "get_dtd_ver"

    sget-object v4, Lcom/samsung/android/lib/episode/EpisodeConstant;->DTD_VERSION:Ljava/lang/String;

    const-string v4, "2.0"

    invoke-virtual {v15, v0, v4, v5}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v4, "dtd_version"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v0

    goto :goto_2

    :cond_3
    :goto_1
    move-object v4, v7

    :goto_2
    if-eqz v15, :cond_5

    :try_start_2
    invoke-virtual {v15}, Landroid/content/ContentProviderClient;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :goto_3
    if-eqz v15, :cond_4

    :try_start_3
    invoke-virtual {v15}, Landroid/content/ContentProviderClient;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v15, v0

    :try_start_4
    invoke-virtual {v4, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v4, v7

    goto :goto_5

    :cond_4
    :goto_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v5, "getBaseDTDVersion() - ["

    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "getBaseDTDVersion() - "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v2, Lcom/samsung/android/settings/eternal/manager/XmlManager;->mBaseDTDVersion:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "getDTDItemHashMap() mBaseDTDVersion is empty"

    invoke-static {v12, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    const/4 v9, 0x0

    goto/16 :goto_12

    :cond_6
    :try_start_5
    invoke-virtual {v10}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    invoke-virtual {v13}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    sget-object v5, Lcom/samsung/android/settings/eternal/constant/EternalConstants;->SETTINGS_DTD_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5
    :try_end_6
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_3

    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v2, Lcom/samsung/android/settings/eternal/manager/XmlManager;->mBaseDTDVersion:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    :goto_8
    const/4 v5, 0x0

    goto :goto_9

    :catch_4
    move-exception v0

    const/4 v4, 0x0

    goto :goto_8

    :goto_9
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "getDTDItemHashMap() failed : "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    if-nez v5, :cond_7

    const-string v0, "getDTDItemHashMap() - doc is null"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_7
    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->normalize()V

    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v5, "BackupDataSet"

    invoke-static {v5, v0}, Lcom/samsung/android/settings/eternal/manager/XmlManager;->searchNode(Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_7

    :cond_8
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v10, 0x0

    :goto_b
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-ge v10, v13, :cond_b

    invoke-interface {v0, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/android/settings/eternal/manager/XmlManager;->getUidOfBackupDataNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_a

    :cond_9
    :goto_c
    const/4 v13, 0x1

    goto :goto_d

    :cond_a
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_9

    invoke-static {v13, v7, v15}, Lcom/samsung/android/settings/eternal/manager/XmlManager;->parseDTDItems(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v15}, Ljava/util/HashMap;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_9

    invoke-virtual {v9, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, "getDTDItemHashMap() - Base DTD put : "

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :goto_d
    add-int/2addr v10, v13

    goto :goto_b

    :cond_b
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_14

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    goto :goto_e

    :cond_c
    iget-object v14, v2, Lcom/samsung/android/settings/eternal/manager/XmlManager;->mBaseDTDVersion:Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/settings/eternal/data/SupplierInfo;

    iget-object v15, v15, Lcom/samsung/android/settings/eternal/data/SupplierInfo;->mDTDVersion:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const-string/jumbo v15, "updateKeySetFromAppSideDTD() - ["

    if-eqz v14, :cond_d

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "] skip equal"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_d
    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_e

    goto :goto_e

    :cond_e
    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/settings/eternal/data/SupplierInfo;

    iget-object v14, v14, Lcom/samsung/android/settings/eternal/data/SupplierInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v14}, Lcom/samsung/android/settings/eternal/manager/XmlManager;->getRemoteContextByPkgName(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v14

    if-nez v14, :cond_f

    goto :goto_e

    :cond_f
    :try_start_8
    invoke-virtual {v14}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    sget-object v8, Lcom/samsung/android/settings/eternal/constant/EternalConstants;->SETTINGS_DTD_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v14, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v8
    :try_end_8
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_f

    :catch_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "] DTD File not found"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_f
    if-nez v8, :cond_10

    goto :goto_e

    :cond_10
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Element;->normalize()V

    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/samsung/android/settings/eternal/manager/XmlManager;->searchNode(Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    if-nez v8, :cond_11

    goto/16 :goto_e

    :cond_11
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    const/4 v14, 0x0

    :goto_10
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-ge v14, v15, :cond_13

    invoke-interface {v8, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    move-object/from16 v17, v0

    invoke-static {v15}, Lcom/samsung/android/settings/eternal/manager/XmlManager;->getUidOfBackupDataNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_12

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v15, v7, v0}, Lcom/samsung/android/settings/eternal/manager/XmlManager;->parseDTDItems(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_12

    invoke-virtual {v9, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "updateKeySetFromAppSideDTD() ["

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "] DTD Ver. : "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/eternal/data/SupplierInfo;

    iget-object v8, v8, Lcom/samsung/android/settings/eternal/data/SupplierInfo;->mDTDVersion:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_12
    const/4 v15, 0x1

    add-int/2addr v14, v15

    move-object/from16 v0, v17

    goto :goto_10

    :cond_13
    move-object/from16 v17, v0

    :goto_11
    move-object/from16 v0, v17

    goto/16 :goto_e

    :cond_14
    :goto_12
    iput-object v9, v1, Lcom/samsung/android/settings/eternal/manager/KeyListManager;->mDTDItemHashMap:Ljava/util/HashMap;

    :cond_15
    iget-object v0, v1, Lcom/samsung/android/settings/eternal/manager/KeyListManager;->mSupplierInfoHashMap:Ljava/util/HashMap;

    if-nez v0, :cond_16

    goto/16 :goto_17

    :cond_16
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/eternal/data/SupplierInfo;

    iget-object v2, v2, Lcom/samsung/android/settings/eternal/data/SupplierInfo;->mUnSupportedSolution:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_18

    :goto_14
    const/4 v5, 0x1

    const/4 v13, 0x1

    goto :goto_16

    :cond_18
    if-eqz v3, :cond_1a

    const/4 v5, 0x2

    if-eq v3, v5, :cond_19

    const/4 v5, 0x0

    goto :goto_15

    :cond_19
    const-string v5, "SCloud"

    goto :goto_15

    :cond_1a
    const-string v5, "SmartSwitch"

    :goto_15
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1b

    goto :goto_14

    :cond_1b
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v5, 0x1

    xor-int/lit8 v13, v2, 0x1

    :goto_16
    if-nez v13, :cond_17

    iget-object v2, v1, Lcom/samsung/android/settings/eternal/manager/KeyListManager;->mDTDItemHashMap:Ljava/util/HashMap;

    if-eqz v2, :cond_17

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "removeUnSupportedItem("

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") - ["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Eternal/KeyListManager"

    invoke-static {v4, v2}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_1c
    :goto_17
    iget-object v0, v1, Lcom/samsung/android/settings/eternal/manager/KeyListManager;->mDTDItemHashMap:Ljava/util/HashMap;

    if-nez v0, :cond_1d

    const/4 v5, 0x0

    goto :goto_18

    :cond_1d
    new-instance v5, Ljava/util/HashMap;

    iget-object v0, v1, Lcom/samsung/android/settings/eternal/manager/KeyListManager;->mDTDItemHashMap:Ljava/util/HashMap;

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_18
    return-object v5
.end method

.method public final getKeyListHashMap(Lcom/samsung/android/settings/eternal/manager/XmlManager;I)Ljava/util/HashMap;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/manager/KeyListManager;->mDTDItemHashMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/eternal/manager/KeyListManager;->getDTDItemHashMap(Lcom/samsung/android/settings/eternal/manager/XmlManager;I)Ljava/util/HashMap;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/eternal/manager/KeyListManager;->mKeyListHashMap:Ljava/util/HashMap;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/eternal/manager/KeyListManager;->mDTDItemHashMap:Ljava/util/HashMap;

    if-eqz p1, :cond_2

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/manager/KeyListManager;->mKeyListHashMap:Ljava/util/HashMap;

    iget-object p1, p0, Lcom/samsung/android/settings/eternal/manager/KeyListManager;->mDTDItemHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/manager/KeyListManager;->mKeyListHashMap:Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/eternal/manager/KeyListManager;->mKeyListHashMap:Ljava/util/HashMap;

    if-nez p1, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/manager/KeyListManager;->mKeyListHashMap:Ljava/util/HashMap;

    invoke-direct {p1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p0, p1

    :goto_1
    return-object p0
.end method
