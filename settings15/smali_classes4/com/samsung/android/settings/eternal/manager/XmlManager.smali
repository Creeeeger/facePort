.class public final Lcom/samsung/android/settings/eternal/manager/XmlManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/eternal/manager/RepositoryManager;


# instance fields
.field public mBaseDTDVersion:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public mEnableDefaultValueSkipPolicy:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/eternal/manager/XmlManager;->mEnableDefaultValueSkipPolicy:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/manager/XmlManager;->mBaseDTDVersion:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/manager/XmlManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static buildBackupDataSetElement(Ljava/util/HashMap;Ljava/util/HashMap;Lorg/w3c/dom/Document;)V
    .locals 13

    const-string v0, "BackupDataSet"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "DeviceConfiguration"

    invoke-static {v1, p2}, Lcom/samsung/android/settings/eternal/manager/XmlManager;->searchNode(Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/lib/episode/SourceInfo;

    if-eqz v1, :cond_1

    const-string v3, "BackupData"

    invoke-interface {p2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/lib/episode/Scene;

    iget-object v5, v4, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    iget-object v6, v4, Lcom/samsung/android/lib/episode/Scene;->mSceneValue:Landroid/os/Bundle;

    const-string v7, "Eternal/XmlManager"

    if-nez v6, :cond_3

    const-string v4, "buildBackupDataElement() keyBundle is null - key : "

    invoke-static {v4, v5, v7}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "value"

    if-nez v11, :cond_6

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v10, "buildBackupDataElement() value is null - key : "

    invoke-static {v10, v5, v7}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "buildBackupDataElement() attribute value is null - key : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " / attribute : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    invoke-static {v3, v5}, Lcom/samsung/android/settings/eternal/manager/XmlManager;->getOrCreateNode(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v10

    invoke-interface {v10, v11}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2

    :cond_7
    move-object v12, v9

    check-cast v12, Lorg/w3c/dom/Element;

    invoke-interface {v12, v10, v11}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    if-eqz v9, :cond_2

    invoke-virtual {v4}, Lcom/samsung/android/lib/episode/Scene;->isDefault()Z

    move-result v5

    if-eqz v5, :cond_2

    check-cast v9, Lorg/w3c/dom/Element;

    iget-byte v4, v4, Lcom/samsung/android/lib/episode/Scene;->mDefaultType:B

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "defaultValue"

    invoke-interface {v9, v5, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/samsung/android/lib/episode/SourceInfo;->mVersion:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    move-object v3, v1

    check-cast v3, Lorg/w3c/dom/Element;

    iget-object v4, v2, Lcom/samsung/android/lib/episode/SourceInfo;->mVersion:Ljava/lang/String;

    const-string/jumbo v5, "version"

    invoke-interface {v3, v5, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-object v3, v2, Lcom/samsung/android/lib/episode/SourceInfo;->mDTDVersion:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    check-cast v1, Lorg/w3c/dom/Element;

    iget-object v2, v2, Lcom/samsung/android/lib/episode/SourceInfo;->mDTDVersion:Ljava/lang/String;

    const-string v3, "dtd_version"

    invoke-interface {v1, v3, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public static buildGeneralInfo(Lcom/samsung/android/settings/eternal/data/EpisodeHolder;Lorg/w3c/dom/Document;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mGeneralInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    const-string p0, "Eternal/XmlManager"

    const-string p1, "buildGeneralInfo sceneList is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "DeviceConfiguration"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mGeneralInfoList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/lib/episode/Scene;

    iget-object v2, v1, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/eternal/manager/XmlManager;->getOrCreateNode(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/lib/episode/Scene;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getOrCreateNode(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 3

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "/"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/samsung/android/settings/eternal/manager/XmlManager;->searchFromChildNode(Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object p0, v1

    goto :goto_0

    :cond_0
    move-object p0, v2

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static getUidOfBackupDataNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 4

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public static parseDTDItems(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 9

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-interface {v3}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "/"

    invoke-static {p1, v4}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p2}, Lcom/samsung/android/settings/eternal/manager/XmlManager;->parseDTDItems(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_3

    :cond_0
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "\n"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_1
    new-instance v4, Lcom/samsung/android/settings/eternal/validate/BackupDataType;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lcom/samsung/android/settings/eternal/validate/BackupDataType;->mKeyValue:Ljava/util/HashMap;

    const-string/jumbo v6, "value"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    move v5, v1

    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-interface {v3, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string v7, "defaultValue"

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    iget-object v8, v4, Lcom/samsung/android/settings/eternal/validate/BackupDataType;->mKeyValue:Ljava/util/HashMap;

    invoke-virtual {v8, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p2, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public static searchFromChildNode(Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static searchNode(Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "/"

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/eternal/manager/XmlManager;->searchFromChildNode(Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public final createEpisodeHolder(Lcom/samsung/android/settings/eternal/data/RestoreInfo;Ljava/util/HashMap;)Lcom/samsung/android/settings/eternal/data/EpisodeHolder;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "Eternal/XmlManager"

    const-string v0, "createEpisodeHolder()"

    invoke-static {v6, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, Lcom/samsung/android/settings/eternal/data/RestoreInfo;->mRestoreFile:Ljava/io/File;

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    move-object v1, v7

    goto/16 :goto_19

    :cond_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    :try_start_0
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "parseXml failed : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    :goto_0
    if-nez v0, :cond_2

    goto/16 :goto_1a

    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    const-string v9, "/GeneralInfo/InitialOsVersion"

    invoke-static {v9, v8}, Lcom/samsung/android/settings/eternal/manager/XmlManager;->searchNode(Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    iput-boolean v4, v1, Lcom/samsung/android/settings/eternal/manager/XmlManager;->mEnableDefaultValueSkipPolicy:Z

    goto :goto_2

    :cond_3
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x1c

    if-lt v8, v9, :cond_4

    move v8, v5

    goto :goto_1

    :cond_4
    move v8, v4

    :goto_1
    iput-boolean v8, v1, Lcom/samsung/android/settings/eternal/manager/XmlManager;->mEnableDefaultValueSkipPolicy:Z

    :cond_5
    :goto_2
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    const-string v9, "BackupDataSet"

    invoke-static {v9, v8}, Lcom/samsung/android/settings/eternal/manager/XmlManager;->searchNode(Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    if-nez v8, :cond_6

    goto/16 :goto_1a

    :cond_6
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;

    invoke-direct {v9}, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;-><init>()V

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    new-instance v10, Ljava/util/ArrayList;

    sget-object v11, Lcom/samsung/android/settings/eternal/manager/KeyListManager;->GENERAL_KEY_LIST:[Ljava/lang/String;

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0, v10}, Lcom/samsung/android/settings/eternal/manager/XmlManager;->parseBackupDataNode(Lorg/w3c/dom/Node;Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_7

    iget-object v0, v9, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mGeneralInfoList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v9, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mGeneralInfoList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7
    if-nez v10, :cond_8

    const-string v0, "getManufacturer() - -1"

    invoke-static {v6, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, -0x1

    goto :goto_4

    :cond_8
    move-object v0, v10

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/lib/episode/Scene;

    iget-object v12, v11, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    const-string v13, "/GeneralInfo/BuildNum"

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v11, v7, v4}, Lcom/samsung/android/lib/episode/Scene;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_a
    move-object v0, v7

    :goto_3
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v11, Ljava/lang/StringBuffer;

    sget-object v12, Lcom/samsung/android/settings/eternal/constant/EternalConstants;->PREFIX_LO:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "getManufacturer() - 1"

    invoke-static {v6, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v5

    goto :goto_4

    :cond_b
    const-string v0, "getManufacturer() - 0"

    invoke-static {v6, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v4

    :goto_4
    sget-object v0, Lcom/samsung/android/settings/eternal/policy/PolicyManager$LazyHolder;->sInstance:Lcom/samsung/android/settings/eternal/policy/PolicyManager;

    iget-object v0, v0, Lcom/samsung/android/settings/eternal/policy/PolicyManager;->mRestorePolicy:Lcom/samsung/android/settings/eternal/policy/RestorePolicy;

    if-ne v11, v5, :cond_c

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/samsung/android/settings/eternal/policy/RestorePolicy;->mRestoreRestrictionItems:Ljava/util/List;

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v0, Lcom/samsung/android/settings/eternal/policy/RestorePolicy;->RESTORE_ALLOW_LIST_FOR_IOS:Ljava/util/List;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_5

    :cond_c
    iget-object v12, v0, Lcom/samsung/android/settings/eternal/policy/RestorePolicy;->mRestoreRestrictionItems:Ljava/util/List;

    :goto_5
    iget-object v0, v2, Lcom/samsung/android/settings/eternal/data/RestoreInfo;->mRestoreSkipList:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v13, "getRestoreRestrictedKeys() manufacturer : "

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " / "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "Eternal/PolicyManager"

    invoke-static {v13, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_6

    :cond_d
    move v12, v4

    :goto_7
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v12, v0, :cond_1e

    invoke-interface {v8, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    if-eq v13, v5, :cond_e

    move v3, v5

    move-object v1, v7

    move-object/from16 v16, v8

    move/from16 v17, v12

    move v8, v4

    goto/16 :goto_18

    :cond_e
    invoke-static {v0}, Lcom/samsung/android/settings/eternal/manager/XmlManager;->getUidOfBackupDataNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v14, p2

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    invoke-virtual {v1, v0, v15}, Lcom/samsung/android/settings/eternal/manager/XmlManager;->parseBackupDataNode(Lorg/w3c/dom/Node;Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    const-string/jumbo v3, "parseXml() - ["

    if-eqz v15, :cond_1c

    invoke-static {v13, v0}, Lcom/samsung/android/settings/eternal/manager/XmlManager;->searchFromChildNode(Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    move-object/from16 v16, v8

    const/4 v5, 0x0

    :goto_8
    invoke-interface {v7}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v8

    const-string/jumbo v14, "version"

    move/from16 v17, v12

    const-string v12, "dtd_version"

    if-ge v5, v8, :cond_14

    invoke-interface {v7, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    if-nez v8, :cond_10

    move-object/from16 v18, v7

    :cond_f
    :goto_9
    const/4 v7, 0x1

    goto :goto_e

    :cond_10
    move-object/from16 v18, v7

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v19, ""

    if-eqz v7, :cond_12

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_11

    :goto_a
    move-object/from16 v7, v19

    goto :goto_b

    :cond_11
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    goto :goto_a

    :goto_b
    invoke-virtual {v4, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_12
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_13

    :goto_c
    move-object/from16 v7, v19

    goto :goto_d

    :cond_13
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    goto :goto_c

    :goto_d
    invoke-virtual {v4, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :goto_e
    add-int/2addr v5, v7

    move-object/from16 v14, p2

    move/from16 v12, v17

    move-object/from16 v7, v18

    goto :goto_8

    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] DTDVersion = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " / providerVersion = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v13, v0}, Lcom/samsung/android/settings/eternal/manager/XmlManager;->parseNode(Ljava/lang/String;Lorg/w3c/dom/Node;)Lcom/samsung/android/lib/episode/Scene;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/lib/episode/SourceInfo;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const/4 v7, 0x0

    iput-object v7, v5, Lcom/samsung/android/lib/episode/SourceInfo;->mDeviceType:Ljava/lang/String;

    iput-object v7, v5, Lcom/samsung/android/lib/episode/SourceInfo;->mVersion:Ljava/lang/String;

    iput-object v7, v5, Lcom/samsung/android/lib/episode/SourceInfo;->mDTDVersion:Ljava/lang/String;

    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/samsung/android/lib/episode/SourceInfo;->mRestoreViaFastTrack:Z

    const/4 v8, -0x1

    iput v8, v5, Lcom/samsung/android/lib/episode/SourceInfo;->mRequestFrom:I

    iput-object v7, v5, Lcom/samsung/android/lib/episode/SourceInfo;->mPackageList:Ljava/util/ArrayList;

    iput v8, v5, Lcom/samsung/android/lib/episode/SourceInfo;->mManufacturer:I

    if-eqz v10, :cond_1a

    move-object v0, v10

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/lib/episode/Scene;

    iget-object v8, v0, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    :goto_10
    const/4 v1, -0x1

    goto :goto_11

    :sswitch_0
    const-string v1, "/GeneralInfo/PackageList"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_10

    :cond_15
    const/4 v1, 0x3

    goto :goto_11

    :sswitch_1
    const-string v1, "/GeneralInfo/OSVersion"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_10

    :cond_16
    const/4 v1, 0x2

    goto :goto_11

    :sswitch_2
    const-string v1, "/GeneralInfo/DeviceType"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_10

    :cond_17
    const/4 v1, 0x1

    goto :goto_11

    :sswitch_3
    const-string v1, "/GeneralInfo/OneUIVersion"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_10

    :cond_18
    const/4 v1, 0x0

    :goto_11
    packed-switch v1, :pswitch_data_0

    goto :goto_12

    :pswitch_0
    const/4 v1, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Lcom/samsung/android/lib/episode/Scene;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/lib/episode/EpisodeUtils;->decompressString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/lib/episode/EpisodeUtils;->convertStringToArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v5, Lcom/samsung/android/lib/episode/SourceInfo;->mPackageList:Ljava/util/ArrayList;

    :goto_12
    move-object/from16 v1, p0

    const/4 v8, -0x1

    goto :goto_f

    :pswitch_1
    iget-object v1, v0, Lcom/samsung/android/lib/episode/Scene;->mSceneValue:Landroid/os/Bundle;

    if-eqz v1, :cond_19

    const-string/jumbo v8, "value"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v0, v0, Lcom/samsung/android/lib/episode/Scene;->mSceneValue:Landroid/os/Bundle;

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v8, 0x0

    goto :goto_15

    :catch_1
    move-exception v0

    goto :goto_13

    :cond_19
    const/4 v8, 0x0

    goto :goto_14

    :goto_13
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v8, 0x0

    aget-object v0, v0, v8

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Eternal/Scene"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    const/4 v0, -0x1

    :goto_15
    iput v0, v5, Lcom/samsung/android/lib/episode/SourceInfo;->mOSVersion:I

    goto :goto_12

    :pswitch_2
    const/4 v1, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Lcom/samsung/android/lib/episode/Scene;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/samsung/android/lib/episode/SourceInfo;->mDeviceType:Ljava/lang/String;

    goto :goto_12

    :pswitch_3
    const/4 v1, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Lcom/samsung/android/lib/episode/Scene;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/samsung/android/lib/episode/SourceInfo;->mOneUIVersion:Ljava/lang/String;

    goto :goto_12

    :cond_1a
    const/4 v1, 0x0

    const/4 v8, 0x0

    if-eqz v4, :cond_1b

    invoke-virtual {v4, v14}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/samsung/android/lib/episode/SourceInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {v4, v12}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/samsung/android/lib/episode/SourceInfo;->mDTDVersion:Ljava/lang/String;

    :cond_1b
    iget v0, v2, Lcom/samsung/android/settings/eternal/data/RestoreInfo;->mRequestFrom:I

    iput v0, v5, Lcom/samsung/android/lib/episode/SourceInfo;->mRequestFrom:I

    iget-boolean v0, v2, Lcom/samsung/android/settings/eternal/data/RestoreInfo;->mIsFastTrack:Z

    iput-boolean v0, v5, Lcom/samsung/android/lib/episode/SourceInfo;->mRestoreViaFastTrack:Z

    iput v11, v5, Lcom/samsung/android/lib/episode/SourceInfo;->mManufacturer:I

    iget-object v0, v9, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mSourceInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_1c
    move-object v1, v7

    move-object/from16 v16, v8

    move/from16 v17, v12

    move v8, v4

    :goto_16
    const-string v0, "] parsedSceneList size = "

    invoke-static {v3, v13, v0}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v15, :cond_1d

    move v3, v8

    goto :goto_17

    :cond_1d
    move-object v3, v15

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v13, v15}, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->putBackupSceneList(Ljava/lang/String;Ljava/util/List;)V

    const/4 v3, 0x1

    :goto_18
    add-int/lit8 v12, v17, 0x1

    move-object v7, v1

    move v5, v3

    move v4, v8

    move-object/from16 v8, v16

    move-object/from16 v1, p0

    goto/16 :goto_7

    :cond_1e
    move-object v7, v9

    goto :goto_1a

    :goto_19
    move-object v7, v1

    :goto_1a
    return-object v7

    :sswitch_data_0
    .sparse-switch
        -0x493768da -> :sswitch_3
        -0x245d3828 -> :sswitch_2
        0x1257dc4c -> :sswitch_1
        0x2b6f29dc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getRemoteContextByPkgName(Ljava/lang/String;)Landroid/content/Context;
    .locals 4

    const-string v0, "getRemoteContextByPkgName() Get Context from pkg: "

    const-string v1, "Eternal/XmlManager"

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/eternal/manager/XmlManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    goto :goto_0

    :catch_0
    const-string p0, "getRemoteContextByPkgName() Fatal case : No PKG with pkgName  - "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "Fatal case : No pkgName - "

    invoke-static {p0, p1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v2
.end method

.method public final parseBackupDataNode(Lorg/w3c/dom/Node;Ljava/util/List;)Ljava/util/List;
    .locals 4

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

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

    invoke-static {v1, p1}, Lcom/samsung/android/settings/eternal/manager/XmlManager;->searchNode(Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/eternal/manager/XmlManager;->parseNode(Ljava/lang/String;Lorg/w3c/dom/Node;)Lcom/samsung/android/lib/episode/Scene;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const-string p0, "Eternal/XmlManager"

    const-string/jumbo p1, "parseBackupDataNode() backupDataHeadNode or keySetList is null"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final parseNode(Ljava/lang/String;Lorg/w3c/dom/Node;)Lcom/samsung/android/lib/episode/Scene;
    .locals 7

    new-instance v0, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    move v3, v2

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-interface {v1, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    const-string v5, "defaultValue"

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/settings/eternal/manager/XmlManager;->mEnableDefaultValueSkipPolicy:Z

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "convertDefaultType() - NumberFormatException "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Eternal/XmlManager"

    invoke-static {v6, v4}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    int-to-byte v4, v5

    iput-byte v4, v0, Lcom/samsung/android/lib/episode/Scene$Builder;->mDefaultType:B

    if-lez v5, :cond_3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v4, v0, Lcom/samsung/android/lib/episode/Scene$Builder;->mIsDefault:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-virtual {v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p0

    return-object p0
.end method
