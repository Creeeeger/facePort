.class final Landroid/view/ViewRootImpl$SyntheticTrackballHandler;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticTrackballHandler"
.end annotation


# instance fields
.field private greylist-max-o mLastTime:J

.field private final greylist-max-o mX:Landroid/view/ViewRootImpl$TrackballAxis;

.field private final greylist-max-o mY:Landroid/view/ViewRootImpl$TrackballAxis;

.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    new-instance v0, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    return-void
.end method


# virtual methods
.method public greylist-max-o cancel()V
    .locals 2

    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    :cond_0
    return-void
.end method

.method public greylist-max-o process(Landroid/view/MotionEvent;)V
    .locals 32

    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    iget-wide v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    const-wide/16 v3, 0xfa

    add-long/2addr v1, v3

    cmp-long v1, v1, v14

    if-gez v1, :cond_0

    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    iput-wide v14, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v17

    const/4 v13, 0x2

    packed-switch v16, :pswitch_data_0

    move-wide/from16 v23, v14

    goto/16 :goto_0

    :pswitch_0
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v13}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v13}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    iget-object v12, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v11, Landroid/view/KeyEvent;

    const/16 v18, 0x400

    const/16 v19, 0x101

    const/4 v6, 0x1

    const/16 v7, 0x17

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/16 v20, 0x0

    move-object v1, v11

    move-wide v2, v14

    move-wide v4, v14

    move/from16 v9, v17

    move-object/from16 v21, v11

    move/from16 v11, v20

    move-object/from16 v22, v12

    move/from16 v12, v18

    move-wide/from16 v23, v14

    move v14, v13

    move/from16 v13, v19

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v2, v21

    move-object/from16 v1, v22

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    goto :goto_0

    :pswitch_1
    move-wide/from16 v23, v14

    move v14, v13

    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v14}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v14}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    iget-object v15, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v13, Landroid/view/KeyEvent;

    const/16 v12, 0x400

    const/16 v18, 0x101

    const/4 v6, 0x0

    const/16 v7, 0x17

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v1, v13

    move-wide/from16 v2, v23

    move-wide/from16 v4, v23

    move/from16 v9, v17

    move-object v14, v13

    move/from16 v13, v18

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v15, v14}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    nop

    :goto_0
    invoke-static {}, Landroid/view/ViewRootImpl;->-$$Nest$sfgetDEBUG_TRACKBALL()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TB X="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v3, v3, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " step="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v4, v4, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " dir="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v5, v5, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " acc="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v6, v6, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " move="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " / Y="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v7, v7, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v3, v3, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v3, v3, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v3, v3, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    const-string v5, "X"

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v14

    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    const-string v5, "Y"

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v15

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v14, v15

    if-lez v4, :cond_4

    iget-object v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl$TrackballAxis;->generate()I

    move-result v2

    if-eqz v2, :cond_3

    if-lez v2, :cond_2

    const/16 v4, 0x16

    goto :goto_1

    :cond_2
    const/16 v4, 0x15

    :goto_1
    move v1, v4

    iget-object v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v3, v4, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    iget-object v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    move v13, v1

    move v12, v3

    goto :goto_3

    :cond_3
    move v13, v1

    move v12, v3

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    cmpl-float v4, v15, v4

    if-lez v4, :cond_7

    iget-object v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl$TrackballAxis;->generate()I

    move-result v2

    if-eqz v2, :cond_6

    if-lez v2, :cond_5

    const/16 v4, 0x14

    goto :goto_2

    :cond_5
    const/16 v4, 0x13

    :goto_2
    move v1, v4

    iget-object v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v3, v4, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    iget-object v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    move v13, v1

    move v12, v3

    goto :goto_3

    :cond_6
    move v13, v1

    move v12, v3

    goto :goto_3

    :cond_7
    move v13, v1

    move v12, v3

    :goto_3
    if-eqz v13, :cond_e

    if-gez v2, :cond_8

    neg-int v2, v2

    :cond_8
    int-to-float v1, v2

    mul-float/2addr v1, v12

    float-to-int v11, v1

    invoke-static {}, Landroid/view/ViewRootImpl;->-$$Nest$sfgetDEBUG_TRACKBALL()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Move: movement="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " accelMovement="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " accel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-string v10, "Delivering fake DPAD: "

    if-le v11, v2, :cond_b

    invoke-static {}, Landroid/view/ViewRootImpl;->-$$Nest$sfgetDEBUG_TRACKBALL()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    add-int/lit8 v18, v2, -0x1

    sub-int v19, v11, v18

    iget-object v9, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v8, Landroid/view/KeyEvent;

    const/16 v20, 0x400

    const/16 v21, 0x101

    const/4 v6, 0x2

    const/16 v22, -0x1

    const/16 v25, 0x0

    move-object v1, v8

    move-wide/from16 v2, v23

    move-wide/from16 v4, v23

    move v7, v13

    move-object/from16 v26, v8

    move/from16 v8, v19

    move-object/from16 v27, v9

    move/from16 v9, v17

    move-object/from16 v28, v10

    move/from16 v10, v22

    move/from16 v22, v11

    move/from16 v11, v25

    move/from16 v25, v12

    move/from16 v12, v20

    move/from16 v20, v14

    move v14, v13

    move/from16 v13, v21

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v2, v26

    move-object/from16 v1, v27

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    move/from16 v2, v18

    move-wide/from16 v3, v23

    goto :goto_4

    :cond_b
    move-object/from16 v28, v10

    move/from16 v22, v11

    move/from16 v25, v12

    move/from16 v20, v14

    move v14, v13

    move-wide/from16 v3, v23

    :goto_4
    if-lez v2, :cond_d

    invoke-static {}, Landroid/view/ViewRootImpl;->-$$Nest$sfgetDEBUG_TRACKBALL()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, v28

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_c
    move-object/from16 v13, v28

    :goto_5
    add-int/lit8 v18, v2, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    iget-object v12, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v11, Landroid/view/KeyEvent;

    const/16 v19, 0x400

    const/16 v21, 0x101

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/16 v26, 0x0

    move-object v1, v11

    move-wide/from16 v2, v23

    move-wide/from16 v4, v23

    move v7, v14

    move/from16 v9, v17

    move-object/from16 v29, v11

    move/from16 v11, v26

    move-object/from16 v30, v12

    move/from16 v12, v19

    move-object/from16 v19, v13

    move/from16 v13, v21

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v2, v29

    move-object/from16 v1, v30

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    iget-object v13, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v12, Landroid/view/KeyEvent;

    const/16 v21, 0x400

    const/16 v26, 0x101

    const/4 v6, 0x1

    const/4 v11, 0x0

    move-object v1, v12

    move-wide/from16 v2, v23

    move-object/from16 v31, v12

    move/from16 v12, v21

    move/from16 v21, v14

    move-object v14, v13

    move/from16 v13, v26

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v1, v31

    invoke-virtual {v14, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    move/from16 v2, v18

    move-object/from16 v28, v19

    move/from16 v14, v21

    move-wide/from16 v3, v23

    goto :goto_4

    :cond_d
    move/from16 v21, v14

    iput-wide v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    goto :goto_6

    :cond_e
    move/from16 v25, v12

    move/from16 v21, v13

    move/from16 v20, v14

    move-wide/from16 v3, v23

    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
