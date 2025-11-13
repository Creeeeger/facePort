.class public Landroid/app/SemWallpaperResourcesInfo;
.super Ljava/lang/Object;
.source "SemWallpaperResourcesInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SemWallpaperResourcesInfo$Item;,
        Landroid/app/SemWallpaperResourcesInfo$Ascending;,
        Landroid/app/SemWallpaperResourcesInfo$TypeParams;
    }
.end annotation


# static fields
.field private static final blacklist MAIN_SCREEN:I = 0x0

.field private static final blacklist SUB_SCREEN:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "WallpaperResourcesInfo"

.field private static final blacklist WALLPAPER_PACKAGE:Ljava/lang/String; = "com.samsung.android.wallpaper.res"

.field private static final blacklist WALLPAPER_TYPE_PRELOADED_LIVE:I = 0xa


# instance fields
.field private final blacklist mBespokeCode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mColorCode:Ljava/lang/String;

.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mDefaultMultipackStyle:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDefaultTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mImageItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/SemWallpaperResourcesInfo$Item;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsSupportCMF:Z

.field private final blacklist mLiveItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/SemWallpaperResourcesInfo$Item;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVersion:I

.field private final blacklist mVideoItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/SemWallpaperResourcesInfo$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mVersion:I

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mImageItems:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mVideoItems:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mLiveItems:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mBespokeCode:Ljava/util/ArrayList;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mIsSupportCMF:Z

    .line 58
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mDefaultTypeMap:Ljava/util/HashMap;

    .line 59
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mDefaultMultipackStyle:Ljava/util/HashMap;

    .line 63
    :try_start_0
    const-string v1, "com.samsung.android.wallpaper.res"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mContext:Landroid/content/Context;

    .line 64
    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0}, Landroid/app/SemWallpaperResourcesInfo;->parsingJson()V

    .line 67
    invoke-direct {p0}, Landroid/app/SemWallpaperResourcesInfo;->ascendingSort()V

    .line 69
    :cond_0
    invoke-direct {p0}, Landroid/app/SemWallpaperResourcesInfo;->checkCMF()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mIsSupportCMF:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 73
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-void
.end method

.method private blacklist addItem(Landroid/app/SemWallpaperResourcesInfo$Item;)V
    .locals 2
    .param p1, "item"    # Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 377
    invoke-static {p1}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgettype(Landroid/app/SemWallpaperResourcesInfo$Item;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 378
    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mVideoItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 379
    :cond_0
    invoke-static {p1}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgettype(Landroid/app/SemWallpaperResourcesInfo$Item;)I

    move-result v0

    if-nez v0, :cond_1

    .line 380
    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mImageItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 381
    :cond_1
    invoke-static {p1}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgettype(Landroid/app/SemWallpaperResourcesInfo$Item;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 382
    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mLiveItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist ascendingSort()V
    .locals 3

    .line 495
    new-instance v0, Landroid/app/SemWallpaperResourcesInfo$Ascending;

    invoke-direct {v0}, Landroid/app/SemWallpaperResourcesInfo$Ascending;-><init>()V

    .line 496
    .local v0, "ascending":Landroid/app/SemWallpaperResourcesInfo$Ascending;
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mImageItems:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 497
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mImageItems:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 500
    :cond_0
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mVideoItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 501
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mVideoItems:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 504
    :cond_1
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mLiveItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 505
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mLiveItems:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 507
    :cond_2
    return-void
.end method

.method private blacklist checkCMF()Z
    .locals 5

    .line 510
    const/4 v0, 0x0

    .line 511
    .local v0, "isCMF":Z
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mImageItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 512
    .local v2, "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    invoke-static {v2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 513
    invoke-static {v2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/app/SemWallpaperResourcesInfo;->isValidCode(Ljava/util/ArrayList;)Z

    move-result v0

    .line 514
    if-eqz v0, :cond_0

    .line 515
    return v3

    .line 518
    .end local v2    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    :cond_0
    goto :goto_0

    .line 519
    :cond_1
    if-nez v0, :cond_3

    .line 520
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mVideoItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 521
    .restart local v2    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    invoke-static {v2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 522
    invoke-static {v2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/app/SemWallpaperResourcesInfo;->isValidCode(Ljava/util/ArrayList;)Z

    move-result v0

    .line 523
    if-eqz v0, :cond_2

    .line 524
    return v3

    .line 527
    .end local v2    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    :cond_2
    goto :goto_1

    .line 529
    :cond_3
    if-nez v0, :cond_5

    .line 530
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mLiveItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 531
    .restart local v2    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    invoke-static {v2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 532
    invoke-static {v2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/app/SemWallpaperResourcesInfo;->isValidCode(Ljava/util/ArrayList;)Z

    move-result v0

    .line 533
    if-eqz v0, :cond_4

    .line 534
    return v3

    .line 537
    .end local v2    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    :cond_4
    goto :goto_2

    .line 539
    :cond_5
    return v0
.end method

.method private blacklist getDefaultImageResource(I)Landroid/app/SemWallpaperResourcesInfo$Item;
    .locals 11
    .param p1, "which"    # I

    .line 309
    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mImageItems:Ljava/util/ArrayList;

    const-string v1, "WallpaperResourcesInfo"

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 313
    :cond_0
    const/4 v0, 0x0

    .line 314
    .local v0, "defaultResource":Landroid/app/SemWallpaperResourcesInfo$Item;
    const/4 v2, 0x0

    .line 315
    .local v2, "firstResource":Landroid/app/SemWallpaperResourcesInfo$Item;
    and-int/lit8 v3, p1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_1

    .line 316
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 317
    .local v3, "screen":I
    :goto_0
    iget-boolean v4, p0, Landroid/app/SemWallpaperResourcesInfo;->mIsSupportCMF:Z

    const-string v5, " , "

    const-string v6, ", "

    if-eqz v4, :cond_4

    .line 319
    :try_start_0
    iget-object v4, p0, Landroid/app/SemWallpaperResourcesInfo;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/WallpaperManager;->getDeviceColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/app/SemWallpaperResourcesInfo;->mColorCode:Ljava/lang/String;

    .line 320
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 321
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultItem: colorCode = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Landroid/app/SemWallpaperResourcesInfo;->mColorCode:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " , screen = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v4, p0, Landroid/app/SemWallpaperResourcesInfo;->mImageItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 323
    .local v7, "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    iget-object v8, p0, Landroid/app/SemWallpaperResourcesInfo;->mColorCode:Ljava/lang/String;

    invoke-direct {p0, v7, p1, v3, v8}, Landroid/app/SemWallpaperResourcesInfo;->isDefaultResource(Landroid/app/SemWallpaperResourcesInfo$Item;IILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 324
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDefaultItem by color code: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v7}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v7}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetindex(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v7}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    move-object v0, v7

    .line 326
    goto :goto_2

    .line 328
    .end local v7    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    :cond_2
    goto :goto_1

    .line 332
    :cond_3
    :goto_2
    goto :goto_3

    .line 330
    :catch_0
    move-exception v4

    .line 331
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 335
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    const/4 v4, 0x0

    .line 336
    .local v4, "isFirst":Z
    if-nez v0, :cond_7

    .line 337
    iget-object v7, p0, Landroid/app/SemWallpaperResourcesInfo;->mImageItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 338
    .local v8, "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    invoke-static {v8}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetwhich(Landroid/app/SemWallpaperResourcesInfo$Item;)I

    move-result v9

    .line 339
    .local v9, "resourceWhich":I
    and-int v10, p1, v9

    if-ne v10, v9, :cond_6

    invoke-static {v8}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetscreen(Landroid/app/SemWallpaperResourcesInfo$Item;)I

    move-result v10

    if-ne v3, v10, :cond_6

    .line 340
    if-nez v4, :cond_5

    invoke-static {v8}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetisBespoke(Landroid/app/SemWallpaperResourcesInfo$Item;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 341
    move-object v2, v8

    .line 342
    const/4 v4, 0x1

    .line 344
    :cond_5
    invoke-static {v8}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetisDefault(Landroid/app/SemWallpaperResourcesInfo$Item;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v8}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetisBespoke(Landroid/app/SemWallpaperResourcesInfo$Item;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 345
    move-object v0, v8

    .line 346
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getDefaultItem by default attr: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetindex(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    goto :goto_5

    .line 350
    .end local v8    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    .end local v9    # "resourceWhich":I
    :cond_6
    goto :goto_4

    .line 353
    :cond_7
    :goto_5
    if-nez v0, :cond_8

    if-eqz v2, :cond_8

    .line 354
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDefaultItem by first resource: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetindex(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-object v2

    .line 357
    :cond_8
    return-object v0

    .line 310
    .end local v0    # "defaultResource":Landroid/app/SemWallpaperResourcesInfo$Item;
    .end local v2    # "firstResource":Landroid/app/SemWallpaperResourcesInfo$Item;
    .end local v3    # "screen":I
    .end local v4    # "isFirst":Z
    :cond_9
    :goto_6
    const-string v0, "getDefaultItem: mImageItems is null"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getDefaultLiveWallpaperResource(I)Landroid/app/SemWallpaperResourcesInfo$Item;
    .locals 9
    .param p1, "which"    # I

    .line 254
    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mLiveItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "WallpaperResourcesInfo"

    if-nez v0, :cond_0

    .line 255
    const-string v0, "getDefaultLiveWallpaperResource: mLiveItems is empty"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v0, 0x0

    return-object v0

    .line 259
    :cond_0
    const/4 v0, 0x0

    .line 260
    .local v0, "defaultResource":Landroid/app/SemWallpaperResourcesInfo$Item;
    iget-boolean v2, p0, Landroid/app/SemWallpaperResourcesInfo;->mIsSupportCMF:Z

    const/4 v3, 0x0

    const-string v4, " , "

    const-string v5, ", "

    if-eqz v2, :cond_4

    .line 262
    :try_start_0
    iget-object v2, p0, Landroid/app/SemWallpaperResourcesInfo;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/WallpaperManager;->getDeviceColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/SemWallpaperResourcesInfo;->mColorCode:Ljava/lang/String;

    .line 263
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 264
    and-int/lit8 v2, p1, 0x10

    const/16 v6, 0x10

    if-ne v2, v6, :cond_1

    .line 265
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 266
    .local v2, "screen":I
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultLiveWallpaperResource: colorCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/SemWallpaperResourcesInfo;->mColorCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , screen = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v6, p0, Landroid/app/SemWallpaperResourcesInfo;->mLiveItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 268
    .local v7, "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    iget-object v8, p0, Landroid/app/SemWallpaperResourcesInfo;->mColorCode:Ljava/lang/String;

    invoke-direct {p0, v7, p1, v2, v8}, Landroid/app/SemWallpaperResourcesInfo;->isDefaultResource(Landroid/app/SemWallpaperResourcesInfo$Item;IILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 269
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDefaultLiveWallpaperResource by color code: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v7}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v7}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetindex(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v7}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    move-object v0, v7

    .line 271
    goto :goto_2

    .line 273
    .end local v7    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    :cond_2
    goto :goto_1

    .line 277
    .end local v2    # "screen":I
    :cond_3
    :goto_2
    goto :goto_3

    .line 275
    :catch_0
    move-exception v2

    .line 276
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultLiveWallpaperResource: e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    if-nez v0, :cond_6

    .line 281
    iget-object v2, p0, Landroid/app/SemWallpaperResourcesInfo;->mLiveItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 282
    .local v6, "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    invoke-direct {p0, p1, v6}, Landroid/app/SemWallpaperResourcesInfo;->isWhichMatched(ILandroid/app/SemWallpaperResourcesInfo$Item;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {v6}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetisDefault(Landroid/app/SemWallpaperResourcesInfo$Item;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultLiveWallpaperResource by default attr: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetindex(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    move-object v0, v6

    .line 285
    goto :goto_5

    .line 287
    .end local v6    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    :cond_5
    goto :goto_4

    .line 290
    :cond_6
    :goto_5
    if-nez v0, :cond_7

    .line 291
    iget-object v2, p0, Landroid/app/SemWallpaperResourcesInfo;->mLiveItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 292
    .local v2, "firstItem":Landroid/app/SemWallpaperResourcesInfo$Item;
    invoke-direct {p0, p1, v2}, Landroid/app/SemWallpaperResourcesInfo;->isWhichMatched(ILandroid/app/SemWallpaperResourcesInfo$Item;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDefaultLiveWallpaperResource by first resource: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetindex(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    move-object v0, v2

    .line 298
    .end local v2    # "firstItem":Landroid/app/SemWallpaperResourcesInfo$Item;
    :cond_7
    return-object v0
.end method

.method private blacklist getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .param p2, "name"    # Ljava/lang/String;

    .line 488
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .param p2, "name"    # Ljava/lang/String;

    .line 480
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist isBespokeCode(Ljava/lang/String;)Z
    .locals 4
    .param p1, "colorCode"    # Ljava/lang/String;

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "isBespoke":Z
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mBespokeCode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 115
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mBespokeCode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 116
    .local v2, "code":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    const/4 v0, 0x1

    .line 118
    goto :goto_1

    .line 120
    .end local v2    # "code":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 122
    :cond_1
    :goto_1
    return v0
.end method

.method private blacklist isDefaultResource(Landroid/app/SemWallpaperResourcesInfo$Item;IILjava/lang/String;)Z
    .locals 5
    .param p1, "item"    # Landroid/app/SemWallpaperResourcesInfo$Item;
    .param p2, "which"    # I
    .param p3, "screen"    # I
    .param p4, "colorCode"    # Ljava/lang/String;

    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, "isDefaultResource":Z
    invoke-static {p1}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetwhich(Landroid/app/SemWallpaperResourcesInfo$Item;)I

    move-result v1

    .line 363
    .local v1, "resourceWhich":I
    and-int v2, p2, v1

    if-ne v2, v1, :cond_1

    invoke-static {p1}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v2

    .line 364
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetscreen(Landroid/app/SemWallpaperResourcesInfo$Item;)I

    move-result v2

    if-ne p3, v2, :cond_1

    .line 367
    invoke-static {p1}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 368
    .local v3, "cmfInfo":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 369
    const/4 v0, 0x1

    .line 371
    .end local v3    # "cmfInfo":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 373
    :cond_1
    return v0
.end method

.method private blacklist isPhone(I)Z
    .locals 2
    .param p1, "which"    # I

    .line 558
    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 560
    .local v0, "isPhone":Z
    :goto_0
    return v0
.end method

.method private blacklist isValidCode(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 543
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 544
    .local v0, "isValid":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 545
    .local v2, "code":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 546
    const/4 v0, 0x1

    .line 547
    goto :goto_1

    .line 549
    .end local v2    # "code":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 550
    :cond_1
    :goto_1
    return v0
.end method

.method private blacklist isWhichMatched(ILandroid/app/SemWallpaperResourcesInfo$Item;)Z
    .locals 5
    .param p1, "which"    # I
    .param p2, "item"    # Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 302
    and-int/lit8 v0, p1, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-ne v0, v3, :cond_0

    .line 303
    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 304
    .local v0, "targetItemScreen":I
    :goto_0
    and-int/lit8 v3, p1, 0x3

    .line 305
    .local v3, "targetItemWhich":I
    invoke-static {p2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetwhich(Landroid/app/SemWallpaperResourcesInfo$Item;)I

    move-result v4

    if-ne v4, v3, :cond_1

    invoke-static {p2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetscreen(Landroid/app/SemWallpaperResourcesInfo$Item;)I

    move-result v4

    if-ne v4, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method private blacklist parsingJson()V
    .locals 17

    .line 387
    move-object/from16 v1, p0

    const-string v2, "WallpaperResourcesInfo"

    iget-object v0, v1, Landroid/app/SemWallpaperResourcesInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v3, "resources_info"

    const-string/jumbo v4, "raw"

    const-string v5, "com.samsung.android.wallpaper.res"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 388
    .local v3, "resId":I
    const/4 v4, 0x0

    .line 389
    .local v4, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    move-object v5, v0

    .line 390
    .local v5, "writer":Ljava/io/Writer;
    const/16 v0, 0x400

    new-array v6, v0, [C

    .line 392
    .local v6, "buffer":[C
    const/4 v7, 0x0

    const/4 v8, -0x1

    :try_start_0
    iget-object v0, v1, Landroid/app/SemWallpaperResourcesInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    move-object v4, v0

    .line 393
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v9, v4, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 395
    .local v0, "reader":Ljava/io/Reader;
    :goto_0
    invoke-virtual {v0, v6}, Ljava/io/Reader;->read([C)I

    move-result v9

    move v10, v9

    .local v10, "n":I
    if-eq v9, v8, :cond_0

    .line 396
    invoke-virtual {v5, v6, v7, v10}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 410
    .end local v0    # "reader":Ljava/io/Reader;
    .end local v10    # "n":I
    :cond_0
    if-eqz v4, :cond_1

    .line 411
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 413
    :catch_0
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 414
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 416
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 415
    :cond_1
    :goto_1
    goto :goto_2

    .line 409
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_9

    .line 405
    :catch_1
    move-exception v0

    .line 406
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v9, "parsingJson: IOException"

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 410
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_1

    .line 411
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 402
    :catch_2
    move-exception v0

    .line 403
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_4
    const-string/jumbo v9, "parsingJson: UnsupportedEncodingException"

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 410
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    if-eqz v4, :cond_1

    .line 411
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 399
    :catch_3
    move-exception v0

    .line 400
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_6
    const-string/jumbo v9, "parsingJson: json file is not exist"

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 410
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    if-eqz v4, :cond_1

    .line 411
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    .line 418
    :goto_2
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 420
    .local v9, "jsonData":Ljava/lang/String;
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 421
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v10, "phone"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 422
    .local v10, "jsonArray":Lorg/json/JSONArray;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "parsingJson: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_4

    const-string/jumbo v12, "type"

    const-string/jumbo v13, "which"

    const-string/jumbo v14, "screen"

    if-ge v2, v11, :cond_4

    .line 425
    :try_start_9
    new-instance v11, Landroid/app/SemWallpaperResourcesInfo$Item;

    invoke-direct {v11}, Landroid/app/SemWallpaperResourcesInfo$Item;-><init>()V

    .line 426
    .local v11, "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 427
    .local v15, "object":Lorg/json/JSONObject;
    const-string v8, "isDefault"

    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v11, v8}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fputisDefault(Landroid/app/SemWallpaperResourcesInfo$Item;Z)V

    .line 428
    const-string v8, "isBespoke"

    invoke-virtual {v15, v8, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v11, v8}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fputisBespoke(Landroid/app/SemWallpaperResourcesInfo$Item;Z)V

    .line 429
    const-string v8, "isBlackFirstFrame"

    invoke-virtual {v15, v8, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v11, v8}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fputisBlackFirstFrame(Landroid/app/SemWallpaperResourcesInfo$Item;Z)V

    .line 430
    const-string v8, "index"

    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fputindex(Landroid/app/SemWallpaperResourcesInfo$Item;Ljava/lang/Integer;)V

    .line 431
    invoke-virtual {v15, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v11, v8}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fputtype(Landroid/app/SemWallpaperResourcesInfo$Item;I)V

    .line 432
    const-string v8, "filename"

    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fputfileName(Landroid/app/SemWallpaperResourcesInfo$Item;Ljava/lang/String;)V

    .line 433
    const/4 v8, -0x1

    invoke-virtual {v15, v13, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v11, v12}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fputwhich(Landroid/app/SemWallpaperResourcesInfo$Item;I)V

    .line 434
    invoke-virtual {v15, v14, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v11, v12}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fputscreen(Landroid/app/SemWallpaperResourcesInfo$Item;I)V

    .line 435
    const-string v12, "frame_no"

    invoke-virtual {v15, v12, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v11, v12}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fputvideoFrameInfo(Landroid/app/SemWallpaperResourcesInfo$Item;I)V

    .line 436
    const-string v12, "cmf_info"

    invoke-virtual {v15, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 437
    .local v12, "cmfArray":Lorg/json/JSONArray;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_4
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_2

    .line 438
    invoke-static {v11}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x0

    goto :goto_4

    .line 442
    .end local v13    # "j":I
    :cond_2
    const-string/jumbo v7, "type_params"

    invoke-direct {v1, v15, v7}, Landroid/app/SemWallpaperResourcesInfo;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 443
    .local v7, "typeParams":Lorg/json/JSONObject;
    if-eqz v7, :cond_3

    .line 444
    invoke-static {v11}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgettypeParams(Landroid/app/SemWallpaperResourcesInfo$Item;)Landroid/app/SemWallpaperResourcesInfo$TypeParams;

    move-result-object v13

    const-string/jumbo v14, "service_package_name"

    invoke-direct {v1, v7, v14}, Landroid/app/SemWallpaperResourcesInfo;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Landroid/app/SemWallpaperResourcesInfo$TypeParams;->mServicePkgName:Ljava/lang/String;

    .line 445
    invoke-static {v11}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgettypeParams(Landroid/app/SemWallpaperResourcesInfo$Item;)Landroid/app/SemWallpaperResourcesInfo$TypeParams;

    move-result-object v13

    const-string/jumbo v14, "service_class_name"

    invoke-direct {v1, v7, v14}, Landroid/app/SemWallpaperResourcesInfo;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Landroid/app/SemWallpaperResourcesInfo$TypeParams;->mServiceClassName:Ljava/lang/String;

    .line 448
    :cond_3
    invoke-direct {v1, v11}, Landroid/app/SemWallpaperResourcesInfo;->addItem(Landroid/app/SemWallpaperResourcesInfo$Item;)V

    .line 424
    .end local v7    # "typeParams":Lorg/json/JSONObject;
    .end local v11    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    .end local v12    # "cmfArray":Lorg/json/JSONArray;
    .end local v15    # "object":Lorg/json/JSONObject;
    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x0

    goto/16 :goto_3

    .line 452
    .end local v2    # "i":I
    :cond_4
    const-string/jumbo v2, "types"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 453
    .end local v10    # "jsonArray":Lorg/json/JSONArray;
    .local v2, "jsonArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_7

    .line 454
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 455
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 456
    .local v8, "object":Lorg/json/JSONObject;
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 457
    .local v10, "screen":I
    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 458
    .local v11, "which":I
    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 459
    .local v15, "type":I
    invoke-direct {v1, v10, v11, v15}, Landroid/app/SemWallpaperResourcesInfo;->setDefaultWallpaperType(III)V

    .line 460
    move-object/from16 v16, v2

    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .local v16, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x3

    if-ne v15, v2, :cond_5

    .line 461
    const-string/jumbo v2, "style"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, "style":Ljava/lang/String;
    invoke-direct {v1, v10, v11, v2}, Landroid/app/SemWallpaperResourcesInfo;->setDefaultMultipackStyle(IILjava/lang/String;)V

    .line 454
    .end local v2    # "style":Ljava/lang/String;
    .end local v8    # "object":Lorg/json/JSONObject;
    .end local v10    # "screen":I
    .end local v11    # "which":I
    .end local v15    # "type":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v16

    goto :goto_5

    .end local v16    # "jsonArray":Lorg/json/JSONArray;
    .local v2, "jsonArray":Lorg/json/JSONArray;
    :cond_6
    move-object/from16 v16, v2

    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .restart local v16    # "jsonArray":Lorg/json/JSONArray;
    goto :goto_6

    .line 453
    .end local v7    # "i":I
    .end local v16    # "jsonArray":Lorg/json/JSONArray;
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    :cond_7
    move-object/from16 v16, v2

    .line 467
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .restart local v16    # "jsonArray":Lorg/json/JSONArray;
    :goto_6
    const-string v2, "bespoke"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 468
    .local v2, "bespokeArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_8

    .line 469
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_7
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 470
    iget-object v8, v1, Landroid/app/SemWallpaperResourcesInfo;->mBespokeCode:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_4

    .line 469
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 475
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "bespokeArray":Lorg/json/JSONArray;
    .end local v7    # "i":I
    .end local v16    # "jsonArray":Lorg/json/JSONArray;
    :cond_8
    goto :goto_8

    .line 473
    :catch_4
    move-exception v0

    .line 474
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 476
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_8
    return-void

    .line 410
    .end local v9    # "jsonData":Ljava/lang/String;
    :goto_9
    if-eqz v4, :cond_9

    .line 411
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_a

    .line 413
    :catch_5
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 414
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 415
    .end local v0    # "e":Ljava/io/IOException;
    :cond_9
    :goto_a
    nop

    .line 416
    :goto_b
    throw v2
.end method

.method private blacklist setDefaultMultipackStyle(IILjava/lang/String;)V
    .locals 3
    .param p1, "screen"    # I
    .param p2, "which"    # I
    .param p3, "style"    # Ljava/lang/String;

    .line 580
    const/4 v0, 0x0

    .line 581
    .local v0, "mode":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    or-int/lit8 v0, v0, 0x10

    .line 582
    :cond_0
    if-nez p1, :cond_1

    or-int/lit8 v0, v0, 0x4

    .line 583
    :cond_1
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mDefaultMultipackStyle:Ljava/util/HashMap;

    or-int v2, p2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    return-void
.end method

.method private blacklist setDefaultWallpaperType(III)V
    .locals 4
    .param p1, "screen"    # I
    .param p2, "which"    # I
    .param p3, "type"    # I

    .line 564
    const/4 v0, 0x0

    .line 565
    .local v0, "mode":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    or-int/lit8 v0, v0, 0x10

    .line 566
    :cond_0
    if-nez p1, :cond_1

    or-int/lit8 v0, v0, 0x4

    .line 567
    :cond_1
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mDefaultTypeMap:Ljava/util/HashMap;

    or-int v2, p2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    return-void
.end method


# virtual methods
.method public blacklist getDefaultImageFileName(I)Ljava/lang/String;
    .locals 2
    .param p1, "which"    # I

    .line 145
    invoke-direct {p0, p1}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultImageResource(I)Landroid/app/SemWallpaperResourcesInfo$Item;

    move-result-object v0

    .line 146
    .local v0, "defaultResource":Landroid/app/SemWallpaperResourcesInfo$Item;
    if-nez v0, :cond_0

    .line 147
    const/4 v1, 0x0

    return-object v1

    .line 150
    :cond_0
    invoke-static {v0}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "resourceName":Ljava/lang/String;
    return-object v1
.end method

.method public blacklist getDefaultImageWallpaper(I)Ljava/io/InputStream;
    .locals 7
    .param p1, "which"    # I

    .line 126
    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mImageItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const-string v2, "WallpaperResourcesInfo"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 131
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultImageFileName(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "resourceName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultImageWallpaper: resourceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 134
    :cond_1
    const/4 v3, 0x0

    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 135
    const/4 v3, 0x0

    .line 136
    .local v3, "inputStream":Ljava/io/InputStream;
    iget-object v4, p0, Landroid/app/SemWallpaperResourcesInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "drawable"

    const-string v6, "com.samsung.android.wallpaper.res"

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 138
    .local v4, "wallpaperResId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDefaultImageWallpaper: wallpaperResId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    if-gtz v4, :cond_2

    return-object v1

    .line 140
    :cond_2
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 141
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .local v1, "inputStream":Ljava/io/InputStream;
    return-object v1

    .line 133
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "wallpaperResId":I
    :cond_3
    :goto_0
    return-object v1

    .line 127
    .end local v0    # "resourceName":Ljava/lang/String;
    :cond_4
    :goto_1
    const-string v0, "getDefaultWallpaper: mItem is null"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-object v1
.end method

.method public blacklist getDefaultLiveWallpaperComponentName(I)Landroid/content/ComponentName;
    .locals 4
    .param p1, "which"    # I

    .line 244
    invoke-direct {p0, p1}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultLiveWallpaperResource(I)Landroid/app/SemWallpaperResourcesInfo$Item;

    move-result-object v0

    .line 245
    .local v0, "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgettypeParams(Landroid/app/SemWallpaperResourcesInfo$Item;)Landroid/app/SemWallpaperResourcesInfo$TypeParams;

    move-result-object v1

    iget-object v1, v1, Landroid/app/SemWallpaperResourcesInfo$TypeParams;->mServicePkgName:Ljava/lang/String;

    .line 246
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgettypeParams(Landroid/app/SemWallpaperResourcesInfo$Item;)Landroid/app/SemWallpaperResourcesInfo$TypeParams;

    move-result-object v1

    iget-object v1, v1, Landroid/app/SemWallpaperResourcesInfo$TypeParams;->mServiceClassName:Ljava/lang/String;

    .line 247
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-static {v0}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgettypeParams(Landroid/app/SemWallpaperResourcesInfo$Item;)Landroid/app/SemWallpaperResourcesInfo$TypeParams;

    move-result-object v2

    iget-object v2, v2, Landroid/app/SemWallpaperResourcesInfo$TypeParams;->mServicePkgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgettypeParams(Landroid/app/SemWallpaperResourcesInfo$Item;)Landroid/app/SemWallpaperResourcesInfo$TypeParams;

    move-result-object v3

    iget-object v3, v3, Landroid/app/SemWallpaperResourcesInfo$TypeParams;->mServiceClassName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 248
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getDefaultLiveWallpaperFileName(I)Ljava/lang/String;
    .locals 2
    .param p1, "which"    # I

    .line 239
    invoke-direct {p0, p1}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultLiveWallpaperResource(I)Landroid/app/SemWallpaperResourcesInfo$Item;

    move-result-object v0

    .line 240
    .local v0, "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public blacklist getDefaultMultipackStyle(I)Ljava/lang/String;
    .locals 2
    .param p1, "which"    # I

    .line 587
    invoke-direct {p0, p1}, Landroid/app/SemWallpaperResourcesInfo;->isPhone(I)Z

    move-result v0

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x4

    .line 588
    :cond_0
    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mDefaultMultipackStyle:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDefaultVideoFrameInfo(Ljava/lang/String;)I
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .line 199
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "WallpaperResourcesInfo"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 200
    const-string v0, "getDefaultVideoFrameInfo: fileName is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return v2

    .line 204
    :cond_0
    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mVideoItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 209
    :cond_1
    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mVideoItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 210
    .local v1, "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    invoke-static {v1}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 211
    invoke-static {v1}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetvideoFrameInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)I

    move-result v0

    return v0

    .line 213
    .end local v1    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    :cond_2
    goto :goto_0

    .line 215
    :cond_3
    return v2

    .line 205
    :cond_4
    :goto_1
    const-string v0, "getDefaultVideoFrameInfo: mVideoItems is null"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return v2
.end method

.method public blacklist getDefaultVideoWallpaperFileName(I)Ljava/lang/String;
    .locals 9
    .param p1, "which"    # I

    .line 155
    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mVideoItems:Ljava/util/ArrayList;

    const-string v1, "WallpaperResourcesInfo"

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 159
    :cond_0
    const/4 v0, 0x0

    .line 160
    .local v0, "defaultResource":Landroid/app/SemWallpaperResourcesInfo$Item;
    and-int/lit8 v2, p1, 0x10

    const/16 v3, 0x10

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    .line 161
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    .line 162
    .local v2, "screen":I
    :goto_0
    iget-boolean v3, p0, Landroid/app/SemWallpaperResourcesInfo;->mIsSupportCMF:Z

    const-string v5, " , "

    const-string v6, ", "

    if-eqz v3, :cond_4

    .line 164
    :try_start_0
    iget-object v3, p0, Landroid/app/SemWallpaperResourcesInfo;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/WallpaperManager;->getDeviceColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/SemWallpaperResourcesInfo;->mColorCode:Ljava/lang/String;

    .line 165
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultItem: colorCode = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Landroid/app/SemWallpaperResourcesInfo;->mColorCode:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " , screen = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v3, p0, Landroid/app/SemWallpaperResourcesInfo;->mVideoItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 168
    .local v7, "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    iget-object v8, p0, Landroid/app/SemWallpaperResourcesInfo;->mColorCode:Ljava/lang/String;

    invoke-direct {p0, v7, p1, v2, v8}, Landroid/app/SemWallpaperResourcesInfo;->isDefaultResource(Landroid/app/SemWallpaperResourcesInfo$Item;IILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDefaultItem by color code: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v7}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v7}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetindex(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v7}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    move-object v0, v7

    .line 171
    goto :goto_2

    .line 173
    .end local v7    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    :cond_2
    goto :goto_1

    .line 177
    :cond_3
    :goto_2
    goto :goto_3

    .line 175
    :catch_0
    move-exception v3

    .line 176
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    if-nez v0, :cond_6

    .line 181
    iget-object v3, p0, Landroid/app/SemWallpaperResourcesInfo;->mVideoItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 182
    .restart local v7    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    invoke-static {v7}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetisDefault(Landroid/app/SemWallpaperResourcesInfo$Item;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDefaultItem by default attr: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v7}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v7}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetindex(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v7}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    move-object v0, v7

    .line 185
    goto :goto_5

    .line 187
    .end local v7    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    :cond_5
    goto :goto_4

    .line 190
    :cond_6
    :goto_5
    if-nez v0, :cond_7

    .line 191
    iget-object v3, p0, Landroid/app/SemWallpaperResourcesInfo;->mVideoItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 192
    .local v3, "firstVideo":Landroid/app/SemWallpaperResourcesInfo$Item;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDefaultItem by first resource: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetindex(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mVideoItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 195
    .end local v3    # "firstVideo":Landroid/app/SemWallpaperResourcesInfo$Item;
    :cond_7
    invoke-static {v0}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 156
    .end local v0    # "defaultResource":Landroid/app/SemWallpaperResourcesInfo$Item;
    .end local v2    # "screen":I
    :cond_8
    :goto_6
    const-string v0, "getDefaultVideoWallpaperFileName: mVideoItems is null"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDefaultWallpaperType(I)I
    .locals 3
    .param p1, "which"    # I

    .line 571
    invoke-direct {p0, p1}, Landroid/app/SemWallpaperResourcesInfo;->isPhone(I)Z

    move-result v0

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x4

    .line 572
    :cond_0
    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mDefaultTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 573
    .local v0, "type":I
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 574
    const/4 v0, 0x7

    .line 576
    :cond_1
    return v0
.end method

.method public blacklist getDefaultWallpaperType(ILjava/lang/String;)I
    .locals 9
    .param p1, "which"    # I
    .param p2, "colorCode"    # Ljava/lang/String;

    .line 76
    and-int/lit8 v0, p1, 0x10

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 78
    .local v0, "screen":I
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "WallpaperResourcesInfo"

    if-nez v2, :cond_7

    invoke-direct {p0, p2}, Landroid/app/SemWallpaperResourcesInfo;->isBespokeCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/app/SemWallpaperResourcesInfo;->mBespokeCode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultWallpaperType: colorCode = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " , screen = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :try_start_0
    iget-object v2, p0, Landroid/app/SemWallpaperResourcesInfo;->mVideoItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, " , "

    const-string v6, ", "

    const-string v7, "getDefaultWallpaperType by color code: "

    if-eqz v4, :cond_2

    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 83
    .local v4, "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    invoke-direct {p0, v4, p1, v0, p2}, Landroid/app/SemWallpaperResourcesInfo;->isDefaultResource(Landroid/app/SemWallpaperResourcesInfo$Item;IILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetindex(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/16 v1, 0x8

    return v1

    .line 87
    .end local v4    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    :cond_1
    goto :goto_1

    .line 88
    :cond_2
    iget-object v2, p0, Landroid/app/SemWallpaperResourcesInfo;->mImageItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 89
    .restart local v4    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    invoke-direct {p0, v4, p1, v0, p2}, Landroid/app/SemWallpaperResourcesInfo;->isDefaultResource(Landroid/app/SemWallpaperResourcesInfo$Item;IILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetindex(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return v1

    .line 93
    .end local v4    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    :cond_3
    goto :goto_2

    .line 94
    :cond_4
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mLiveItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 95
    .local v2, "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    invoke-direct {p0, v2, p1, v0, p2}, Landroid/app/SemWallpaperResourcesInfo;->isDefaultResource(Landroid/app/SemWallpaperResourcesInfo$Item;IILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetindex(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    const/4 v1, 0x7

    return v1

    .line 99
    .end local v2    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    :cond_5
    goto :goto_3

    .line 102
    :cond_6
    goto :goto_4

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_4
    invoke-virtual {p0, p1}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultWallpaperType(I)I

    move-result v1

    .line 105
    .local v1, "type":I
    const/16 v2, 0xa

    if-ne v1, v2, :cond_8

    .line 106
    const/4 v1, 0x7

    .line 108
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultWallpaperType: which = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " , type = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return v1
.end method

.method public blacklist isBlackFirstFrame(Ljava/lang/String;)Z
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .line 219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "WallpaperResourcesInfo"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 220
    const-string v0, "isBlackFirstFrame: fileName is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return v2

    .line 224
    :cond_0
    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mVideoItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 229
    :cond_1
    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mVideoItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 230
    .local v1, "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    invoke-static {v1}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 231
    invoke-static {v1}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetisBlackFirstFrame(Landroid/app/SemWallpaperResourcesInfo$Item;)Z

    move-result v0

    return v0

    .line 233
    .end local v1    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    :cond_2
    goto :goto_0

    .line 235
    :cond_3
    return v2

    .line 225
    :cond_4
    :goto_1
    const-string v0, "isBlackFirstFrame: mVideoItems is null"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return v2
.end method

.method public blacklist isDefaultMultipack(I)Z
    .locals 2
    .param p1, "which"    # I

    .line 596
    invoke-virtual {p0, p1}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultWallpaperType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isDefaultVideo(I)Z
    .locals 2
    .param p1, "which"    # I

    .line 592
    invoke-virtual {p0, p1}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultWallpaperType(I)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isSupportCMF()Z
    .locals 1

    .line 554
    iget-boolean v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mIsSupportCMF:Z

    return v0
.end method
