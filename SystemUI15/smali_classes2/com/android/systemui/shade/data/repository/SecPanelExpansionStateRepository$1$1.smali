.class final Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository$1$1;
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
.field final synthetic $notify:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field synthetic I$0:I

.field label:I

.field final synthetic this$0:Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository$1$1;->this$0:Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository;

    iput-object p2, p0, Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository$1$1;->$notify:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository$1$1;

    iget-object v1, p0, Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository$1$1;->this$0:Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository;

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository$1$1;->$notify:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, p0, p2}, Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository$1$1;-><init>(Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    iput p0, v0, Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository$1$1;->I$0:I

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository$1$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository$1$1;->I$0:I

    iget-object v0, p0, Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository$1$1;->this$0:Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository;

    iget v0, v0, Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository;->currentPanelState:I

    const-string v1, "CLOSED"

    const-string v2, "OPENING"

    const-string v3, "OPEN"

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v4, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz p1, :cond_3

    if-eq p1, v4, :cond_2

    move-object v1, v3

    goto :goto_1

    :cond_2
    move-object v1, v2

    :cond_3
    :goto_1
    const-string v2, "NOTIFY !!! "

    const-string v3, " -> "

    const-string v4, "SecPanelExpansionStateRepository"

    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository$1$1;->$notify:Lkotlin/jvm/functions/Function1;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository$1$1;->this$0:Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository;

    iput p1, p0, Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository;->currentPanelState:I

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
