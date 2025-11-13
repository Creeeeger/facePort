.class public final Landroid/content/res/AssetManager;
.super Ljava/lang/Object;
.source "AssetManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/AssetManager$AssetInputStream;,
        Landroid/content/res/AssetManager$Builder;
    }
.end annotation


# static fields
.field public static final whitelist ACCESS_BUFFER:I = 0x3

.field public static final whitelist ACCESS_RANDOM:I = 0x1

.field public static final whitelist ACCESS_STREAMING:I = 0x2

.field public static final whitelist ACCESS_UNKNOWN:I = 0x0

.field public static final blacklist COOKIE_UNKNOWN:I = -0x1

.field private static final greylist-max-o DEBUG_REFS:Z = false

.field private static final greylist-max-o FRAMEWORK_APK_PATH:Ljava/lang/String; = "/system/framework/framework-res.apk"

.field private static final blacklist MEDIATEK_APK_PATH:Ljava/lang/String; = "/system/app/mediatek-res/mediatek-res.apk"

.field private static final blacklist PROPERTY_MTK_MODEL:Ljava/lang/String; = "ro.vendor.mtk_model"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AssetManager"

.field private static blacklist sCTxtParser:Lcom/samsung/android/util/CustomizedTextParser;

.field private static final greylist-max-o sEmptyApkAssets:[Landroid/content/res/ApkAssets;

.field private static final greylist-max-o sSync:Ljava/lang/Object;

.field static greylist sSystem:Landroid/content/res/AssetManager;

.field private static greylist-max-o sSystemApkAssets:[Landroid/content/res/ApkAssets;

.field private static greylist-max-o sSystemApkAssetsSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/res/ApkAssets;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mApkAssets:[Landroid/content/res/ApkAssets;

.field private blacklist mLoaders:[Landroid/content/res/loader/ResourcesLoader;

.field private greylist-max-o mNumRefs:I

.field private greylist mObject:J

.field private final greylist-max-o mOffsets:[J

.field private greylist-max-o mOpen:Z

.field private greylist-max-o mRefStacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/RuntimeException;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mSamsungThemeOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mValue:Landroid/util/TypedValue;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmObject(Landroid/content/res/AssetManager;)J
    .locals 2

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmApkAssets(Landroid/content/res/AssetManager;[Landroid/content/res/ApkAssets;)V
    .locals 0

    iput-object p1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLoaders(Landroid/content/res/AssetManager;[Landroid/content/res/loader/ResourcesLoader;)V
    .locals 0

    iput-object p1, p0, Landroid/content/res/AssetManager;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdecRefsLocked(Landroid/content/res/AssetManager;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->decRefsLocked(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeAssetDestroy(J)V
    .locals 0

    invoke-static {p0, p1}, Landroid/content/res/AssetManager;->nativeAssetDestroy(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeAssetGetLength(J)J
    .locals 0

    invoke-static {p0, p1}, Landroid/content/res/AssetManager;->nativeAssetGetLength(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeAssetGetRemainingLength(J)J
    .locals 0

    invoke-static {p0, p1}, Landroid/content/res/AssetManager;->nativeAssetGetRemainingLength(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeAssetRead(J[BII)I
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->nativeAssetRead(J[BII)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeAssetReadChar(J)I
    .locals 0

    invoke-static {p0, p1}, Landroid/content/res/AssetManager;->nativeAssetReadChar(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeAssetSeek(JJI)J
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->nativeAssetSeek(JJI)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetApkAssets(J[Landroid/content/res/ApkAssets;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/content/res/AssetManager;->nativeSetApkAssets(J[Landroid/content/res/ApkAssets;Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    .line 85
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/content/res/ApkAssets;

    sput-object v1, Landroid/content/res/AssetManager;->sEmptyApkAssets:[Landroid/content/res/ApkAssets;

    .line 89
    const/4 v1, 0x0

    sput-object v1, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    .line 91
    new-array v0, v0, [Landroid/content/res/ApkAssets;

    sput-object v0, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    .line 1445
    sput-object v1, Landroid/content/res/AssetManager;->sCTxtParser:Lcom/samsung/android/util/CustomizedTextParser;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 5

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 123
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 134
    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mSamsungThemeOverlays:Ljava/util/ArrayList;

    .line 239
    sget-object v0, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_0
    const-string v1, "/system/framework/framework-res.apk"

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroid/content/res/AssetManager;->createSystemAssetsInZygoteLocked(ZLjava/lang/String;)V

    .line 241
    sget-object v1, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    .line 242
    .local v1, "assets":[Landroid/content/res/ApkAssets;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-static {}, Landroid/content/res/AssetManager;->nativeCreate()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/res/AssetManager;->mObject:J

    .line 251
    invoke-virtual {p0, v1, v2}, Landroid/content/res/AssetManager;->setApkAssets([Landroid/content/res/ApkAssets;Z)V

    .line 252
    return-void

    .line 242
    .end local v1    # "assets":[Landroid/content/res/ApkAssets;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private constructor greylist-max-o <init>(Z)V
    .locals 2
    .param p1, "sentinel"    # Z

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 123
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 134
    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mSamsungThemeOverlays:Ljava/util/ArrayList;

    .line 260
    invoke-static {}, Landroid/content/res/AssetManager;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    .line 265
    return-void
.end method

.method synthetic constructor blacklist <init>(ZLandroid/content/res/AssetManager-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;-><init>(Z)V

    return-void
.end method

.method private greylist-max-o addAssetPathInternal(Ljava/lang/String;ZZ)I
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "overlay"    # Z
    .param p3, "appAsLib"    # Z

    .line 515
    const-string/jumbo v0, "path"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 516
    monitor-enter p0

    .line 517
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 518
    iget-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v0, v0

    .line 521
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 522
    iget-object v2, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 523
    add-int/lit8 v2, v1, 0x1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 521
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 529
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    .line 532
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/resource-cache/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 533
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@idmap"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 535
    .local v3, "idmapPath":Ljava/lang/String;
    invoke-static {v3, v1}, Landroid/content/res/ApkAssets;->loadOverlayFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v4

    .line 539
    .local v4, "assets":Landroid/content/res/ApkAssets;
    if-eqz p1, :cond_2

    const-string v5, "/data/overlays/currentstyle"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/content/res/AssetManager;->mSamsungThemeOverlays:Ljava/util/ArrayList;

    .line 540
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 541
    iget-object v5, p0, Landroid/content/res/AssetManager;->mSamsungThemeOverlays:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    .end local v3    # "idmapPath":Ljava/lang/String;
    :cond_2
    goto :goto_2

    .line 549
    .end local v4    # "assets":Landroid/content/res/ApkAssets;
    :catch_0
    move-exception v2

    goto :goto_3

    .line 546
    :cond_3
    nop

    .line 547
    if-eqz p3, :cond_4

    const/4 v3, 0x2

    goto :goto_1

    :cond_4
    move v3, v1

    .line 546
    :goto_1
    invoke-static {p1, v3}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v1

    .line 551
    .restart local v4    # "assets":Landroid/content/res/ApkAssets;
    :goto_2
    nop

    .line 553
    :try_start_2
    iget-object v1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/res/ApkAssets;

    iput-object v1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    .line 554
    aput-object v4, v1, v0

    .line 555
    iget-wide v5, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v5, v6, v1, v2}, Landroid/content/res/AssetManager;->nativeSetApkAssets(J[Landroid/content/res/ApkAssets;Z)V

    .line 556
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Landroid/content/res/AssetManager;->invalidateCachesLocked(I)V

    .line 557
    add-int/lit8 v1, v0, 0x1

    monitor-exit p0

    return v1

    .line 550
    .end local v4    # "assets":Landroid/content/res/ApkAssets;
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    monitor-exit p0

    return v1

    .line 558
    .end local v0    # "count":I
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static blacklist createSystemAssetsInZygoteLocked(ZLjava/lang/String;)V
    .locals 8
    .param p0, "reinitialize"    # Z
    .param p1, "frameworkPath"    # Ljava/lang/String;

    .line 275
    sget-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    .line 276
    return-void

    .line 280
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v0, "apkAssets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/ApkAssets;>;"
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-static {}, Lcom/android/internal/content/om/OverlayConfig;->getZygoteInstance()Lcom/android/internal/content/om/OverlayConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/content/om/OverlayConfig;->createImmutableFrameworkIdmapsInZygote()[Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "systemIdmapPaths":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 286
    .local v6, "idmapPath":Ljava/lang/String;
    invoke-static {v6, v1}, Landroid/content/res/ApkAssets;->loadOverlayFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    nop

    .end local v6    # "idmapPath":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 288
    :cond_1
    const-string v3, "1"

    const-string/jumbo v5, "ro.vendor.mtk_model"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 289
    const-string v3, "/system/app/mediatek-res/mediatek-res.apk"

    invoke-static {v3, v1}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_2
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v3, Landroid/content/res/AssetManager;->sSystemApkAssetsSet:Landroid/util/ArraySet;

    .line 292
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/res/ApkAssets;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/res/ApkAssets;

    sput-object v3, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    .line 293
    sget-object v3, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    if-nez v3, :cond_3

    .line 294
    new-instance v3, Landroid/content/res/AssetManager;

    invoke-direct {v3, v1}, Landroid/content/res/AssetManager;-><init>(Z)V

    sput-object v3, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    .line 296
    :cond_3
    sget-object v1, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    sget-object v3, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    invoke-virtual {v1, v3, v4}, Landroid/content/res/AssetManager;->setApkAssets([Landroid/content/res/ApkAssets;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .end local v0    # "apkAssets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/ApkAssets;>;"
    .end local v2    # "systemIdmapPaths":[Ljava/lang/String;
    nop

    .line 300
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to create system AssetManager"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private greylist-max-o decRefsLocked(J)V
    .locals 5
    .param p1, "id"    # J

    .line 1605
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 1606
    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1607
    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeDestroy(J)V

    .line 1608
    iput-wide v2, p0, Landroid/content/res/AssetManager;->mObject:J

    .line 1609
    sget-object v0, Landroid/content/res/AssetManager;->sEmptyApkAssets:[Landroid/content/res/ApkAssets;

    iput-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    .line 1611
    :cond_0
    return-void
.end method

.method private greylist-max-o ensureOpenLocked()V
    .locals 2

    .line 586
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-eqz v0, :cond_0

    .line 589
    return-void

    .line 587
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AssetManager has been closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o ensureValidLocked()V
    .locals 4

    .line 574
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 577
    return-void

    .line 575
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AssetManager has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native greylist-max-o getAssetAllocations()Ljava/lang/String;
.end method

.method public static blacklist getCustomizedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 1450
    sget-object v0, Landroid/content/res/AssetManager;->sCTxtParser:Lcom/samsung/android/util/CustomizedTextParser;

    if-nez v0, :cond_0

    .line 1451
    invoke-static {}, Lcom/samsung/android/util/CustomizedTextParser;->getInstance()Lcom/samsung/android/util/CustomizedTextParser;

    move-result-object v0

    sput-object v0, Landroid/content/res/AssetManager;->sCTxtParser:Lcom/samsung/android/util/CustomizedTextParser;

    .line 1453
    :cond_0
    sget-object v0, Landroid/content/res/AssetManager;->sCTxtParser:Lcom/samsung/android/util/CustomizedTextParser;

    invoke-virtual {v0, p0}, Lcom/samsung/android/util/CustomizedTextParser;->getCustomizedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native greylist getGlobalAssetCount()I
.end method

.method public static native greylist getGlobalAssetManagerCount()I
.end method

.method public static greylist getSystem()Landroid/content/res/AssetManager;
    .locals 3

    .line 309
    sget-object v0, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "/system/framework/framework-res.apk"

    invoke-static {v1, v2}, Landroid/content/res/AssetManager;->createSystemAssetsInZygoteLocked(ZLjava/lang/String;)V

    .line 311
    sget-object v1, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    monitor-exit v0

    return-object v1

    .line 312
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static blacklist getThemeFreeFunction()J
    .locals 2

    .line 1268
    invoke-static {}, Landroid/content/res/AssetManager;->nativeGetThemeFreeFunction()J

    move-result-wide v0

    return-wide v0
.end method

.method private greylist-max-o incRefsLocked(J)V
    .locals 1
    .param p1, "id"    # J

    .line 1597
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 1598
    return-void
.end method

.method private greylist-max-o invalidateCachesLocked(I)V
    .locals 0
    .param p1, "diff"    # I

    .line 431
    return-void
.end method

.method private static native greylist-max-o nativeApplyStyle(JJIIJ[IJJ)V
.end method

.method private static native greylist-max-o nativeAssetDestroy(J)V
.end method

.method private static native greylist-max-o nativeAssetGetLength(J)J
.end method

.method private static native greylist-max-o nativeAssetGetRemainingLength(J)J
.end method

.method private static native greylist-max-o nativeAssetRead(J[BII)I
.end method

.method private static native greylist-max-o nativeAssetReadChar(J)I
.end method

.method private static native greylist-max-o nativeAssetSeek(JJI)J
.end method

.method private static native blacklist nativeAttributeResolutionStack(JJIII)[I
.end method

.method private static native blacklist nativeContainsAllocatedTable(J)Z
.end method

.method private static native greylist-max-o nativeCreate()J
.end method

.method private static native greylist-max-o nativeDestroy(J)V
.end method

.method private static native blacklist nativeGetAssignedPackageIdentifiers(JZZ)Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZ)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private static native blacklist nativeGetLastResourceResolution(J)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetLocales(JZ)[Ljava/lang/String;
.end method

.method private static native blacklist nativeGetOverlayableMap(JLjava/lang/String;)Ljava/util/Map;
.end method

.method private static native blacklist nativeGetOverlayablesToString(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private static native blacklist nativeGetParentThemeIdentifier(JI)I
.end method

.method private static native greylist-max-o nativeGetResourceArray(JI[I)I
.end method

.method private static native greylist-max-o nativeGetResourceArraySize(JI)I
.end method

.method private static native greylist-max-o nativeGetResourceBagValue(JIILandroid/util/TypedValue;)I
.end method

.method private static native greylist-max-o nativeGetResourceEntryName(JI)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetResourceIdentifier(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native greylist-max-o nativeGetResourceIntArray(JI)[I
.end method

.method private static native greylist-max-o nativeGetResourceName(JI)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetResourcePackageName(JI)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetResourceStringArray(JI)[Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetResourceStringArrayInfo(JI)[I
.end method

.method private static native greylist-max-o nativeGetResourceTypeName(JI)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetResourceValue(JISLandroid/util/TypedValue;Z)I
.end method

.method private static native greylist-max-o nativeGetSizeConfigurations(J)[Landroid/content/res/Configuration;
.end method

.method private static native greylist-max-o nativeGetStyleAttributes(JI)[I
.end method

.method private static native blacklist nativeGetThemeFreeFunction()J
.end method

.method private static native greylist-max-o nativeList(JLjava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeOpenAsset(JLjava/lang/String;I)J
.end method

.method private static native greylist-max-o nativeOpenAssetFd(JLjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeOpenNonAsset(JILjava/lang/String;I)J
.end method

.method private static native greylist-max-o nativeOpenNonAssetFd(JILjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeOpenXmlAsset(JILjava/lang/String;)J
.end method

.method private static native blacklist nativeOpenXmlAssetFd(JILjava/io/FileDescriptor;)J
.end method

.method private static native greylist-max-o nativeResolveAttrs(JJII[I[I[I[I)Z
.end method

.method private static native greylist-max-o nativeRetrieveAttributes(JJ[I[I[I)Z
.end method

.method private static native greylist-max-o nativeSetApkAssets(J[Landroid/content/res/ApkAssets;Z)V
.end method

.method private static native greylist-max-o nativeSetConfiguration(JIILjava/lang/String;IIIIIIIIIIIIIII)V
.end method

.method private static native blacklist nativeSetResourceResolutionLoggingEnabled(JZ)V
.end method

.method private static native greylist-max-o nativeThemeApplyStyle(JJIZ)V
.end method

.method private static native blacklist nativeThemeCopy(JJJJ)V
.end method

.method private static native greylist-max-o nativeThemeCreate(J)J
.end method

.method private static native greylist-max-o nativeThemeDump(JJILjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native greylist-max-o nativeThemeGetAttributeValue(JJILandroid/util/TypedValue;Z)I
.end method

.method static native greylist-max-o nativeThemeGetChangingConfigurations(J)I
.end method

.method private static native blacklist nativeThemeRebase(JJ[I[ZI)V
.end method


# virtual methods
.method public greylist addAssetPath(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 491
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/content/res/AssetManager;->addAssetPathInternal(Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method public greylist addAssetPathAsSharedLibrary(Ljava/lang/String;)I
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 501
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/content/res/AssetManager;->addAssetPathInternal(Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method public greylist addOverlayPath(Ljava/lang/String;)I
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 511
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/content/res/AssetManager;->addAssetPathInternal(Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method greylist-max-r applyStyle(JIILandroid/content/res/XmlBlock$Parser;[IJJ)V
    .locals 16
    .param p1, "themePtr"    # J
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "parser"    # Landroid/content/res/XmlBlock$Parser;
    .param p6, "inAttrs"    # [I
    .param p7, "outValuesAddress"    # J
    .param p9, "outIndicesAddress"    # J

    .line 1200
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    const-string v0, "inAttrs"

    move-object/from16 v14, p6

    invoke-static {v14, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1201
    monitor-enter p0

    .line 1204
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1205
    iget-wide v3, v1, Landroid/content/res/AssetManager;->mObject:J

    .line 1206
    if-eqz v2, :cond_0

    iget-wide v5, v2, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    :goto_0
    move-wide v9, v5

    .line 1205
    move-wide/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v11, p6

    move-wide/from16 v12, p7

    move-wide/from16 v14, p9

    invoke-static/range {v3 .. v15}, Landroid/content/res/AssetManager;->nativeApplyStyle(JJIIJ[IJJ)V

    .line 1208
    monitor-exit p0

    .line 1209
    return-void

    .line 1208
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist-max-o applyStyleToTheme(JIZ)V
    .locals 6
    .param p1, "themePtr"    # J
    .param p3, "resId"    # I
    .param p4, "force"    # Z

    .line 1272
    monitor-enter p0

    .line 1275
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1276
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/content/res/AssetManager;->nativeThemeApplyStyle(JJIZ)V

    .line 1277
    monitor-exit p0

    .line 1278
    return-void

    .line 1277
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist test-api close()V
    .locals 2

    .line 320
    monitor-enter p0

    .line 321
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v0, :cond_0

    .line 322
    monitor-exit p0

    return-void

    .line 325
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 326
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->decRefsLocked(J)V

    .line 327
    monitor-exit p0

    .line 328
    return-void

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist containsAllocatedTable()Z
    .locals 2

    .line 916
    monitor-enter p0

    .line 917
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 918
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeContainsAllocatedTable(J)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 919
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist createTheme()J
    .locals 2

    .line 1253
    monitor-enter p0

    .line 1254
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1255
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeThemeCreate(J)J

    move-result-wide v0

    .line 1256
    .local v0, "themePtr":J
    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    .line 1257
    monitor-exit p0

    return-wide v0

    .line 1258
    .end local v0    # "themePtr":J
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    monitor-enter p0

    .line 1614
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "apkAssets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1616
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1618
    iget-object v1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ApkAssets;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1616
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1620
    .end local v0    # "i":I
    .end local p0    # "this":Landroid/content/res/AssetManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 1613
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "prefix":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method greylist-max-o dumpTheme(JILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "theme"    # J
    .param p3, "priority"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "prefix"    # Ljava/lang/String;

    .line 812
    monitor-enter p0

    .line 813
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 814
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Landroid/content/res/AssetManager;->nativeThemeDump(JJILjava/lang/String;Ljava/lang/String;)V

    .line 815
    monitor-exit p0

    .line 816
    return-void

    .line 815
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1327
    monitor-enter p0

    .line 1328
    :try_start_0
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1329
    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeDestroy(J)V

    .line 1330
    iput-wide v2, p0, Landroid/content/res/AssetManager;->mObject:J

    .line 1332
    :cond_0
    monitor-exit p0

    .line 1333
    return-void

    .line 1332
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist-max-o findCookieForPath(Ljava/lang/String;)I
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 471
    const-string/jumbo v0, "path"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 472
    monitor-enter p0

    .line 473
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 474
    iget-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v0, v0

    .line 475
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 476
    iget-object v2, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 477
    add-int/lit8 v2, v1, 0x1

    monitor-exit p0

    return v2

    .line 475
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 480
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    monitor-exit p0

    .line 481
    const/4 v0, 0x0

    return v0

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist getApkAssets()[Landroid/content/res/ApkAssets;
    .locals 1

    .line 440
    monitor-enter p0

    .line 441
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    monitor-exit p0

    return-object v0

    .line 444
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    sget-object v0, Landroid/content/res/AssetManager;->sEmptyApkAssets:[Landroid/content/res/ApkAssets;

    return-object v0

    .line 444
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist getApkPaths()[Ljava/lang/String;
    .locals 4

    .line 451
    monitor-enter p0

    .line 452
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 454
    .local v1, "paths":[Ljava/lang/String;
    array-length v0, v0

    .line 455
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 456
    iget-object v3, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 455
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 458
    .end local v2    # "i":I
    :cond_0
    monitor-exit p0

    return-object v1

    .line 460
    .end local v0    # "count":I
    .end local v1    # "paths":[Ljava/lang/String;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 460
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public greylist getAssignedPackageIdentifiers()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1550
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers(ZZ)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAssignedPackageIdentifiers(ZZ)Landroid/util/SparseArray;
    .locals 2
    .param p1, "includeOverlays"    # Z
    .param p2, "includeLoaders"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1558
    monitor-enter p0

    .line 1559
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1560
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/AssetManager;->nativeGetAssignedPackageIdentifiers(JZZ)Landroid/util/SparseArray;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1561
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method blacklist getAttributeResolutionStack(JIII)[I
    .locals 7
    .param p1, "themePtr"    # J
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "xmlStyle"    # I

    .line 1213
    monitor-enter p0

    .line 1214
    :try_start_0
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    move-wide v2, p1

    move v4, p5

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroid/content/res/AssetManager;->nativeAttributeResolutionStack(JJIII)[I

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1216
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getLastResourceResolution()Ljava/lang/String;
    .locals 2

    .line 903
    monitor-enter p0

    .line 904
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 905
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeGetLastResourceResolution(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 906
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getLoaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;"
        }
    .end annotation

    .line 564
    iget-object v0, p0, Landroid/content/res/AssetManager;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getLocales()[Ljava/lang/String;
    .locals 3

    .line 1493
    monitor-enter p0

    .line 1494
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1495
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/content/res/AssetManager;->nativeGetLocales(JZ)[Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1496
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist-max-o getNonSystemLocales()[Ljava/lang/String;
    .locals 3

    .line 1510
    monitor-enter p0

    .line 1511
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1512
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/content/res/AssetManager;->nativeGetLocales(JZ)[Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1513
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getOverlayableMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1569
    monitor-enter p0

    .line 1570
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1571
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetOverlayableMap(JLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1572
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getOverlayablesToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1581
    monitor-enter p0

    .line 1582
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1583
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetOverlayablesToString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1584
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method blacklist getParentThemeIdentifier(I)I
    .locals 2
    .param p1, "resId"    # I

    .line 868
    monitor-enter p0

    .line 869
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 871
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetParentThemeIdentifier(JI)I

    move-result v0

    monitor-exit p0

    return v0

    .line 872
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist-max-o getPooledStringForCookie(II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "cookie"    # I
    .param p2, "id"    # I

    .line 925
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/content/res/ApkAssets;->getStringFromPool(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getResourceArray(I[I)I
    .locals 2
    .param p1, "resId"    # I
    .param p2, "outData"    # [I

    .line 705
    const-string/jumbo v0, "outData"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 706
    monitor-enter p0

    .line 707
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 708
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/AssetManager;->nativeGetResourceArray(JI[I)I

    move-result v0

    monitor-exit p0

    return v0

    .line 709
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist-max-o getResourceArraySize(I)I
    .locals 2
    .param p1, "resId"    # I

    .line 676
    monitor-enter p0

    .line 677
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 678
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceArraySize(JI)I

    move-result v0

    monitor-exit p0

    return v0

    .line 679
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist getResourceBagText(II)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "resId"    # I
    .param p2, "bagEntryId"    # I

    .line 656
    monitor-enter p0

    .line 657
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 658
    iget-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 659
    .local v0, "outValue":Landroid/util/TypedValue;
    iget-wide v1, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v1, v2, p1, p2, v0}, Landroid/content/res/AssetManager;->nativeGetResourceBagValue(JIILandroid/util/TypedValue;)I

    move-result v1

    .line 660
    .local v1, "cookie":I
    if-gtz v1, :cond_0

    .line 661
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .line 665
    :cond_0
    iget v2, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v2

    iput v2, v0, Landroid/util/TypedValue;->changingConfigurations:I

    .line 668
    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 669
    iget v2, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v1, v2}, Landroid/content/res/AssetManager;->getPooledStringForCookie(II)Ljava/lang/CharSequence;

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 671
    :cond_1
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 672
    .end local v0    # "outValue":Landroid/util/TypedValue;
    .end local v1    # "cookie":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist getResourceEntryName(I)Ljava/lang/String;
    .locals 2
    .param p1, "resId"    # I

    .line 844
    monitor-enter p0

    .line 845
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 846
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceEntryName(JI)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 847
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "defPackage"    # Ljava/lang/String;

    .line 853
    monitor-enter p0

    .line 854
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 856
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/content/res/AssetManager;->nativeGetResourceIdentifier(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    monitor-exit p0

    return v0

    .line 857
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist-max-o getResourceIntArray(I)[I
    .locals 2
    .param p1, "resId"    # I

    .line 754
    monitor-enter p0

    .line 755
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 756
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceIntArray(JI)[I

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 757
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist getResourceName(I)Ljava/lang/String;
    .locals 2
    .param p1, "resId"    # I

    .line 820
    monitor-enter p0

    .line 821
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 822
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceName(JI)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 823
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist getResourcePackageName(I)Ljava/lang/String;
    .locals 2
    .param p1, "resId"    # I

    .line 828
    monitor-enter p0

    .line 829
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 830
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourcePackageName(JI)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 831
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist-max-o getResourceStringArray(I)[Ljava/lang/String;
    .locals 2
    .param p1, "resId"    # I

    .line 720
    monitor-enter p0

    .line 721
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 722
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceStringArray(JI)[Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 723
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist getResourceText(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "resId"    # I

    .line 637
    monitor-enter p0

    .line 638
    :try_start_0
    iget-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 639
    .local v0, "outValue":Landroid/util/TypedValue;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 640
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 642
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 643
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist-max-o getResourceTextArray(I)[Ljava/lang/CharSequence;
    .locals 10
    .param p1, "resId"    # I

    .line 733
    monitor-enter p0

    .line 734
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 735
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceStringArrayInfo(JI)[I

    move-result-object v0

    .line 736
    .local v0, "rawInfoArray":[I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 737
    monitor-exit p0

    return-object v1

    .line 740
    :cond_0
    array-length v2, v0

    .line 741
    .local v2, "rawInfoArrayLen":I
    div-int/lit8 v3, v2, 0x2

    .line 742
    .local v3, "infoArrayLen":I
    new-array v4, v3, [Ljava/lang/CharSequence;

    .line 743
    .local v4, "retArray":[Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 744
    aget v7, v0, v5

    .line 745
    .local v7, "cookie":I
    add-int/lit8 v8, v5, 0x1

    aget v8, v0, v8

    .line 746
    .local v8, "index":I
    if-ltz v8, :cond_1

    if-lez v7, :cond_1

    .line 747
    invoke-virtual {p0, v7, v8}, Landroid/content/res/AssetManager;->getPooledStringForCookie(II)Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_1

    :cond_1
    move-object v9, v1

    :goto_1
    aput-object v9, v4, v6

    .line 743
    .end local v7    # "cookie":I
    .end local v8    # "index":I
    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 749
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_2
    monitor-exit p0

    return-object v4

    .line 750
    .end local v0    # "rawInfoArray":[I
    .end local v2    # "rawInfoArrayLen":I
    .end local v3    # "infoArrayLen":I
    .end local v4    # "retArray":[Ljava/lang/CharSequence;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist getResourceTypeName(I)Ljava/lang/String;
    .locals 2
    .param p1, "resId"    # I

    .line 836
    monitor-enter p0

    .line 837
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 838
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceTypeName(JI)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 839
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist getResourceValue(IILandroid/util/TypedValue;Z)Z
    .locals 7
    .param p1, "resId"    # I
    .param p2, "densityDpi"    # I
    .param p3, "outValue"    # Landroid/util/TypedValue;
    .param p4, "resolveRefs"    # Z

    .line 606
    const-string/jumbo v0, "outValue"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 607
    monitor-enter p0

    .line 608
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 609
    iget-wide v1, p0, Landroid/content/res/AssetManager;->mObject:J

    int-to-short v4, p2

    move v3, p1

    move-object v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Landroid/content/res/AssetManager;->nativeGetResourceValue(JISLandroid/util/TypedValue;Z)I

    move-result v0

    .line 611
    .local v0, "cookie":I
    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 612
    monitor-exit p0

    return v1

    .line 616
    :cond_0
    iget v2, p3, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v2

    iput v2, p3, Landroid/util/TypedValue;->changingConfigurations:I

    .line 619
    iget v2, p3, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 620
    iget v2, p3, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v0, v2}, Landroid/content/res/AssetManager;->getPooledStringForCookie(II)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    .line 621
    monitor-exit p0

    return v1

    .line 624
    :cond_1
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 625
    .end local v0    # "cookie":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getSamsungThemeOverlays()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1745
    iget-object v0, p0, Landroid/content/res/AssetManager;->mSamsungThemeOverlays:Ljava/util/ArrayList;

    return-object v0
.end method

.method greylist-max-o getSizeConfigurations()[Landroid/content/res/Configuration;
    .locals 2

    .line 1520
    monitor-enter p0

    .line 1521
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1522
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeGetSizeConfigurations(J)[Landroid/content/res/Configuration;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1523
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist-max-o getStyleAttributes(I)[I
    .locals 2
    .param p1, "resId"    # I

    .line 768
    monitor-enter p0

    .line 769
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 770
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetStyleAttributes(JI)[I

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 771
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist-max-o getThemeValue(JILandroid/util/TypedValue;Z)Z
    .locals 8
    .param p1, "theme"    # J
    .param p3, "resId"    # I
    .param p4, "outValue"    # Landroid/util/TypedValue;
    .param p5, "resolveRefs"    # Z

    .line 789
    const-string/jumbo v0, "outValue"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 790
    monitor-enter p0

    .line 791
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 792
    iget-wide v1, p0, Landroid/content/res/AssetManager;->mObject:J

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-static/range {v1 .. v7}, Landroid/content/res/AssetManager;->nativeThemeGetAttributeValue(JJILandroid/util/TypedValue;Z)I

    move-result v0

    .line 794
    .local v0, "cookie":I
    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 795
    monitor-exit p0

    return v1

    .line 799
    :cond_0
    iget v2, p4, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v2

    iput v2, p4, Landroid/util/TypedValue;->changingConfigurations:I

    .line 802
    iget v2, p4, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 803
    iget v2, p4, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v0, v2}, Landroid/content/res/AssetManager;->getPooledStringForCookie(II)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p4, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    .line 804
    monitor-exit p0

    return v1

    .line 807
    :cond_1
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 808
    .end local v0    # "cookie":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist isUpToDate()Z
    .locals 6

    .line 1466
    monitor-enter p0

    .line 1467
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1468
    monitor-exit p0

    return v1

    .line 1471
    :cond_0
    iget-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 1472
    .local v4, "apkAssets":Landroid/content/res/ApkAssets;
    invoke-virtual {v4}, Landroid/content/res/ApkAssets;->isUpToDate()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1473
    monitor-exit p0

    return v1

    .line 1471
    .end local v4    # "apkAssets":Landroid/content/res/ApkAssets;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1477
    :cond_2
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 1478
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist list(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1007
    const-string/jumbo v0, "path"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1008
    monitor-enter p0

    .line 1009
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1010
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeList(JLjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1011
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist open(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 939
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist open(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "accessMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 959
    const-string v0, "fileName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 960
    monitor-enter p0

    .line 961
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 962
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/AssetManager;->nativeOpenAsset(JLjava/lang/String;I)J

    move-result-wide v0

    .line 963
    .local v0, "asset":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 966
    new-instance v2, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;JLandroid/content/res/AssetManager$AssetInputStream-IA;)V

    .line 967
    .local v2, "assetInputStream":Landroid/content/res/AssetManager$AssetInputStream;
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {p0, v3, v4}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    .line 968
    monitor-exit p0

    return-object v2

    .line 964
    .end local v2    # "assetInputStream":Landroid/content/res/AssetManager$AssetInputStream;
    :cond_0
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asset file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/content/res/AssetManager;
    .end local p1    # "fileName":Ljava/lang/String;
    .end local p2    # "accessMode":I
    throw v2

    .line 969
    .end local v0    # "asset":J
    .restart local p0    # "this":Landroid/content/res/AssetManager;
    .restart local p1    # "fileName":Ljava/lang/String;
    .restart local p2    # "accessMode":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 983
    const-string v0, "fileName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 984
    monitor-enter p0

    .line 985
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 986
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    iget-object v2, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    invoke-static {v0, v1, p1, v2}, Landroid/content/res/AssetManager;->nativeOpenAssetFd(JLjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 987
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 990
    new-instance v7, Landroid/content/res/AssetFileDescriptor;

    iget-object v1, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const/4 v2, 0x1

    aget-wide v5, v1, v2

    move-object v1, v7

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    monitor-exit p0

    return-object v7

    .line 988
    :cond_0
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/content/res/AssetManager;
    .end local p1    # "fileName":Ljava/lang/String;
    throw v1

    .line 991
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/content/res/AssetManager;
    .restart local p1    # "fileName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist-max-r openNonAsset(ILjava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1062
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public greylist openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;
    .locals 5
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "accessMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1076
    const-string v0, "fileName"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1077
    monitor-enter p0

    .line 1078
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 1079
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/content/res/AssetManager;->nativeOpenNonAsset(JILjava/lang/String;I)J

    move-result-wide v0

    .line 1080
    .local v0, "asset":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 1083
    new-instance v2, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;JLandroid/content/res/AssetManager$AssetInputStream-IA;)V

    .line 1084
    .local v2, "assetInputStream":Landroid/content/res/AssetManager$AssetInputStream;
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {p0, v3, v4}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    .line 1085
    monitor-exit p0

    return-object v2

    .line 1081
    .end local v2    # "assetInputStream":Landroid/content/res/AssetManager$AssetInputStream;
    :cond_0
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asset absolute file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/content/res/AssetManager;
    .end local p1    # "cookie":I
    .end local p2    # "fileName":Ljava/lang/String;
    .end local p3    # "accessMode":I
    throw v2

    .line 1086
    .end local v0    # "asset":J
    .restart local p0    # "this":Landroid/content/res/AssetManager;
    .restart local p1    # "cookie":I
    .restart local p2    # "fileName":Ljava/lang/String;
    .restart local p3    # "accessMode":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist openNonAsset(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1027
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r openNonAsset(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "accessMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1049
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 8
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1115
    const-string v0, "fileName"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1116
    monitor-enter p0

    .line 1117
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 1118
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    iget-object v2, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 1119
    invoke-static {v0, v1, p1, p2, v2}, Landroid/content/res/AssetManager;->nativeOpenNonAssetFd(JILjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1120
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 1123
    new-instance v7, Landroid/content/res/AssetFileDescriptor;

    iget-object v1, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const/4 v2, 0x1

    aget-wide v5, v1, v2

    move-object v1, v7

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    monitor-exit p0

    return-object v7

    .line 1121
    :cond_0
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset absolute file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/content/res/AssetManager;
    .end local p1    # "cookie":I
    .end local p2    # "fileName":Ljava/lang/String;
    throw v1

    .line 1124
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/content/res/AssetManager;
    .restart local p1    # "cookie":I
    .restart local p2    # "fileName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist openNonAssetFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1100
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;
    .locals 5
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1176
    const-string v0, "fileName"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1177
    monitor-enter p0

    .line 1178
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 1180
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/AssetManager;->nativeOpenXmlAsset(JILjava/lang/String;)J

    move-result-wide v0

    .line 1181
    .local v0, "xmlBlock":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 1184
    new-instance v2, Landroid/content/res/XmlBlock;

    invoke-direct {v2, p0, v0, v1}, Landroid/content/res/XmlBlock;-><init>(Landroid/content/res/AssetManager;J)V

    .line 1185
    .local v2, "block":Landroid/content/res/XmlBlock;
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {p0, v3, v4}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    .line 1186
    monitor-exit p0

    return-object v2

    .line 1182
    .end local v2    # "block":Landroid/content/res/XmlBlock;
    :cond_0
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asset XML file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/content/res/AssetManager;
    .end local p1    # "cookie":I
    .end local p2    # "fileName":Ljava/lang/String;
    throw v2

    .line 1187
    .end local v0    # "xmlBlock":J
    .restart local p0    # "this":Landroid/content/res/AssetManager;
    .restart local p1    # "cookie":I
    .restart local p2    # "fileName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist-max-o openXmlBlockAsset(Ljava/lang/String;)Landroid/content/res/XmlBlock;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1164
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v0

    return-object v0
.end method

.method public whitelist openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 4
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1145
    invoke-virtual {p0, p1, p2}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v0

    .line 1146
    .local v0, "block":Landroid/content/res/XmlBlock;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v1, :cond_1

    .line 1153
    nop

    .line 1154
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->close()V

    .line 1153
    :cond_0
    return-object v1

    .line 1151
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "block.newParser() returned a null parser"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "block":Landroid/content/res/XmlBlock;
    .end local p0    # "this":Landroid/content/res/AssetManager;
    .end local p1    # "cookie":I
    .end local p2    # "fileName":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1145
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "block":Landroid/content/res/XmlBlock;
    .restart local p0    # "this":Landroid/content/res/AssetManager;
    .restart local p1    # "cookie":I
    .restart local p2    # "fileName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
.end method

.method public whitelist openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1134
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method blacklist rebaseTheme(JLandroid/content/res/AssetManager;[I[ZI)Landroid/content/res/AssetManager;
    .locals 8
    .param p1, "themePtr"    # J
    .param p3, "newAssetManager"    # Landroid/content/res/AssetManager;
    .param p4, "styleIds"    # [I
    .param p5, "force"    # [Z
    .param p6, "count"    # I

    .line 1283
    if-eq p0, p3, :cond_0

    .line 1284
    monitor-enter p0

    .line 1285
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1286
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->decRefsLocked(J)V

    .line 1287
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1288
    monitor-enter p3

    .line 1289
    :try_start_1
    invoke-direct {p3}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1290
    invoke-direct {p3, p1, p2}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    .line 1291
    monitor-exit p3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1287
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 1295
    :cond_0
    :goto_0
    :try_start_3
    monitor-enter p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1296
    :try_start_4
    invoke-direct {p3}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1297
    iget-wide v1, p3, Landroid/content/res/AssetManager;->mObject:J

    move-wide v3, p1

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-static/range {v1 .. v7}, Landroid/content/res/AssetManager;->nativeThemeRebase(JJ[I[ZI)V

    .line 1298
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1300
    invoke-static {p3}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 1301
    nop

    .line 1302
    return-object p3

    .line 1298
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local p0    # "this":Landroid/content/res/AssetManager;
    .end local p1    # "themePtr":J
    .end local p3    # "newAssetManager":Landroid/content/res/AssetManager;
    .end local p4    # "styleIds":[I
    .end local p5    # "force":[Z
    .end local p6    # "count":I
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1300
    .restart local p0    # "this":Landroid/content/res/AssetManager;
    .restart local p1    # "themePtr":J
    .restart local p3    # "newAssetManager":Landroid/content/res/AssetManager;
    .restart local p4    # "styleIds":[I
    .restart local p5    # "force":[Z
    .restart local p6    # "count":I
    :catchall_3
    move-exception v0

    invoke-static {p3}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 1301
    throw v0
.end method

.method greylist-max-o releaseTheme(J)V
    .locals 1
    .param p1, "themePtr"    # J

    .line 1262
    monitor-enter p0

    .line 1263
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->decRefsLocked(J)V

    .line 1264
    monitor-exit p0

    .line 1265
    return-void

    .line 1264
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist-max-r resolveAttrs(JII[I[I[I[I)Z
    .locals 15
    .param p1, "themePtr"    # J
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "inValues"    # [I
    .param p6, "inAttrs"    # [I
    .param p7, "outValues"    # [I
    .param p8, "outIndices"    # [I

    .line 1223
    move-object v1, p0

    const-string v0, "inAttrs"

    move-object/from16 v12, p6

    invoke-static {v12, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1224
    const-string/jumbo v0, "outValues"

    move-object/from16 v13, p7

    invoke-static {v13, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1225
    const-string/jumbo v0, "outIndices"

    move-object/from16 v14, p8

    invoke-static {v14, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1226
    monitor-enter p0

    .line 1229
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1230
    iget-wide v2, v1, Landroid/content/res/AssetManager;->mObject:J

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-static/range {v2 .. v11}, Landroid/content/res/AssetManager;->nativeResolveAttrs(JJII[I[I[I[I)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 1232
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist-max-r retrieveAttributes(Landroid/content/res/XmlBlock$Parser;[I[I[I)Z
    .locals 8
    .param p1, "parser"    # Landroid/content/res/XmlBlock$Parser;
    .param p2, "inAttrs"    # [I
    .param p3, "outValues"    # [I
    .param p4, "outIndices"    # [I

    .line 1238
    const-string/jumbo v0, "parser"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1239
    const-string v0, "inAttrs"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1240
    const-string/jumbo v0, "outValues"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1241
    const-string/jumbo v0, "outIndices"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1242
    monitor-enter p0

    .line 1245
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1246
    iget-wide v1, p0, Landroid/content/res/AssetManager;->mObject:J

    iget-wide v3, p1, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Landroid/content/res/AssetManager;->nativeRetrieveAttributes(JJ[I[I[I)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 1248
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist-max-o setApkAssets([Landroid/content/res/ApkAssets;Z)V
    .locals 6
    .param p1, "apkAssets"    # [Landroid/content/res/ApkAssets;
    .param p2, "invalidateCaches"    # Z

    .line 341
    const-string v0, "apkAssets"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 343
    sget-object v0, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [Landroid/content/res/ApkAssets;

    .line 346
    .local v1, "newApkAssets":[Landroid/content/res/ApkAssets;
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    sget-object v0, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    array-length v0, v0

    .line 350
    .local v0, "newLength":I
    array-length v2, p1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 351
    .local v4, "apkAsset":Landroid/content/res/ApkAssets;
    sget-object v5, Landroid/content/res/AssetManager;->sSystemApkAssetsSet:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 352
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "newLength":I
    .local v5, "newLength":I
    aput-object v4, v1, v0

    move v0, v5

    .line 350
    .end local v4    # "apkAsset":Landroid/content/res/ApkAssets;
    .end local v5    # "newLength":I
    .restart local v0    # "newLength":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 357
    :cond_1
    array-length v2, v1

    if-eq v0, v2, :cond_2

    .line 358
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, [Landroid/content/res/ApkAssets;

    .line 361
    :cond_2
    monitor-enter p0

    .line 362
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 363
    iput-object v1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    .line 364
    iget-wide v2, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v2, v3, v1, p2}, Landroid/content/res/AssetManager;->nativeSetApkAssets(J[Landroid/content/res/ApkAssets;Z)V

    .line 365
    if-eqz p2, :cond_3

    .line 367
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Landroid/content/res/AssetManager;->invalidateCachesLocked(I)V

    .line 369
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    iget-object v2, p0, Landroid/content/res/AssetManager;->mSamsungThemeOverlays:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 373
    iget-object v2, p0, Landroid/content/res/AssetManager;->mSamsungThemeOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 375
    :cond_4
    array-length v2, p1

    .line 376
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_6

    .line 377
    aget-object v4, p1, v3

    invoke-virtual {v4}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v4

    .line 378
    .local v4, "path":Ljava/lang/String;
    if-eqz v4, :cond_5

    const-string v5, "/data/overlays/currentstyle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/content/res/AssetManager;->mSamsungThemeOverlays:Ljava/util/ArrayList;

    .line 379
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 380
    iget-object v5, p0, Landroid/content/res/AssetManager;->mSamsungThemeOverlays:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    .end local v4    # "path":Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 385
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_6
    return-void

    .line 369
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public greylist setConfiguration(IILjava/lang/String;IIIIIIIIIIIIIII)V
    .locals 22
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "orientation"    # I
    .param p5, "touchscreen"    # I
    .param p6, "density"    # I
    .param p7, "keyboard"    # I
    .param p8, "keyboardHidden"    # I
    .param p9, "navigation"    # I
    .param p10, "screenWidth"    # I
    .param p11, "screenHeight"    # I
    .param p12, "smallestScreenWidthDp"    # I
    .param p13, "screenWidthDp"    # I
    .param p14, "screenHeightDp"    # I
    .param p15, "screenLayout"    # I
    .param p16, "uiMode"    # I
    .param p17, "colorMode"    # I
    .param p18, "majorVersion"    # I

    .line 1536
    move-object/from16 v1, p0

    monitor-enter p0

    .line 1537
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1538
    iget-wide v2, v1, Landroid/content/res/AssetManager;->mObject:J

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    move/from16 v20, p17

    move/from16 v21, p18

    invoke-static/range {v2 .. v21}, Landroid/content/res/AssetManager;->nativeSetConfiguration(JIILjava/lang/String;IIIIIIIIIIIIIII)V

    .line 1542
    monitor-exit p0

    .line 1543
    return-void

    .line 1542
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method blacklist setLoaders(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;)V"
        }
    .end annotation

    .line 392
    .local p1, "newLoaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    const-string/jumbo v0, "newLoaders"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v0, "apkAssets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/ApkAssets;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 397
    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->isForLoader()Z

    move-result v2

    if-nez v2, :cond_0

    .line 398
    iget-object v2, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 402
    .end local v1    # "i":I
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    .line 406
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 407
    .local v1, "loaderStartIndex":I
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 408
    .local v3, "uniqueLoaderApkAssets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/res/ApkAssets;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_4

    .line 409
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/loader/ResourcesLoader;

    invoke-virtual {v5}, Landroid/content/res/loader/ResourcesLoader;->getApkAssets()Ljava/util/List;

    move-result-object v5

    .line 410
    .local v5, "currentLoaderApkAssets":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/ApkAssets;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v2

    .local v6, "j":I
    :goto_2
    if-ltz v6, :cond_3

    .line 411
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/res/ApkAssets;

    .line 412
    .local v7, "loaderApkAssets":Landroid/content/res/ApkAssets;
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 413
    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 410
    .end local v7    # "loaderApkAssets":Landroid/content/res/ApkAssets;
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 408
    .end local v5    # "currentLoaderApkAssets":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/ApkAssets;>;"
    .end local v6    # "j":I
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 419
    .end local v1    # "loaderStartIndex":I
    .end local v3    # "uniqueLoaderApkAssets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/res/ApkAssets;>;"
    .end local v4    # "i":I
    :cond_4
    const/4 v1, 0x0

    new-array v3, v1, [Landroid/content/res/loader/ResourcesLoader;

    invoke-interface {p1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/res/loader/ResourcesLoader;

    iput-object v3, p0, Landroid/content/res/AssetManager;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    .line 420
    new-array v1, v1, [Landroid/content/res/ApkAssets;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/res/ApkAssets;

    invoke-virtual {p0, v1, v2}, Landroid/content/res/AssetManager;->setApkAssets([Landroid/content/res/ApkAssets;Z)V

    .line 421
    return-void
.end method

.method public blacklist setResourceResolutionLoggingEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 887
    monitor-enter p0

    .line 888
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 889
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeSetResourceResolutionLoggingEnabled(JZ)V

    .line 890
    monitor-exit p0

    .line 891
    return-void

    .line 890
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist-max-r setThemeTo(JLandroid/content/res/AssetManager;J)V
    .locals 8
    .param p1, "dstThemePtr"    # J
    .param p3, "srcAssetManager"    # Landroid/content/res/AssetManager;
    .param p4, "srcThemePtr"    # J

    .line 1307
    monitor-enter p0

    .line 1308
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1309
    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1310
    :try_start_1
    invoke-direct {p3}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1311
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    iget-wide v4, p3, Landroid/content/res/AssetManager;->mObject:J

    move-wide v2, p1

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Landroid/content/res/AssetManager;->nativeThemeCopy(JJJJ)V

    .line 1312
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1313
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1314
    return-void

    .line 1312
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Landroid/content/res/AssetManager;
    .end local p1    # "dstThemePtr":J
    .end local p3    # "srcAssetManager":Landroid/content/res/AssetManager;
    .end local p4    # "srcThemePtr":J
    :try_start_4
    throw v0

    .line 1313
    .restart local p0    # "this":Landroid/content/res/AssetManager;
    .restart local p1    # "dstThemePtr":J
    .restart local p3    # "srcAssetManager":Landroid/content/res/AssetManager;
    .restart local p4    # "srcThemePtr":J
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method greylist-max-o xmlBlockGone(I)V
    .locals 2
    .param p1, "id"    # I

    .line 1191
    monitor-enter p0

    .line 1192
    int-to-long v0, p1

    :try_start_0
    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->decRefsLocked(J)V

    .line 1193
    monitor-exit p0

    .line 1194
    return-void

    .line 1193
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
