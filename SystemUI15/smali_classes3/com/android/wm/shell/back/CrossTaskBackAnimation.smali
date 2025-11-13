.class public final Lcom/android/wm/shell/back/CrossTaskBackAnimation;
.super Lcom/android/wm/shell/back/ShellBackAnimation;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBackAnimationRunner:Lcom/android/wm/shell/back/BackAnimationRunner;

.field public mBackInProgress:Z

.field public final mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

.field public final mClosingCurrentRect:Landroid/graphics/RectF;

.field public final mClosingStartRect:Landroid/graphics/Rect;

.field public mClosingTarget:Landroid/view/RemoteAnimationTarget;

.field public final mContext:Landroid/content/Context;

.field public mCornerRadius:F

.field public final mEnteringCurrentRect:Landroid/graphics/RectF;

.field public final mEnteringStartRect:Landroid/graphics/Rect;

.field public mEnteringTarget:Landroid/view/RemoteAnimationTarget;

.field public mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field public final mInitialTouchPos:Landroid/graphics/PointF;

.field public mInterWindowMargin:F

.field public mIsRightEdge:Z

.field public final mPostAnimationInterpolator:Landroid/view/animation/Interpolator;

.field public final mProgressAnimator:Landroid/window/BackProgressAnimator;

.field public final mProgressInterpolator:Landroid/view/animation/Interpolator;

.field public final mStartTaskRect:Landroid/graphics/Rect;

.field public mStatusbarHeight:I

.field public final mTmpFloat9:[F

.field public final mTouchPos:Landroid/graphics/PointF;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final mTransformMatrix:Landroid/graphics/Matrix;

.field public mVerticalMargin:F

.field public final mVerticalMoveInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/back/BackAnimationBackground;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/wm/shell/back/ShellBackAnimation;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingStartRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingCurrentRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringStartRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringCurrentRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mInitialTouchPos:Landroid/graphics/PointF;

    sget-object v0, Lcom/android/wm/shell/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mPostAnimationInterpolator:Landroid/view/animation/Interpolator;

    sget-object v0, Lcom/android/wm/shell/animation/Interpolators;->BACK_GESTURE:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mVerticalMoveInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransformMatrix:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTmpFloat9:[F

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mBackInProgress:Z

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTouchPos:Landroid/graphics/PointF;

    new-instance v1, Landroid/window/BackProgressAnimator;

    invoke-direct {v1}, Landroid/window/BackProgressAnimator;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    new-instance v1, Lcom/android/wm/shell/back/BackAnimationRunner;

    new-instance v2, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;

    invoke-direct {v2, p0, v0}, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;-><init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;I)V

    new-instance v3, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Runner;

    invoke-direct {v3, p0, v0}, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Runner;-><init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;I)V

    const/16 v0, 0x55

    invoke-direct {v1, v2, v3, p1, v0}, Lcom/android/wm/shell/back/BackAnimationRunner;-><init>(Landroid/window/IOnBackInvokedCallback;Landroid/view/IRemoteAnimationRunner;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mBackAnimationRunner:Lcom/android/wm/shell/back/BackAnimationRunner;

    iput-object p2, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    iput-object p1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mCornerRadius:F

    invoke-static {p1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mStatusbarHeight:I

    return-void
.end method

.method public static mapRange(FFF)F
    .locals 0

    invoke-static {p2, p1, p0, p1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final applyTransaction$1()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public final applyTransform(Landroid/view/SurfaceControl;Landroid/graphics/RectF;F)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransformMatrix:Landroid/graphics/Matrix;

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p2, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransformMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTmpFloat9:[F

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    :goto_0
    return-void
.end method

.method public final finishAnimation$1()V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    :cond_1
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v2, Lcom/android/wm/shell/back/BackAnimationBackground;->mBackgroundSurface:Landroid/view/SurfaceControl;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/android/wm/shell/back/BackAnimationBackground;->mBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_3
    iput-object v1, v2, Lcom/android/wm/shell/back/BackAnimationBackground;->mBackgroundSurface:Landroid/view/SurfaceControl;

    iput-boolean v0, v2, Lcom/android/wm/shell/back/BackAnimationBackground;->mIsRequestingStatusBarAppearance:Z

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->applyTransaction$1()V

    iput-boolean v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mBackInProgress:Z

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mInitialTouchPos:Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    if-eqz v0, :cond_6

    :try_start_0
    invoke-interface {v0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    const/4 v2, 0x4

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_5

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v3, -0x41509d044b83c2a1L    # -9.353951577489842E-7

    const/4 v5, 0x0

    const-string v6, "RemoteException when invoking onAnimationFinished callback"

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_1
    iput-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    :cond_6
    return-void
.end method

.method public final getRunner()Lcom/android/wm/shell/back/BackAnimationRunner;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mBackAnimationRunner:Lcom/android/wm/shell/back/BackAnimationRunner;

    return-object p0
.end method

.method public final onConfigurationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mCornerRadius:F

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mStatusbarHeight:I

    return-void
.end method
