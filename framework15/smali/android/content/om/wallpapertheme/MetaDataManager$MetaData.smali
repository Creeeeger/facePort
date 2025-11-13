.class public Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;
.super Ljava/lang/Object;
.source "MetaDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/om/wallpapertheme/MetaDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MetaData"
.end annotation


# static fields
.field private static final blacklist ATTR_DEFAULT_VALUE:Ljava/lang/String; = "DefaultValue"

.field private static final blacklist ATTR_DEST_ATTR_NAME:Ljava/lang/String; = "DestAttribName"

.field private static final blacklist ATTR_NAME:Ljava/lang/String; = "Name"

.field private static final blacklist ATTR_OPACITY:Ljava/lang/String; = "Opacity"

.field private static final blacklist ATTR_TARGET_PKG_NAME:Ljava/lang/String; = "TargetPackageName"

.field private static final blacklist ATTR_UID:Ljava/lang/String; = "UID"

.field private static final blacklist ATTR_VALUE_REF:Ljava/lang/String; = "ValueRef"

.field private static final blacklist ATTR_VALUE_TYPE:Ljava/lang/String; = "ValueType"

.field private static final blacklist TAG:Ljava/lang/String; = "SWT_MetaData"

.field private static final blacklist TAG_APP_METADATA:Ljava/lang/String; = "AppMetaData"

.field private static final blacklist TAG_INCLUDE:Ljava/lang/String; = "Include"

.field private static final blacklist TAG_PROPERTY:Ljava/lang/String; = "Property"


# instance fields
.field private blacklist mCurrentPackage:Landroid/content/om/wallpapertheme/MetaDataManager$Package;

.field private blacklist mRpUID:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/content/om/wallpapertheme/MetaDataManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/om/wallpapertheme/MetaDataManager;Landroid/content/res/XmlResourceParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->this$0:Landroid/content/om/wallpapertheme/MetaDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mCurrentPackage:Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    iput-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mRpUID:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string v0, "SWT_MetaData"

    const-string v1, "creating metadata is failed - xmlParser is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p2}, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_1
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private blacklist addSeslMetaData()V
    .locals 2

    iget-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mCurrentPackage:Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    invoke-virtual {v0}, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->getUidList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->this$0:Landroid/content/om/wallpapertheme/MetaDataManager;

    invoke-static {v1}, Landroid/content/om/wallpapertheme/MetaDataManager;->-$$Nest$fgetmPackageList(Landroid/content/om/wallpapertheme/MetaDataManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    invoke-virtual {v1}, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->getUidList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private blacklist addUID(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "UID"

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "ValueType"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v4, "DestAttribName"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v4, "DefaultValue"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v4, "ValueRef"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v4, "Opacity"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v15, "SWT_MetaData"

    if-nez v2, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parsing xml error, uid is empty. destAttributeName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v16, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;

    move-object/from16 v4, v16

    move-object v5, v2

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    move-object v9, v14

    move-object v10, v3

    invoke-direct/range {v4 .. v10}, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mCurrentPackage:Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    invoke-virtual {v5, v4}, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->addUid(Landroid/content/om/wallpapertheme/MetaDataManager$Uid;)V

    iget-object v5, v0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mCurrentPackage:Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    invoke-virtual {v5}, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mRpUID:Ljava/lang/String;

    if-nez v6, :cond_2

    const-string v6, "-"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v6, v7

    iput-object v7, v0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mRpUID:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->this$0:Landroid/content/om/wallpapertheme/MetaDataManager;

    invoke-static {v7}, Landroid/content/om/wallpapertheme/MetaDataManager;->-$$Nest$fgetmRpUidMap(Landroid/content/om/wallpapertheme/MetaDataManager;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, v0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mRpUID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->this$0:Landroid/content/om/wallpapertheme/MetaDataManager;

    invoke-static {v7}, Landroid/content/om/wallpapertheme/MetaDataManager;->-$$Nest$fgetmRpUidMap(Landroid/content/om/wallpapertheme/MetaDataManager;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, v0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mRpUID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Abnormal metadata replacement attempts detected, RpUid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mRpUID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", existed package : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->this$0:Landroid/content/om/wallpapertheme/MetaDataManager;

    invoke-static {v8}, Landroid/content/om/wallpapertheme/MetaDataManager;->-$$Nest$fgetmRpUidMap(Landroid/content/om/wallpapertheme/MetaDataManager;)Ljava/util/HashMap;

    move-result-object v8

    iget-object v9, v0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mRpUID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", requested package : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v7, v0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->this$0:Landroid/content/om/wallpapertheme/MetaDataManager;

    invoke-static {v7}, Landroid/content/om/wallpapertheme/MetaDataManager;->-$$Nest$fgetmRpUidMap(Landroid/content/om/wallpapertheme/MetaDataManager;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, v0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mRpUID:Ljava/lang/String;

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist getPackage(Ljava/lang/String;)Landroid/content/om/wallpapertheme/MetaDataManager$Package;
    .locals 3

    iget-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->this$0:Landroid/content/om/wallpapertheme/MetaDataManager;

    invoke-static {v0}, Landroid/content/om/wallpapertheme/MetaDataManager;->-$$Nest$fgetmPackageList(Landroid/content/om/wallpapertheme/MetaDataManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    invoke-virtual {v1}, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    invoke-direct {v0, p1}, Landroid/content/om/wallpapertheme/MetaDataManager$Package;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->this$0:Landroid/content/om/wallpapertheme/MetaDataManager;

    invoke-static {v1}, Landroid/content/om/wallpapertheme/MetaDataManager;->-$$Nest$fgetmPackageList(Landroid/content/om/wallpapertheme/MetaDataManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private blacklist parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppMetaData"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Name"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "TargetPackageName"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v1, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mRpUID:Ljava/lang/String;

    const-string v1, "Multi window"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->getPackage(Ljava/lang/String;)Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    move-result-object v1

    iput-object v1, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mCurrentPackage:Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->getPackage(Ljava/lang/String;)Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    move-result-object v1

    iput-object v1, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mCurrentPackage:Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    :goto_0
    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mCurrentPackage:Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Property"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->addUID(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mCurrentPackage:Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Include"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->addSeslMetaData()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist getCurrentPackage()Landroid/content/om/wallpapertheme/MetaDataManager$Package;
    .locals 1

    iget-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mCurrentPackage:Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    return-object v0
.end method

.method blacklist getRpUID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$MetaData;->mRpUID:Ljava/lang/String;

    return-object v0
.end method
