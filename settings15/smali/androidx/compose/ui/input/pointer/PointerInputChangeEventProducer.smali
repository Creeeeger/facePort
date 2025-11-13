.class public final Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final previousPointerInputData:Landroidx/collection/LongSparseArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/LongSparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/LongSparseArray;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;->previousPointerInputData:Landroidx/collection/LongSparseArray;

    return-void
.end method


# virtual methods
.method public final produce(Landroidx/compose/ui/input/pointer/PointerInputEvent;Landroidx/compose/ui/input/pointer/PositionCalculator;)Landroidx/compose/ui/input/pointer/InternalPointerEvent;
    .locals 35

    move-object/from16 v0, p1

    new-instance v1, Landroidx/collection/LongSparseArray;

    iget-object v2, v0, Landroidx/compose/ui/input/pointer/PointerInputEvent;->pointers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroidx/collection/LongSparseArray;-><init>(I)V

    iget-object v2, v0, Landroidx/compose/ui/input/pointer/PointerInputEvent;->pointers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;

    iget-wide v7, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->id:J

    move-object/from16 v9, p0

    iget-object v10, v9, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;->previousPointerInputData:Landroidx/collection/LongSparseArray;

    invoke-virtual {v10, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;

    if-nez v7, :cond_0

    iget-wide v7, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->uptime:J

    iget-wide v11, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->position:J

    move-wide/from16 v24, v7

    move-wide/from16 v26, v11

    const/16 v28, 0x0

    goto :goto_1

    :cond_0
    move-object/from16 v8, p2

    check-cast v8, Landroidx/compose/ui/platform/AndroidComposeView;

    iget-wide v11, v7, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;->positionOnScreen:J

    invoke-virtual {v8, v11, v12}, Landroidx/compose/ui/platform/AndroidComposeView;->screenToLocal-MK-Hz9U(J)J

    move-result-wide v11

    iget-wide v13, v7, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;->uptime:J

    iget-boolean v7, v7, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;->down:Z

    move/from16 v28, v7

    move-wide/from16 v26, v11

    move-wide/from16 v24, v13

    :goto_1
    new-instance v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v8, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->historical:Ljava/util/List;

    iget-wide v11, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->scrollDelta:J

    move-wide/from16 v31, v11

    iget-wide v11, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->originalEventPosition:J

    move-wide/from16 v33, v11

    iget-wide v11, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->id:J

    move-wide/from16 v16, v11

    iget-wide v13, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->uptime:J

    move-wide/from16 v18, v13

    iget-wide v13, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->position:J

    move-wide/from16 v20, v13

    iget-boolean v13, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->down:Z

    move/from16 v22, v13

    iget v13, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->pressure:F

    move/from16 v23, v13

    iget v13, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->type:I

    move/from16 v29, v13

    move-object v15, v7

    move-object/from16 v30, v8

    invoke-direct/range {v15 .. v34}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZFJJZILjava/util/List;JJ)V

    invoke-virtual {v1, v11, v12, v7}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-wide v7, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->id:J

    iget-boolean v14, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->down:Z

    if-eqz v14, :cond_1

    new-instance v15, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;

    iget-wide v12, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->uptime:J

    move/from16 v18, v5

    iget-wide v4, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->positionOnScreen:J

    move-object v11, v15

    move-object/from16 v19, v2

    move v6, v14

    move-object v2, v15

    move-wide v14, v4

    move/from16 v16, v6

    invoke-direct/range {v11 .. v16}, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;-><init>(JJZ)V

    invoke-virtual {v10, v7, v8, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    :cond_1
    move-object/from16 v19, v2

    move/from16 v18, v5

    invoke-virtual {v10, v7, v8}, Landroidx/collection/LongSparseArray;->remove(J)V

    :goto_2
    add-int/lit8 v5, v18, 0x1

    move-object/from16 v2, v19

    goto/16 :goto_0

    :cond_2
    new-instance v2, Landroidx/compose/ui/input/pointer/InternalPointerEvent;

    invoke-direct {v2, v1, v0}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;-><init>(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/input/pointer/PointerInputEvent;)V

    return-object v2
.end method
