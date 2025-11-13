.class final Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function6;"
    }
.end annotation


# instance fields
.field final synthetic $notify:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field synthetic Z$0:Z

.field synthetic Z$1:Z

.field synthetic Z$2:Z

.field synthetic Z$3:Z

.field synthetic Z$4:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$1;->this$0:Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;

    iput-object p2, p0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$1;->$notify:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x6

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    check-cast p6, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$1;

    iget-object v1, p0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$1;->this$0:Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$1;->$notify:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, p0, p6}, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$1;-><init>(Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-boolean p1, v0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$1;->Z$0:Z

    iput-boolean p2, v0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$1;->Z$1:Z

    iput-boolean p3, v0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$1;->Z$2:Z

    iput-boolean p4, v0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$1;->Z$3:Z

    iput-boolean p5, v0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$1;->Z$4:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$1;->Z$0:Z

    iget-boolean v0, p0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$1;->Z$1:Z

    iget-boolean v1, p0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$1;->Z$2:Z

    iget-boolean v2, p0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$1;->Z$3:Z

    iget-boolean v3, p0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$1;->Z$4:Z

    const/4 v4, 0x0

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v4, 0x1

    :cond_1
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$1;->this$0:Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;

    iget-boolean v7, v6, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;->currentExpanded:Z

    const/4 v8, 0x0

    if-ne v7, v4, :cond_2

    move-object v5, v8

    :cond_2
    if-eqz v5, :cond_3

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$1;->$notify:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-boolean v5, v6, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;->currentExpanded:Z

    const-string v7, "notify expanded["

    const-string v8, " => "

    const-string v9, "] expanded: "

    invoke-static {v7, v8, v9, v5, v4}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " | CS: "

    const-string v8, " | DO: "

    invoke-static {v5, p1, v7, v0, v8}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string p1, " | DS: "

    const-string v0, " | DC: "

    invoke-static {v5, v1, p1, v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string p1, "SecQSExpansionStateRepository"

    invoke-static {v5, v3, p1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iput-boolean v4, v6, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;->currentExpanded:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_3
    return-object v8

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
