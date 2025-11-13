.class final Lcom/android/settings/network/SimOnboardingActivity$checkSimIsReadyAndGoNext$2;
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

    iput-object p1, p0, Lcom/android/settings/network/SimOnboardingActivity$checkSimIsReadyAndGoNext$2;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/settings/network/SimOnboardingActivity$checkSimIsReadyAndGoNext$2;

    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingActivity$checkSimIsReadyAndGoNext$2;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/network/SimOnboardingActivity$checkSimIsReadyAndGoNext$2;-><init>(Lcom/android/settings/network/SimOnboardingActivity;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/network/SimOnboardingActivity$checkSimIsReadyAndGoNext$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/SimOnboardingActivity$checkSimIsReadyAndGoNext$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/SimOnboardingActivity$checkSimIsReadyAndGoNext$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const-string v0, "Start waiting, waitingTime is "

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/network/SimOnboardingActivity$checkSimIsReadyAndGoNext$2;->label:I

    if-nez v1, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/network/SimOnboardingActivity$checkSimIsReadyAndGoNext$2;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    invoke-virtual {p1}, Lcom/android/settings/network/SimOnboardingActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/network/telephony/SubscriptionRepositoryKt;->requireSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    sget-object v1, Lcom/android/settings/network/SimOnboardingActivity;->onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iget v1, v1, Lcom/android/settings/network/SimOnboardingService;->targetSubId:I

    invoke-virtual {p1, v1}, Landroid/telephony/SubscriptionManager;->isSubscriptionEnabled(I)Z

    move-result p1

    const-string v1, "SimOnboardingActivity"

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {p1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Lcom/android/settings/network/CarrierConfigChangedReceiver;

    invoke-direct {v2, p1}, Lcom/android/settings/network/CarrierConfigChangedReceiver;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/network/SimOnboardingActivity$checkSimIsReadyAndGoNext$2;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    invoke-virtual {v3}, Lcom/android/settings/network/SimOnboardingActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "euicc_switch_slot_timeout_millis"

    const-wide/16 v5, 0x61a8

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/settings/network/SimOnboardingActivity$checkSimIsReadyAndGoNext$2;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    invoke-virtual {v5}, Lcom/android/settings/network/SimOnboardingActivity;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x2

    invoke-virtual {v5, v2, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3, v4, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p1, p0, Lcom/android/settings/network/SimOnboardingActivity$checkSimIsReadyAndGoNext$2;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    invoke-virtual {p1}, Lcom/android/settings/network/SimOnboardingActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const-string v0, "Failed switching to physical slot."

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingActivity$checkSimIsReadyAndGoNext$2;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    invoke-virtual {p0}, Lcom/android/settings/network/SimOnboardingActivity;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw p1

    :cond_0
    :goto_2
    const-string p1, "Sim is ready then go to next"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingActivity$checkSimIsReadyAndGoNext$2;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingActivity;->callbackListener:Lkotlin/jvm/functions/Function1;

    sget-object p1, Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;->CALLBACK_SETUP_NAME:Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;

    check-cast p0, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
