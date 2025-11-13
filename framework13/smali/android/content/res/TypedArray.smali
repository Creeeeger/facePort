.class public Landroid/content/res/TypedArray;
.super Ljava/lang/Object;
.source "TypedArray.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field static final greylist-max-o STYLE_ASSET_COOKIE:I = 0x2

.field static final greylist-max-o STYLE_CHANGING_CONFIGURATIONS:I = 0x4

.field static final greylist-max-o STYLE_DATA:I = 0x1

.field static final greylist-max-o STYLE_DENSITY:I = 0x5

.field static final greylist-max-o STYLE_NUM_ENTRIES:I = 0x7

.field static final greylist-max-o STYLE_RESOURCE_ID:I = 0x3

.field static final blacklist STYLE_SOURCE_RESOURCE_ID:I = 0x6

.field static final greylist-max-o STYLE_TYPE:I


# instance fields
.field private greylist-max-r mAssets:Landroid/content/res/AssetManager;

.field greylist mData:[I

.field greylist-max-o mDataAddress:J

.field greylist mIndices:[I

.field greylist-max-o mIndicesAddress:J

.field greylist mLength:I

.field private greylist-max-r mMetrics:Landroid/util/DisplayMetrics;

.field private greylist-max-r mRecycled:Z

.field private final greylist mResources:Landroid/content/res/Resources;

.field greylist-max-r mTheme:Landroid/content/res/Resources$Theme;

.field greylist mValue:Landroid/util/TypedValue;

.field greylist mXml:Landroid/content/res/XmlBlock$Parser;


# direct methods
.method protected constructor greylist-max-o <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 1404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 1405
    iput-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    .line 1406
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    .line 1407
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    .line 1408
    return-void
.end method

.method private greylist getValueAt(ILandroid/util/TypedValue;)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;

    .line 1373
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1374
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 1375
    .local v1, "type":I
    if-nez v1, :cond_0

    .line 1376
    const/4 v2, 0x0

    return v2

    .line 1378
    :cond_0
    iput v1, p2, Landroid/util/TypedValue;->type:I

    .line 1379
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->data:I

    .line 1380
    add-int/lit8 v2, p1, 0x2

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->assetCookie:I

    .line 1381
    add-int/lit8 v2, p1, 0x3

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 1382
    add-int/lit8 v2, p1, 0x4

    aget v2, v0, v2

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v2

    iput v2, p2, Landroid/util/TypedValue;->changingConfigurations:I

    .line 1384
    add-int/lit8 v2, p1, 0x5

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->density:I

    .line 1385
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 1386
    add-int/lit8 v2, p1, 0x6

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->sourceResourceId:I

    .line 1387
    const/4 v2, 0x1

    return v2
.end method

.method private greylist-max-o loadStringValueAt(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "index"    # I

    .line 1392
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1393
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x2

    aget v1, v0, v1

    .line 1394
    .local v1, "cookie":I
    if-gez v1, :cond_1

    .line 1395
    iget-object v2, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    if-eqz v2, :cond_0

    .line 1396
    add-int/lit8 v3, p1, 0x1

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 1398
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 1400
    :cond_1
    iget-object v2, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    add-int/lit8 v3, p1, 0x1

    aget v3, v0, v3

    invoke-virtual {v2, v1, v3}, Landroid/content/res/AssetManager;->getPooledStringForCookie(II)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method static greylist-max-o obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "len"    # I

    .line 52
    iget-object v0, p0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/TypedArray;

    .line 53
    .local v0, "attrs":Landroid/content/res/TypedArray;
    if-nez v0, :cond_0

    .line 54
    new-instance v1, Landroid/content/res/TypedArray;

    invoke-direct {v1, p0}, Landroid/content/res/TypedArray;-><init>(Landroid/content/res/Resources;)V

    move-object v0, v1

    .line 57
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 60
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iput-object v1, v0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    .line 61
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iput-object v1, v0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    .line 62
    invoke-direct {v0, p1}, Landroid/content/res/TypedArray;->resize(I)V

    .line 63
    return-object v0
.end method

.method private greylist-max-o resize(I)V
    .locals 7
    .param p1, "len"    # I

    .line 139
    iput p1, p0, Landroid/content/res/TypedArray;->mLength:I

    .line 140
    mul-int/lit8 v0, p1, 0x7

    .line 141
    .local v0, "dataLen":I
    add-int/lit8 v1, p1, 0x1

    .line 142
    .local v1, "indicesLen":I
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    .line 143
    .local v2, "runtime":Ldalvik/system/VMRuntime;
    iget-wide v3, p0, Landroid/content/res/TypedArray;->mDataAddress:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/content/res/TypedArray;->mData:[I

    array-length v3, v3

    if-ge v3, v0, :cond_1

    .line 144
    :cond_0
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v0}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    iput-object v3, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 145
    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/res/TypedArray;->mDataAddress:J

    .line 146
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v1}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    iput-object v3, p0, Landroid/content/res/TypedArray;->mIndices:[I

    .line 147
    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/res/TypedArray;->mIndicesAddress:J

    .line 149
    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 0

    .line 1274
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1275
    return-void
.end method

.method public greylist extractThemeAttrs()[I
    .locals 1

    .line 1292
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    move-result-object v0

    return-object v0
.end method

.method public greylist extractThemeAttrs([I)[I
    .locals 8
    .param p1, "scrap"    # [I

    .line 1301
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_5

    .line 1305
    const/4 v0, 0x0

    .line 1307
    .local v0, "attrs":[I
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1308
    .local v1, "data":[I
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 1309
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 1310
    mul-int/lit8 v4, v3, 0x7

    .line 1311
    .local v4, "index":I
    add-int/lit8 v5, v4, 0x0

    aget v5, v1, v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 1313
    goto :goto_2

    .line 1317
    :cond_0
    add-int/lit8 v5, v4, 0x0

    const/4 v6, 0x0

    aput v6, v1, v5

    .line 1319
    add-int/lit8 v5, v4, 0x1

    aget v5, v1, v5

    .line 1320
    .local v5, "attr":I
    if-nez v5, :cond_1

    .line 1322
    goto :goto_2

    .line 1326
    :cond_1
    if-nez v0, :cond_3

    .line 1327
    if-eqz p1, :cond_2

    array-length v7, p1

    if-ne v7, v2, :cond_2

    .line 1328
    move-object v0, p1

    .line 1329
    invoke-static {v0, v6}, Ljava/util/Arrays;->fill([II)V

    goto :goto_1

    .line 1331
    :cond_2
    new-array v0, v2, [I

    .line 1335
    :cond_3
    :goto_1
    aput v5, v0, v3

    .line 1309
    .end local v4    # "index":I
    .end local v5    # "attr":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1338
    .end local v3    # "i":I
    :cond_4
    return-object v0

    .line 1302
    .end local v0    # "attrs":[I
    .end local v1    # "data":[I
    .end local v2    # "N":I
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getBoolean(IZ)Z
    .locals 6
    .param p1, "index"    # I
    .param p2, "defValue"    # Z

    .line 379
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_4

    .line 383
    mul-int/lit8 p1, p1, 0x7

    .line 384
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 385
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 386
    .local v1, "type":I
    if-nez v1, :cond_0

    .line 387
    return p2

    .line 388
    :cond_0
    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_2

    .line 390
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 393
    :cond_2
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 394
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 395
    invoke-static {v2}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    .line 396
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result v3

    return v3

    .line 400
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBoolean of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 380
    .end local v0    # "data":[I
    .end local v1    # "type":I
    .end local v2    # "v":Landroid/util/TypedValue;
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getChangingConfigurations()I
    .locals 7

    .line 1351
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_2

    .line 1355
    const/4 v0, 0x0

    .line 1357
    .local v0, "changingConfig":I
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1358
    .local v1, "data":[I
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 1359
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1360
    mul-int/lit8 v4, v3, 0x7

    .line 1361
    .local v4, "index":I
    add-int/lit8 v5, v4, 0x0

    aget v5, v1, v5

    .line 1362
    .local v5, "type":I
    if-nez v5, :cond_0

    .line 1363
    goto :goto_1

    .line 1365
    :cond_0
    add-int/lit8 v6, v4, 0x4

    aget v6, v1, v6

    invoke-static {v6}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v6

    or-int/2addr v0, v6

    .line 1359
    .end local v4    # "index":I
    .end local v5    # "type":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1368
    .end local v3    # "i":I
    :cond_1
    return v0

    .line 1352
    .end local v0    # "changingConfig":I
    .end local v1    # "data":[I
    .end local v2    # "N":I
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getColor(II)I
    .locals 8
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 504
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_5

    .line 508
    move v0, p1

    .line 509
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x7

    .line 511
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 512
    .local v1, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v2, v1, v2

    .line 513
    .local v2, "type":I
    if-nez v2, :cond_0

    .line 514
    return p2

    .line 515
    :cond_0
    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_1

    .line 517
    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    return v3

    .line 518
    :cond_1
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 519
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 520
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 521
    iget-object v4, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    iget-object v6, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 523
    .local v4, "csl":Landroid/content/res/ColorStateList;
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    return v5

    .line 525
    .end local v4    # "csl":Landroid/content/res/ColorStateList;
    :cond_2
    return p2

    .line 526
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_3
    const/4 v3, 0x2

    const-string v4, ", theme="

    if-ne v2, v3, :cond_4

    .line 527
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 528
    .restart local v3    # "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 529
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to resolve attribute at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 534
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_4
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t convert value at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to color: type=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 535
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 505
    .end local v0    # "attrIndex":I
    .end local v1    # "data":[I
    .end local v2    # "type":I
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "index"    # I

    .line 593
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_2

    .line 597
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 598
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x7

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 599
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 604
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iget-object v3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1

    .line 600
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", theme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 606
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 594
    .end local v0    # "value":Landroid/util/TypedValue;
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getComplexColor(I)Landroid/content/res/ComplexColor;
    .locals 4
    .param p1, "index"    # I

    .line 557
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_2

    .line 561
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 562
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x7

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 563
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 568
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iget-object v3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->loadComplexColor(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    move-result-object v1

    return-object v1

    .line 564
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", theme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 570
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 558
    .end local v0    # "value":Landroid/util/TypedValue;
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDimension(IF)F
    .locals 8
    .param p1, "index"    # I
    .param p2, "defValue"    # F

    .line 674
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_3

    .line 678
    move v0, p1

    .line 679
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x7

    .line 681
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 682
    .local v1, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v2, v1, v2

    .line 683
    .local v2, "type":I
    if-nez v2, :cond_0

    .line 684
    return p2

    .line 685
    :cond_0
    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 686
    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    iget-object v4, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v4}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v3

    return v3

    .line 687
    :cond_1
    const/4 v3, 0x2

    const-string v4, ", theme="

    if-ne v2, v3, :cond_2

    .line 688
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 689
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 690
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to resolve attribute at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 695
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_2
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t convert value at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to dimension: type=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 696
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 675
    .end local v0    # "attrIndex":I
    .end local v1    # "data":[I
    .end local v2    # "type":I
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDimensionPixelOffset(II)I
    .locals 8
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 723
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_3

    .line 727
    move v0, p1

    .line 728
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x7

    .line 730
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 731
    .local v1, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v2, v1, v2

    .line 732
    .local v2, "type":I
    if-nez v2, :cond_0

    .line 733
    return p2

    .line 734
    :cond_0
    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 735
    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    iget-object v4, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v4}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    move-result v3

    return v3

    .line 736
    :cond_1
    const/4 v3, 0x2

    const-string v4, ", theme="

    if-ne v2, v3, :cond_2

    .line 737
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 738
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 739
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to resolve attribute at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 744
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_2
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t convert value at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to dimension: type=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 745
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 724
    .end local v0    # "attrIndex":I
    .end local v1    # "data":[I
    .end local v2    # "type":I
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDimensionPixelSize(II)I
    .locals 8
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 773
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_3

    .line 777
    move v0, p1

    .line 778
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x7

    .line 780
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 781
    .local v1, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v2, v1, v2

    .line 782
    .local v2, "type":I
    if-nez v2, :cond_0

    .line 783
    return p2

    .line 784
    :cond_0
    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 785
    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    iget-object v4, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v3

    return v3

    .line 786
    :cond_1
    const/4 v3, 0x2

    const-string v4, ", theme="

    if-ne v2, v3, :cond_2

    .line 787
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 788
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 789
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to resolve attribute at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 794
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_2
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t convert value at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to dimension: type=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 795
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 774
    .end local v0    # "attrIndex":I
    .end local v1    # "data":[I
    .end local v2    # "type":I
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "index"    # I

    .line 991
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "index"    # I
    .param p2, "density"    # I

    .line 1000
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_3

    .line 1004
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 1005
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x7

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1006
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 1012
    if-lez p2, :cond_0

    .line 1015
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p2, v0, v3}, Landroid/content/res/Resources;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    .line 1017
    :cond_0
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iget-object v3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0, v2, p2, v3}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 1007
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", theme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1019
    :cond_2
    const/4 v1, 0x0

    return-object v1

    .line 1001
    .end local v0    # "value":Landroid/util/TypedValue;
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getFloat(IF)F
    .locals 6
    .param p1, "index"    # I
    .param p2, "defValue"    # F

    .line 455
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_4

    .line 459
    mul-int/lit8 p1, p1, 0x7

    .line 460
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 461
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 462
    .local v1, "type":I
    if-nez v1, :cond_0

    .line 463
    return p2

    .line 464
    :cond_0
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 465
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    return v2

    .line 466
    :cond_1
    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_2

    .line 468
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    int-to-float v2, v2

    return v2

    .line 471
    :cond_2
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 472
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 473
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    .line 474
    .local v3, "str":Ljava/lang/CharSequence;
    if-eqz v3, :cond_3

    .line 475
    invoke-static {v2}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    .line 476
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    return v4

    .line 481
    .end local v3    # "str":Ljava/lang/CharSequence;
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFloat of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 456
    .end local v0    # "data":[I
    .end local v1    # "type":I
    .end local v2    # "v":Landroid/util/TypedValue;
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getFont(I)Landroid/graphics/Typeface;
    .locals 4
    .param p1, "index"    # I

    .line 1037
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_2

    .line 1041
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 1042
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x7

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1043
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 1048
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getFont(Landroid/util/TypedValue;I)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1

    .line 1044
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", theme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1050
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 1038
    .end local v0    # "value":Landroid/util/TypedValue;
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getFraction(IIIF)F
    .locals 8
    .param p1, "index"    # I
    .param p2, "base"    # I
    .param p3, "pbase"    # I
    .param p4, "defValue"    # F

    .line 894
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_3

    .line 898
    move v0, p1

    .line 899
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x7

    .line 901
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 902
    .local v1, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v2, v1, v2

    .line 903
    .local v2, "type":I
    if-nez v2, :cond_0

    .line 904
    return p4

    .line 905
    :cond_0
    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 906
    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    int-to-float v4, p2

    int-to-float v5, p3

    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v3

    return v3

    .line 907
    :cond_1
    const/4 v3, 0x2

    const-string v4, ", theme="

    if-ne v2, v3, :cond_2

    .line 908
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 909
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 910
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to resolve attribute at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 915
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_2
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t convert value at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to fraction: type=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 916
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 895
    .end local v0    # "attrIndex":I
    .end local v1    # "data":[I
    .end local v2    # "type":I
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getIndex(I)I
    .locals 2
    .param p1, "at"    # I

    .line 190
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Landroid/content/res/TypedArray;->mIndices:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    return v0

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getIndexCount()I
    .locals 2

    .line 171
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Landroid/content/res/TypedArray;->mIndices:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getInt(II)I
    .locals 6
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 418
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_3

    .line 422
    mul-int/lit8 p1, p1, 0x7

    .line 423
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 424
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 425
    .local v1, "type":I
    if-nez v1, :cond_0

    .line 426
    return p2

    .line 427
    :cond_0
    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_1

    .line 429
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    return v2

    .line 432
    :cond_1
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 433
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 434
    invoke-static {v2}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    .line 435
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result v3

    return v3

    .line 439
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInt of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 419
    .end local v0    # "data":[I
    .end local v1    # "type":I
    .end local v2    # "v":Landroid/util/TypedValue;
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getInteger(II)I
    .locals 8
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 625
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_3

    .line 629
    move v0, p1

    .line 630
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x7

    .line 632
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 633
    .local v1, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v2, v1, v2

    .line 634
    .local v2, "type":I
    if-nez v2, :cond_0

    .line 635
    return p2

    .line 636
    :cond_0
    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_1

    .line 638
    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    return v3

    .line 639
    :cond_1
    const/4 v3, 0x2

    const-string v4, ", theme="

    if-ne v2, v3, :cond_2

    .line 640
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 641
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 642
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to resolve attribute at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 647
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_2
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t convert value at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to integer: type=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 648
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 626
    .end local v0    # "attrIndex":I
    .end local v1    # "data":[I
    .end local v2    # "type":I
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getLayoutDimension(II)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 858
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_2

    .line 862
    mul-int/lit8 p1, p1, 0x7

    .line 863
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 864
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 865
    .local v1, "type":I
    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 867
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    return v2

    .line 868
    :cond_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 869
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    return v2

    .line 872
    :cond_1
    return p2

    .line 859
    .end local v0    # "data":[I
    .end local v1    # "type":I
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getLayoutDimension(ILjava/lang/String;)I
    .locals 7
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 817
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_3

    .line 821
    move v0, p1

    .line 822
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x7

    .line 824
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 825
    .local v1, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v2, v1, v2

    .line 826
    .local v2, "type":I
    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_0

    .line 828
    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    return v3

    .line 829
    :cond_0
    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 830
    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    iget-object v4, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v3

    return v3

    .line 831
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 832
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 833
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 834
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to resolve attribute at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", theme="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 839
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_2
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": You must supply a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " attribute., theme="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 818
    .end local v0    # "attrIndex":I
    .end local v1    # "data":[I
    .end local v2    # "type":I
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getNonConfigurationString(II)Ljava/lang/String;
    .locals 7
    .param p1, "index"    # I
    .param p2, "allowedChangingConfigs"    # I

    .line 332
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_5

    .line 336
    mul-int/lit8 p1, p1, 0x7

    .line 337
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 338
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 339
    .local v1, "type":I
    add-int/lit8 v2, p1, 0x4

    aget v2, v0, v2

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v2

    .line 341
    .local v2, "changingConfigs":I
    not-int v3, p2

    and-int/2addr v3, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 342
    return-object v4

    .line 344
    :cond_0
    if-nez v1, :cond_1

    .line 345
    return-object v4

    .line 346
    :cond_1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 347
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 350
    :cond_2
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 351
    .local v3, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 352
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v5

    .line 353
    .local v5, "cs":Ljava/lang/CharSequence;
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    return-object v4

    .line 357
    .end local v5    # "cs":Ljava/lang/CharSequence;
    :cond_4
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNonConfigurationString of bad type: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 358
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 333
    .end local v0    # "data":[I
    .end local v1    # "type":I
    .end local v2    # "changingConfigs":I
    .end local v3    # "v":Landroid/util/TypedValue;
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getNonResourceString(I)Ljava/lang/String;
    .locals 5
    .param p1, "index"    # I

    .line 300
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_1

    .line 304
    mul-int/lit8 p1, p1, 0x7

    .line 305
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 306
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 307
    .local v1, "type":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 308
    add-int/lit8 v2, p1, 0x2

    aget v2, v0, v2

    .line 309
    .local v2, "cookie":I
    if-gez v2, :cond_0

    .line 310
    iget-object v3, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    invoke-virtual {v3, v4}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 313
    .end local v2    # "cookie":I
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 301
    .end local v0    # "data":[I
    .end local v1    # "type":I
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPositionDescription()Ljava/lang/String;
    .locals 2

    .line 1238
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_1

    .line 1242
    iget-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<internal>"

    :goto_0
    return-object v0

    .line 1239
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getResourceId(II)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 936
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_1

    .line 940
    mul-int/lit8 p1, p1, 0x7

    .line 941
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 942
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    if-eqz v1, :cond_0

    .line 943
    add-int/lit8 v1, p1, 0x3

    aget v1, v0, v1

    .line 944
    .local v1, "resid":I
    if-eqz v1, :cond_0

    .line 945
    return v1

    .line 948
    .end local v1    # "resid":I
    :cond_0
    return p2

    .line 937
    .end local v0    # "data":[I
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getResources()Landroid/content/res/Resources;
    .locals 2

    .line 203
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    return-object v0

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSourceResourceId(II)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "defaultValue"    # I

    .line 1151
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_1

    .line 1155
    mul-int/lit8 p1, p1, 0x7

    .line 1156
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v1, p1, 0x6

    aget v0, v0, v1

    .line 1157
    .local v0, "resid":I
    if-eqz v0, :cond_0

    .line 1158
    return v0

    .line 1160
    :cond_0
    return p2

    .line 1152
    .end local v0    # "resid":I
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getString(I)Ljava/lang/String;
    .locals 6
    .param p1, "index"    # I

    .line 261
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_4

    .line 265
    mul-int/lit8 p1, p1, 0x7

    .line 266
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 267
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 268
    .local v1, "type":I
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 269
    return-object v2

    .line 270
    :cond_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 271
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 274
    :cond_1
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 275
    .local v3, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 276
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v4

    .line 277
    .local v4, "cs":Ljava/lang/CharSequence;
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    return-object v2

    .line 281
    .end local v4    # "cs":Ljava/lang/CharSequence;
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getString of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 262
    .end local v0    # "data":[I
    .end local v1    # "type":I
    .end local v3    # "v":Landroid/util/TypedValue;
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getText(I)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "index"    # I

    .line 224
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_3

    .line 228
    mul-int/lit8 p1, p1, 0x7

    .line 229
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 230
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 231
    .local v1, "type":I
    if-nez v1, :cond_0

    .line 232
    const/4 v2, 0x0

    return-object v2

    .line 233
    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 234
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 237
    :cond_1
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 238
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 239
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 243
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getText of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 225
    .end local v0    # "data":[I
    .end local v1    # "type":I
    .end local v2    # "v":Landroid/util/TypedValue;
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTextArray(I)[Ljava/lang/CharSequence;
    .locals 3
    .param p1, "index"    # I

    .line 1069
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_1

    .line 1073
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 1074
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x7

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1075
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 1077
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 1070
    .end local v0    # "value":Landroid/util/TypedValue;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getThemeAttributeId(II)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 964
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_1

    .line 968
    mul-int/lit8 p1, p1, 0x7

    .line 969
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 970
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 971
    add-int/lit8 v1, p1, 0x1

    aget v1, v0, v1

    return v1

    .line 973
    :cond_0
    return p2

    .line 965
    .end local v0    # "data":[I
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getType(I)I
    .locals 2
    .param p1, "index"    # I

    .line 1107
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_0

    .line 1111
    mul-int/lit8 p1, p1, 0x7

    .line 1112
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v1, p1, 0x0

    aget v0, v0, v1

    return v0

    .line 1108
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getValue(ILandroid/util/TypedValue;)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;

    .line 1091
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_0

    .line 1095
    mul-int/lit8 v0, p1, 0x7

    invoke-direct {p0, v0, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v0

    return v0

    .line 1092
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist hasValue(I)Z
    .locals 3
    .param p1, "index"    # I

    .line 1175
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_1

    .line 1179
    mul-int/lit8 p1, p1, 0x7

    .line 1180
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1181
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 1182
    .local v1, "type":I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 1176
    .end local v0    # "data":[I
    .end local v1    # "type":I
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist hasValueOrEmpty(I)Z
    .locals 4
    .param p1, "index"    # I

    .line 1196
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_2

    .line 1200
    mul-int/lit8 p1, p1, 0x7

    .line 1201
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1202
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 1203
    .local v1, "type":I
    const/4 v2, 0x1

    if-nez v1, :cond_1

    add-int/lit8 v3, p1, 0x1

    aget v3, v0, v3

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2

    .line 1197
    .end local v0    # "data":[I
    .end local v1    # "type":I
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist length()I
    .locals 2

    .line 157
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_0

    .line 161
    iget v0, p0, Landroid/content/res/TypedArray;->mLength:I

    return v0

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist peekValue(I)Landroid/util/TypedValue;
    .locals 2
    .param p1, "index"    # I

    .line 1220
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_1

    .line 1224
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 1225
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x7

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1226
    return-object v0

    .line 1228
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 1221
    .end local v0    # "value":Landroid/util/TypedValue;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist recycle()V
    .locals 3

    .line 1252
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_0

    .line 1256
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 1259
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 1260
    iput-object v0, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 1261
    iput-object v0, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    .line 1263
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 1264
    return-void

    .line 1253
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recycled twice!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 1412
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
