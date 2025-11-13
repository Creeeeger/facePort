.class public final Lcom/android/compose/animation/scene/MultiPointerDraggableNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/node/PointerInputModifierNode;
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/node/ObserverModifierNode;


# instance fields
.field public final delegate:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

.field public final enabled:Lkotlin/jvm/functions/Function0;

.field public final onDragStarted:Lkotlin/jvm/functions/Function3;

.field public orientation:Landroidx/compose/foundation/gestures/Orientation;

.field public previousEnabled:Z

.field public final startDragImmediately:Lkotlin/jvm/functions/Function1;

.field public final swipeDetector:Lcom/android/compose/animation/scene/SwipeDetector;

.field public final velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/Orientation;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lcom/android/compose/animation/scene/SwipeDetector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function3;",
            "Lcom/android/compose/animation/scene/SwipeDetector;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    iput-object p3, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;->startDragImmediately:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;->onDragStarted:Lkotlin/jvm/functions/Function3;

    iput-object p5, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;->swipeDetector:Lcom/android/compose/animation/scene/SwipeDetector;

    new-instance p3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInputHandler$1;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInputHandler$1;-><init>(Lcom/android/compose/animation/scene/MultiPointerDraggableNode;Lkotlin/coroutines/Continuation;)V

    sget-object p5, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->EmptyPointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    new-instance p5, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    invoke-direct {p5, p4, p4, p4, p3}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0, p5}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    iput-object p5, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;->delegate:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    new-instance p3, Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    invoke-direct {p3}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;-><init>()V

    iput-object p3, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;->velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    iput-object p2, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;->enabled:Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/gestures/Orientation;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lcom/android/compose/animation/scene/SwipeDetector;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    sget-object p5, Lcom/android/compose/animation/scene/SwipeDetectorKt;->DefaultSwipeDetector:Lcom/android/compose/animation/scene/PassthroughSwipeDetector;

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;-><init>(Landroidx/compose/foundation/gestures/Orientation;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lcom/android/compose/animation/scene/SwipeDetector;)V

    return-void
.end method

.method public static final access$detectDragGestures(Lcom/android/compose/animation/scene/MultiPointerDraggableNode;Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/android/compose/animation/scene/SwipeDetector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p9

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v2, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;

    iget v4, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;

    invoke-direct {v3, v0, v2}, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;-><init>(Lcom/android/compose/animation/scene/MultiPointerDraggableNode;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->result:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->label:I

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v10, 0x2

    if-eqz v5, :cond_5

    if-eq v5, v6, :cond_4

    if-eq v5, v10, :cond_3

    if-eq v5, v8, :cond_2

    if-ne v5, v7, :cond_1

    iget-object v0, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$8:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v1, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$7:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iget-object v5, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$6:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iget-object v8, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$5:Ljava/lang/Object;

    check-cast v8, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;

    iget-object v10, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$4:Ljava/lang/Object;

    check-cast v10, Lcom/android/compose/animation/scene/DragController;

    iget-object v13, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$3:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/functions/Function1;

    iget-object v14, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$2:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/functions/Function1;

    iget-object v15, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$1:Ljava/lang/Object;

    check-cast v15, Lkotlin/jvm/functions/Function3;

    iget-object v12, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;

    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v2

    move v2, v7

    goto/16 :goto_11

    :catchall_0
    move-exception v0

    goto/16 :goto_1c

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$7:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v1, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$6:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v5, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$5:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v8, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    iget-object v10, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function3;

    iget-object v12, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$2:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/functions/Function3;

    iget-object v13, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$1:Ljava/lang/Object;

    check-cast v13, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iget-object v14, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    iget-object v0, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$7:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v1, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$6:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v5, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$5:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v8, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    iget-object v10, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function3;

    iget-object v12, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$2:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/functions/Function3;

    iget-object v13, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$1:Ljava/lang/Object;

    check-cast v13, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iget-object v14, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v8

    move-object v8, v0

    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_4
    iget-object v0, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$8:Ljava/lang/Object;

    check-cast v0, Lcom/android/compose/animation/scene/SwipeDetector;

    iget-object v1, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$7:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iget-object v5, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$6:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v12, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$5:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/functions/Function3;

    iget-object v13, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$4:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/functions/Function3;

    iget-object v14, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$3:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/functions/Function1;

    iget-object v15, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$2:Ljava/lang/Object;

    check-cast v15, Landroidx/compose/foundation/gestures/Orientation;

    iget-object v7, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$1:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iget-object v9, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$consumablePointer$1;

    invoke-direct {v2, v1}, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$consumablePointer$1;-><init>(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;)V

    iput-object v0, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$1:Ljava/lang/Object;

    move-object/from16 v5, p2

    iput-object v5, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$2:Ljava/lang/Object;

    move-object/from16 v7, p3

    iput-object v7, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$3:Ljava/lang/Object;

    move-object/from16 v9, p4

    iput-object v9, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$4:Ljava/lang/Object;

    move-object/from16 v12, p5

    iput-object v12, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$5:Ljava/lang/Object;

    move-object/from16 v13, p6

    iput-object v13, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$6:Ljava/lang/Object;

    move-object/from16 v14, p7

    iput-object v14, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$7:Ljava/lang/Object;

    move-object/from16 v15, p8

    iput-object v15, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$8:Ljava/lang/Object;

    iput v6, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->label:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;->awaitConsumableEvent(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_6

    goto/16 :goto_1e

    :cond_6
    move-object/from16 v18, v9

    move-object v9, v0

    move-object v0, v15

    move-object v15, v5

    move-object v5, v13

    move-object/from16 v13, v18

    move-object/from16 v19, v7

    move-object v7, v1

    move-object v1, v14

    move-object/from16 v14, v19

    :goto_1
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerEvent;

    iget-object v2, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    new-instance v8, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    move-object/from16 p0, v12

    iget-wide v11, v2, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v11

    invoke-interface {v14, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    move-object/from16 v12, p0

    goto/16 :goto_7

    :cond_7
    new-instance v11, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$drag$onSlopReached$1;

    invoke-direct {v11, v0, v8}, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$drag$onSlopReached$1;-><init>(Lcom/android/compose/animation/scene/SwipeDetector;Lkotlin/jvm/internal/Ref$FloatRef;)V

    sget-object v0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v0, v0, v12

    iget-wide v14, v2, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    if-eq v0, v6, :cond_a

    if-ne v0, v10, :cond_9

    iput-object v9, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$0:Ljava/lang/Object;

    iput-object v7, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$1:Ljava/lang/Object;

    iput-object v13, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$2:Ljava/lang/Object;

    move-object/from16 v12, p0

    iput-object v12, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$3:Ljava/lang/Object;

    iput-object v5, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$4:Ljava/lang/Object;

    iput-object v1, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$5:Ljava/lang/Object;

    iput-object v2, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$6:Ljava/lang/Object;

    iput-object v8, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$7:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$8:Ljava/lang/Object;

    const/4 v0, 0x3

    iput v0, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->label:I

    invoke-static {v7, v14, v15, v11, v3}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->awaitVerticalTouchSlopOrCancellation-jO51t88(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_8

    goto/16 :goto_1e

    :cond_8
    move-object v14, v9

    move-object v10, v12

    move-object v12, v13

    move-object v13, v7

    move-object/from16 v18, v2

    move-object v2, v0

    move-object v0, v8

    move-object v8, v5

    move-object v5, v1

    move-object/from16 v1, v18

    :goto_2
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-object v7, v5

    move-object v5, v8

    move-object v9, v14

    move-object v8, v0

    const/4 v0, 0x0

    move-object/from16 v18, v12

    move-object v12, v10

    move-object/from16 v10, v18

    goto :goto_4

    :cond_9
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_a
    move-object/from16 v12, p0

    iput-object v9, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$0:Ljava/lang/Object;

    iput-object v7, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$1:Ljava/lang/Object;

    iput-object v13, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$2:Ljava/lang/Object;

    iput-object v12, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$3:Ljava/lang/Object;

    iput-object v5, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$4:Ljava/lang/Object;

    iput-object v1, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$5:Ljava/lang/Object;

    iput-object v2, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$6:Ljava/lang/Object;

    iput-object v8, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$7:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$8:Ljava/lang/Object;

    iput v10, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->label:I

    invoke-static {v7, v14, v15, v11, v3}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->awaitHorizontalTouchSlopOrCancellation-jO51t88(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v4, :cond_b

    goto/16 :goto_1e

    :cond_b
    move-object v14, v9

    move-object/from16 v18, v5

    move-object v5, v1

    move-object v1, v2

    move-object v2, v10

    move-object v10, v12

    move-object v12, v13

    move-object v13, v7

    move-object/from16 v7, v18

    :goto_3
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-object v9, v14

    move-object/from16 v18, v7

    move-object v7, v5

    move-object/from16 v5, v18

    move-object/from16 v19, v12

    move-object v12, v10

    move-object/from16 v10, v19

    :goto_4
    if-eqz v2, :cond_e

    iget v11, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    const/4 v14, 0x0

    cmpg-float v11, v11, v14

    if-nez v11, :cond_e

    iget-wide v0, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    move-object/from16 p0, v7

    iget-wide v6, v2, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    invoke-static {v6, v7, v0, v1}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;->toFloat-k-4lQ0M(J)F

    move-result v0

    cmpg-float v1, v0, v14

    if-nez v1, :cond_c

    const/4 v1, 0x1

    const/4 v11, 0x1

    goto :goto_5

    :cond_c
    const/4 v1, 0x1

    const/4 v11, 0x0

    :goto_5
    xor-int/lit8 v6, v11, 0x1

    if-eqz v6, :cond_d

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iput v0, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    goto :goto_6

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "delta is equal to 0"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-object/from16 p0, v7

    :goto_6
    move-object/from16 v1, p0

    move-object v7, v13

    move-object v13, v10

    :goto_7
    if-eqz v2, :cond_24

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v6, v7

    check-cast v6, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    iget-object v6, v6, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    iget-object v6, v6, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->currentEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    iget-object v6, v6, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    const/4 v14, 0x0

    :goto_8
    if-ge v14, v10, :cond_10

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-boolean v11, v15, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    move-object/from16 p1, v5

    if-eqz v11, :cond_f

    move-object v11, v6

    iget-wide v5, v15, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    invoke-static {v5, v6}, Landroidx/compose/ui/input/pointer/PointerId;->box-impl(J)Landroidx/compose/ui/input/pointer/PointerId;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    move-object v11, v6

    :goto_9
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, p1

    move-object v6, v11

    goto :goto_8

    :cond_10
    move-object/from16 p1, v5

    iget-wide v5, v2, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v5

    iget v6, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    new-instance v10, Ljava/lang/Float;

    invoke-direct {v10, v6}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v13, v5, v10, v6}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/compose/animation/scene/DragController;

    :try_start_1
    iget v0, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, v0}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v12, v10, v2, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v5, v2, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    move-object v0, v7

    check-cast v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    iget-object v0, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    iget-object v0, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->currentEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    iget-object v0, v0, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v2, :cond_12

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-wide v13, v13, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    invoke-static {v13, v14, v5, v6}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    move-result v13

    if-eqz v13, :cond_11

    move-object v0, v11

    goto :goto_b

    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v13, v1

    goto/16 :goto_1c

    :cond_12
    const/4 v0, 0x0

    :goto_b
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-eqz v0, :cond_14

    iget-boolean v0, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v11, 0x1

    if-ne v0, v11, :cond_13

    move v0, v11

    goto :goto_d

    :cond_13
    :goto_c
    const/4 v0, 0x0

    goto :goto_d

    :cond_14
    const/4 v11, 0x1

    goto :goto_c

    :goto_d
    xor-int/2addr v0, v11

    if-eqz v0, :cond_15

    move-object/from16 v5, p1

    :goto_e
    const/4 v6, 0x0

    goto/16 :goto_1a

    :cond_15
    move-object/from16 v0, p1

    move-object v13, v1

    move-object v1, v9

    :goto_f
    :try_start_2
    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    iput-wide v5, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-object v14, v0

    move-object v8, v1

    move-object v0, v2

    move-object v1, v7

    move-object v5, v1

    move-object v15, v12

    move-object v12, v9

    :goto_10
    iput-object v12, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$0:Ljava/lang/Object;

    iput-object v15, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$1:Ljava/lang/Object;

    iput-object v14, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$2:Ljava/lang/Object;

    iput-object v13, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$3:Ljava/lang/Object;

    iput-object v10, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$4:Ljava/lang/Object;

    iput-object v8, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$5:Ljava/lang/Object;

    iput-object v5, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$6:Ljava/lang/Object;

    iput-object v1, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$7:Ljava/lang/Object;

    iput-object v0, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->L$8:Ljava/lang/Object;

    const/4 v2, 0x4

    iput v2, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$detectDragGestures$1;->label:I

    invoke-static {v1, v3}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_16

    goto/16 :goto_1e

    :cond_16
    :goto_11
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerEvent;

    iget-object v7, v6, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v9, :cond_18

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-object/from16 p1, v3

    move-object/from16 v17, v4

    iget-wide v3, v11, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    move-object v11, v7

    move-object/from16 p2, v8

    iget-wide v7, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v3, v4, v7, v8}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_13

    :cond_17
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, p1

    move-object/from16 v8, p2

    move-object v7, v11

    move-object/from16 v4, v17

    goto :goto_12

    :cond_18
    move-object/from16 p1, v3

    move-object/from16 v17, v4

    move-object/from16 p2, v8

    const/16 v16, 0x0

    :goto_13
    move-object/from16 v2, v16

    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v2, :cond_19

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    goto :goto_18

    :cond_19
    invoke-static {v2}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, v6, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_14
    if-ge v6, v4, :cond_1b

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-boolean v8, v8, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    if-eqz v8, :cond_1a

    goto :goto_15

    :cond_1a
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_1b
    const/4 v7, 0x0

    :goto_15
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v7, :cond_1c

    const/4 v3, 0x1

    const/4 v6, 0x0

    goto :goto_17

    :cond_1c
    iget-wide v2, v7, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    iput-wide v2, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto/16 :goto_1b

    :cond_1d
    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    move-result-wide v6

    invoke-virtual {v12, v6, v7}, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;->toFloat-k-4lQ0M(J)F

    move-result v4

    const/4 v6, 0x0

    cmpg-float v4, v4, v6

    if-nez v4, :cond_1e

    move v4, v3

    goto :goto_16

    :cond_1e
    const/4 v4, 0x0

    :goto_16
    xor-int/2addr v4, v3

    if-eqz v4, :cond_23

    :goto_17
    move-object v0, v2

    :goto_18
    if-nez v0, :cond_1f

    :goto_19
    move-object v1, v13

    move-object v5, v14

    goto/16 :goto_e

    :cond_1f
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_19

    :cond_20
    invoke-static {v0}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_22

    move v6, v3

    move-object v1, v13

    move-object v5, v14

    :goto_1a
    if-eqz v6, :cond_21

    invoke-interface {v5, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_21
    invoke-interface {v1, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_22
    const/4 v4, 0x0

    :try_start_3
    invoke-static {v0, v4}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    move-result-wide v1

    invoke-virtual {v12, v1, v2}, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;->toFloat-k-4lQ0M(J)F

    move-result v1

    new-instance v2, Ljava/lang/Float;

    invoke-direct {v2, v1}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v15, v10, v0, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    iget-wide v0, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    move-object/from16 v3, p1

    move-object v7, v5

    move-object v9, v12

    move-object v12, v15

    move-object/from16 v4, v17

    move-wide v5, v0

    move-object v0, v14

    move-object/from16 v1, p2

    goto/16 :goto_f

    :cond_23
    const/4 v4, 0x0

    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1b
    move-object/from16 v3, p1

    move-object/from16 v8, p2

    move-object/from16 v4, v17

    goto/16 :goto_10

    :goto_1c
    invoke-interface {v13, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0

    :cond_24
    :goto_1d
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1e
    return-object v4
.end method


# virtual methods
.method public final awaitConsumableEvent(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$awaitConsumableEvent$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$awaitConsumableEvent$1;

    iget v1, v0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$awaitConsumableEvent$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$awaitConsumableEvent$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$awaitConsumableEvent$1;

    invoke-direct {v0, p0, p3}, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$awaitConsumableEvent$1;-><init>(Lcom/android/compose/animation/scene/MultiPointerDraggableNode;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$awaitConsumableEvent$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$awaitConsumableEvent$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$awaitConsumableEvent$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    iget-object p1, v0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$awaitConsumableEvent$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iget-object p2, v0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$awaitConsumableEvent$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, p2

    move-object p2, p0

    move-object p0, v9

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :goto_1
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/compose/ui/input/pointer/PointerEventPass;

    iput-object p0, v0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$awaitConsumableEvent$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$awaitConsumableEvent$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$awaitConsumableEvent$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$awaitConsumableEvent$1;->label:I

    check-cast p1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    invoke-virtual {p1, p3, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_2
    check-cast p3, Landroidx/compose/ui/input/pointer/PointerEvent;

    iget-object v2, p3, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_3
    if-ge v6, v4, :cond_5

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-static {v7}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToDownIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v7, v5}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;->toFloat-k-4lQ0M(J)F

    move-result v7

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    return-object p3
.end method

.method public final onAttach()V
    .locals 1

    iget-object v0, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;->enabled:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;->previousEnabled:Z

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;->onObservedReadsChanged()V

    return-void
.end method

.method public final onCancelPointerInput()V
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;->delegate:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->onCancelPointerInput()V

    return-void
.end method

.method public final onObservedReadsChanged()V
    .locals 1

    new-instance v0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$onObservedReadsChanged$1;

    invoke-direct {v0, p0}, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$onObservedReadsChanged$1;-><init>(Lcom/android/compose/animation/scene/MultiPointerDraggableNode;)V

    invoke-static {p0, v0}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;->delegate:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    return-void
.end method

.method public final toFloat-k-4lQ0M(J)F
    .locals 1

    iget-object p0, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p0

    :goto_0
    return p0
.end method
