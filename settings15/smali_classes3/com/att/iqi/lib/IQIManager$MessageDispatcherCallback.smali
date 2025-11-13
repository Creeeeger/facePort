.class Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/lib/IQIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageDispatcherCallback"
.end annotation


# static fields
.field public static final MSG_ON_METRIC_QUERIED:I = 0x1

.field public static final MSG_ON_METRIC_SOURCED:I = 0x2

.field public static final MSG_ON_PROFILE_CHANGED:I = 0x3

.field public static final MSG_ON_SERVICE_CHANGED:I = 0x4

.field public static final MSG_TIMED_OUT_WAITING_PACKAGE_FORCE_STOPPED:I = 0x5


# instance fields
.field public final reference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/att/iqi/lib/IQIManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback;->reference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/att/iqi/lib/IQIManager;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    if-eq v1, v0, :cond_9

    const/4 v3, 0x2

    if-eq v1, v3, :cond_7

    const/4 v3, 0x3

    if-eq v1, v3, :cond_5

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, p1, Ljava/lang/Runnable;

    if-eqz v1, :cond_b

    check-cast p1, Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    :cond_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v0, :cond_3

    move v2, v0

    :cond_3
    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangeListenerList:Ljava/util/List;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangeListenerList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;

    iget-object v4, p0, Lcom/att/iqi/lib/IQIManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda3;

    invoke-direct {v5, v3, v2}, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda3;-><init>(Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;Z)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_4
    monitor-exit p1

    goto/16 :goto_6

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangeListenerList:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangeListenerList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;

    iget-object v3, p0, Lcom/att/iqi/lib/IQIManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2}, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda2;-><init>(Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_6
    monitor-exit v1

    goto :goto_6

    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/att/iqi/lib/IQIManager;->mMetricSourcingListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;

    if-eqz v3, :cond_b

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_8

    check-cast p1, [B

    goto :goto_4

    :cond_8
    new-array p1, v2, [B

    :goto_4
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v1, p1, v4}, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;ILjava/nio/ByteBuffer;I)V

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_9
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/att/iqi/lib/IQIManager;->mMetricQueryCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;

    if-eqz v3, :cond_b

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_a

    check-cast p1, [B

    goto :goto_5

    :cond_a
    new-array p1, v2, [B

    :goto_5
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, p1, v4}, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;ILjava/nio/ByteBuffer;I)V

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_b
    :goto_6
    return v0
.end method
