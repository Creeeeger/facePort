.class final Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl$notificationBroadcasts$1;
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
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl$notificationBroadcasts$1;->this$0:Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl$notificationBroadcasts$1;

    iget-object p0, p0, Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl$notificationBroadcasts$1;->this$0:Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl;

    invoke-direct {v0, p0, p2}, Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl$notificationBroadcasts$1;-><init>(Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl$notificationBroadcasts$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl$notificationBroadcasts$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl$notificationBroadcasts$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl$notificationBroadcasts$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl$notificationBroadcasts$1;->label:I

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

    iget-object p1, p0, Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl$notificationBroadcasts$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v1, Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl$notificationBroadcasts$1$receiver$1;

    invoke-direct {v1, p1}, Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl$notificationBroadcasts$1$receiver$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    iget-object v3, p0, Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl$notificationBroadcasts$1;->this$0:Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl;

    iget-object v3, v3, Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl;->context:Landroid/content/Context;

    const-string v4, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    const-string v5, "android.app.action.NOTIFICATION_POLICY_CHANGED"

    invoke-static {v4, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v4

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl$notificationBroadcasts$1$2;

    iget-object v4, p0, Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl$notificationBroadcasts$1;->this$0:Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl;

    invoke-direct {v3, v4, v1}, Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl$notificationBroadcasts$1$2;-><init>(Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl;Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl$notificationBroadcasts$1$receiver$1;)V

    iput v2, p0, Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl$notificationBroadcasts$1;->label:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
