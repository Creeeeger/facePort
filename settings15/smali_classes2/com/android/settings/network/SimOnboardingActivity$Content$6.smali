.class final Lcom/android/settings/network/SimOnboardingActivity$Content$6;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/android/settings/network/SimOnboardingActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/SimOnboardingActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/SimOnboardingActivity$Content$6;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/settings/network/SimOnboardingActivity$Content$6;

    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingActivity$Content$6;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/network/SimOnboardingActivity$Content$6;-><init>(Lcom/android/settings/network/SimOnboardingActivity;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/network/SimOnboardingActivity$Content$6;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/SimOnboardingActivity$Content$6;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/SimOnboardingActivity$Content$6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settings/network/SimOnboardingActivity$Content$6;->label:I

    if-nez v0, :cond_9

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/network/SimOnboardingActivity$Content$6;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    invoke-virtual {p1}, Lcom/android/settings/network/SimOnboardingActivity;->getShowError()Landroidx/compose/runtime/MutableState;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;->ERROR_NONE:Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;

    const-string v1, "showStartingDialog"

    const-string v2, "showRestartDialog"

    const-string v3, "showProgressDialog"

    const/4 v4, 0x0

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/android/settings/network/SimOnboardingActivity$Content$6;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    iget-object p1, p1, Lcom/android/settings/network/SimOnboardingActivity;->showProgressDialog:Landroidx/compose/runtime/MutableState;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/network/SimOnboardingActivity$Content$6;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    invoke-virtual {p1}, Lcom/android/settings/network/SimOnboardingActivity;->getShowDsdsProgressDialog()Landroidx/compose/runtime/MutableState;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/network/SimOnboardingActivity$Content$6;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    iget-object p1, p1, Lcom/android/settings/network/SimOnboardingActivity;->showRestartDialog:Landroidx/compose/runtime/MutableState;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/settings/network/SimOnboardingActivity;->onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iget-object p1, p1, Lcom/android/settings/network/SimOnboardingService;->activeSubInfoList:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingActivity$Content$6;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingActivity;->showStartingDialog:Landroidx/compose/runtime/MutableState;

    if-eqz p0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/settings/network/SimOnboardingActivity$Content$6;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    invoke-virtual {p1}, Lcom/android/settings/network/SimOnboardingActivity;->getShowError()Landroidx/compose/runtime/MutableState;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/network/SimOnboardingActivity$Content$6;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    iget-object v0, v0, Lcom/android/settings/network/SimOnboardingActivity;->showProgressDialog:Landroidx/compose/runtime/MutableState;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/network/SimOnboardingActivity$Content$6;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    invoke-virtual {v3}, Lcom/android/settings/network/SimOnboardingActivity;->getShowDsdsProgressDialog()Landroidx/compose/runtime/MutableState;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/network/SimOnboardingActivity$Content$6;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    iget-object v5, v5, Lcom/android/settings/network/SimOnboardingActivity;->showRestartDialog:Landroidx/compose/runtime/MutableState;

    if-eqz v5, :cond_7

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "status: showError:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", showProgressDialog:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", showDsdsProgressDialog:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", showRestartDialog:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SimOnboardingActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingActivity$Content$6;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingActivity;->showStartingDialog:Landroidx/compose/runtime/MutableState;

    if-eqz p0, :cond_6

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
