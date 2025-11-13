.class public abstract Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final access$consumeUntilUp(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$consumeUntilUp$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$consumeUntilUp$1;

    iget v1, v0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$consumeUntilUp$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$consumeUntilUp$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$consumeUntilUp$1;

    invoke-direct {v0, p2}, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$consumeUntilUp$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$consumeUntilUp$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$consumeUntilUp$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$consumeUntilUp$1;->L$1:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/input/pointer/PointerEventPass;

    iget-object p1, v0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$consumeUntilUp$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :goto_1
    iput-object p0, v0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$consumeUntilUp$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$consumeUntilUp$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$consumeUntilUp$1;->label:I

    check-cast p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    goto :goto_5

    :cond_3
    :goto_2
    check-cast p2, Landroidx/compose/ui/input/pointer/PointerEvent;

    iget-object v2, p2, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_3
    if-ge v6, v4, :cond_4

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    iget-object p2, p2, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :goto_4
    if-ge v5, v2, :cond_6

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-boolean v4, v4, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_5
    return-object v1
.end method

.method public static detectLongPressGesture$default(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    new-instance v1, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$detectLongPressGesture$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$detectLongPressGesture$2;-><init>(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, p2}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-object p0
.end method

.method public static observeTaps$default(Landroidx/compose/ui/input/pointer/PointerInputScope;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;
    .locals 6

    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    move v4, p1

    new-instance p1, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$observeTaps$2;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$observeTaps$2;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/ui/input/pointer/PointerEventPass;ZLkotlin/coroutines/Continuation;)V

    invoke-static {p1, p3}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-object p0
.end method
