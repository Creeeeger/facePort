.class public final Lcom/android/systemui/accessibility/FullscreenMagnificationController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# static fields
.field public static final sEmptyRegion:Landroid/graphics/Region;


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mBorderOffset:I

.field public mBorderSurfaceControl:Landroid/view/SurfaceControl;

.field public final mConfiguration:Landroid/content/res/Configuration;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayId:I

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public mFullscreenBorder:Landroid/view/View;

.field public mFullscreenMagnificationActivated:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mIWindowManager:Landroid/view/IWindowManager;

.field public final mLongAnimationTimeMs:J

.field public mRotation:I

.field public final mRotationWatcher:Lcom/android/systemui/accessibility/FullscreenMagnificationController$1;

.field public final mScvhSupplier:Ljava/util/function/Supplier;

.field public final mShowBorderRunnable:Lcom/android/systemui/accessibility/FullscreenMagnificationController$$ExternalSyntheticLambda0;

.field public final mShowHideBorderAnimator:Landroid/animation/ValueAnimator;

.field public mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final mWindowBounds:Landroid/graphics/Rect;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    sput-object v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->sEmptyRegion:Landroid/graphics/Region;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/view/accessibility/AccessibilityManager;Landroid/view/WindowManager;Landroid/view/IWindowManager;Ljava/util/function/Supplier;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Landroid/view/WindowManager;",
            "Landroid/view/IWindowManager;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControlViewHost;",
            ">;)V"
        }
    .end annotation

    new-instance v8, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v8}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/accessibility/FullscreenMagnificationController;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/view/accessibility/AccessibilityManager;Landroid/view/WindowManager;Landroid/view/IWindowManager;Ljava/util/function/Supplier;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/view/accessibility/AccessibilityManager;Landroid/view/WindowManager;Landroid/view/IWindowManager;Ljava/util/function/Supplier;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Landroid/view/WindowManager;",
            "Landroid/view/IWindowManager;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControlViewHost;",
            ">;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/animation/ValueAnimator;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    iput-object v0, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mFullscreenBorder:Landroid/view/View;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mFullscreenMagnificationActivated:Z

    new-instance v1, Lcom/android/systemui/accessibility/FullscreenMagnificationController$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/accessibility/FullscreenMagnificationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/FullscreenMagnificationController;I)V

    iput-object v1, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mShowBorderRunnable:Lcom/android/systemui/accessibility/FullscreenMagnificationController$$ExternalSyntheticLambda0;

    new-instance v1, Lcom/android/systemui/accessibility/FullscreenMagnificationController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/accessibility/FullscreenMagnificationController$1;-><init>(Lcom/android/systemui/accessibility/FullscreenMagnificationController;)V

    iput-object v1, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mRotationWatcher:Lcom/android/systemui/accessibility/FullscreenMagnificationController$1;

    iput-object p1, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iput-object p5, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mWindowManager:Landroid/view/WindowManager;

    iput-object p6, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {p5}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    iput-object p8, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object p7, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mScvhSupplier:Ljava/util/function/Supplier;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070921

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070920

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mBorderOffset:I

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mDisplayId:I

    new-instance p2, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e0002

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mLongAnimationTimeMs:J

    if-nez p9, :cond_0

    sget-object p3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 p4, 0x2

    new-array p4, p4, [F

    fill-array-data p4, :array_0

    invoke-static {v0, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p9

    new-instance p3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p9, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p9, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_0
    iput-object p9, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mShowHideBorderAnimator:Landroid/animation/ValueAnimator;

    new-instance p1, Lcom/android/systemui/accessibility/FullscreenMagnificationController$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/accessibility/FullscreenMagnificationController$2;-><init>(Lcom/android/systemui/accessibility/FullscreenMagnificationController;)V

    invoke-virtual {p9, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final handleScreenRotation()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mFullscreenBorder:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mShowBorderRunnable:Lcom/android/systemui/accessibility/FullscreenMagnificationController$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mShowBorderRunnable:Lcom/android/systemui/accessibility/FullscreenMagnificationController$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/accessibility/FullscreenMagnificationController$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/accessibility/FullscreenMagnificationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/FullscreenMagnificationController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mShowBorderRunnable:Lcom/android/systemui/accessibility/FullscreenMagnificationController$$ExternalSyntheticLambda0;

    iget-wide v2, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mLongAnimationTimeMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(I)V
    .locals 2

    and-int/lit16 v0, p1, 0x1000

    if-nez v0, :cond_1

    and-int/lit16 v0, p1, 0x400

    if-nez v0, :cond_1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070921

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070920

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mBorderOffset:I

    iget-object p1, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mFullscreenBorder:Landroid/view/View;

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget v0, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mBorderOffset:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget v1, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mBorderOffset:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    iget-object p1, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControlViewHost;->relayout(II)V

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result p1

    iget v0, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mRotation:I

    if-eq p1, v0, :cond_4

    iput p1, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mRotation:I

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->handleScreenRotation()V

    :cond_4
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->onConfigurationChanged(I)V

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method
