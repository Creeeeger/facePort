.class final Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $action:Ljava/lang/String;

.field final synthetic $flags:I

.field final synthetic $permission:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/systemui/broadcast/UserBroadcastDispatcher;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$1;->$action:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$1;->this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    iput-object p3, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$1;->$permission:Ljava/lang/String;

    iput p4, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$1;->$flags:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v1, p1

    check-cast v1, Landroid/content/BroadcastReceiver;

    check-cast p2, Landroid/content/IntentFilter;

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$1;->$action:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$1;->this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    iget v0, v0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->userId:I

    const-string v2, "registerReceiver act="

    const-string v3, " user="

    invoke-static {v0, v2, p1, v3}, Lcom/android/app/tracing/coroutines/TraceData$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$1;->this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    iget-object v0, p1, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->context:Landroid/content/Context;

    iget p1, p1, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->userId:I

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$1;->$permission:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$1;->this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    iget-object v5, p1, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->workerHandler:Landroid/os/Handler;

    iget v6, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$1;->$flags:I

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object p1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$1;->this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    iget-object v0, p1, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    iget p0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$1;->$flags:I

    iget p1, p1, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->userId:I

    invoke-virtual {v0, p1, p0, p2}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->logContextReceiverRegistered(IILandroid/content/IntentFilter;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
