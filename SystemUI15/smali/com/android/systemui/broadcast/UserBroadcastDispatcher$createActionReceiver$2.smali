.class final Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $action:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/systemui/broadcast/UserBroadcastDispatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;->$action:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;->this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroid/content/BroadcastReceiver;

    const-string/jumbo v0, "unregisterReceiver act="

    :try_start_0
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;->$action:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;->this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    iget v2, v2, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->userId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " user="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x1000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;->this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    iget-object v0, v0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object p1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;->this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    iget-object v0, p1, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    iget p1, p1, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->userId:I

    iget-object v1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;->$action:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->logContextReceiverUnregistered(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;->this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    iget v0, v0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->userId:I

    iget-object p0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;->$action:Ljava/lang/String;

    const-string v1, "Trying to unregister unregistered receiver for user "

    const-string v2, ", action "

    invoke-static {v0, v1, v2, p0}, Lcom/android/keyguard/logging/BiometricMessageDeferralLogger$logUpdateMessage$2$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    const-string p1, "UserBroadcastDispatcher"

    invoke-static {p1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
