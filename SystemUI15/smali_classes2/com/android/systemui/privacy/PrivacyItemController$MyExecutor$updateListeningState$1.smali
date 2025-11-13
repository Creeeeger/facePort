.class public final Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor$updateListeningState$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/privacy/PrivacyItemController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/PrivacyItemController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor$updateListeningState$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor$updateListeningState$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    if-ne v1, v0, :cond_0

    goto :goto_2

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyItemMonitors:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/privacy/PrivacyItemMonitor;

    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyItemMonitorCallback:Lcom/android/systemui/privacy/PrivacyItemController$privacyItemMonitorCallback$1;

    check-cast v1, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;

    iget-object v3, v1, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iput-object v2, v1, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->callback:Lcom/android/systemui/privacy/PrivacyItemMonitor$Callback;

    invoke-virtual {v1}, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->setListeningStateLocked()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v3

    throw p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->update$4$1()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyItemMonitors:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/privacy/PrivacyItemMonitor;

    check-cast v1, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;

    iget-object v2, v1, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->lock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_1
    iput-object v3, v1, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->callback:Lcom/android/systemui/privacy/PrivacyItemMonitor$Callback;

    invoke-virtual {v1}, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->setListeningStateLocked()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->update$4$1()V

    :goto_2
    return-void
.end method
