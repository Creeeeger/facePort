.class public final synthetic Landroidx/dynamicanimation/animation/AnimationHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/dynamicanimation/animation/AnimationHandler;


# direct methods
.method public synthetic constructor <init>(Landroidx/dynamicanimation/animation/AnimationHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/AnimationHandler$$ExternalSyntheticLambda0;->f$0:Landroidx/dynamicanimation/animation/AnimationHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object p0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$$ExternalSyntheticLambda0;->f$0:Landroidx/dynamicanimation/animation/AnimationHandler;

    iget-object p0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;->this$0:Landroidx/dynamicanimation/animation/AnimationHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget-object v6, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    iget-object v6, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;

    if-nez v6, :cond_0

    goto :goto_3

    :cond_0
    iget-object v7, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v7, v6}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v8, v8, v2

    if-gez v8, :cond_4

    invoke-virtual {v7, v6}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    check-cast v6, Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-wide v7, v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-nez v9, :cond_2

    iput-wide v0, v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    iget v7, v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    invoke-virtual {v6, v7}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setPropertyValue(F)V

    goto :goto_3

    :cond_2
    sub-long v7, v0, v7

    iput-wide v0, v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    invoke-virtual {v6}, Landroidx/dynamicanimation/animation/DynamicAnimation;->getAnimationHandler()Landroidx/dynamicanimation/animation/AnimationHandler;

    move-result-object v9

    iget v9, v9, Landroidx/dynamicanimation/animation/AnimationHandler;->mDurationScale:F

    const/4 v10, 0x0

    cmpl-float v10, v9, v10

    if-nez v10, :cond_3

    const-wide/32 v7, 0x7fffffff

    goto :goto_2

    :cond_3
    long-to-float v7, v7

    div-float/2addr v7, v9

    float-to-long v7, v7

    :goto_2
    invoke-virtual {v6, v7, v8}, Landroidx/dynamicanimation/animation/DynamicAnimation;->updateValueAndVelocity(J)Z

    move-result v7

    iget v8, v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v9, v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v9, v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    invoke-virtual {v6, v8}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setPropertyValue(F)V

    if-eqz v7, :cond_4

    invoke-virtual {v6, v4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->endAnimationInternal(Z)V

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_7

    iget-object v1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_7
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDurationScaleChangeListener:Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;

    iget-object v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;->mListener:Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33$$ExternalSyntheticLambda0;

    invoke-static {v1}, Landroid/animation/ValueAnimator;->unregisterDurationScaleChangeListener(Landroid/animation/ValueAnimator$DurationScaleChangeListener;)Z

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;->mListener:Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33$$ExternalSyntheticLambda0;

    :cond_8
    iput-boolean v4, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    :cond_9
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mScheduler:Landroidx/dynamicanimation/animation/FrameCallbackScheduler;

    iget-object p0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mRunnable:Landroidx/dynamicanimation/animation/AnimationHandler$$ExternalSyntheticLambda0;

    invoke-interface {v0, p0}, Landroidx/dynamicanimation/animation/FrameCallbackScheduler;->postFrameCallback(Landroidx/dynamicanimation/animation/AnimationHandler$$ExternalSyntheticLambda0;)V

    :cond_a
    return-void
.end method
