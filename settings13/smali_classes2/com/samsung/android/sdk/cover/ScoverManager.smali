.class public Lcom/samsung/android/sdk/cover/ScoverManager;
.super Ljava/lang/Object;
.source "ScoverManager.java"


# static fields
.field private static sIsClearCameraViewCoverSystemFeatureEnabled:Z = false

.field private static sIsClearCoverSystemFeatureEnabled:Z = false

.field private static sIsClearSideViewCoverSystemFeatureEnabled:Z = false

.field private static sIsFilpCoverSystemFeatureEnabled:Z = false

.field private static sIsLEDBackCoverSystemFeatureEnabled:Z = false

.field private static sIsMiniSviewWalletCoverSysltemFeatureEnabled:Z = false

.field private static sIsNeonCoverSystemFeatureEnabled:Z = false

.field private static sIsNfcLedCoverSystemFeatureEnabled:Z = false

.field private static sIsSViewCoverSystemFeatureEnabled:Z = false

.field private static sIsSystemFeatureQueried:Z = false

.field private static sServiceVersion:I = 0x1000000


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCoverPowerKeyListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mLcdOffDisableDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mLegacyLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/samsung/android/cover/ICoverManager;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 100
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 106
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 112
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 118
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mCoverPowerKeyListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 124
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLegacyLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 133
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLcdOffDisableDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 264
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mToken:Landroid/os/IBinder;

    .line 272
    iput-object p1, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    .line 273
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->initSystemFeature()V

    return-void
.end method

.method private declared-synchronized getService()Lcom/samsung/android/cover/ICoverManager;
    .locals 2

    monitor-enter p0

    .line 492
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string v0, "cover"

    .line 493
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string v0, "ScoverManager"

    const-string/jumbo v1, "warning: no COVER_MANAGER_SERVICE"

    .line 495
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initSystemFeature()V
    .locals 2

    .line 280
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSystemFeatureQueried:Z

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.flip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    .line 283
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.sview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    .line 285
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.nfcledcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsNfcLedCoverSystemFeatureEnabled:Z

    .line 287
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.clearcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsClearCoverSystemFeatureEnabled:Z

    .line 289
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.neoncover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsNeonCoverSystemFeatureEnabled:Z

    .line 291
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.clearsideviewcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsClearSideViewCoverSystemFeatureEnabled:Z

    .line 293
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.ledbackcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsLEDBackCoverSystemFeatureEnabled:Z

    .line 295
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.minisviewwalletcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsMiniSviewWalletCoverSysltemFeatureEnabled:Z

    .line 297
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.clearcameraviewcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsClearCameraViewCoverSystemFeatureEnabled:Z

    const/4 v0, 0x1

    .line 299
    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSystemFeatureQueried:Z

    .line 300
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverManagerVersion()I

    move-result p0

    sput p0, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    :cond_0
    return-void
.end method

.method static isSupportableVersion(I)Z
    .locals 6

    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    const v2, 0xffff

    and-int/2addr p0, v2

    .line 476
    sget v3, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    shr-int/lit8 v4, v3, 0x18

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    and-int/2addr v2, v3

    if-lt v4, v0, :cond_0

    if-lt v5, v1, :cond_0

    if-lt v2, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method getCoverManagerVersion()I
    .locals 5

    .line 452
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v0

    const-string v1, "ScoverManager"

    if-eqz v0, :cond_0

    .line 454
    :try_start_0
    const-class v0, Lcom/samsung/android/cover/ICoverManager;

    const-string v2, "getVersion"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 455
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object p0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVersion failed : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/high16 p0, 0x1000000

    .line 460
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "serviceVersion : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;
    .locals 13

    .line 821
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ScoverManager"

    if-nez v0, :cond_0

    const-string p0, "getCoverState : This device is not supported cover"

    .line 822
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 826
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 828
    invoke-interface {p0}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 830
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v3, 0xff

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v0, :cond_1

    const-string p0, "getCoverState : type of cover is nfc smart cover and cover is closed"

    .line 831
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    const/high16 v0, 0x10b0000

    .line 835
    invoke-static {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 836
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v4, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v5, p0, Lcom/samsung/android/cover/CoverState;->type:I

    iget v6, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iget v7, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v8, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v9, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    iget v10, p0, Lcom/samsung/android/cover/CoverState;->model:I

    iget-boolean v11, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    iget v12, p0, Lcom/samsung/android/cover/CoverState;->fotaMode:I

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZIZI)V

    goto :goto_0

    :cond_2
    const/high16 v0, 0x1070000

    .line 840
    invoke-static {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 841
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v4, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v5, p0, Lcom/samsung/android/cover/CoverState;->type:I

    iget v6, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iget v7, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v8, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v9, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    iget v10, p0, Lcom/samsung/android/cover/CoverState;->model:I

    iget-boolean v11, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZIZ)V

    goto :goto_0

    :cond_3
    const/high16 v0, 0x1020000

    .line 845
    invoke-static {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 846
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v4, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v5, p0, Lcom/samsung/android/cover/CoverState;->type:I

    iget v6, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iget v7, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v8, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v9, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    iget v10, p0, Lcom/samsung/android/cover/CoverState;->model:I

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZI)V

    goto :goto_0

    :cond_4
    const/high16 v0, 0x1010000

    .line 850
    invoke-static {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 851
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v4, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v5, p0, Lcom/samsung/android/cover/CoverState;->type:I

    iget v6, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iget v7, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v8, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v9, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZ)V

    goto :goto_0

    .line 855
    :cond_5
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v4, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v5, p0, Lcom/samsung/android/cover/CoverState;->type:I

    iget v6, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iget v7, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v8, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIII)V

    :goto_0
    const/high16 v3, 0x10c0000

    .line 859
    invoke-static {v3}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 860
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/cover/ScoverState;->setVisibleRect(Landroid/graphics/Rect;)V

    :cond_6
    return-object v0

    :cond_7
    const-string p0, "getCoverState : coverState is null"

    .line 864
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "RemoteException in getCoverState: "

    .line 868
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_1
    return-object v1
.end method

.method public isSupportCover()Z
    .locals 0

    .line 311
    sget-boolean p0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsClearCoverSystemFeatureEnabled:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsNeonCoverSystemFeatureEnabled:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsClearSideViewCoverSystemFeatureEnabled:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsNfcLedCoverSystemFeatureEnabled:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsLEDBackCoverSystemFeatureEnabled:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsMiniSviewWalletCoverSysltemFeatureEnabled:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsClearCameraViewCoverSystemFeatureEnabled:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
