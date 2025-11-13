.class public final Landroidx/compose/ui/input/pointer/MotionEventAdapter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final activeHoverIds:Landroid/util/SparseBooleanArray;

.field public final motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

.field public nextId:J

.field public final pointers:Ljava/util/List;

.field public previousSource:I

.field public previousToolType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->activeHoverIds:Landroid/util/SparseBooleanArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->pointers:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->previousToolType:I

    iput v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->previousSource:I

    return-void
.end method


# virtual methods
.method public final convertToPointerInputEvent$ui_release(Landroid/view/MotionEvent;Landroidx/compose/ui/input/pointer/PositionCalculator;)Landroidx/compose/ui/input/pointer/PointerInputEvent;
    .locals 44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1e

    const/4 v4, 0x4

    if-eq v2, v4, :cond_1e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v5, v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v8

    iget v9, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->previousToolType:I

    if-ne v5, v9, :cond_1

    iget v9, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->previousSource:I

    if-eq v8, v9, :cond_2

    :cond_1
    iput v5, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->previousToolType:I

    iput v8, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->previousSource:I

    iget-object v5, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->activeHoverIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v5, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    invoke-virtual {v5}, Landroid/util/SparseLongArray;->clear()V

    :cond_2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const-wide/16 v8, 0x1

    const/16 v10, 0x9

    if-eqz v5, :cond_4

    const/4 v11, 0x5

    if-eq v5, v11, :cond_4

    if-eq v5, v10, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget-object v11, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    invoke-virtual {v11, v5}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v11

    if-gez v11, :cond_5

    iget-object v11, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    iget-wide v12, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->nextId:J

    add-long v14, v12, v8

    iput-wide v14, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->nextId:J

    invoke-virtual {v11, v5, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_1

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    iget-object v12, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v12

    if-gez v12, :cond_5

    iget-object v12, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    iget-wide v13, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->nextId:J

    add-long v6, v13, v8

    iput-wide v6, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->nextId:J

    invoke-virtual {v12, v11, v13, v14}, Landroid/util/SparseLongArray;->put(IJ)V

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    if-ne v5, v3, :cond_5

    iget-object v5, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->activeHoverIds:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v11, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_5
    :goto_1
    const/16 v5, 0xa

    if-eq v2, v10, :cond_7

    const/4 v6, 0x7

    if-eq v2, v6, :cond_7

    if-ne v2, v5, :cond_6

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v6, 0x1

    :goto_3
    const/16 v7, 0x8

    if-ne v2, v7, :cond_8

    const/4 v11, 0x1

    goto :goto_4

    :cond_8
    const/4 v11, 0x0

    :goto_4
    if-eqz v6, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v12

    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    iget-object v13, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->activeHoverIds:Landroid/util/SparseBooleanArray;

    const/4 v14, 0x1

    invoke-virtual {v13, v12, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_5

    :cond_9
    const/4 v14, 0x1

    :goto_5
    const/4 v13, 0x6

    if-eq v2, v14, :cond_b

    if-eq v2, v13, :cond_a

    const/4 v2, -0x1

    goto :goto_6

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    iget-object v14, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->pointers:Ljava/util/List;

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v14, :cond_18

    iget-object v12, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->pointers:Ljava/util/List;

    if-nez v6, :cond_d

    if-eq v15, v2, :cond_d

    if-eqz v11, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v16

    if-eqz v16, :cond_d

    :cond_c
    const/16 v26, 0x1

    goto :goto_8

    :cond_d
    const/16 v26, 0x0

    :goto_8
    invoke-virtual {v1, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v13

    iget-object v10, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    invoke-virtual {v10, v13}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_e

    iget-object v13, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    invoke-virtual {v13, v10}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v17

    move/from16 v35, v6

    move/from16 v36, v11

    move-wide/from16 v18, v17

    goto :goto_9

    :cond_e
    move/from16 v35, v6

    iget-wide v5, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->nextId:J

    move/from16 v36, v11

    add-long v10, v5, v8

    iput-wide v10, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->nextId:J

    iget-object v10, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    invoke-virtual {v10, v13, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    move-wide/from16 v18, v5

    :goto_9
    invoke-virtual {v1, v15}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v27

    invoke-virtual {v1, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {v1, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v5

    const/4 v10, 0x0

    invoke-static {v5, v6, v10, v3}, Landroidx/compose/ui/geometry/Offset;->copy-dBAh8RU$default(JFI)J

    move-result-wide v33

    if-nez v15, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v5

    move-object/from16 v11, p2

    check-cast v11, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v11, v5, v6}, Landroidx/compose/ui/platform/AndroidComposeView;->screenToLocal-MK-Hz9U(J)J

    move-result-wide v20

    :goto_a
    move-wide/from16 v22, v5

    move-wide/from16 v24, v20

    goto :goto_b

    :cond_f
    invoke-virtual {v1, v15}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v5

    invoke-virtual {v1, v15}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v6

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v5

    move-object/from16 v11, p2

    check-cast v11, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v11, v5, v6}, Landroidx/compose/ui/platform/AndroidComposeView;->screenToLocal-MK-Hz9U(J)J

    move-result-wide v20

    goto :goto_a

    :goto_b
    invoke-virtual {v1, v15}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    if-eqz v5, :cond_10

    const/4 v6, 0x1

    if-eq v5, v6, :cond_14

    const/4 v11, 0x2

    if-eq v5, v11, :cond_13

    if-eq v5, v3, :cond_12

    if-eq v5, v4, :cond_11

    :cond_10
    const/16 v28, 0x0

    goto :goto_c

    :cond_11
    move/from16 v28, v4

    goto :goto_c

    :cond_12
    move/from16 v28, v11

    goto :goto_c

    :cond_13
    move/from16 v28, v3

    goto :goto_c

    :cond_14
    const/16 v28, 0x1

    :goto_c
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v11

    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v11

    const/4 v13, 0x0

    :goto_d
    if-ge v13, v11, :cond_16

    invoke-virtual {v1, v15, v13}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v3

    invoke-virtual {v1, v15, v13}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v4

    invoke-static {v3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v20

    if-nez v20, :cond_15

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v20

    if-nez v20, :cond_15

    invoke-static {v4}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v20

    if-nez v20, :cond_15

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v20

    if-nez v20, :cond_15

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v42

    new-instance v3, Landroidx/compose/ui/input/pointer/HistoricalChange;

    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v38

    move-object/from16 v37, v3

    move-wide/from16 v40, v42

    invoke-direct/range {v37 .. v43}, Landroidx/compose/ui/input/pointer/HistoricalChange;-><init>(JJJ)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x4

    goto :goto_d

    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v7, :cond_17

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    const/16 v11, 0x9

    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v13

    neg-float v13, v13

    add-float/2addr v13, v10

    invoke-static {v4, v13}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v20

    :goto_e
    move-wide/from16 v31, v20

    goto :goto_f

    :cond_17
    const/16 v3, 0xa

    const/16 v11, 0x9

    const-wide/16 v20, 0x0

    goto :goto_e

    :goto_f
    iget-object v4, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->activeHoverIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    const/4 v13, 0x0

    invoke-virtual {v4, v10, v13}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v29

    new-instance v4, Landroidx/compose/ui/input/pointer/PointerInputEventData;

    move-object/from16 v17, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    move-object/from16 v30, v5

    invoke-direct/range {v17 .. v34}, Landroidx/compose/ui/input/pointer/PointerInputEventData;-><init>(JJJJZFIZLjava/util/List;JJ)V

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move v5, v3

    move v10, v11

    move/from16 v6, v35

    move/from16 v11, v36

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v13, 0x6

    goto/16 :goto_7

    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_19

    const/4 v3, 0x6

    if-eq v2, v3, :cond_19

    const/4 v13, 0x0

    goto :goto_10

    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget-object v3, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->activeHoverIds:Landroid/util/SparseBooleanArray;

    const/4 v13, 0x0

    invoke-virtual {v3, v2, v13}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_1a

    iget-object v3, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->delete(I)V

    iget-object v3, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->activeHoverIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    :cond_1a
    :goto_10
    iget-object v2, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-le v2, v3, :cond_1d

    iget-object v2, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v3, -0x1

    :goto_11
    if-ge v3, v2, :cond_1d

    iget-object v4, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    move v6, v13

    :goto_12
    if-ge v6, v5, :cond_1c

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    if-ne v7, v4, :cond_1b

    goto :goto_13

    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_1c
    iget-object v5, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseLongArray;->removeAt(I)V

    iget-object v5, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->activeHoverIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_13
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    :cond_1d
    new-instance v2, Landroidx/compose/ui/input/pointer/PointerInputEvent;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    iget-object v0, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->pointers:Ljava/util/List;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/input/pointer/PointerInputEvent;-><init>(Ljava/util/List;Landroid/view/MotionEvent;)V

    return-object v2

    :cond_1e
    iget-object v1, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->clear()V

    iget-object v0, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->activeHoverIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v0, 0x0

    return-object v0
.end method
