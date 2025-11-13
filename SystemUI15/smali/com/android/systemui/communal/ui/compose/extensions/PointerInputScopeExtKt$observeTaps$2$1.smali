.class final Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$observeTaps$2$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $onTap:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $pass:Landroidx/compose/ui/input/pointer/PointerEventPass;

.field final synthetic $shouldConsume:Z

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroidx/compose/ui/input/pointer/PointerEventPass;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerEventPass;",
            "Z",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$observeTaps$2$1;->$pass:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iput-boolean p2, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$observeTaps$2$1;->$shouldConsume:Z

    iput-object p3, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$observeTaps$2$1;->$onTap:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$observeTaps$2$1;

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$observeTaps$2$1;->$pass:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iget-boolean v2, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$observeTaps$2$1;->$shouldConsume:Z

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$observeTaps$2$1;->$onTap:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$observeTaps$2$1;-><init>(Landroidx/compose/ui/input/pointer/PointerEventPass;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$observeTaps$2$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$observeTaps$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$observeTaps$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$observeTaps$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$observeTaps$2$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$observeTaps$2$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$observeTaps$2$1;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iget-object p1, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$observeTaps$2$1;->$pass:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iput-object v1, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$observeTaps$2$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$observeTaps$2$1;->label:I

    invoke-static {v1, p1, p0, v2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-boolean v2, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$observeTaps$2$1;->$shouldConsume:Z

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    :cond_4
    check-cast v1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/platform/ViewConfiguration;->getLongPressTimeoutMillis()J

    move-result-wide v4

    new-instance p1, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$observeTaps$2$1$up$1;

    iget-object v2, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$observeTaps$2$1;->$pass:Landroidx/compose/ui/input/pointer/PointerEventPass;

    const/4 v6, 0x0

    invoke-direct {p1, v2, v6}, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$observeTaps$2$1$up$1;-><init>(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)V

    iput-object v6, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$observeTaps$2$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$observeTaps$2$1;->label:I

    invoke-virtual {v1, v4, v5, p1, p0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$observeTaps$2$1;->$onTap:Lkotlin/jvm/functions/Function1;

    iget-wide v0, p1, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
