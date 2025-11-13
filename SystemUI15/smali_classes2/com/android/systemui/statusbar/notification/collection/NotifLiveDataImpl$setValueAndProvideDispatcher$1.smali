.class final Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl$setValueAndProvideDispatcher$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl$setValueAndProvideDispatcher$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl$setValueAndProvideDispatcher$1;->$value:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl$setValueAndProvideDispatcher$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->syncObservers:Lcom/android/systemui/util/ListenerSet;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl$setValueAndProvideDispatcher$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->name:Ljava/lang/String;

    const-string v1, "NotifLiveData("

    const-string v2, ").dispatchToSyncObservers"

    invoke-static {v1, v0, v2}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl$setValueAndProvideDispatcher$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl$setValueAndProvideDispatcher$1;->$value:Ljava/lang/Object;

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->syncObservers:Lcom/android/systemui/util/ListenerSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/Observer;

    invoke-interface {v1, v2}, Landroidx/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    goto :goto_2

    :goto_1
    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_2
    throw p0

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl$setValueAndProvideDispatcher$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->asyncObservers:Lcom/android/systemui/util/ListenerSet;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl$setValueAndProvideDispatcher$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl$setValueAndProvideDispatcher$1$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl$setValueAndProvideDispatcher$1$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
