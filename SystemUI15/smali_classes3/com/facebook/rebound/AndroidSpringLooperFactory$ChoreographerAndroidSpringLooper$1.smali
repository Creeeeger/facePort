.class public final Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;


# direct methods
.method public constructor <init>(Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 45

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    iget-boolean v2, v1, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mStarted:Z

    if-eqz v2, :cond_14

    iget-object v1, v1, Lcom/facebook/rebound/SpringLooper;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    if-nez v1, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    iget-object v4, v3, Lcom/facebook/rebound/SpringLooper;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    iget-wide v5, v3, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mLastTime:J

    sub-long v5, v1, v5

    long-to-double v5, v5

    iget-object v3, v4, Lcom/facebook/rebound/BaseSpringSystem;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_13

    iget-object v3, v4, Lcom/facebook/rebound/BaseSpringSystem;->mActiveSprings:Ljava/util/Set;

    check-cast v3, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/rebound/Spring;

    invoke-virtual {v7}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-boolean v10, v7, Lcom/facebook/rebound/Spring;->mWasAtRest:Z

    if-nez v10, :cond_1

    goto :goto_2

    :cond_1
    iget-object v9, v4, Lcom/facebook/rebound/BaseSpringSystem;->mActiveSprings:Ljava/util/Set;

    check-cast v9, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v9, v7}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    :goto_1
    move-wide/from16 v19, v1

    move-object/from16 v18, v3

    move-object/from16 v23, v4

    move-wide/from16 v16, v5

    goto/16 :goto_9

    :cond_2
    :goto_2
    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double v10, v5, v10

    invoke-virtual {v7}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-boolean v13, v7, Lcom/facebook/rebound/Spring;->mWasAtRest:Z

    if-eqz v13, :cond_3

    goto :goto_1

    :cond_3
    const-wide v13, 0x3fb0624dd2f1a9fcL    # 0.064

    cmpl-double v15, v10, v13

    if-lez v15, :cond_4

    move-wide v10, v13

    :cond_4
    iget-wide v13, v7, Lcom/facebook/rebound/Spring;->mTimeAccumulator:D

    add-double/2addr v13, v10

    iput-wide v13, v7, Lcom/facebook/rebound/Spring;->mTimeAccumulator:D

    iget-object v10, v7, Lcom/facebook/rebound/Spring;->mSpringConfig:Lcom/facebook/rebound/SpringConfig;

    iget-wide v13, v10, Lcom/facebook/rebound/SpringConfig;->tension:D

    iget-wide v10, v10, Lcom/facebook/rebound/SpringConfig;->friction:D

    iget-object v15, v7, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v8, v15, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    move-wide/from16 v16, v5

    iget-wide v5, v15, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    move-object/from16 v18, v3

    iget-object v3, v7, Lcom/facebook/rebound/Spring;->mTempState:Lcom/facebook/rebound/Spring$PhysicsState;

    move-wide/from16 v19, v5

    iget-wide v5, v3, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    move-wide/from16 v21, v5

    iget-wide v5, v3, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    move-object/from16 v24, v3

    move-object/from16 v23, v4

    move-wide/from16 v41, v5

    move-wide/from16 v5, v21

    move-wide/from16 v21, v41

    move-wide/from16 v43, v1

    move-wide/from16 v1, v19

    move-wide/from16 v19, v43

    :goto_3
    iget-wide v3, v7, Lcom/facebook/rebound/Spring;->mTimeAccumulator:D

    const-wide v25, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v27, v3, v25

    move/from16 v28, v12

    iget-object v12, v7, Lcom/facebook/rebound/Spring;->mPreviousState:Lcom/facebook/rebound/Spring$PhysicsState;

    if-ltz v27, :cond_6

    sub-double v3, v3, v25

    iput-wide v3, v7, Lcom/facebook/rebound/Spring;->mTimeAccumulator:D

    cmpg-double v3, v3, v25

    if-gez v3, :cond_5

    iput-wide v8, v12, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    iput-wide v1, v12, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    :cond_5
    iget-wide v3, v7, Lcom/facebook/rebound/Spring;->mEndValue:D

    sub-double v5, v3, v5

    mul-double/2addr v5, v13

    mul-double v21, v10, v1

    sub-double v5, v5, v21

    mul-double v21, v1, v25

    const-wide/high16 v29, 0x3fe0000000000000L    # 0.5

    mul-double v21, v21, v29

    add-double v21, v21, v8

    mul-double v31, v5, v25

    mul-double v31, v31, v29

    add-double v31, v31, v1

    sub-double v21, v3, v21

    mul-double v21, v21, v13

    mul-double v33, v10, v31

    sub-double v21, v21, v33

    mul-double v33, v31, v25

    mul-double v33, v33, v29

    add-double v33, v33, v8

    mul-double v35, v21, v25

    mul-double v35, v35, v29

    add-double v35, v35, v1

    sub-double v29, v3, v33

    mul-double v29, v29, v13

    mul-double v33, v10, v35

    sub-double v29, v29, v33

    mul-double v33, v35, v25

    add-double v33, v33, v8

    mul-double v37, v29, v25

    add-double v37, v37, v1

    sub-double v3, v3, v33

    mul-double/2addr v3, v13

    mul-double v39, v10, v37

    sub-double v3, v3, v39

    add-double v31, v31, v35

    const-wide/high16 v35, 0x4000000000000000L    # 2.0

    mul-double v31, v31, v35

    add-double v31, v31, v1

    add-double v31, v31, v37

    const-wide v39, 0x3fc5555555555555L    # 0.16666666666666666

    mul-double v31, v31, v39

    add-double v21, v21, v29

    mul-double v21, v21, v35

    add-double v21, v21, v5

    add-double v21, v21, v3

    mul-double v21, v21, v39

    mul-double v31, v31, v25

    add-double v8, v31, v8

    mul-double v21, v21, v25

    add-double v1, v21, v1

    move/from16 v12, v28

    move-wide/from16 v5, v33

    move-wide/from16 v21, v37

    goto/16 :goto_3

    :cond_6
    move-object/from16 v10, v24

    iput-wide v5, v10, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    move-wide/from16 v5, v21

    iput-wide v5, v10, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    iput-wide v8, v15, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    iput-wide v1, v15, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    const-wide/16 v5, 0x0

    cmpl-double v10, v3, v5

    if-lez v10, :cond_7

    div-double v3, v3, v25

    mul-double/2addr v8, v3

    iget-wide v10, v12, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    sub-double v21, v21, v3

    mul-double v10, v10, v21

    add-double/2addr v10, v8

    iput-wide v10, v15, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    mul-double/2addr v1, v3

    iget-wide v3, v12, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    mul-double v3, v3, v21

    add-double/2addr v3, v1

    iput-wide v3, v15, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    :cond_7
    invoke-virtual {v7}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    move-result v1

    if-nez v1, :cond_8

    move/from16 v12, v28

    goto :goto_5

    :cond_8
    cmpl-double v1, v13, v5

    if-lez v1, :cond_9

    iget-wide v1, v7, Lcom/facebook/rebound/Spring;->mEndValue:D

    iput-wide v1, v15, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    goto :goto_4

    :cond_9
    iget-wide v1, v15, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    iput-wide v1, v7, Lcom/facebook/rebound/Spring;->mEndValue:D

    :goto_4
    invoke-virtual {v7, v5, v6}, Lcom/facebook/rebound/Spring;->setVelocity(D)V

    const/4 v12, 0x1

    :goto_5
    iget-boolean v1, v7, Lcom/facebook/rebound/Spring;->mWasAtRest:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    iput-boolean v2, v7, Lcom/facebook/rebound/Spring;->mWasAtRest:Z

    const/4 v1, 0x1

    goto :goto_6

    :cond_a
    move v1, v2

    :goto_6
    if-eqz v12, :cond_b

    const/4 v3, 0x1

    iput-boolean v3, v7, Lcom/facebook/rebound/Spring;->mWasAtRest:Z

    const/4 v9, 0x1

    goto :goto_7

    :cond_b
    move v9, v2

    :goto_7
    iget-object v2, v7, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/rebound/SpringListener;

    if-eqz v1, :cond_d

    invoke-interface {v3, v7}, Lcom/facebook/rebound/SpringListener;->onSpringActivate(Lcom/facebook/rebound/Spring;)V

    :cond_d
    invoke-interface {v3, v7}, Lcom/facebook/rebound/SpringListener;->onSpringUpdate(Lcom/facebook/rebound/Spring;)V

    if-eqz v9, :cond_c

    invoke-interface {v3, v7}, Lcom/facebook/rebound/SpringListener;->onSpringAtRest(Lcom/facebook/rebound/Spring;)V

    goto :goto_8

    :cond_e
    :goto_9
    move-wide/from16 v5, v16

    move-object/from16 v3, v18

    move-wide/from16 v1, v19

    move-object/from16 v4, v23

    goto/16 :goto_0

    :cond_f
    move-wide/from16 v19, v1

    move-object v1, v4

    iget-object v2, v1, Lcom/facebook/rebound/BaseSpringSystem;->mActiveSprings:Ljava/util/Set;

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/facebook/rebound/BaseSpringSystem;->mIdle:Z

    :cond_10
    iget-object v2, v1, Lcom/facebook/rebound/BaseSpringSystem;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_12

    iget-boolean v2, v1, Lcom/facebook/rebound/BaseSpringSystem;->mIdle:Z

    if-eqz v2, :cond_11

    iget-object v1, v1, Lcom/facebook/rebound/BaseSpringSystem;->mSpringLooper:Lcom/facebook/rebound/SpringLooper;

    invoke-virtual {v1}, Lcom/facebook/rebound/SpringLooper;->stop()V

    :cond_11
    iget-object v0, v0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    move-wide/from16 v1, v19

    iput-wide v1, v0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mLastTime:J

    iget-object v1, v0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mChoreographer:Landroid/view/Choreographer;

    iget-object v0, v0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mFrameCallback:Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;

    invoke-virtual {v1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :cond_13
    const/4 v0, 0x0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    throw v0

    :cond_14
    :goto_a
    return-void
.end method
