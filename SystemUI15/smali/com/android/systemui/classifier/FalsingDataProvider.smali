.class public final Lcom/android/systemui/classifier/FalsingDataProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mA11YAction:Z

.field public mAngle:F

.field public final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public mDirty:Z

.field public final mDockManager:Lcom/android/systemui/dock/DockManager;

.field public mDropLastEvent:Z

.field public mFirstRecentMotionEvent:Landroid/view/MotionEvent;

.field public final mFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

.field public final mGestureFinalizedListeners:Ljava/util/List;

.field public final mHeightPixels:I

.field public final mIsFoldableDevice:Z

.field public mJustUnlockedWithFace:Z

.field public mLastMotionEvent:Landroid/view/MotionEvent;

.field public final mMotionEventListeners:Ljava/util/List;

.field public mPriorMotionEvents:Ljava/util/List;

.field public final mRecentKeyEvents:Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;

.field public mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;

.field public final mSessionListeners:Ljava/util/List;

.field public final mWidthPixels:I

.field public final mXdpi:F

.field public final mYdpi:F


# direct methods
.method public constructor <init>(Landroid/util/DisplayMetrics;Lcom/android/systemui/statusbar/policy/BatteryController;Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;Lcom/android/systemui/dock/DockManager;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mSessionListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mMotionEventListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mGestureFinalizedListeners:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;-><init>(J)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;

    new-instance v0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;

    const-wide/16 v1, 0x1f4

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;-><init>(J)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentKeyEvents:Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mPriorMotionEvents:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mDirty:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mAngle:F

    iget v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iput v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mXdpi:F

    iget v0, p1, Landroid/util/DisplayMetrics;->ydpi:F

    iput v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mYdpi:F

    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mWidthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mHeightPixels:I

    iput-object p2, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object p3, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    iput-object p4, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mDockManager:Lcom/android/systemui/dock/DockManager;

    iput-boolean p5, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mIsFoldableDevice:Z

    sget-boolean p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    return-void
.end method


# virtual methods
.method public final completePriorGesture()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mGestureFinalizedListeners:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/classifier/FalsingDataProvider$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/classifier/FalsingDataProvider$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mPriorMotionEvents:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;-><init>(J)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mDropLastEvent:Z

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mA11YAction:Z

    return-void
.end method

.method public final getRecentMotionEvents()Ljava/util/List;
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mDropLastEvent:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;

    return-object p0
.end method

.method public final isHorizontal()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->recalculateData()V

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mFirstRecentMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mFirstRecentMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    sub-float/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    const/4 v10, 0x0

    move v5, v10

    :goto_0
    if-ge v5, v11, :cond_0

    new-instance v6, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v6}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    invoke-virtual {v1, v5, v6}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v15, v5, [Landroid/view/MotionEvent$PointerProperties;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    move v14, v10

    :goto_1
    if-ge v14, v4, :cond_2

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move v5, v10

    :goto_2
    if-ge v5, v11, :cond_1

    new-instance v6, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v6}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    invoke-virtual {v1, v5, v14, v6}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v2

    goto :goto_2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    new-array v13, v10, [Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v16

    move/from16 v23, v14

    move/from16 v14, v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v16

    move-object/from16 v24, v15

    move/from16 v15, v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v22

    move/from16 v25, v10

    move v10, v11

    move/from16 v26, v11

    move-object/from16 v11, v24

    invoke-static/range {v5 .. v22}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIIII)Landroid/view/MotionEvent;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v23, 0x1

    move-object/from16 v15, v24

    move/from16 v10, v25

    move/from16 v11, v26

    goto :goto_1

    :cond_2
    move/from16 v25, v10

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    sget-boolean v4, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getEventTime()J

    sget-boolean v5, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    goto :goto_3

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->completePriorGesture()V

    :cond_4
    iget-object v4, v0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;

    invoke-virtual {v4}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->size()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_6

    :cond_5
    move/from16 v10, v25

    goto :goto_6

    :cond_6
    iget-object v4, v0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;

    invoke-virtual {v4}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->size()I

    move-result v5

    sub-int/2addr v5, v2

    iget-object v4, v4, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->mInputEvents:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputEvent;

    check-cast v4, Landroid/view/MotionEvent;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-ne v5, v2, :cond_7

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    move v10, v2

    goto :goto_4

    :cond_7
    move/from16 v10, v25

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x32

    cmp-long v4, v5, v7

    if-gez v4, :cond_8

    move v4, v2

    goto :goto_5

    :cond_8
    move/from16 v4, v25

    :goto_5
    if-eqz v10, :cond_5

    if-eqz v4, :cond_5

    move v10, v2

    :goto_6
    iput-boolean v10, v0, Lcom/android/systemui/classifier/FalsingDataProvider;->mDropLastEvent:Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, v0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentKeyEvents:Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;

    invoke-virtual {v4}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v4}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/KeyEvent;

    invoke-virtual {v6}, Landroid/view/KeyEvent;->recycle()V

    goto :goto_7

    :cond_9
    invoke-virtual {v4}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->clear()V

    :cond_a
    iget-object v4, v0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;

    invoke-virtual {v4, v3}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;

    invoke-virtual {v3}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->size()I

    sget-boolean v3, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    iget-object v3, v0, Lcom/android/systemui/classifier/FalsingDataProvider;->mMotionEventListeners:Ljava/util/List;

    new-instance v4, Lcom/android/systemui/classifier/FalsingDataProvider$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v2}, Lcom/android/systemui/classifier/FalsingDataProvider$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iput-boolean v2, v0, Lcom/android/systemui/classifier/FalsingDataProvider;->mDirty:Z

    return-void
.end method

.method public final recalculateData()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mDirty:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->getRecentMotionEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mFirstRecentMotionEvent:Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mLastMotionEvent:Landroid/view/MotionEvent;

    goto :goto_0

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    iput-object v1, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mFirstRecentMotionEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/compose/runtime/PrioritySet$$ExternalSyntheticOutline0;->m(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mLastMotionEvent:Landroid/view/MotionEvent;

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mAngle:F

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mFirstRecentMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mFirstRecentMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v1, v3

    float-to-double v3, v1

    float-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mAngle:F

    :goto_1
    iget v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mAngle:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    const v3, 0x40c90fdb

    if-gez v1, :cond_3

    add-float/2addr v0, v3

    iput v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mAngle:F

    goto :goto_1

    :cond_3
    :goto_2
    iget v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mAngle:F

    cmpl-float v1, v0, v3

    if-lez v1, :cond_4

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mAngle:F

    goto :goto_2

    :cond_4
    :goto_3
    iput-boolean v2, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mDirty:Z

    return-void
.end method
