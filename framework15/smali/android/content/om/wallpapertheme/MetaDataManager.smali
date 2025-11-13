.class public Landroid/content/om/wallpapertheme/MetaDataManager;
.super Ljava/lang/Object;
.source "MetaDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;,
        Landroid/content/om/wallpapertheme/MetaDataManager$Package;,
        Landroid/content/om/wallpapertheme/MetaDataManager$Uid;
    }
.end annotation


# static fields
.field public static final blacklist UID_TYPE_BOOL:I = 0x3

.field public static final blacklist UID_TYPE_COLOR:I = 0x1

.field public static final blacklist UID_TYPE_INTEGER:I = 0x2

.field public static final blacklist UID_TYPE_NONE:I = 0x0

.field public static final blacklist UID_TYPE_TEXT:I = 0x4


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field private blacklist mPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/om/wallpapertheme/MetaDataManager$Package;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRpUidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/om/wallpapertheme/MetaDataManager$Uid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPackageList(Landroid/content/om/wallpapertheme/MetaDataManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/content/om/wallpapertheme/MetaDataManager;->mPackageList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRpUidMap(Landroid/content/om/wallpapertheme/MetaDataManager;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Landroid/content/om/wallpapertheme/MetaDataManager;->mRpUidMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SWT_MetaDataManager"

    iput-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager;->mPackageList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager;->mUidMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager;->mRpUidMap:Ljava/util/HashMap;

    return-void
.end method

.method private blacklist clearMetadataInfo()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager;->mPackageList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager;->mUidMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager;->mRpUidMap:Ljava/util/HashMap;

    return-void
.end method

.method private blacklist removePackageList(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "SWT_MetaDataManager"

    const-string/jumbo v1, "null packageName"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    invoke-virtual {v1}, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private blacklist removeUidMap(Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Landroid/content/om/wallpapertheme/MetaDataManager;->mUidMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, p0, Landroid/content/om/wallpapertheme/MetaDataManager;->mUidMap:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;)V
    .locals 6

    const-string v0, "- METADATA -"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " [PKG : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->-$$Nest$fgetmUidList(Landroid/content/om/wallpapertheme/MetaDataManager$Package;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  -UID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->-$$Nest$fgetmUidValue(Landroid/content/om/wallpapertheme/MetaDataManager$Uid;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", REF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->-$$Nest$fgetmValueRef(Landroid/content/om/wallpapertheme/MetaDataManager$Uid;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", OPA:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->-$$Nest$fgetmOpacity(Landroid/content/om/wallpapertheme/MetaDataManager$Uid;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", TYP:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->-$$Nest$fgetmType(Landroid/content/om/wallpapertheme/MetaDataManager$Uid;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    res : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->-$$Nest$fgetmDestAttribName(Landroid/content/om/wallpapertheme/MetaDataManager$Uid;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public blacklist getPackageList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/om/wallpapertheme/MetaDataManager$Package;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager;->mPackageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getRefUid(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager;->mUidMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager;->mUidMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->getReference()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    return-object v2

    :cond_2
    return-object v1
.end method

.method public blacklist loadStaticMetadata(Landroid/content/Context;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/content/om/wallpapertheme/MetaDataManager;->clearMetadataInfo()V

    new-instance v0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1170071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;-><init>(Landroid/content/om/wallpapertheme/MetaDataManager;Landroid/content/res/XmlResourceParser;)V

    sget-object v0, Landroid/content/om/WallpaperThemeConstants;->RES_METADATA_LIST:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const-string v3, "SWT_MetaDataManager"

    if-ge v2, v1, :cond_0

    aget v4, v0, v2

    :try_start_0
    new-instance v5, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;-><init>(Landroid/content/om/wallpapertheme/MetaDataManager;Landroid/content/res/XmlResourceParser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "load static metadatas error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    invoke-virtual {v1}, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->getUidList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;

    iget-object v5, p0, Landroid/content/om/wallpapertheme/MetaDataManager;->mUidMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->getUidValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_1
    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "load static metadatas, uidMap size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/om/wallpapertheme/MetaDataManager;->mUidMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist update(Landroid/content/pm/ApplicationInfo;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v0, "theming-meta"

    const-string v3, "SWT_MetaDataManager"

    :try_start_0
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v4}, Landroid/content/om/wallpapertheme/MetaDataManager;->removePackageList(Ljava/lang/String;)V

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-static/range {p1 .. p1}, Landroid/content/om/WallpaperThemeUtils;->getPackageResources(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "] replaced by "

    const-string/jumbo v10, "metadata rpUID ["

    const-string v11, "It doesn\'t include any UID in res/xml : "

    if-eqz v8, :cond_5

    :try_start_1
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    const-string v0, ",\\s*"

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v12, v0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v12, :cond_4

    aget-object v14, v0, v13

    const-string/jumbo v15, "xml"

    invoke-virtual {v6, v14, v15, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    move v7, v15

    if-lez v7, :cond_3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v15

    move-object/from16 v16, v0

    new-instance v0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;

    invoke-direct {v0, v1, v15}, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;-><init>(Landroid/content/om/wallpapertheme/MetaDataManager;Landroid/content/res/XmlResourceParser;)V

    invoke-virtual {v0}, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->getRpUID()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v17

    move/from16 v17, v7

    move-object/from16 v7, v18

    invoke-direct {v1, v7}, Landroid/content/om/wallpapertheme/MetaDataManager;->removeUidMap(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->getCurrentPackage()Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    move-result-object v18

    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->getUidList()Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_2

    invoke-virtual/range {v18 .. v18}, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->getUidList()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;

    move-object/from16 v21, v20

    move-object/from16 v20, v0

    iget-object v0, v1, Landroid/content/om/wallpapertheme/MetaDataManager;->mUidMap:Ljava/util/HashMap;

    move-object/from16 v22, v8

    invoke-virtual/range {v21 .. v21}, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->getUidValue()Ljava/lang/String;

    move-result-object v8

    move/from16 v23, v12

    move-object/from16 v12, v21

    invoke-virtual {v0, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v20

    move-object/from16 v8, v22

    move/from16 v12, v23

    goto :goto_1

    :cond_1
    move-object/from16 v20, v0

    move-object/from16 v22, v8

    move/from16 v23, v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object/from16 v20, v0

    move-object/from16 v22, v8

    move/from16 v23, v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    goto :goto_3

    :cond_3
    move-object/from16 v16, v0

    move/from16 v17, v7

    move-object/from16 v22, v8

    move/from16 v23, v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "metadata file not found in res/xml : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v16

    move/from16 v7, v17

    move-object/from16 v8, v22

    move/from16 v12, v23

    goto/16 :goto_0

    :cond_4
    move-object/from16 v16, v0

    move-object/from16 v22, v8

    goto/16 :goto_5

    :cond_5
    move-object/from16 v22, v8

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    new-instance v8, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;

    invoke-direct {v8, v1, v7}, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;-><init>(Landroid/content/om/wallpapertheme/MetaDataManager;Landroid/content/res/XmlResourceParser;)V

    invoke-virtual {v8}, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->getRpUID()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Landroid/content/om/wallpapertheme/MetaDataManager;->removeUidMap(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->getCurrentPackage()Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    move-result-object v13

    if-eqz v13, :cond_7

    invoke-virtual {v13}, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->getUidList()Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_7

    invoke-virtual {v13}, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->getUidList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;

    iget-object v15, v1, Landroid/content/om/wallpapertheme/MetaDataManager;->mUidMap:Ljava/util/HashMap;

    move/from16 v16, v0

    invoke-virtual {v14}, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->getUidValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v0, v16

    goto :goto_4

    :cond_6
    move/from16 v16, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    move/from16 v16, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :cond_8
    move/from16 v16, v0

    :goto_5
    goto :goto_6

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " metadata update error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-void
.end method
