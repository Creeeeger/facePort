.class public Landroid/window/BackProgressAnimator;
.super Ljava/lang/Object;
.source "BackProgressAnimator.java"

# interfaces
.implements Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/BackProgressAnimator$ProgressCallback;
    }
.end annotation


# static fields
.field private static final blacklist FLING_FRICTION:F = 8.0f

.field private static final blacklist PROGRESS_PROP:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/window/BackProgressAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SCALE_FACTOR:F = 100.0f


# instance fields
.field private blacklist mBackAnimationInProgress:Z

.field private blacklist mBackCancelledFinishRunnable:Ljava/lang/Runnable;

.field private blacklist mBackInvokedFinishRunnable:Ljava/lang/Runnable;

.field private blacklist mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

.field private blacklist mCallback:Landroid/window/BackProgressAnimator$ProgressCallback;

.field private blacklist mLastBackEvent:Landroid/window/BackMotionEvent;

.field private final blacklist mOnAnimationEndListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

.field private final blacklist mOnBackInvokedFlingUpdateListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

.field private blacklist mProgress:F

.field private final blacklist mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

.field private blacklist mVelocity:F


# direct methods
.method public static synthetic blacklist $r8$lambda$AI1VajbXHN_9ecXtRjpdejyS_AM(Landroid/window/BackProgressAnimator;Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/window/BackProgressAnimator;->lambda$new$0(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MHTUtloOIRCL6kWKAy6Hn09BL7s(Landroid/window/BackProgressAnimator;Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/window/BackProgressAnimator;->lambda$new$1(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetProgress(Landroid/window/BackProgressAnimator;)F
    .locals 0

    invoke-direct {p0}, Landroid/window/BackProgressAnimator;->getProgress()F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetProgress(Landroid/window/BackProgressAnimator;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/BackProgressAnimator;->setProgress(F)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/window/BackProgressAnimator$1;

    const-string/jumbo v1, "progress"

    invoke-direct {v0, v1}, Landroid/window/BackProgressAnimator$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/window/BackProgressAnimator;->PROGRESS_PROP:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/window/BackProgressAnimator;->mProgress:F

    iput v0, p0, Landroid/window/BackProgressAnimator;->mVelocity:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/BackProgressAnimator;->mBackAnimationInProgress:Z

    new-instance v0, Landroid/window/BackProgressAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/window/BackProgressAnimator$$ExternalSyntheticLambda0;-><init>(Landroid/window/BackProgressAnimator;)V

    iput-object v0, p0, Landroid/window/BackProgressAnimator;->mOnAnimationEndListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    new-instance v0, Landroid/window/BackProgressAnimator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/window/BackProgressAnimator$$ExternalSyntheticLambda1;-><init>(Landroid/window/BackProgressAnimator;)V

    iput-object v0, p0, Landroid/window/BackProgressAnimator;->mOnBackInvokedFlingUpdateListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    new-instance v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Landroid/window/BackProgressAnimator;->PROGRESS_PROP:Landroid/util/FloatProperty;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    iput-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->addUpdateListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Lcom/android/internal/dynamicanimation/animation/SpringForce;-><init>()V

    const v2, 0x44bb8000    # 1500.0f

    invoke-virtual {v1, v2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->setSpring(Lcom/android/internal/dynamicanimation/animation/SpringForce;)Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method private blacklist getProgress()F
    .locals 1

    iget v0, p0, Landroid/window/BackProgressAnimator;->mProgress:F

    return v0
.end method

.method private blacklist invokeBackCancelledRunnable()V
    .locals 2

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Landroid/window/BackProgressAnimator;->mOnAnimationEndListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->removeEndListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackCancelledFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/BackProgressAnimator;->mBackCancelledFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private blacklist invokeBackInvokedRunnable()V
    .locals 2

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    iget-object v1, p0, Landroid/window/BackProgressAnimator;->mOnBackInvokedFlingUpdateListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->removeUpdateListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    iget-object v1, p0, Landroid/window/BackProgressAnimator;->mOnAnimationEndListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->removeEndListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic blacklist lambda$new$0(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 1

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackCancelledFinishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/window/BackProgressAnimator;->invokeBackCancelledRunnable()V

    :cond_0
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFinishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/window/BackProgressAnimator;->invokeBackInvokedRunnable()V

    :cond_1
    invoke-virtual {p0}, Landroid/window/BackProgressAnimator;->reset()V

    return-void
.end method

.method private synthetic blacklist lambda$new$1(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p2, p3}, Landroid/window/BackProgressAnimator;->updateProgressValue(FF)V

    return-void
.end method

.method private blacklist setProgress(F)V
    .locals 0

    iput p1, p0, Landroid/window/BackProgressAnimator;->mProgress:F

    return-void
.end method

.method private blacklist updateProgressValue(FF)V
    .locals 6

    iput p2, p0, Landroid/window/BackProgressAnimator;->mVelocity:F

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mCallback:Landroid/window/BackProgressAnimator$ProgressCallback;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/window/BackProgressAnimator;->mBackAnimationInProgress:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mCallback:Landroid/window/BackProgressAnimator$ProgressCallback;

    new-instance v1, Landroid/window/BackEvent;

    iget-object v2, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    invoke-virtual {v2}, Landroid/window/BackMotionEvent;->getTouchX()F

    move-result v2

    iget-object v3, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    invoke-virtual {v3}, Landroid/window/BackMotionEvent;->getTouchY()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v4, p1, v4

    iget-object v5, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    invoke-virtual {v5}, Landroid/window/BackMotionEvent;->getSwipeEdge()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/window/BackEvent;-><init>(FFFI)V

    invoke-interface {v0, v1}, Landroid/window/BackProgressAnimator$ProgressCallback;->onProgressUpdate(Landroid/window/BackEvent;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist getVelocity()F
    .locals 2

    iget v0, p0, Landroid/window/BackProgressAnimator;->mVelocity:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method blacklist isBackAnimationInProgress()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/BackProgressAnimator;->mBackAnimationInProgress:Z

    return v0
.end method

.method public blacklist onAnimationUpdate(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 1

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFinishRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    invoke-direct {p0, p2, p3}, Landroid/window/BackProgressAnimator;->updateProgressValue(FF)V

    :cond_0
    return-void
.end method

.method public blacklist onBackCancelled(Ljava/lang/Runnable;)V
    .locals 2

    iput-object p1, p0, Landroid/window/BackProgressAnimator;->mBackCancelledFinishRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Landroid/window/BackProgressAnimator;->mOnAnimationEndListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->addEndListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public blacklist onBackInvoked(Ljava/lang/Runnable;)V
    .locals 5

    iput-object p1, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFinishRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    new-instance v0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    new-instance v2, Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v2}, Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;-><init>()V

    invoke-direct {v0, v2}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;-><init>(Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;)V

    iget v2, p0, Landroid/window/BackProgressAnimator;->mProgress:F

    invoke-virtual {v0, v2}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->setStartValue(F)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v0, v2}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->setFriction(F)Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object v0

    iget v2, p0, Landroid/window/BackProgressAnimator;->mVelocity:F

    invoke-virtual {v0, v2}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->setMinValue(F)Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->setMaxValue(F)Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object v0

    iput-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    iget-object v1, p0, Landroid/window/BackProgressAnimator;->mOnBackInvokedFlingUpdateListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->addUpdateListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    iget-object v1, p0, Landroid/window/BackProgressAnimator;->mOnAnimationEndListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->addEndListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {v0}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->start()V

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Choreographer;->getLastFrameTimeNanos()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->doAnimationFrame(J)Z

    return-void
.end method

.method public blacklist onBackProgressed(Landroid/window/BackMotionEvent;)V
    .locals 3

    iget-boolean v0, p0, Landroid/window/BackProgressAnimator;->mBackAnimationInProgress:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroid/window/BackMotionEvent;->getProgress()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public blacklist onBackStarted(Landroid/window/BackMotionEvent;Landroid/window/BackProgressAnimator$ProgressCallback;)V
    .locals 1

    iput-object p1, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    iput-object p2, p0, Landroid/window/BackProgressAnimator;->mCallback:Landroid/window/BackProgressAnimator$ProgressCallback;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/BackProgressAnimator;->mBackAnimationInProgress:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/window/BackProgressAnimator;->updateProgressValue(FF)V

    return-void
.end method

.method public blacklist removeOnBackCancelledFinishCallback()V
    .locals 2

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Landroid/window/BackProgressAnimator;->mOnAnimationEndListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->removeEndListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/BackProgressAnimator;->mBackCancelledFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public blacklist reset()V
    .locals 3

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackCancelledFinishRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, v1}, Landroid/window/BackProgressAnimator;->updateProgressValue(FF)V

    invoke-direct {p0}, Landroid/window/BackProgressAnimator;->invokeBackCancelledRunnable()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFinishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/window/BackProgressAnimator;->invokeBackInvokedRunnable()V

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {v0}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->cancel()V

    iput-object v2, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    :cond_2
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->cancel()V

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/BackProgressAnimator;->mBackAnimationInProgress:Z

    iput-object v2, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    iput-object v2, p0, Landroid/window/BackProgressAnimator;->mCallback:Landroid/window/BackProgressAnimator$ProgressCallback;

    iput v1, p0, Landroid/window/BackProgressAnimator;->mProgress:F

    return-void
.end method
