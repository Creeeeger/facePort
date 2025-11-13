.class public abstract Lcom/android/wm/shell/back/CrossActivityBackAnimation;
.super Lcom/android/wm/shell/back/ShellBackAnimation;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final backAnimRect:Landroid/graphics/Rect;

.field public final backAnimationRunner:Lcom/android/wm/shell/back/BackAnimationRunner;

.field public final background:Lcom/android/wm/shell/back/BackAnimationBackground;

.field public closingTarget:Landroid/view/RemoteAnimationTarget;

.field public final context:Landroid/content/Context;

.field public cornerRadius:F

.field public final cropRect:Landroid/graphics/Rect;

.field public final currentClosingRect:Landroid/graphics/RectF;

.field public final currentEnteringRect:Landroid/graphics/RectF;

.field public customizedBackgroundColor:I

.field public final displayBoundsMargin:F

.field public enteringHasSameLetterbox:Z

.field public enteringTarget:Landroid/view/RemoteAnimationTarget;

.field public finishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field public final gestureInterpolator:Landroid/view/animation/Interpolator;

.field public gestureProgress:F

.field public final initialTouchPos:Landroid/graphics/PointF;

.field public isLetterboxed:Z

.field public lastPostCommitFlingScale:F

.field public leftLetterboxLayer:Landroid/view/SurfaceControl;

.field public letterboxColor:I

.field public maxScrimAlpha:F

.field public final postCommitFlingScale:Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;

.field public final postCommitFlingSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

.field public final progressAnimator:Landroid/window/BackProgressAnimator;

.field public rightLetterboxLayer:Landroid/view/SurfaceControl;

.field public final rootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field public scrimLayer:Landroid/view/SurfaceControl;

.field public final startClosingRect:Landroid/graphics/RectF;

.field public final startEnteringRect:Landroid/graphics/RectF;

.field public statusbarHeight:I

.field public final targetClosingRect:Landroid/graphics/RectF;

.field public final targetEnteringRect:Landroid/graphics/RectF;

.field public final tempRectF:Landroid/graphics/RectF;

.field public final tmpFloat9:[F

.field public final transaction:Landroid/view/SurfaceControl$Transaction;

.field public final transformMatrix:Landroid/graphics/Matrix;

.field public triggerBack:Z

.field public final verticalMoveInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/back/CrossActivityBackAnimation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/back/CrossActivityBackAnimation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/back/BackAnimationBackground;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/wm/shell/back/ShellBackAnimation;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->background:Lcom/android/wm/shell/back/BackAnimationBackground;

    iput-object p3, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->rootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    iput-object p4, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->transaction:Landroid/view/SurfaceControl$Transaction;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->startClosingRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->targetClosingRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->currentClosingRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->startEnteringRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->targetEnteringRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->currentEnteringRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->backAnimRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->cropRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->tempRectF:Landroid/graphics/RectF;

    invoke-static {p1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->cornerRadius:F

    invoke-static {p1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->statusbarHeight:I

    new-instance p2, Lcom/android/wm/shell/back/BackAnimationRunner;

    new-instance p3, Lcom/android/wm/shell/back/CrossActivityBackAnimation$Callback;

    invoke-direct {p3, p0}, Lcom/android/wm/shell/back/CrossActivityBackAnimation$Callback;-><init>(Lcom/android/wm/shell/back/CrossActivityBackAnimation;)V

    new-instance p4, Lcom/android/wm/shell/back/CrossActivityBackAnimation$Runner;

    invoke-direct {p4, p0}, Lcom/android/wm/shell/back/CrossActivityBackAnimation$Runner;-><init>(Lcom/android/wm/shell/back/CrossActivityBackAnimation;)V

    const/16 v0, 0x54

    invoke-direct {p2, p3, p4, p1, v0}, Lcom/android/wm/shell/back/BackAnimationRunner;-><init>(Landroid/window/IOnBackInvokedCallback;Landroid/view/IRemoteAnimationRunner;Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->backAnimationRunner:Lcom/android/wm/shell/back/BackAnimationRunner;

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->initialTouchPos:Landroid/graphics/PointF;

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->transformMatrix:Landroid/graphics/Matrix;

    const/16 p2, 0x9

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->tmpFloat9:[F

    new-instance p2, Landroid/window/BackProgressAnimator;

    invoke-direct {p2}, Landroid/window/BackProgressAnimator;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->progressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0702b6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->displayBoundsMargin:F

    sget-object p1, Lcom/android/wm/shell/animation/Interpolators;->BACK_GESTURE:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->gestureInterpolator:Landroid/view/animation/Interpolator;

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->verticalMoveInterpolator:Landroid/view/animation/Interpolator;

    new-instance p1, Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;

    const/high16 p2, 0x42c80000    # 100.0f

    invoke-direct {p1, p2}, Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    iput-object p1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->postCommitFlingScale:Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;

    iput p2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->lastPostCommitFlingScale:F

    new-instance p1, Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-direct {p1, p2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 p2, 0x43480000    # 200.0f

    invoke-virtual {p1, p2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 p2, 0x3f400000    # 0.75f

    invoke-virtual {p1, p2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->postCommitFlingSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    return-void
.end method

.method public static synthetic applyTransform$default(Lcom/android/wm/shell/back/CrossActivityBackAnimation;Landroid/view/SurfaceControl;Landroid/graphics/RectF;FLandroid/view/animation/Transformation;Lcom/android/wm/shell/back/CrossActivityBackAnimation$FlingMode;I)V
    .locals 6

    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    sget-object p5, Lcom/android/wm/shell/back/CrossActivityBackAnimation$FlingMode;->NO_FLING:Lcom/android/wm/shell/back/CrossActivityBackAnimation$FlingMode;

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->applyTransform(Landroid/view/SurfaceControl;Landroid/graphics/RectF;FLandroid/view/animation/Transformation;Lcom/android/wm/shell/back/CrossActivityBackAnimation$FlingMode;)V

    return-void
.end method


# virtual methods
.method public final applyTransaction()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->transaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->transaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public final applyTransform(Landroid/view/SurfaceControl;Landroid/graphics/RectF;FLandroid/view/animation/Transformation;Lcom/android/wm/shell/back/CrossActivityBackAnimation$FlingMode;)V
    .locals 1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->tempRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    sget-object p2, Lcom/android/wm/shell/back/CrossActivityBackAnimation$FlingMode;->NO_FLING:Lcom/android/wm/shell/back/CrossActivityBackAnimation$FlingMode;

    if-eq p5, p2, :cond_2

    iget-object p2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->postCommitFlingScale:Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {p2}, Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    sget-object v0, Lcom/android/wm/shell/back/CrossActivityBackAnimation$FlingMode;->FLING_BOUNCE:Lcom/android/wm/shell/back/CrossActivityBackAnimation$FlingMode;

    if-ne p5, v0, :cond_1

    const/high16 p5, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    iget p5, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->lastPostCommitFlingScale:F

    :goto_0
    invoke-static {p2, p5}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->lastPostCommitFlingScale:F

    iget-object p5, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->tempRectF:Landroid/graphics/RectF;

    invoke-static {p5, p2}, Lcom/android/wm/shell/back/CrossActivityBackAnimationKt;->scaleCentered$default(Landroid/graphics/RectF;F)V

    :cond_2
    iget-object p2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->tempRectF:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    iget-object p5, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->backAnimRect:Landroid/graphics/Rect;

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p2, p5

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p4

    goto :goto_1

    :cond_3
    const/4 p4, 0x0

    :goto_1
    if-nez p4, :cond_4

    iget-object p4, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->transformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p4}, Landroid/graphics/Matrix;->reset()V

    :cond_4
    iget-boolean p5, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->isLetterboxed:Z

    const/4 v0, 0x0

    if-eqz p5, :cond_5

    iget-boolean p5, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->enteringHasSameLetterbox:Z

    if-eqz p5, :cond_5

    iget-object p5, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->closingTarget:Landroid/view/RemoteAnimationTarget;

    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p5, p5, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->left:I

    int-to-float p5, p5

    goto :goto_2

    :cond_5
    move p5, v0

    :goto_2
    invoke-virtual {p4, p2, p2, p5, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object p2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->tempRectF:Landroid/graphics/RectF;

    iget p5, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p4, p5, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->transaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2, p1, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object p3, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->tmpFloat9:[F

    invoke-virtual {p2, p1, p4, p3}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object p3, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->cropRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, p3}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget p0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->cornerRadius:F

    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_6
    :goto_3
    return-void
.end method

.method public final ensureLetterbox(Landroid/graphics/Rect;)Landroid/view/SurfaceControl;
    .locals 7

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string v1, "Cross-Activity back animation letterbox"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "CrossActivityBackAnimation"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->rootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    invoke-virtual {v3, v2, v0}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->attachToDisplayArea(ILandroid/view/SurfaceControl$Builder;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iget v3, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->letterboxColor:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    iget v5, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->letterboxColor:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    iget v6, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->letterboxColor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    const/4 v4, 0x3

    new-array v4, v4, [F

    aput v3, v4, v2

    aput v5, v4, v1

    const/4 v2, 0x2

    aput v6, v4, v2

    iget-object v2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->transaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->closingTarget:Landroid/view/RemoteAnimationTarget;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method public finishAnimation()V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->enteringTarget:Landroid/view/RemoteAnimationTarget;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->transaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4, v2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-boolean v3, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->triggerBack:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->transaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    :cond_1
    iput-object v1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->enteringTarget:Landroid/view/RemoteAnimationTarget;

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->closingTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    :cond_3
    iput-object v1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->closingTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->transaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->background:Lcom/android/wm/shell/back/BackAnimationBackground;

    iget-object v4, v3, Lcom/android/wm/shell/back/BackAnimationBackground;->mBackgroundSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v3, Lcom/android/wm/shell/back/BackAnimationBackground;->mBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_5
    iput-object v1, v3, Lcom/android/wm/shell/back/BackAnimationBackground;->mBackgroundSurface:Landroid/view/SurfaceControl;

    iput-boolean v5, v3, Lcom/android/wm/shell/back/BackAnimationBackground;->mIsRequestingStatusBarAppearance:Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->applyTransaction()V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->transformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->initialTouchPos:Landroid/graphics/PointF;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->finishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_6
    :goto_1
    iput-object v1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->finishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->scrimLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->transaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->applyTransaction()V

    :cond_7
    iput-object v1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->scrimLayer:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->leftLetterboxLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_2
    iget-object v3, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->transaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->rightLetterboxLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_2

    :goto_3
    invoke-virtual {p0}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->applyTransaction()V

    :cond_9
    iput-object v1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->leftLetterboxLayer:Landroid/view/SurfaceControl;

    iput-object v1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->rightLetterboxLayer:Landroid/view/SurfaceControl;

    iput-boolean v5, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->isLetterboxed:Z

    iput-boolean v5, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->enteringHasSameLetterbox:Z

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->lastPostCommitFlingScale:F

    iput v2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->gestureProgress:F

    iput-boolean v5, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->triggerBack:Z

    return-void
.end method

.method public abstract getAllowEnteringYShift()Z
.end method

.method public abstract getPostCommitAnimationDuration()J
.end method

.method public getPreCommitEnteringBaseTransformation(F)Landroid/view/animation/Transformation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRunner()Lcom/android/wm/shell/back/BackAnimationRunner;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->backAnimationRunner:Lcom/android/wm/shell/back/BackAnimationRunner;

    return-object p0
.end method

.method public final onConfigurationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->cornerRadius:F

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->statusbarHeight:I

    return-void
.end method

.method public onGestureCommitted(F)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->closingTarget:Landroid/view/RemoteAnimationTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->enteringTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    :cond_1
    if-eqz v1, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->closingTarget:Landroid/view/RemoteAnimationTarget;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->gestureProgress:F

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    if-gez v0, :cond_3

    const/high16 p1, -0x3d100000    # -120.0f

    goto :goto_1

    :cond_3
    neg-float p1, p1

    mul-float/2addr p1, v1

    :goto_1
    new-instance v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->postCommitFlingScale:Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v0, v2, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;-><init>(Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;F)V

    const/high16 v2, -0x3b860000    # -1000.0f

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->postCommitFlingSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-virtual {p1, v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->setSpring(Lcom/android/internal/dynamicanimation/animation/SpringForce;)Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->start()V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getLastFrameTimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->doAnimationFrame(J)Z

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->getPostCommitAnimationDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/wm/shell/back/CrossActivityBackAnimation$onGestureCommitted$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/back/CrossActivityBackAnimation$onGestureCommitted$1;-><init>(Lcom/android/wm/shell/back/CrossActivityBackAnimation;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/wm/shell/back/CrossActivityBackAnimation$onGestureCommitted$2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/back/CrossActivityBackAnimation$onGestureCommitted$2;-><init>(Lcom/android/wm/shell/back/CrossActivityBackAnimation;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->finishAnimation()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onPostCommitProgress(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->scrimLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->transaction:Landroid/view/SurfaceControl$Transaction;

    iget p0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->maxScrimAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float/2addr v2, p0

    invoke-virtual {v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-void
.end method

.method public prepareNextAnimation(Landroid/window/BackNavigationInfo$CustomAnimationInfo;I)Z
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->letterboxColor:I

    const/4 p0, 0x0

    return p0
.end method

.method public abstract preparePreCommitClosingRectMovement(I)V
.end method

.method public abstract preparePreCommitEnteringRectMovement()V
.end method

.method public startBackAnimation(Landroid/window/BackMotionEvent;)V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->enteringTarget:Landroid/view/RemoteAnimationTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->closingTarget:Landroid/view/RemoteAnimationTarget;

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {p1}, Landroid/window/BackMotionEvent;->getTriggerBack()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->triggerBack:Z

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->initialTouchPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/window/BackMotionEvent;->getTouchX()F

    move-result v2

    invoke-virtual {p1}, Landroid/window/BackMotionEvent;->getTouchY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->transaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->setAnimationTransaction()Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->closingTarget:Landroid/view/RemoteAnimationTarget;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    invoke-virtual {v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityLetterboxed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->isLetterboxed:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->closingTarget:Landroid/view/RemoteAnimationTarget;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->enteringTarget:Landroid/view/RemoteAnimationTarget;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v3, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->enteringHasSameLetterbox:Z

    iget-boolean v3, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->isLetterboxed:Z

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->backAnimRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->closingTarget:Landroid/view/RemoteAnimationTarget;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v3, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->backAnimRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->closingTarget:Landroid/view/RemoteAnimationTarget;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v3, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->backAnimRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {p1}, Landroid/window/BackMotionEvent;->getSwipeEdge()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->preparePreCommitClosingRectMovement(I)V

    invoke-virtual {p0}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->preparePreCommitEnteringRectMovement()V

    iget-object p1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->closingTarget:Landroid/view/RemoteAnimationTarget;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p1, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->customizedBackgroundColor:I

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->isLetterboxed:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->letterboxColor:I

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->enteringTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_5

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v0

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->transaction:Landroid/view/SurfaceControl$Transaction;

    iget v4, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->statusbarHeight:I

    iget-object v5, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->background:Lcom/android/wm/shell/back/BackAnimationBackground;

    invoke-virtual {v5, v0, v4, p1, v3}, Lcom/android/wm/shell/back/BackAnimationBackground;->ensureBackground(IILandroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->scrimLayer:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_6

    goto/16 :goto_6

    :cond_6
    iget-object p1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    if-ne p1, v0, :cond_7

    goto :goto_3

    :cond_7
    move v2, v1

    :goto_3
    new-instance p1, Landroid/view/SurfaceControl$Builder;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string v0, "Cross-Activity back animation scrim"

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string v0, "CrossActivityBackAnimation"

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->rootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    invoke-virtual {v0, v1, p1}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->attachToDisplayArea(ILandroid/view/SurfaceControl$Builder;)V

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->scrimLayer:Landroid/view/SurfaceControl;

    const/4 p1, 0x3

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    if-eqz v2, :cond_8

    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_4

    :cond_8
    const v0, 0x3e4ccccd    # 0.2f

    :goto_4
    iput v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->maxScrimAlpha:F

    iget-boolean v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->isLetterboxed:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->closingTarget:Landroid/view/RemoteAnimationTarget;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->closingTarget:Landroid/view/RemoteAnimationTarget;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    :goto_5
    iget-object v2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->transaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->scrimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3, p1}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->scrimLayer:Landroid/view/SurfaceControl;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->maxScrimAlpha:F

    invoke-virtual {p1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->scrimLayer:Landroid/view/SurfaceControl;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->scrimLayer:Landroid/view/SurfaceControl;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->closingTarget:Landroid/view/RemoteAnimationTarget;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->scrimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_6
    iget-boolean p1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->isLetterboxed:Z

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->enteringHasSameLetterbox:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->cropRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->closingTarget:Landroid/view/RemoteAnimationTarget;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->closingTarget:Landroid/view/RemoteAnimationTarget;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->closingTarget:Landroid/view/RemoteAnimationTarget;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v3, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->closingTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz p1, :cond_c

    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->leftLetterboxLayer:Landroid/view/SurfaceControl;

    if-nez v0, :cond_a

    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p1, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p1, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->ensureLetterbox(Landroid/graphics/Rect;)Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->leftLetterboxLayer:Landroid/view/SurfaceControl;

    :cond_a
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p1, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->rightLetterboxLayer:Landroid/view/SurfaceControl;

    if-nez v0, :cond_c

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p1, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p1, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object p1, p1, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->ensureLetterbox(Landroid/graphics/Rect;)Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->rightLetterboxLayer:Landroid/view/SurfaceControl;

    goto :goto_7

    :cond_b
    iget-object p1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->cropRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->backAnimRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_c
    :goto_7
    invoke-virtual {p0}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->applyTransaction()V

    return-void

    :cond_d
    :goto_8
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string p1, "Entering target or closing target is null."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/internal/protolog/common/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method
