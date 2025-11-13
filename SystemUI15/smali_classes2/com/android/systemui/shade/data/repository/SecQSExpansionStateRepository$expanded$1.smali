.class final Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$expanded$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function5;"
    }
.end annotation


# instance fields
.field synthetic F$0:F

.field synthetic F$1:F

.field synthetic I$0:I

.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$expanded$1;->this$0:Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->floatValue()F

    move-result p4

    check-cast p5, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$expanded$1;

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$expanded$1;->this$0:Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;

    invoke-direct {v0, p0, p5}, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$expanded$1;-><init>(Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;Lkotlin/coroutines/Continuation;)V

    iput-boolean p1, v0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$expanded$1;->Z$0:Z

    iput p2, v0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$expanded$1;->I$0:I

    iput p3, v0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$expanded$1;->F$0:F

    iput p4, v0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$expanded$1;->F$1:F

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$expanded$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$expanded$1;->label:I

    if-nez v0, :cond_6

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$expanded$1;->Z$0:Z

    iget v0, p0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$expanded$1;->I$0:I

    iget v1, p0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$expanded$1;->F$0:F

    iget v2, p0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$expanded$1;->F$1:F

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    cmpl-float v6, v1, v5

    if-gtz v6, :cond_0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    :cond_0
    :goto_0
    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    goto :goto_1

    :cond_2
    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    goto :goto_0

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository$expanded$1;->this$0:Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;

    iget-boolean v7, p0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;->debugExpanded:Z

    if-ne v7, v5, :cond_3

    const/4 v6, 0x0

    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-boolean v7, p0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;->debugExpanded:Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " => "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ": pte: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " | pts: "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " | lsse: "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " | qe: "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecQSExpansionStateRepository"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;->debugExpanded:Z

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    move v3, v4

    goto :goto_2

    :cond_4
    move v3, v7

    :cond_5
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
