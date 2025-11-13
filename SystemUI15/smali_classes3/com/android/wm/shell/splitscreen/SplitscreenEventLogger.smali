.class public final Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mDragEnterPosition:I

.field public mEnterReason:I

.field public mEnterSessionId:Lcom/android/internal/logging/InstanceId;

.field public final mIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

.field public mLastMainStagePosition:I

.field public mLastMainStageUid:I

.field public mLastSideStagePosition:I

.field public mLastSideStageUid:I

.field public mLastSplitRatio:F

.field public mLoggerSessionId:Lcom/android/internal/logging/InstanceId;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastMainStagePosition:I

    iput v0, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastMainStageUid:I

    iput v0, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSideStagePosition:I

    iput v0, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSideStageUid:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSplitRatio:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterReason:I

    new-instance v0, Lcom/android/internal/logging/InstanceIdSequence;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Lcom/android/internal/logging/InstanceIdSequence;-><init>(I)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    return-void
.end method

.method public static getMainStagePositionFromSplitPosition(IZ)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_2

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    return p0

    :cond_2
    if-nez p0, :cond_3

    const/4 p0, 0x3

    goto :goto_1

    :cond_3
    const/4 p0, 0x4

    :goto_1
    return p0
.end method

.method public static getSideStagePositionFromSplitPosition(IZ)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_2

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    return p0

    :cond_2
    if-nez p0, :cond_3

    const/4 p0, 0x3

    goto :goto_1

    :cond_3
    const/4 p0, 0x4

    :goto_1
    return p0
.end method


# virtual methods
.method public final logEnter(FIIIIZ)V
    .locals 12

    move-object v0, p0

    move v4, p1

    move/from16 v1, p6

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    invoke-virtual {v2}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    iget v2, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterReason:I

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    const/4 v6, 0x2

    if-eq v2, v6, :cond_1

    if-eq v2, v3, :cond_0

    move v3, p2

    move v2, v5

    goto :goto_3

    :cond_0
    const/4 v2, 0x6

    :goto_0
    move v3, p2

    goto :goto_3

    :cond_1
    iget v2, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mDragEnterPosition:I

    if-eqz v1, :cond_3

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x4

    goto :goto_2

    :cond_3
    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x5

    :goto_1
    move v6, v3

    :goto_2
    move v3, p2

    move v2, v6

    goto :goto_3

    :cond_5
    const/4 v2, 0x7

    goto :goto_0

    :goto_3
    invoke-static {p2, v1}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->getMainStagePositionFromSplitPosition(IZ)I

    move-result v3

    move v6, p3

    invoke-virtual {p0, v3, p3}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->updateMainStageState(II)Z

    move/from16 v3, p4

    invoke-static {v3, v1}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->getSideStagePositionFromSplitPosition(IZ)I

    move-result v1

    move/from16 v3, p5

    invoke-virtual {p0, v1, v3}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->updateSideStageState(II)Z

    iget v1, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSplitRatio:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    iput v4, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSplitRatio:F

    :cond_6
    iget v6, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastMainStagePosition:I

    iget v7, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastMainStageUid:I

    iget v8, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSideStagePosition:I

    iget v9, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSideStageUid:I

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterSessionId:Lcom/android/internal/logging/InstanceId;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v1

    move v10, v1

    goto :goto_4

    :cond_7
    move v10, v5

    :goto_4
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v11

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x184

    move v4, p1

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIFIIIIII)V

    return-void
.end method

.method public final logExit(IIIIIZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p6

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    if-nez v5, :cond_0

    return-void

    :cond_0
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    if-ne v3, v5, :cond_2

    :cond_1
    if-eqz p3, :cond_3

    if-nez p5, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only main or side stage should be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    const/4 v15, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unknown exit reason: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "SplitscreenEventLogger"

    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v15

    goto :goto_2

    :pswitch_0
    const/16 v1, 0xc

    :goto_1
    move v9, v1

    goto :goto_2

    :pswitch_1
    const/16 v1, 0xb

    goto :goto_1

    :pswitch_2
    const/16 v1, 0xa

    goto :goto_1

    :pswitch_3
    const/16 v1, 0x9

    goto :goto_1

    :pswitch_4
    const/4 v1, 0x4

    goto :goto_1

    :pswitch_5
    const/4 v1, 0x3

    goto :goto_1

    :pswitch_6
    const/4 v1, 0x6

    goto :goto_1

    :pswitch_7
    const/4 v1, 0x2

    goto :goto_1

    :pswitch_8
    const/4 v1, 0x1

    goto :goto_1

    :pswitch_9
    const/4 v1, 0x5

    goto :goto_1

    :pswitch_a
    const/4 v1, 0x7

    goto :goto_1

    :pswitch_b
    const/16 v1, 0x8

    goto :goto_1

    :goto_2
    invoke-static {v2, v4}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->getMainStagePositionFromSplitPosition(IZ)I

    move-result v11

    invoke-static {v3, v4}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->getSideStagePositionFromSplitPosition(IZ)I

    move-result v13

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    invoke-virtual {v1}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v16

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/16 v6, 0x184

    const/4 v7, 0x2

    const/4 v8, 0x0

    move/from16 v12, p3

    move/from16 v14, p5

    move v2, v15

    move v15, v1

    invoke-static/range {v6 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIFIIIIII)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    iput v5, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mDragEnterPosition:I

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterSessionId:Lcom/android/internal/logging/InstanceId;

    iput v5, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastMainStagePosition:I

    iput v5, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastMainStageUid:I

    iput v5, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSideStagePosition:I

    iput v5, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSideStageUid:I

    iput v2, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterReason:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateMainStageState(II)Z
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastMainStagePosition:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastMainStageUid:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastMainStagePosition:I

    iput p2, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastMainStageUid:I

    const/4 p0, 0x1

    return p0
.end method

.method public final updateSideStageState(II)Z
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSideStagePosition:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSideStageUid:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSideStagePosition:I

    iput p2, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSideStageUid:I

    const/4 p0, 0x1

    return p0
.end method
