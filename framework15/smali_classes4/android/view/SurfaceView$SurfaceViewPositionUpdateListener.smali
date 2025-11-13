.class Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;
.super Ljava/lang/Object;
.source "SurfaceView.java"

# interfaces
.implements Landroid/graphics/RenderNode$PositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceViewPositionUpdateListener"
.end annotation


# instance fields
.field private final blacklist mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final blacklist mRtSurfaceHeight:I

.field private final blacklist mRtSurfaceWidth:I

.field final synthetic blacklist this$0:Landroid/view/SurfaceView;


# direct methods
.method constructor blacklist <init>(Landroid/view/SurfaceView;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    iput p2, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceWidth:I

    iput p3, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceHeight:I

    return-void
.end method


# virtual methods
.method public blacklist applyStretch(JFFFFFFFFFF)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v1}, Landroid/view/SurfaceView;->-$$Nest$fgetmRtTransaction(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v1, v0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v3, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-virtual/range {v2 .. v13}, Landroid/view/SurfaceControl$Transaction;->setStretchEffect(Landroid/view/SurfaceControl;FFFFFFFFFF)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v2}, Landroid/view/SurfaceView;->-$$Nest$fgetmRtTransaction(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    move-wide v3, p1

    invoke-static {v1, v2, v3, v4}, Landroid/view/SurfaceView;->-$$Nest$mapplyOrMergeTransaction(Landroid/view/SurfaceView;Landroid/view/SurfaceControl$Transaction;J)V

    return-void
.end method

.method public blacklist positionChanged(JIIII)V
    .locals 15

    move-object v1, p0

    :try_start_0
    invoke-static {}, Landroid/view/SurfaceView;->-$$Nest$sfgetDEBUG_POSITION()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SurfaceView"

    const-string v2, "%d updateSurfacePosition RenderWorker, frameNr = %d, position = [%d, %d, %d, %d] surfaceSize = %dx%d"

    iget-object v3, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v3, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v3, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array/range {v4 .. v11}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_1

    monitor-exit v2

    return-void

    :cond_1
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    :try_start_2
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmTag(Landroid/view/SurfaceView;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uSP: rtp = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v8}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " rtsw = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " rtsh = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v9, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v10, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v11, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v12, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v7, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceWidth:I

    int-to-float v7, v7

    div-float v13, v0, v7

    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v7, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceHeight:I

    int-to-float v7, v7

    div-float v14, v0, v7

    invoke-virtual/range {v8 .. v14}, Landroid/view/SurfaceView;->onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V

    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v7, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v7, v7, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v7}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-wide/from16 v7, p1

    :try_start_4
    invoke-static {v0, v2, v7, v8}, Landroid/view/SurfaceView;->-$$Nest$mapplyOrMergeTransaction(Landroid/view/SurfaceView;Landroid/view/SurfaceControl$Transaction;J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    move-wide/from16 v7, p1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-wide/from16 v7, p1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-wide/from16 v7, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    :goto_0
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    move-wide/from16 v7, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    :goto_1
    const-string v2, "SurfaceView"

    const-string v9, "Exception from repositionChild"

    invoke-static {v2, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public blacklist positionChanged(JIIIIIIII)V
    .locals 22

    move-object/from16 v1, p0

    :try_start_0
    invoke-static {}, Landroid/view/SurfaceView;->-$$Nest$sfgetDEBUG_POSITION()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SurfaceView"

    const-string v2, "%d updateSurfacePosition RenderWorker, frameNr = %d, position = [%d, %d, %d, %d] clip = [%d, %d, %d, %d] surfaceSize = %dx%d"

    iget-object v3, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v3, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v3, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array/range {v4 .. v15}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_1

    monitor-exit v2

    return-void

    :cond_1
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    :try_start_2
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v7, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceWidth:I

    int-to-float v7, v7

    div-float/2addr v0, v7

    iget-object v7, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v7}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    iget v8, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget-object v8, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v9, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v10, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v10, v10, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v11, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v11}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget-object v12, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v12}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->top:I

    move v13, v0

    move v14, v7

    invoke-virtual/range {v8 .. v14}, Landroid/view/SurfaceView;->onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V

    iget-object v8, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v8}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastSetCrop(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move/from16 v9, p7

    int-to-float v10, v9

    div-float/2addr v10, v0

    float-to-int v10, v10

    move/from16 v11, p8

    int-to-float v12, v11

    div-float/2addr v12, v7

    float-to-int v12, v12

    move/from16 v13, p9

    int-to-float v14, v13

    div-float/2addr v14, v0

    float-to-double v14, v14

    :try_start_3
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    double-to-int v14, v14

    move/from16 v15, p10

    int-to-float v3, v15

    div-float/2addr v3, v7

    float-to-double v3, v3

    :try_start_4
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {v8, v10, v12, v14, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {}, Landroid/view/SurfaceView;->-$$Nest$sfgetDEBUG_POSITION()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "SurfaceView"

    const-string v4, "Setting layer crop = [%d, %d, %d, %d] from scale %f, %f"

    iget-object v8, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v8}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastSetCrop(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget-object v8, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v8}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastSetCrop(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget-object v8, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v8}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastSetCrop(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget-object v8, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v8}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastSetCrop(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    filled-new-array/range {v16 .. v21}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v4, v4, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v8, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v8}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastSetCrop(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v3}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastSetCrop(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v4, v4, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_3
    iget-object v3, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v4, v4, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_0
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-wide/from16 v3, p1

    :try_start_6
    invoke-static {v0, v2, v3, v4}, Landroid/view/SurfaceView;->-$$Nest$mapplyOrMergeTransaction(Landroid/view/SurfaceView;Landroid/view/SurfaceControl$Transaction;J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_5

    :catch_0
    move-exception v0

    move-wide/from16 v3, p1

    goto :goto_4

    :catchall_0
    move-exception v0

    move-wide/from16 v3, p1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-wide/from16 v3, p1

    goto :goto_2

    :catchall_2
    move-exception v0

    move-wide/from16 v3, p1

    goto :goto_1

    :catchall_3
    move-exception v0

    move-wide/from16 v3, p1

    move/from16 v5, p5

    move/from16 v6, p6

    :goto_1
    move/from16 v9, p7

    move/from16 v11, p8

    move/from16 v13, p9

    :goto_2
    move/from16 v15, p10

    :goto_3
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_4
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-wide/from16 v3, p1

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p7

    move/from16 v11, p8

    move/from16 v13, p9

    move/from16 v15, p10

    :goto_4
    const-string v2, "SurfaceView"

    const-string v7, "Exception from repositionChild"

    invoke-static {v2, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void
.end method

.method public blacklist positionLost(J)V
    .locals 4

    invoke-static {}, Landroid/view/SurfaceView;->-$$Nest$sfgetDEBUG_POSITION()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SurfaceView"

    const-string v1, "%d windowPositionLost, frameNr = %d"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v1}, Landroid/view/SurfaceView;->-$$Nest$fgetmRtTransaction(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v2, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v2, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v2}, Landroid/view/SurfaceView;->-$$Nest$fgetmRtTransaction(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-static {v1, v2, p1, p2}, Landroid/view/SurfaceView;->-$$Nest$mapplyOrMergeTransaction(Landroid/view/SurfaceView;Landroid/view/SurfaceControl$Transaction;J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
