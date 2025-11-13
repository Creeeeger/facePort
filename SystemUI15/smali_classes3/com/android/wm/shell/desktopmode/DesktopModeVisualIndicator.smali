.class public final Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentType:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public mLeash:Landroid/view/SurfaceControl;

.field public final mRootTdaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field public final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public final mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final mTaskSurface:Landroid/view/SurfaceControl;

.field public mView:Landroid/view/View;

.field public mViewHost:Landroid/view/SurfaceControlViewHost;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/common/DisplayController;Landroid/content/Context;Landroid/view/SurfaceControl;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p4, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mTaskSurface:Landroid/view/SurfaceControl;

    iput-object p6, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mRootTdaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    sget-object p1, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;->NO_INDICATOR:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mCurrentType:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;

    return-void
.end method


# virtual methods
.method public calculateFullscreenRegion(Lcom/android/wm/shell/common/DisplayLayout;II)Landroid/graphics/Region;
    .locals 7

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    iget-object v3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070301

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v3, v3, 0x2

    :goto_0
    if-ne p2, v2, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f070302

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    new-instance v2, Landroid/graphics/Rect;

    iget v4, p1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    div-int/lit8 v5, v4, 0x2

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v5, p0

    neg-int v6, p3

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p0

    invoke-direct {v2, v5, v6, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v2}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    :cond_1
    const/4 p0, 0x1

    if-eq p2, p0, :cond_2

    const/4 p0, 0x6

    if-ne p2, p0, :cond_3

    :cond_2
    new-instance p0, Landroid/graphics/Rect;

    neg-int p2, p3

    iget p1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    invoke-direct {p0, v1, p2, p1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p0}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    :cond_3
    return-object v0
.end method

.method public calculateSplitLeftRegion(Lcom/android/wm/shell/common/DisplayLayout;III)Landroid/graphics/Region;
    .locals 2

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f070324

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    neg-int p0, p4

    :goto_0
    new-instance p2, Landroid/graphics/Rect;

    iget p1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    const/4 p4, 0x0

    invoke-direct {p2, p4, p0, p3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p2}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    return-object v0
.end method

.method public calculateSplitRightRegion(Lcom/android/wm/shell/common/DisplayLayout;III)Landroid/graphics/Region;
    .locals 2

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f070324

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    neg-int p0, p4

    :goto_0
    new-instance p2, Landroid/graphics/Rect;

    iget p4, p1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    sub-int p3, p4, p3

    iget p1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    invoke-direct {p2, p3, p0, p4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p2}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    return-object v0
.end method

.method public calculateToDesktopRegion(Lcom/android/wm/shell/common/DisplayLayout;ILandroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region;)Landroid/graphics/Region;
    .locals 2

    new-instance p0, Landroid/graphics/Region;

    invoke-direct {p0}, Landroid/graphics/Region;-><init>()V

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    new-instance p2, Landroid/graphics/Rect;

    iget v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget p1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, p2}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    sget-object p1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p3, p1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    invoke-virtual {p0, p4, p1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    invoke-virtual {p0, p5, p1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :cond_0
    return-object p0
.end method

.method public final releaseVisualIndicator(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mViewHost:Landroid/view/SurfaceControlViewHost;

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mLeash:Landroid/view/SurfaceControl;

    :cond_2
    return-void
.end method

.method public final updateIndicatorType(Landroid/graphics/PointF;I)Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;
    .locals 11

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v3

    sget-object v0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;->NO_INDICATOR:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;

    iget-object v2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070325

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0702fe

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0, v3, p2, v4}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->calculateFullscreenRegion(Lcom/android/wm/shell/common/DisplayLayout;II)Landroid/graphics/Region;

    move-result-object v8

    invoke-virtual {p0, v3, p2, v2, v4}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->calculateSplitLeftRegion(Lcom/android/wm/shell/common/DisplayLayout;III)Landroid/graphics/Region;

    move-result-object v9

    invoke-virtual {p0, v3, p2, v2, v4}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->calculateSplitRightRegion(Lcom/android/wm/shell/common/DisplayLayout;III)Landroid/graphics/Region;

    move-result-object v10

    move-object v2, p0

    move v4, p2

    move-object v5, v9

    move-object v6, v10

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->calculateToDesktopRegion(Lcom/android/wm/shell/common/DisplayLayout;ILandroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object p2

    iget v2, p1, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;->TO_FULLSCREEN_INDICATOR:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    iget v3, p1, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    iget v4, p1, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    invoke-virtual {v9, v3, v4}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v2, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;->TO_SPLIT_LEFT_INDICATOR:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;

    :cond_1
    iget v3, p1, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    iget v4, p1, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    invoke-virtual {v10, v3, v4}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v2, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;->TO_SPLIT_RIGHT_INDICATOR:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;

    :cond_2
    iget v3, p1, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-int p1, p1

    invoke-virtual {p2, v3, p1}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object v2, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;->TO_DESKTOP_INDICATOR:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;

    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mCurrentType:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;

    if-ne p1, v2, :cond_4

    goto/16 :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mView:Landroid/view/View;

    if-nez p1, :cond_5

    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object p2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget v4, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance p2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mContext:Landroid/content/Context;

    invoke-direct {p2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mView:Landroid/view/View;

    new-instance p2, Landroid/view/SurfaceControl$Builder;

    invoke-direct {p2}, Landroid/view/SurfaceControl$Builder;-><init>()V

    iget-object v3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v6, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mRootTdaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    invoke-virtual {v6, v3, p2}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->attachToDisplayArea(ILandroid/view/SurfaceControl$Builder;)V

    const-string v9, "Desktop Mode Visual Indicator"

    invoke-virtual {p2, v9}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    const-string v3, "DesktopModeVisualIndicator.createView"

    invoke-virtual {p2, v3}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/16 v7, 0x8

    const/4 v8, -0x2

    const/4 v6, 0x2

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    invoke-virtual {p2, v9}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    new-instance v3, Landroid/view/WindowlessWindowManager;

    iget-object v4, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v5, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mLeash:Landroid/view/SurfaceControl;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/window/InputTransferToken;)V

    new-instance v4, Landroid/view/SurfaceControlViewHost;

    iget-object v5, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v1, v6}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    move-result-object v6

    const-string v7, "DesktopModeVisualIndicator"

    invoke-direct {v4, v5, v6, v3, v7}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mViewHost:Landroid/view/SurfaceControlViewHost;

    iget-object v3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mView:Landroid/view/View;

    invoke-virtual {v4, v3, p2}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object p2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mLeash:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mTaskSurface:Landroid/view/SurfaceControl;

    const/4 v4, -0x1

    invoke-virtual {p1, p2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    new-instance p2, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :cond_5
    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mCurrentType:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mView:Landroid/view/View;

    const p2, 0x7f08074c

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mView:Landroid/view/View;

    iget-object p2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v1, p2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p2

    invoke-static {p1, v2, p2}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->-$$Nest$smfadeBoundsIn(Landroid/view/View;Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;Lcom/android/wm/shell/common/DisplayLayout;)Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-object v2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mCurrentType:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;

    goto :goto_1

    :cond_6
    if-ne v2, v0, :cond_7

    iget-object p2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v1

    invoke-static {p2, p1, v1}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->-$$Nest$smfadeBoundsOut(Landroid/view/View;Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;Lcom/android/wm/shell/common/DisplayLayout;)Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mCurrentType:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mView:Landroid/view/View;

    iget-object p2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v1, p2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p2

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mCurrentType:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;

    invoke-static {p1, p2, v0, v2}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->-$$Nest$smanimateIndicatorType(Landroid/view/View;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;)Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;

    move-result-object p1

    iput-object v2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mCurrentType:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_1
    return-object v2
.end method
