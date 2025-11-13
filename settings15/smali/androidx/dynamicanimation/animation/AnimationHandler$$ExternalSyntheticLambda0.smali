.class public final synthetic Landroidx/dynamicanimation/animation/AnimationHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

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
    .locals 28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/dynamicanimation/animation/AnimationHandler$$ExternalSyntheticLambda0;->f$0:Landroidx/dynamicanimation/animation/AnimationHandler;

    iget-object v0, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v0, v0, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;->this$0:Landroidx/dynamicanimation/animation/AnimationHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v6, 0x0

    :goto_0
    iget-object v7, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_8

    iget-object v7, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v7, :cond_1

    :cond_0
    :goto_1
    move/from16 v27, v6

    goto/16 :goto_7

    :cond_1
    iget-object v9, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v9, v7}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    if-nez v10, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v10, v10, v3

    if-gez v10, :cond_0

    invoke-virtual {v9, v7}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-wide v9, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-nez v11, :cond_3

    iput-wide v1, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    iget v8, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    invoke-virtual {v7, v8}, Landroidx/dynamicanimation/animation/SpringAnimation;->setPropertyValue(F)V

    goto :goto_1

    :cond_3
    sub-long v9, v1, v9

    iput-wide v1, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    invoke-static {}, Landroidx/dynamicanimation/animation/SpringAnimation;->getAnimationHandler()Landroidx/dynamicanimation/animation/AnimationHandler;

    move-result-object v11

    iget v11, v11, Landroidx/dynamicanimation/animation/AnimationHandler;->mDurationScale:F

    const/4 v12, 0x0

    cmpl-float v13, v11, v12

    if-nez v13, :cond_4

    const-wide/32 v9, 0x7fffffff

    :goto_3
    move-wide/from16 v18, v9

    goto :goto_4

    :cond_4
    long-to-float v9, v9

    div-float/2addr v9, v11

    float-to-long v9, v9

    goto :goto_3

    :goto_4
    iget v9, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    const v10, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_5

    iget-object v9, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v11, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    float-to-double v13, v11

    iget v11, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    move/from16 v27, v6

    float-to-double v5, v11

    const-wide/16 v15, 0x2

    div-long v15, v18, v15

    move-object/from16 v20, v9

    move-wide/from16 v21, v13

    move-wide/from16 v23, v5

    move-wide/from16 v25, v15

    invoke-virtual/range {v20 .. v26}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v5

    iget-object v6, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v9, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    float-to-double v13, v9

    iput-wide v13, v6, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    iput v10, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    iget v9, v5, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    float-to-double v13, v9

    iget v5, v5, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    float-to-double v8, v5

    move-object/from16 v20, v6

    move-wide/from16 v21, v13

    move-wide/from16 v23, v8

    move-wide/from16 v25, v15

    invoke-virtual/range {v20 .. v26}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v5

    iget v6, v5, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput v6, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v5, v5, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v5, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    goto :goto_5

    :cond_5
    move/from16 v27, v6

    iget-object v13, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v5, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    float-to-double v14, v5

    iget v5, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    float-to-double v5, v5

    move-wide/from16 v16, v5

    invoke-virtual/range {v13 .. v19}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v5

    iget v6, v5, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput v6, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v5, v5, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v5, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    :goto_5
    iget v5, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    const v6, -0x800001

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    invoke-static {v5, v10}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v8, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    iget-object v9, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v13, v8

    iget-wide v10, v9, Landroidx/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    cmpg-double v10, v13, v10

    if-gez v10, :cond_6

    iget-wide v10, v9, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    double-to-float v10, v10

    sub-float/2addr v5, v10

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v10, v5

    iget-wide v13, v9, Landroidx/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    cmpg-double v5, v10, v13

    if-gez v5, :cond_6

    iget-object v5, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget-wide v9, v5, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    double-to-float v5, v9

    iput v5, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iput v12, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    const/4 v15, 0x1

    goto :goto_6

    :cond_6
    const/4 v15, 0x0

    :goto_6
    iget v5, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    const v8, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    invoke-virtual {v7, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->setPropertyValue(F)V

    if-eqz v15, :cond_7

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->endAnimationInternal(Z)V

    :cond_7
    :goto_7
    add-int/lit8 v6, v27, 0x1

    goto/16 :goto_0

    :cond_8
    iget-boolean v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    if-eqz v1, :cond_c

    iget-object v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_8
    if-ltz v1, :cond_a

    iget-object v2, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_9

    iget-object v2, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_a
    iget-object v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDurationScaleChangeListener:Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;

    iget-object v2, v1, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;->mChoreographer:Ljava/lang/Object;

    check-cast v2, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33$$ExternalSyntheticLambda0;

    invoke-static {v2}, Landroid/animation/ValueAnimator;->unregisterDurationScaleChangeListener(Landroid/animation/ValueAnimator$DurationScaleChangeListener;)Z

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;->mChoreographer:Ljava/lang/Object;

    :cond_b
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    :cond_c
    iget-object v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    iget-object v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mScheduler:Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;

    iget-object v1, v1, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;->mChoreographer:Ljava/lang/Object;

    check-cast v1, Landroid/view/Choreographer;

    new-instance v2, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16$$ExternalSyntheticLambda0;

    iget-object v0, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mRunnable:Landroidx/dynamicanimation/animation/AnimationHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_d
    return-void
.end method
