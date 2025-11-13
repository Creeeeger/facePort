.class final Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$detectLongPressGesture$2$1;
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
.field final synthetic $onLongPress:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $pass:Landroidx/compose/ui/input/pointer/PointerEventPass;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerEventPass;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$detectLongPressGesture$2$1;->$pass:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$detectLongPressGesture$2$1;->$onLongPress:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$detectLongPressGesture$2$1;

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$detectLongPressGesture$2$1;->$pass:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$detectLongPressGesture$2$1;->$onLongPress:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, p0, p2}, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$detectLongPressGesture$2$1;-><init>(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$detectLongPressGesture$2$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$detectLongPressGesture$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$detectLongPressGesture$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$detectLongPressGesture$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$detectLongPressGesture$2$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$detectLongPressGesture$2$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v2, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$detectLongPressGesture$2$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$detectLongPressGesture$2$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$detectLongPressGesture$2$1;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iget-object p1, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$detectLongPressGesture$2$1;->$pass:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iput-object v1, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$detectLongPressGesture$2$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$detectLongPressGesture$2$1;->label:I

    invoke-static {v1, p1, p0, v2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-object v2, v1

    check-cast v2, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/platform/ViewConfiguration;->getLongPressTimeoutMillis()J

    move-result-wide v6

    :try_start_1
    new-instance v1, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$detectLongPressGesture$2$1$1;

    iget-object v8, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$detectLongPressGesture$2$1;->$pass:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-direct {v1, v8, v5}, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$detectLongPressGesture$2$1$1;-><init>(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)V

    iput-object v2, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$detectLongPressGesture$2$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$detectLongPressGesture$2$1;->L$1:Ljava/lang/Object;

    iput v4, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$detectLongPressGesture$2$1;->label:I

    invoke-virtual {v2, v6, v7, v1, p0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p0, v0, :cond_5

    return-object v0

    :catch_0
    move-object v1, p1

    :catch_1
    iget-object p1, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$detectLongPressGesture$2$1;->$onLongPress:Lkotlin/jvm/functions/Function1;

    iget-wide v6, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$detectLongPressGesture$2$1;->$pass:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iput-object v5, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$detectLongPressGesture$2$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$detectLongPressGesture$2$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt$detectLongPressGesture$2$1;->label:I

    invoke-static {v2, p1, p0}, Lcom/android/systemui/communal/ui/compose/extensions/PointerInputScopeExtKt;->access$consumeUntilUp(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
