.class public final Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;
.super Lcom/android/wm/shell/back/ShellBackAnimation;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEBUG_PROGRESS:Z

.field public static final POST_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field public final mBackAnimationRunner:Lcom/android/wm/shell/back/BackAnimationRunner;

.field public mBackInProgress:Z

.field public final mClosingCurrentRect:Landroid/graphics/RectF;

.field public final mClosingStartRect:Landroid/graphics/Rect;

.field public mClosingTarget:Landroid/view/RemoteAnimationTarget;

.field public final mContext:Landroid/content/Context;

.field public mDisplayId:I

.field public final mEnteringCurrentRect:Landroid/graphics/RectF;

.field public final mEnteringStartRect:Landroid/graphics/Rect;

.field public mEnteringTarget:Landroid/view/RemoteAnimationTarget;

.field public mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field public mPostScrimDimAnimation:Landroid/view/animation/Animation;

.field public final mProgressAnimator:Landroid/window/BackProgressAnimator;

.field public mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field public mScrimDimLayer:Landroid/view/SurfaceControl;

.field public final mScrimDimTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final mStartTaskRect:Landroid/graphics/Rect;

.field public final mTmpFloat9:[F

.field public final mTmpTransform:Landroid/view/animation/Transformation;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final mTransformMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "persist.debug.samsung.predictive_back.anim.progress"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->DEBUG_PROGRESS:Z

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->POST_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/wm/shell/back/ShellBackAnimation;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mClosingStartRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mClosingCurrentRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mEnteringStartRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mEnteringCurrentRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mTransformMatrix:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mTmpFloat9:[F

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v0, Landroid/window/BackProgressAnimator;

    invoke-direct {v0}, Landroid/window/BackProgressAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    sget-object v0, Lcom/android/wm/shell/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mScrimDimTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mTmpTransform:Landroid/view/animation/Transformation;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mBackInProgress:Z

    iput v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mDisplayId:I

    new-instance v1, Lcom/android/wm/shell/back/BackAnimationRunner;

    new-instance v2, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$Callback;

    invoke-direct {v2, p0, v0}, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$Callback;-><init>(Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;I)V

    new-instance v3, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$Runner;

    invoke-direct {v3, p0, v0}, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$Runner;-><init>(Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;I)V

    const/16 v0, 0x55

    invoke-direct {v1, v2, v3, p1, v0}, Lcom/android/wm/shell/back/BackAnimationRunner;-><init>(Landroid/window/IOnBackInvokedCallback;Landroid/view/IRemoteAnimationRunner;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mBackAnimationRunner:Lcom/android/wm/shell/back/BackAnimationRunner;

    iput-object p1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static applyTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method


# virtual methods
.method public final applyTransform(Landroid/view/SurfaceControl;Landroid/graphics/RectF;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mTransformMatrix:Landroid/graphics/Matrix;

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p2, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mTransformMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mTmpFloat9:[F

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object p0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    :goto_0
    return-void
.end method

.method public final finishAnimation$2()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0}, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->applyTransaction(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mScrimDimLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mScrimDimLayer:Landroid/view/SurfaceControl;

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mScrimDimTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0}, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->applyTransaction(Landroid/view/SurfaceControl$Transaction;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mBackInProgress:Z

    iget-object v2, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mClosingCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v2, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    if-eqz v2, :cond_3

    :try_start_0
    invoke-interface {v2}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v3, "RemoteException when invoking onAnimationFinished callback"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/android/internal/protolog/common/ProtoLog;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iput-object v1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    :cond_3
    return-void
.end method

.method public final getRunner()Lcom/android/wm/shell/back/BackAnimationRunner;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mBackAnimationRunner:Lcom/android/wm/shell/back/BackAnimationRunner;

    return-object p0
.end method
