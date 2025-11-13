.class public final Lcom/samsung/android/sdk/cover/ScoverManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sIsClearCameraViewCoverSystemFeatureEnabled:Z = false

.field public static sIsClearCoverSystemFeatureEnabled:Z = false

.field public static sIsClearSideViewCoverSystemFeatureEnabled:Z = false

.field public static sIsFilpCoverSystemFeatureEnabled:Z = false

.field public static sIsLEDBackCoverSystemFeatureEnabled:Z = false

.field public static sIsMiniSviewWalletCoverSysltemFeatureEnabled:Z = false

.field public static sIsNeonCoverSystemFeatureEnabled:Z = false

.field public static sIsNfcLedCoverSystemFeatureEnabled:Z = false

.field public static sIsSViewCoverSystemFeatureEnabled:Z = false

.field public static sIsSystemFeatureQueried:Z = false

.field public static sServiceVersion:I = 0x1000000


# instance fields
.field public mService:Lcom/samsung/android/cover/ICoverManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSystemFeatureQueried:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.flip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.sview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.nfcledcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsNfcLedCoverSystemFeatureEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.clearcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsClearCoverSystemFeatureEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.neoncover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsNeonCoverSystemFeatureEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.clearsideviewcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsClearSideViewCoverSystemFeatureEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.ledbackcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsLEDBackCoverSystemFeatureEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.minisviewwalletcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsMiniSviewWalletCoverSysltemFeatureEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.sec.feature.cover.clearcameraviewcover"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsClearCameraViewCoverSystemFeatureEnabled:Z

    const/4 p1, 0x1

    sput-boolean p1, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSystemFeatureQueried:Z

    invoke-static {}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result p1

    const-string v0, "ScoverManager"

    if-eqz p1, :cond_0

    :try_start_0
    const-class p1, Lcom/samsung/android/cover/ICoverManager;

    const-string v1, "getVersion"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object p0

    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "getVersion failed : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/high16 p0, 0x1000000

    :goto_0
    const-string/jumbo p1, "serviceVersion : "

    invoke-static {p0, p1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    sput p0, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    :cond_1
    return-void
.end method

.method public static isSupportCover()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsClearCoverSystemFeatureEnabled:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsNeonCoverSystemFeatureEnabled:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsClearSideViewCoverSystemFeatureEnabled:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsNfcLedCoverSystemFeatureEnabled:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsLEDBackCoverSystemFeatureEnabled:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsMiniSviewWalletCoverSysltemFeatureEnabled:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsClearCameraViewCoverSystemFeatureEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isSupportableVersion(I)Z
    .locals 4

    shr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    sget v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    shr-int/lit8 v1, v0, 0x18

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    const v3, 0xffff

    and-int/2addr v0, v3

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    if-lt v2, p0, :cond_0

    if-ltz v0, :cond_0

    return v3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;
    .locals 12

    invoke-static {}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ScoverManager"

    if-nez v0, :cond_0

    const-string p0, "getCoverState : This device is not supported cover"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-interface {p0}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object p0

    if-eqz p0, :cond_7

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v3, 0xff

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v0, :cond_1

    const-string p0, "getCoverState : type of cover is nfc smart cover and cover is closed"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_1
    const/high16 v0, 0x10b0000

    invoke-static {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v3, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v4, p0, Lcom/samsung/android/cover/CoverState;->type:I

    iget v5, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iget v6, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v7, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v8, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    iget-boolean v9, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    iget v10, p0, Lcom/samsung/android/cover/CoverState;->fotaMode:I

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v0, Lcom/samsung/android/sdk/cover/ScoverState;->mVisibleRect:Landroid/graphics/Rect;

    iput-boolean v3, v0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    iput v4, v0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    iput v5, v0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    iput v6, v0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    iput v7, v0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    iput-boolean v8, v0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    iput-boolean v9, v0, Lcom/samsung/android/sdk/cover/ScoverState;->fakeCover:Z

    iput v10, v0, Lcom/samsung/android/sdk/cover/ScoverState;->fotaMode:I

    goto/16 :goto_0

    :cond_2
    const/high16 v0, 0x1070000

    invoke-static {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v4, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v5, p0, Lcom/samsung/android/cover/CoverState;->type:I

    iget v6, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iget v7, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v8, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v9, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    iget-boolean v10, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v0, Lcom/samsung/android/sdk/cover/ScoverState;->mVisibleRect:Landroid/graphics/Rect;

    iput-boolean v4, v0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    iput v5, v0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    iput v6, v0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    iput v7, v0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    iput v8, v0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    iput-boolean v9, v0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    iput-boolean v10, v0, Lcom/samsung/android/sdk/cover/ScoverState;->fakeCover:Z

    iput v3, v0, Lcom/samsung/android/sdk/cover/ScoverState;->fotaMode:I

    goto/16 :goto_0

    :cond_3
    const/high16 v0, 0x1020000

    invoke-static {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v4, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v5, p0, Lcom/samsung/android/cover/CoverState;->type:I

    iget v6, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iget v7, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v8, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v9, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/samsung/android/sdk/cover/ScoverState;->mVisibleRect:Landroid/graphics/Rect;

    iput-boolean v4, v0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    iput v5, v0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    iput v6, v0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    iput v7, v0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    iput v8, v0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    iput-boolean v9, v0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    iput-boolean v3, v0, Lcom/samsung/android/sdk/cover/ScoverState;->fakeCover:Z

    iput v3, v0, Lcom/samsung/android/sdk/cover/ScoverState;->fotaMode:I

    goto :goto_0

    :cond_4
    const/high16 v0, 0x1010000

    invoke-static {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v4, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v5, p0, Lcom/samsung/android/cover/CoverState;->type:I

    iget v6, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iget v7, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v8, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v9, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/samsung/android/sdk/cover/ScoverState;->mVisibleRect:Landroid/graphics/Rect;

    iput-boolean v4, v0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    iput v5, v0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    iput v6, v0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    iput v7, v0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    iput v8, v0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    iput-boolean v9, v0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    iput-boolean v3, v0, Lcom/samsung/android/sdk/cover/ScoverState;->fakeCover:Z

    iput v3, v0, Lcom/samsung/android/sdk/cover/ScoverState;->fotaMode:I

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v4, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v5, p0, Lcom/samsung/android/cover/CoverState;->type:I

    iget v6, p0, Lcom/samsung/android/cover/CoverState;->color:I

    iget v7, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v8, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v0, Lcom/samsung/android/sdk/cover/ScoverState;->mVisibleRect:Landroid/graphics/Rect;

    iput-boolean v4, v0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    iput v5, v0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    iput v6, v0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    iput v7, v0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    iput v8, v0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    iput-boolean v3, v0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    iput-boolean v3, v0, Lcom/samsung/android/sdk/cover/ScoverState;->fakeCover:Z

    iput v3, v0, Lcom/samsung/android/sdk/cover/ScoverState;->fotaMode:I

    :goto_0
    const/high16 v3, 0x10c0000

    invoke-static {v3}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object p0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v3, v0, Lcom/samsung/android/sdk/cover/ScoverState;->mVisibleRect:Landroid/graphics/Rect;

    :cond_6
    return-object v0

    :cond_7
    const-string p0, "getCoverState : coverState is null"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v0, "RemoteException in getCoverState: "

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_2
    return-object v1
.end method

.method public final declared-synchronized getService()Lcom/samsung/android/cover/ICoverManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string v0, "ScoverManager"

    const-string/jumbo v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method
