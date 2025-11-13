.class final Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field synthetic I$0:I

.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$2;->this$0:Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$2;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$2;->this$0:Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$2;-><init>(Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;Lkotlin/coroutines/Continuation;)V

    iput p1, v0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$2;->I$0:I

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$2;->Z$0:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$2;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget p1, p0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$2;->I$0:I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$2;->Z$0:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$2;->this$0:Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget v1, v1, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;->currentVisibility:I

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    move-object v2, v4

    :cond_1
    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch$2;->this$0:Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;->currentVisibility:I

    const-string/jumbo v3, "set visibility["

    const-string v4, " => "

    const-string v5, "] vis: "

    invoke-static {v2, v1, v3, v4, v5}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " | pbs: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QSScrimViewSwitch"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;->currentVisibility:I

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;->scrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;->scrimInFront:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_2
    return-object v4

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
