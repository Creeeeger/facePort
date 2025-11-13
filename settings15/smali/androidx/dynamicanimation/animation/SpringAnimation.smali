.class public final Landroidx/dynamicanimation/animation/SpringAnimation;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

.field public static final ROTATION:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

.field public static final ROTATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

.field public static final ROTATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

.field public static final SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

.field public static final SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$4;


# instance fields
.field public final mEndListeners:Ljava/util/ArrayList;

.field public mLastFrameTime:J

.field public mMinVisibleChange:F

.field public mPendingPosition:F

.field public final mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field public mRunning:Z

.field public mSpring:Landroidx/dynamicanimation/animation/SpringForce;

.field public mStartValueIsSet:Z

.field public final mTarget:Ljava/lang/Object;

.field public final mUpdateListeners:Ljava/util/ArrayList;

.field public mValue:F

.field public mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$4;-><init>(I)V

    sput-object v0, Landroidx/dynamicanimation/animation/SpringAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$4;-><init>(I)V

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$4;-><init>(I)V

    sput-object v0, Landroidx/dynamicanimation/animation/SpringAnimation;->ROTATION:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$4;-><init>(I)V

    sput-object v0, Landroidx/dynamicanimation/animation/SpringAnimation;->ROTATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$4;-><init>(I)V

    sput-object v0, Landroidx/dynamicanimation/animation/SpringAnimation;->ROTATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$4;-><init>(I)V

    sput-object v0, Landroidx/dynamicanimation/animation/SpringAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    return-void
.end method

.method public constructor <init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mStartValueIsSet:Z

    iput-boolean v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndListeners:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mTarget:Ljava/lang/Object;

    new-instance v2, Landroidx/dynamicanimation/animation/DynamicAnimation$15;

    invoke-direct {v2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation$15;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v2, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinVisibleChange:F

    iput-object v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iput v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4

    sget-object v0, Landroidx/dynamicanimation/animation/SpringAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mStartValueIsSet:Z

    iput-boolean v2, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndListeners:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mTarget:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    sget-object p1, Landroidx/dynamicanimation/animation/SpringAnimation;->ROTATION:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    if-eq v0, p1, :cond_2

    sget-object p1, Landroidx/dynamicanimation/animation/SpringAnimation;->ROTATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    if-eq v0, p1, :cond_2

    sget-object p1, Landroidx/dynamicanimation/animation/SpringAnimation;->ROTATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/dynamicanimation/animation/SpringAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    if-ne v0, p1, :cond_1

    const/high16 p1, 0x3b800000    # 0.00390625f

    iput p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinVisibleChange:F

    goto :goto_1

    :cond_1
    const p1, 0x3b03126f    # 0.002f

    iput p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinVisibleChange:F

    goto :goto_1

    :cond_2
    :goto_0
    const p1, 0x3dcccccd    # 0.1f

    iput p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinVisibleChange:F

    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iput v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    return-void
.end method

.method public static getAnimationHandler()Landroidx/dynamicanimation/animation/AnimationHandler;
    .locals 3

    sget-object v0, Landroidx/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroidx/dynamicanimation/animation/AnimationHandler;

    new-instance v2, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;

    invoke-direct {v2}, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;-><init>()V

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/AnimationHandler;-><init>(Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/AnimationHandler;

    return-object v0
.end method


# virtual methods
.method public final addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Error: Update listeners must be added beforethe animation."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final animateToFinalPosition(F)V
    .locals 6

    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    if-eqz v0, :cond_0

    iput p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    :cond_1
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    float-to-double v1, p1

    iput-wide v1, v0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    double-to-float p1, v1

    float-to-double v1, p1

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    float-to-double v3, p1

    cmpl-double v3, v1, v3

    if-gtz v3, :cond_9

    const v3, -0x800001

    float-to-double v4, v3

    cmpg-double v1, v1, v4

    if-ltz v1, :cond_8

    iget v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinVisibleChange:F

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iput-wide v1, v0, Landroidx/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    const-wide v4, 0x404f400000000000L    # 62.5

    mul-double/2addr v1, v4

    iput-wide v1, v0, Landroidx/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    invoke-static {}, Landroidx/dynamicanimation/animation/SpringAnimation;->getAnimationHandler()Landroidx/dynamicanimation/animation/AnimationHandler;

    move-result-object v0

    iget-object v0, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mScheduler:Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    if-nez v0, :cond_6

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mStartValueIsSet:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    :cond_2
    iget v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    cmpl-float p1, v0, p1

    if-gtz p1, :cond_5

    cmpg-float p1, v0, v3

    if-ltz p1, :cond_5

    invoke-static {}, Landroidx/dynamicanimation/animation/SpringAnimation;->getAnimationHandler()Landroidx/dynamicanimation/animation/AnimationHandler;

    move-result-object p1

    iget-object v0, p1, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Landroidx/dynamicanimation/animation/AnimationHandler;->mScheduler:Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;

    iget-object v0, v0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;->mChoreographer:Ljava/lang/Object;

    check-cast v0, Landroid/view/Choreographer;

    new-instance v1, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16$$ExternalSyntheticLambda0;

    iget-object v2, p1, Landroidx/dynamicanimation/animation/AnimationHandler;->mRunnable:Landroidx/dynamicanimation/animation/AnimationHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    iput v0, p1, Landroidx/dynamicanimation/animation/AnimationHandler;->mDurationScale:F

    iget-object v0, p1, Landroidx/dynamicanimation/animation/AnimationHandler;->mDurationScaleChangeListener:Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;

    if-nez v0, :cond_3

    new-instance v0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;

    invoke-direct {v0, p1}, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;-><init>(Landroidx/dynamicanimation/animation/AnimationHandler;)V

    iput-object v0, p1, Landroidx/dynamicanimation/animation/AnimationHandler;->mDurationScaleChangeListener:Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;

    :cond_3
    iget-object v0, p1, Landroidx/dynamicanimation/animation/AnimationHandler;->mDurationScaleChangeListener:Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;

    iget-object v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;->mChoreographer:Ljava/lang/Object;

    check-cast v1, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33$$ExternalSyntheticLambda0;

    if-nez v1, :cond_4

    new-instance v1, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33$$ExternalSyntheticLambda0;-><init>(Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;)V

    iput-object v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;->mChoreographer:Ljava/lang/Object;

    invoke-static {v1}, Landroid/animation/ValueAnimator;->registerDurationScaleChangeListener(Landroid/animation/ValueAnimator$DurationScaleChangeListener;)Z

    :cond_4
    iget-object v0, p1, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object p1, p1, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Starting value need to be in between min value and max value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_0
    return-void

    :cond_7
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string p1, "Animations may only be started on the same thread as the animation handler"

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Final position of the spring cannot be less than the min value."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Final position of the spring cannot be greater than the max value."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final cancel()V
    .locals 5

    invoke-static {}, Landroidx/dynamicanimation/animation/SpringAnimation;->getAnimationHandler()Landroidx/dynamicanimation/animation/AnimationHandler;

    move-result-object v0

    iget-object v0, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mScheduler:Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->endAnimationInternal(Z)V

    :cond_0
    iget v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-nez v2, :cond_1

    new-instance v2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v2, v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object v2, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    goto :goto_0

    :cond_1
    float-to-double v3, v0

    iput-wide v3, v2, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    :goto_0
    iput v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    :cond_2
    return-void

    :cond_3
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be canceled from the same thread as the animation handler"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final endAnimationInternal(Z)V
    .locals 5

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    invoke-static {}, Landroidx/dynamicanimation/animation/SpringAnimation;->getAnimationHandler()Landroidx/dynamicanimation/animation/AnimationHandler;

    move-result-object v0

    iget-object v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p0}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    iget-object v3, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput-boolean v2, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mStartValueIsSet:Z

    :goto_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-interface {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;->onAnimationEnd()V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_1
    if-ltz p1, :cond_4

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final setPropertyValue(F)V
    .locals 3

    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->setValue(Ljava/lang/Object;F)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    iget v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v2, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    invoke-interface {v0, p0, v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;->onAnimationUpdate(Landroidx/dynamicanimation/animation/SpringAnimation;FF)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_3

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method
