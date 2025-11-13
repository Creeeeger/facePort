.class final Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconSize$1;
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
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconSize$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$AuthType;

    check-cast p2, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconSize$1;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconSize$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconSize$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconSize$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconSize$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconSize$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconSize$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconSize$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$AuthType;

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconSize$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    sget-object v1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$AuthType;->Face:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$AuthType;

    if-ne p1, v1, :cond_0

    new-instance p1, Lkotlin/Pair;

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconSize$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget v0, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->faceIconWidth:I

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconSize$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->faceIconHeight:I

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p1, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->getHasUdfps()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lkotlin/Pair;

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconSize$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget v0, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->fingerprintSensorWidth:I

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconSize$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->fingerprintSensorHeight:I

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p1, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/Pair;

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconSize$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget v0, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->fingerprintIconWidth:I

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconSize$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->fingerprintIconHeight:I

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p1, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
