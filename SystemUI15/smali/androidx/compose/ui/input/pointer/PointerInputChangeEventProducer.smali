.class public final Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final previousPointerInputData:Landroidx/collection/LongSparseArray;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/LongSparseArray;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/LongSparseArray;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;->previousPointerInputData:Landroidx/collection/LongSparseArray;

    return-void
.end method


# virtual methods
.method public final produce(Landroidx/compose/ui/input/pointer/PointerInputEvent;Landroidx/compose/ui/input/pointer/PositionCalculator;)Landroidx/compose/ui/input/pointer/InternalPointerEvent;
    .locals 37

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

    move-wide/from16 v32, v11

    iget-wide v11, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->originalEventPosition:J

    move-wide/from16 v34, v11

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

    const/16 v29, 0x0

    iget v13, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->type:I

    move/from16 v30, v13

    const/16 v36, 0x0

    move-object v15, v7

    move-object/from16 v31, v8

    invoke-direct/range {v15 .. v36}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZFJJZZILjava/util/List;JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v7, v11, v12}, Landroidx/collection/LongSparseArray;->put(Ljava/lang/Object;J)V

    iget-wide v7, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->id:J

    iget-boolean v14, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->down:Z

    if-eqz v14, :cond_1

    new-instance v15, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;

    iget-wide v12, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->positionOnScreen:J

    iget v11, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->type:I

    move/from16 v20, v5

    iget-wide v4, v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;->uptime:J

    const/16 v18, 0x0

    move v6, v11

    move-object v11, v15

    move-wide/from16 v16, v12

    move-wide v12, v4

    move v4, v14

    move-object v5, v15

    move-wide/from16 v14, v16

    move/from16 v16, v4

    move/from16 v17, v6

    invoke-direct/range {v11 .. v18}, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;-><init>(JJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v10, v5, v7, v8}, Landroidx/collection/LongSparseArray;->put(Ljava/lang/Object;J)V

    goto :goto_2

    :cond_1
    move/from16 v20, v5

    invoke-virtual {v10, v7, v8}, Landroidx/collection/LongSparseArray;->remove(J)V

    :goto_2
    add-int/lit8 v5, v20, 0x1

    goto/16 :goto_0

    :cond_2
    new-instance v2, Landroidx/compose/ui/input/pointer/InternalPointerEvent;

    invoke-direct {v2, v1, v0}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;-><init>(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/input/pointer/PointerInputEvent;)V

    return-object v2
.end method
