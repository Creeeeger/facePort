.class final Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$4$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $checked:Z

.field final synthetic $enabled:Z

.field final synthetic $onCheckedChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(ZLkotlin/jvm/functions/Function1;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1;",
            "Z",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$4$3$1;->$enabled:Z

    iput-object p2, p0, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$4$3$1;->$onCheckedChange:Lkotlin/jvm/functions/Function1;

    iput-boolean p3, p0, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$4$3$1;->$checked:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$4$3$1;

    iget-boolean v1, p0, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$4$3$1;->$enabled:Z

    iget-object v2, p0, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$4$3$1;->$onCheckedChange:Lkotlin/jvm/functions/Function1;

    iget-boolean p0, p0, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$4$3$1;->$checked:Z

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$4$3$1;-><init>(ZLkotlin/jvm/functions/Function1;ZLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$4$3$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$4$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$4$3$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$4$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$4$3$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$4$3$1;->L$0:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputScope;

    iget-boolean p1, p0, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$4$3$1;->$enabled:Z

    if-eqz p1, :cond_2

    new-instance v7, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$4$3$1$1;

    iget-object p1, p0, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$4$3$1;->$onCheckedChange:Lkotlin/jvm/functions/Function1;

    iget-boolean v1, p0, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$4$3$1;->$checked:Z

    invoke-direct {v7, p1, v1}, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$4$3$1$1;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    iput v2, p0, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$4$3$1;->label:I

    const/4 v6, 0x0

    const/4 v9, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v8, p0

    invoke-static/range {v3 .. v9}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->detectTapGestures$default(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
