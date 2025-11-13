.class Landroid/app/SemWallpaperResourcesInfo$ResourceParser;
.super Ljava/lang/Object;
.source "SemWallpaperResourcesInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SemWallpaperResourcesInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResourceParser"
.end annotation


# static fields
.field private static final blacklist MAIN_SCREEN:I = 0x0

.field private static final blacklist SUB_SCREEN:I = 0x1

.field private static final blacklist WALLPAPER_TYPE_PRELOADED_LIVE:I = 0xa


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/SemWallpaperResourcesInfo$ResourceParser;->mContext:Landroid/content/Context;

    return-void
.end method

.method private blacklist convertJsonObjectToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    nop

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_3

    move-object v4, v3

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    :cond_3
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_4

    move-object v4, v3

    check-cast v4, Lorg/json/JSONObject;

    invoke-direct {p0, v4}, Landroid/app/SemWallpaperResourcesInfo$ResourceParser;->convertJsonObjectToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    :goto_1
    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertJsonObjectToBundle: failed to get value. key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WallpaperResourcesInfo"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private blacklist determineModeEnsuredWhich(II)I
    .locals 2

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    return v0

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isModeAbsent(I)Z

    move-result v0

    if-nez v0, :cond_2

    return p1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "determineModeEnsuredWhich: screen is missing. which="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperResourcesInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v0, p1, 0x4

    return v0
.end method

.method private blacklist getRefinedColorCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist parseCmfInfo(Lorg/json/JSONArray;Landroid/app/SemWallpaperResourcesInfo$Item;)V
    .locals 5

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/app/SemWallpaperResourcesInfo$ResourceParser;->getRefinedColorCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parseCmfInfo: empty cmf detected. wp item index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Landroid/app/SemWallpaperResourcesInfo$Item;->index:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WallpaperResourcesInfo"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v3, p2, Landroid/app/SemWallpaperResourcesInfo$Item;->cmfInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method private blacklist parseTypeParams(Lorg/json/JSONObject;Landroid/app/SemWallpaperResourcesInfo$Item;)V
    .locals 6

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p2, Landroid/app/SemWallpaperResourcesInfo$Item;->typeParams:Landroid/app/SemWallpaperResourcesInfo$TypeParams;

    const-string/jumbo v1, "service_package_name"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/SemWallpaperResourcesInfo$TypeParams;->mServicePkgName:Ljava/lang/String;

    const-string/jumbo v1, "service_class_name"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/SemWallpaperResourcesInfo$TypeParams;->mServiceClassName:Ljava/lang/String;

    const-string v1, "content_type"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Landroid/app/SemWallpaperResourcesInfo$TypeParams;->mExtras:Landroid/os/Bundle;

    const-string v3, "contentType"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v2, "service_settings"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v2}, Landroid/app/SemWallpaperResourcesInfo$ResourceParser;->convertJsonObjectToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, v0, Landroid/app/SemWallpaperResourcesInfo$TypeParams;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v5, "serviceSettings"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist parseJson(Ljava/lang/String;)Landroid/app/SemWallpaperResourcesInfo$ResourceData;
    .locals 22

    move-object/from16 v1, p0

    const-string/jumbo v2, "parseJson: e="

    const-string v3, "WallpaperResourcesInfo"

    new-instance v0, Landroid/app/SemWallpaperResourcesInfo$ResourceData;

    invoke-direct {v0}, Landroid/app/SemWallpaperResourcesInfo$ResourceData;-><init>()V

    move-object v4, v0

    iget-object v0, v1, Landroid/app/SemWallpaperResourcesInfo$ResourceParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v5, "resources_info"

    const-string/jumbo v6, "raw"

    move-object/from16 v7, p1

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    move-object v6, v0

    const/16 v0, 0x400

    new-array v8, v0, [C

    :try_start_0
    iget-object v0, v1, Landroid/app/SemWallpaperResourcesInfo$ResourceParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-object v9, v0

    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    const-string v11, "UTF-8"

    invoke-direct {v10, v9, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v0, v8}, Ljava/io/Reader;->read([C)I

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v11, v10

    const/4 v12, 0x0

    const/4 v13, -0x1

    if-eq v10, v13, :cond_0

    :try_start_2
    invoke-virtual {v6, v8, v12, v11}, Ljava/io/Writer;->write([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v21, v8

    goto/16 :goto_7

    :cond_0
    if-eqz v9, :cond_1

    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v21, v8

    goto/16 :goto_9

    :cond_1
    :goto_1
    nop

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "phone"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    const/4 v15, 0x0

    :goto_2
    const-string/jumbo v13, "type"

    const-string/jumbo v12, "which"

    move/from16 v18, v5

    const-string/jumbo v5, "screen"

    if-ge v15, v14, :cond_3

    :try_start_5
    new-instance v19, Landroid/app/SemWallpaperResourcesInfo$Item;

    invoke-direct/range {v19 .. v19}, Landroid/app/SemWallpaperResourcesInfo$Item;-><init>()V

    move-object/from16 v20, v19

    invoke-virtual {v11, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v21, v19

    move-object/from16 v19, v6

    :try_start_6
    const-string/jumbo v6, "isDefault"

    move-object/from16 v7, v21

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    move-object/from16 v21, v8

    move-object/from16 v8, v20

    :try_start_7
    iput-boolean v6, v8, Landroid/app/SemWallpaperResourcesInfo$Item;->isDefault:Z

    const-string v6, "index"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v8, Landroid/app/SemWallpaperResourcesInfo$Item;->index:Ljava/lang/Integer;

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v8, Landroid/app/SemWallpaperResourcesInfo$Item;->type:I

    iget v6, v8, Landroid/app/SemWallpaperResourcesInfo$Item;->type:I

    const/16 v13, 0xa

    if-ne v6, v13, :cond_2

    const/4 v6, 0x7

    iput v6, v8, Landroid/app/SemWallpaperResourcesInfo$Item;->type:I

    :cond_2
    const/4 v6, -0x1

    invoke-virtual {v7, v12, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v7, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {v1, v12, v5}, Landroid/app/SemWallpaperResourcesInfo$ResourceParser;->determineModeEnsuredWhich(II)I

    move-result v6

    iput v6, v8, Landroid/app/SemWallpaperResourcesInfo$Item;->which:I

    const-string v6, "isBespoke"

    const/4 v13, 0x0

    invoke-virtual {v7, v6, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v8, Landroid/app/SemWallpaperResourcesInfo$Item;->isBespoke:Z

    const-string v6, "filename"

    const/4 v13, 0x0

    invoke-virtual {v7, v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Landroid/app/SemWallpaperResourcesInfo$Item;->fileName:Ljava/lang/String;

    const-string v6, "frame_no"

    const/4 v13, -0x1

    invoke-virtual {v7, v6, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v8, Landroid/app/SemWallpaperResourcesInfo$Item;->videoFrameInfo:I

    const-string v6, "isBlackFirstFrame"

    const/4 v13, 0x0

    invoke-virtual {v7, v6, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v8, Landroid/app/SemWallpaperResourcesInfo$Item;->isBlackFirstFrame:Z

    const-string v6, "cmf_info"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-direct {v1, v6, v8}, Landroid/app/SemWallpaperResourcesInfo$ResourceParser;->parseCmfInfo(Lorg/json/JSONArray;Landroid/app/SemWallpaperResourcesInfo$Item;)V

    iget-object v6, v8, Landroid/app/SemWallpaperResourcesInfo$Item;->cmfInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Landroid/app/SemWallpaperResourcesInfo$ResourceData;->addKnownColors(Ljava/util/ArrayList;)V

    const-string/jumbo v6, "type_params"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v1, v6, v8}, Landroid/app/SemWallpaperResourcesInfo$ResourceParser;->parseTypeParams(Lorg/json/JSONObject;Landroid/app/SemWallpaperResourcesInfo$Item;)V

    invoke-virtual {v4, v8}, Landroid/app/SemWallpaperResourcesInfo$ResourceData;->addItem(Landroid/app/SemWallpaperResourcesInfo$Item;)V

    iget-object v6, v8, Landroid/app/SemWallpaperResourcesInfo$Item;->index:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v10, v6

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, p1

    move v12, v13

    move/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v8, v21

    const/4 v13, -0x1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v21, v8

    goto/16 :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v19, v6

    move-object/from16 v21, v8

    goto/16 :goto_6

    :cond_3
    move-object/from16 v19, v6

    move-object/from16 v21, v8

    const-string/jumbo v6, "types"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_6

    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_6

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-direct {v1, v15, v11}, Landroid/app/SemWallpaperResourcesInfo$ResourceParser;->determineModeEnsuredWhich(II)I

    move-result v16

    move/from16 v15, v16

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v17, v16

    move-object/from16 v16, v5

    move/from16 v1, v17

    const/16 v5, 0xa

    if-ne v1, v5, :cond_4

    const/16 v17, 0x7

    move/from16 v1, v17

    :cond_4
    invoke-virtual {v4, v15, v1}, Landroid/app/SemWallpaperResourcesInfo$ResourceData;->setDefaultWallpaperType(II)V

    const/4 v5, 0x3

    if-ne v1, v5, :cond_5

    const-string/jumbo v5, "style"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v15, v5}, Landroid/app/SemWallpaperResourcesInfo$ResourceData;->setDefaultMultipackStyle(ILjava/lang/String;)V

    :cond_5
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v5, v16

    goto :goto_3

    :cond_6
    const-string v1, "bespoke"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_8

    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v5, v7, :cond_8

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v4, v7}, Landroid/app/SemWallpaperResourcesInfo$ResourceData;->addBespokeCode(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Landroid/app/SemWallpaperResourcesInfo$ResourceData;->addKnownColor(Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {v4}, Landroid/app/SemWallpaperResourcesInfo$ResourceData;->finalizeInternalState()V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3

    return-object v4

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v21, v8

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseJson: last parse success item index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseJson: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/SemWallpaperResourcesInfo$ResourceData;

    invoke-direct {v1}, Landroid/app/SemWallpaperResourcesInfo$ResourceData;-><init>()V

    return-object v1

    :catchall_1
    move-exception v0

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v21, v8

    move-object v1, v0

    :goto_7
    if-eqz v9, :cond_9

    :try_start_8
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v5, v0

    :try_start_9
    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_8
    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :catch_5
    move-exception v0

    goto :goto_9

    :catch_6
    move-exception v0

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v21, v8

    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4
.end method
