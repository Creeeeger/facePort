.class final Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1$2;
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

    iput-object p1, p0, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1$2;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1$2;

    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1$2;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1$2;-><init>(Lcom/android/settings/network/SimOnboardingActivity;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1$2;->label:I

    if-nez v0, :cond_8

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1$2;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "startSimSwitching:"

    const-string v0, "SimOnboardingActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/settings/network/SimOnboardingActivity;->onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iget-object v1, p1, Lcom/android/settings/network/SimOnboardingService;->targetSubInfo:Landroid/telephony/SubscriptionInfo;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ltz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-eqz v3, :cond_2

    const-string p1, "target subInfo is already active"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingActivity;->callbackListener:Lkotlin/jvm/functions/Function1;

    sget-object p1, Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;->CALLBACK_SETUP_NAME:Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;

    check-cast p0, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    if-eqz v1, :cond_6

    iget-object v6, p1, Lcom/android/settings/network/SimOnboardingService;->activeSubInfoList:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    iget-object v9, p1, Lcom/android/settings/network/SimOnboardingService;->userSelectedSubInfoList:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v4

    if-eqz v8, :cond_3

    move-object v3, v7

    :cond_4
    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/network/SimOnboardingActivity;->switchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->run(IILandroid/telephony/SubscriptionInfo;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/android/settings/network/SimOnboardingActivity;->switchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->run(Landroid/telephony/SubscriptionInfo;)V

    :goto_2
    move-object v3, v5

    :cond_6
    if-nez v3, :cond_7

    const-string p1, "no target subInfo in onboardingService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/network/SimOnboardingActivity;->finish()V

    :cond_7
    :goto_3
    return-object v5

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
