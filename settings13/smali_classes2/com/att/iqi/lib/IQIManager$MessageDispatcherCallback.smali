.class Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/lib/IQIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageDispatcherCallback"
.end annotation


# static fields
.field public static final MSG_ON_METRIC_QUERIED:I = 0x1

.field public static final MSG_ON_METRIC_SOURCED:I = 0x2

.field public static final MSG_ON_PROFILE_CHANGED:I = 0x3

.field public static final MSG_ON_SERVICE_CHANGED:I = 0x4

.field public static final MSG_TIMED_OUT_WAITING_PACKAGE_FORCE_STOPPED:I = 0x5


# instance fields
.field final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/att/iqi/lib/IQIManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$2mm4eyzmNdZCxIJGCbKJQkQ0Ohc(Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback;->a(Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$cqQt7bJjKLzKjwWlNJr0QIrJIZ8(Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;ILjava/nio/ByteBuffer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback;->a(Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tEWK9zMQtUtctOFZtwxdalZwshA(Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;ILjava/nio/ByteBuffer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback;->a(Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Lcom/att/iqi/lib/IQIManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private static synthetic a(Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;ILjava/nio/ByteBuffer;)V
    .locals 1

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    invoke-direct {v0, p1}, Lcom/att/iqi/lib/Metric$ID;-><init>(I)V

    invoke-interface {p0, v0, p2}, Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;->onMetricQueried(Lcom/att/iqi/lib/Metric$ID;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private static synthetic a(Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;ILjava/nio/ByteBuffer;)V
    .locals 1

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    invoke-direct {v0, p1}, Lcom/att/iqi/lib/Metric$ID;-><init>(I)V

    invoke-interface {p0, v0, p2}, Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;->onMetricSourcing(Lcom/att/iqi/lib/Metric$ID;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private static synthetic a(Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;Z)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;->onServiceChange(Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback;->a:Ljava/lang/ref/WeakReference;

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

    goto/16 :goto_5

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, p1, Ljava/lang/Runnable;

    if-eqz v1, :cond_b

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/att/iqi/lib/IQIManager;->-$$Nest$fgeth(Lcom/att/iqi/lib/IQIManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    :cond_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v0, :cond_3

    move v2, v0

    :cond_3
    invoke-static {p0}, Lcom/att/iqi/lib/IQIManager;->-$$Nest$fgete(Lcom/att/iqi/lib/IQIManager;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    invoke-static {p0}, Lcom/att/iqi/lib/IQIManager;->-$$Nest$fgete(Lcom/att/iqi/lib/IQIManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;

    invoke-static {p0}, Lcom/att/iqi/lib/IQIManager;->-$$Nest$fgeth(Lcom/att/iqi/lib/IQIManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    new-instance v5, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, v2}, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda0;-><init>(Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;Z)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    monitor-exit p1

    goto/16 :goto_5

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    invoke-static {p0}, Lcom/att/iqi/lib/IQIManager;->-$$Nest$fgetc(Lcom/att/iqi/lib/IQIManager;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    invoke-static {p0}, Lcom/att/iqi/lib/IQIManager;->-$$Nest$fgetc(Lcom/att/iqi/lib/IQIManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;

    invoke-static {p0}, Lcom/att/iqi/lib/IQIManager;->-$$Nest$fgeth(Lcom/att/iqi/lib/IQIManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2}, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda1;-><init>(Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_6
    monitor-exit v1

    goto :goto_5

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0}, Lcom/att/iqi/lib/IQIManager;->-$$Nest$fgetd(Lcom/att/iqi/lib/IQIManager;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;

    if-eqz v3, :cond_b

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_8

    check-cast p1, [B

    goto :goto_2

    :cond_8
    new-array p1, v2, [B

    :goto_2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p0}, Lcom/att/iqi/lib/IQIManager;->-$$Nest$fgeth(Lcom/att/iqi/lib/IQIManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-instance v2, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda2;

    invoke-direct {v2, v3, v1, p1}, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda2;-><init>(Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;ILjava/nio/ByteBuffer;)V

    goto :goto_4

    :cond_9
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0}, Lcom/att/iqi/lib/IQIManager;->-$$Nest$fgetb(Lcom/att/iqi/lib/IQIManager;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;

    if-eqz v3, :cond_b

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_a

    check-cast p1, [B

    goto :goto_3

    :cond_a
    new-array p1, v2, [B

    :goto_3
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p0}, Lcom/att/iqi/lib/IQIManager;->-$$Nest$fgeth(Lcom/att/iqi/lib/IQIManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-instance v2, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda3;

    invoke-direct {v2, v3, v1, p1}, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda3;-><init>(Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;ILjava/nio/ByteBuffer;)V

    :goto_4
    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_b
    :goto_5
    return v0
.end method
