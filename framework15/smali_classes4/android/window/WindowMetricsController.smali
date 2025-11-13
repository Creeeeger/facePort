.class public final Landroid/window/WindowMetricsController;
.super Ljava/lang/Object;
.source "WindowMetricsController.java"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public static synthetic blacklist $r8$lambda$pFTaIba9cW7oBONGFT2xxYPhXLc(Landroid/window/WindowMetricsController;Landroid/os/IBinder;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/window/WindowMetricsController;->lambda$getWindowMetricsInternal$0(Landroid/os/IBinder;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/WindowMetricsController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static blacklist getWindowInsetsFromServerForDisplay(ILandroid/os/IBinder;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;
    .locals 14

    :try_start_0
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move v11, p0

    move-object v12, p1

    :try_start_1
    invoke-interface {v1, p0, p1, v0}, Landroid/view/IWindowManager;->getWindowInsets(ILandroid/os/IBinder;Landroid/view/InsetsState;)Z

    invoke-static {}, Landroid/content/res/CompatibilityInfo;->getOverrideInvertedScale()F

    move-result v1

    move v13, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v13, v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v13}, Landroid/view/InsetsState;->scale(F)V

    :cond_0
    const/4 v8, -0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x30

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object/from16 v2, p2

    move/from16 v4, p3

    move/from16 v9, p4

    invoke-virtual/range {v1 .. v10}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move v11, p0

    move-object v12, p1

    :goto_0
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist getWindowMetricsInternal(Z)Landroid/view/WindowMetrics;
    .locals 11

    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/window/WindowMetricsController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    :goto_0
    iget v4, v1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v4, v4

    const v5, 0x3bcccccd    # 0.00625f

    mul-float v10, v4, v5

    invoke-virtual {v1}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v8

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v9

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/window/WindowMetricsController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/content/Context;->getToken(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Landroid/window/WindowMetricsController$$ExternalSyntheticLambda0;

    move-object v4, v1

    move-object v5, p0

    move-object v6, v0

    move-object v7, v3

    invoke-direct/range {v4 .. v9}, Landroid/window/WindowMetricsController$$ExternalSyntheticLambda0;-><init>(Landroid/window/WindowMetricsController;Landroid/os/IBinder;Landroid/graphics/Rect;ZI)V

    new-instance v2, Landroid/view/WindowMetrics;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v2, v4, v1, v10}, Landroid/view/WindowMetrics;-><init>(Landroid/graphics/Rect;Ljava/util/function/Supplier;F)V

    return-object v2

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private synthetic blacklist lambda$getWindowMetricsInternal$0(Landroid/os/IBinder;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;
    .locals 1

    iget-object v0, p0, Landroid/window/WindowMetricsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    invoke-static {v0, p1, p2, p3, p4}, Landroid/window/WindowMetricsController;->getWindowInsetsFromServerForDisplay(ILandroid/os/IBinder;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getCurrentWindowMetrics()Landroid/view/WindowMetrics;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/window/WindowMetricsController;->getWindowMetricsInternal(Z)Landroid/view/WindowMetrics;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMaximumWindowMetrics()Landroid/view/WindowMetrics;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/window/WindowMetricsController;->getWindowMetricsInternal(Z)Landroid/view/WindowMetrics;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPossibleMaximumWindowMetrics(I)Ljava/util/Set;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/view/WindowMetrics;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->getPossibleDisplayInfo(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/DisplayInfo;

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v5, v3, Landroid/view/DisplayInfo;->flags:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v7

    :goto_1
    iget v6, v3, Landroid/view/DisplayInfo;->displayId:I

    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v9

    invoke-virtual {v3}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v10

    invoke-direct {v8, v7, v7, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v9, 0x0

    invoke-static {v6, v9, v8, v5, v7}, Landroid/window/WindowMetricsController;->getWindowInsetsFromServerForDisplay(ILandroid/os/IBinder;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;

    move-result-object v6

    iget-object v8, v3, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v8, :cond_1

    iget v9, v3, Landroid/view/DisplayInfo;->rotation:I

    if-eqz v9, :cond_1

    iget v9, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v10, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v11, v3, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v8, v9, v10, v11, v7}, Landroid/view/DisplayCutout;->getRotated(IIII)Landroid/view/DisplayCutout;

    move-result-object v8

    :cond_1
    new-instance v7, Landroid/view/WindowInsets$Builder;

    invoke-direct {v7, v6}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    iget-object v9, v3, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v7, v9}, Landroid/view/WindowInsets$Builder;->setRoundedCorners(Landroid/view/RoundedCorners;)Landroid/view/WindowInsets$Builder;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/view/WindowInsets$Builder;->setDisplayCutout(Landroid/view/DisplayCutout;)Landroid/view/WindowInsets$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v6

    iget v7, v3, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    int-to-float v7, v7

    const v9, 0x3bcccccd    # 0.00625f

    mul-float/2addr v7, v9

    new-instance v9, Landroid/view/WindowMetrics;

    invoke-direct {v9, v4, v6, v7}, Landroid/view/WindowMetrics;-><init>(Landroid/graphics/Rect;Landroid/view/WindowInsets;F)V

    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
