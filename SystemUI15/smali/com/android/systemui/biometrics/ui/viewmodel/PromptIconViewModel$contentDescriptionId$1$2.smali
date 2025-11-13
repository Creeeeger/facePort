.class final Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$contentDescriptionId$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function4;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic Z$0:Z

.field synthetic Z$1:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$contentDescriptionId$1$2;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    check-cast p4, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$contentDescriptionId$1$2;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$contentDescriptionId$1$2;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    invoke-direct {v0, p0, p4}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$contentDescriptionId$1$2;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$contentDescriptionId$1$2;->L$0:Ljava/lang/Object;

    iput-boolean p2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$contentDescriptionId$1$2;->Z$0:Z

    iput-boolean p3, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$contentDescriptionId$1$2;->Z$1:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$contentDescriptionId$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$contentDescriptionId$1$2;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$contentDescriptionId$1$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$contentDescriptionId$1$2;->Z$0:Z

    iget-boolean v1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$contentDescriptionId$1$2;->Z$1:Z

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$contentDescriptionId$1$2;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p0, p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;->isAuthenticated:Z

    if-eqz p0, :cond_0

    iget-boolean p1, p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;->wasConfirmed:Z

    if-eqz p1, :cond_0

    const p0, 0x7f130233

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    const p0, 0x7f130231

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const p0, 0x7f130232

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    const p0, 0x7f13082a

    goto :goto_0

    :cond_3
    const p0, 0x7f130234

    :goto_0
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
