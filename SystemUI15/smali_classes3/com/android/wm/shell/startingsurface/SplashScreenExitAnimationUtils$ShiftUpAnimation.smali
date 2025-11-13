.class public final Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

.field public final mFirstWindowFrame:Landroid/graphics/Rect;

.field public final mFirstWindowSurface:Landroid/view/SurfaceControl;

.field public final mFromYDelta:F

.field public final mMainWindowShiftLength:I

.field public final mOccludeHoleView:Landroid/view/View;

.field public final mSplashScreenView:Landroid/view/ViewGroup;

.field public final mTmpTransform:Landroid/graphics/Matrix;

.field public final mToYDelta:F

.field public final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;


# direct methods
.method public constructor <init>(FFLandroid/view/View;Landroid/view/SurfaceControl;Landroid/view/ViewGroup;Lcom/android/wm/shell/common/TransactionPool;Landroid/graphics/Rect;IF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mTmpTransform:Landroid/graphics/Matrix;

    iget v0, p7, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-static {v0, p9}, Ljava/lang/Math;->max(FF)F

    move-result p9

    sub-float/2addr p1, p9

    iput p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mFromYDelta:F

    iput p2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mToYDelta:F

    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mOccludeHoleView:Landroid/view/View;

    new-instance p1, Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-direct {p1, p3}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    iput-object p4, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mFirstWindowSurface:Landroid/view/SurfaceControl;

    iput-object p5, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mSplashScreenView:Landroid/view/ViewGroup;

    iput-object p6, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iput-object p7, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mFirstWindowFrame:Landroid/graphics/Rect;

    iput p8, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mMainWindowShiftLength:I

    return-void
.end method
