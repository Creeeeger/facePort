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

.field private blacklist mRtFirst:Z

.field private final blacklist mRtSurfaceHeight:I

.field private final blacklist mRtSurfaceWidth:I

.field final synthetic blacklist this$0:Landroid/view/SurfaceView;


# direct methods
.method constructor blacklist <init>(Landroid/view/SurfaceView;II)V
    .locals 0
    .param p2, "surfaceWidth"    # I
    .param p3, "surfaceHeight"    # I

    .line 1493
    iput-object p1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1489
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtFirst:Z

    .line 1490
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1494
    iput p2, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceWidth:I

    .line 1495
    iput p3, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceHeight:I

    .line 1496
    return-void
.end method


# virtual methods
.method public blacklist applyStretch(JFFFFFFFFFF)V
    .locals 14
    .param p1, "frameNumber"    # J
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "vecX"    # F
    .param p6, "vecY"    # F
    .param p7, "maxStretchX"    # F
    .param p8, "maxStretchY"    # F
    .param p9, "childRelativeLeft"    # F
    .param p10, "childRelativeTop"    # F
    .param p11, "childRelativeRight"    # F
    .param p12, "childRelativeBottom"    # F

    .line 1548
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

    .line 1551
    iget-object v1, v0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v1}, Landroid/view/SurfaceView;->-$$Nest$fgetmRtTransaction(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    move-wide v3, p1

    invoke-static {v1, v2, v3, v4}, Landroid/view/SurfaceView;->-$$Nest$mapplyOrMergeTransaction(Landroid/view/SurfaceView;Landroid/view/SurfaceControl$Transaction;J)V

    .line 1552
    return-void
.end method

.method public blacklist positionChanged(JIIII)V
    .locals 15
    .param p1, "frameNumber"    # J
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .line 1500
    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    iget-boolean v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtFirst:Z

    if-nez v0, :cond_0

    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ne v0, v2, :cond_0

    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ne v0, v3, :cond_0

    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ne v0, v4, :cond_0

    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v0, v5, :cond_0

    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedSurfaceSize(Landroid/view/SurfaceView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceWidth:I

    if-ne v0, v6, :cond_0

    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedSurfaceSize(Landroid/view/SurfaceView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v6, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceHeight:I

    if-ne v0, v6, :cond_0

    .line 1506
    return-void

    .line 1508
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtFirst:Z

    .line 1510
    :try_start_0
    invoke-static {}, Landroid/view/SurfaceView;->-$$Nest$sfgetDEBUG_POSITION()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1511
    iget-object v6, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v6}, Landroid/view/SurfaceView;->-$$Nest$fgetmTag(Landroid/view/SurfaceView;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "updateSurfacePosition RenderWorker, frameNr = %d, position = [%d, %d, %d, %d] surfaceSize = %dx%d"

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    .line 1514
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v0

    const/4 v0, 0x1

    .line 1515
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    const/4 v0, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    const/4 v0, 0x3

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    const/4 v0, 0x4

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    const/4 v0, 0x5

    iget v9, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceWidth:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    const/4 v0, 0x6

    iget v9, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceHeight:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    .line 1511
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    :cond_1
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1518
    :try_start_1
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_2

    monitor-exit v6

    return-void

    .line 1519
    :cond_2
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1520
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedSurfaceSize(Landroid/view/SurfaceView;)Landroid/graphics/Point;

    move-result-object v0

    iget v7, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceWidth:I

    iget v8, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceHeight:I

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Point;->set(II)V

    .line 1522
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

    .line 1525
    iget-object v8, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v9, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v10, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

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

    .line 1528
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v7, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceWidth:I

    int-to-float v7, v7

    div-float v13, v0, v7

    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1530
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v7, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceHeight:I

    int-to-float v7, v7

    div-float v14, v0, v7

    .line 1525
    invoke-virtual/range {v8 .. v14}, Landroid/view/SurfaceView;->onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V

    .line 1532
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_3

    .line 1534
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v7, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v7, v7, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v7}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1536
    :cond_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1537
    :try_start_2
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-wide/from16 v7, p1

    :try_start_3
    invoke-static {v0, v6, v7, v8}, Landroid/view/SurfaceView;->-$$Nest$mapplyOrMergeTransaction(Landroid/view/SurfaceView;Landroid/view/SurfaceControl$Transaction;J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1540
    goto :goto_2

    .line 1536
    :catchall_0
    move-exception v0

    move-wide/from16 v7, p1

    :goto_0
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local p0    # "this":Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;
    .end local p1    # "frameNumber":J
    .end local p3    # "left":I
    .end local p4    # "top":I
    .end local p5    # "right":I
    .end local p6    # "bottom":I
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1538
    .restart local p0    # "this":Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;
    .restart local p1    # "frameNumber":J
    .restart local p3    # "left":I
    .restart local p4    # "top":I
    .restart local p5    # "right":I
    .restart local p6    # "bottom":I
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1536
    :catchall_1
    move-exception v0

    goto :goto_0

    .line 1538
    :catch_1
    move-exception v0

    move-wide/from16 v7, p1

    .line 1539
    .local v0, "ex":Ljava/lang/Exception;
    :goto_1
    iget-object v6, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v6}, Landroid/view/SurfaceView;->-$$Nest$fgetmTag(Landroid/view/SurfaceView;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "Exception from repositionChild"

    invoke-static {v6, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1541
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public blacklist positionLost(J)V
    .locals 5
    .param p1, "frameNumber"    # J

    .line 1556
    invoke-static {}, Landroid/view/SurfaceView;->-$$Nest$sfgetDEBUG_POSITION()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1557
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmTag(Landroid/view/SurfaceView;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "windowPositionLost, frameNr = %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1558
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1557
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1561
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedSurfaceSize(Landroid/view/SurfaceView;)Landroid/graphics/Point;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 1564
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1565
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    .line 1567
    :cond_1
    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v1}, Landroid/view/SurfaceView;->-$$Nest$fgetmRtTransaction(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v2, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1568
    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v1}, Landroid/view/SurfaceView;->-$$Nest$fgetmRtTransaction(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-static {v1, v2, p1, p2}, Landroid/view/SurfaceView;->-$$Nest$mapplyOrMergeTransaction(Landroid/view/SurfaceView;Landroid/view/SurfaceControl$Transaction;J)V

    .line 1569
    monitor-exit v0

    .line 1570
    return-void

    .line 1569
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
