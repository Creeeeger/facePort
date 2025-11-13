.class public final Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mJSONManager:Lcom/samsung/android/settings/eternal/defaultvalue/JSONManager;

.field public mSystemDefaultHashMap:Ljava/util/HashMap;

.field public mXmlManager:Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;


# virtual methods
.method public final migrationOldDefaultValue(Landroid/content/Context;)V
    .locals 16

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->mXmlManager:Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/io/File;

    const-string v2, "/efs/sec_efs/SettingsBackup.xml"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_10

    const-string v3, "DefaultValueManager"

    const-string/jumbo v0, "migrationOldDefaultValue"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;->getKeyListMapOfDTD(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "Eternal/XmlManager"

    if-nez v4, :cond_0

    const-string v0, "getSettingsDefaultValue dtdKeyMap is null"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v6, 0x0

    goto/16 :goto_a

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v2, "BackupDataSet"

    invoke-static {v2, v0}, Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;->searchNode(Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "getKeyListMapOfDTD() backupDataSet is null"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "getKeyListMapOfDTD() backupDataSetList is null"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x0

    :goto_3
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v7, v8, :cond_c

    invoke-interface {v0, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_5

    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_5
    invoke-static {v8}, Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;->getUidOfBackupDataNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    if-nez v10, :cond_6

    const/4 v6, 0x0

    const/4 v11, 0x0

    goto :goto_7

    :cond_6
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_7
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12, v8}, Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;->searchNode(Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v13

    if-eqz v13, :cond_a

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v14

    if-eqz v14, :cond_a

    new-instance v14, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {v14, v12}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-interface {v13}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v12

    const/4 v15, 0x0

    :goto_5
    invoke-interface {v12}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    if-ge v15, v6, :cond_9

    invoke-interface {v12, v15}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    if-nez v6, :cond_8

    goto :goto_6

    :cond_8
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_9
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v14, v5, v6}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-virtual {v14}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    const/4 v6, 0x0

    goto :goto_4

    :cond_b
    const/4 v6, 0x0

    :goto_7
    invoke-virtual {v2, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_c
    :goto_9
    if-nez v2, :cond_d

    goto/16 :goto_0

    :cond_d
    const-string v0, "Settings"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    :goto_a
    if-nez v6, :cond_e

    const-string/jumbo v0, "migrationOldDefaultValue sceneList is null"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    iget-object v0, v1, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->mJSONManager:Lcom/samsung/android/settings/eternal/defaultvalue/JSONManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/samsung/android/settings/eternal/defaultvalue/JSONManager;->updateDefaultJSONFile(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "success"

    goto :goto_b

    :cond_f
    const-string v0, "fail"

    :goto_b
    const-string/jumbo v1, "migrationOldDefaultValue() : "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    invoke-static {}, Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;->deleteOldDefaultXmlFile()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_c

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    :goto_c
    return-void
.end method
