.class Lcom/android/internal/os/BinderLatencyObserver$1;
.super Ljava/lang/Object;
.source "BinderLatencyObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderLatencyObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/os/BinderLatencyObserver;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/BinderLatencyObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/os/BinderLatencyObserver$1;->this$0:Lcom/android/internal/os/BinderLatencyObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 9

    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver$1;->this$0:Lcom/android/internal/os/BinderLatencyObserver;

    invoke-static {v0}, Lcom/android/internal/os/BinderLatencyObserver;->-$$Nest$mnoteLatencyDelayed(Lcom/android/internal/os/BinderLatencyObserver;)V

    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver$1;->this$0:Lcom/android/internal/os/BinderLatencyObserver;

    invoke-static {v0}, Lcom/android/internal/os/BinderLatencyObserver;->-$$Nest$fgetmLock(Lcom/android/internal/os/BinderLatencyObserver;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/internal/os/BinderLatencyObserver$1;->this$0:Lcom/android/internal/os/BinderLatencyObserver;

    invoke-static {v2}, Lcom/android/internal/os/BinderLatencyObserver;->-$$Nest$fgetmLatencyHistograms(Lcom/android/internal/os/BinderLatencyObserver;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iget-object v2, p0, Lcom/android/internal/os/BinderLatencyObserver$1;->this$0:Lcom/android/internal/os/BinderLatencyObserver;

    invoke-static {v2}, Lcom/android/internal/os/BinderLatencyObserver;->-$$Nest$fgetmLatencyHistograms(Lcom/android/internal/os/BinderLatencyObserver;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/android/internal/os/BinderTransactionNameResolver;

    invoke-direct {v0}, Lcom/android/internal/os/BinderTransactionNameResolver;-><init>()V

    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;

    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getRawSize()I

    move-result v6

    add-int/lit16 v6, v6, 0x3e8

    iget-object v7, p0, Lcom/android/internal/os/BinderLatencyObserver$1;->this$0:Lcom/android/internal/os/BinderLatencyObserver;

    invoke-virtual {v7}, Lcom/android/internal/os/BinderLatencyObserver;->getMaxAtomSizeBytes()I

    move-result v7

    if-le v6, v7, :cond_1

    if-lez v3, :cond_0

    iget-object v6, p0, Lcom/android/internal/os/BinderLatencyObserver$1;->this$0:Lcom/android/internal/os/BinderLatencyObserver;

    invoke-virtual {v6, v2}, Lcom/android/internal/os/BinderLatencyObserver;->writeAtomToStatsd(Landroid/util/proto/ProtoOutputStream;)V

    :cond_0
    new-instance v6, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v6}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    move-object v2, v6

    const/4 v3, 0x0

    :cond_1
    nop

    invoke-virtual {v5}, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->getBinderClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->getTransactionCode()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/os/BinderTransactionNameResolver;->getMethodName(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/os/BinderLatencyObserver$1;->this$0:Lcom/android/internal/os/BinderLatencyObserver;

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    invoke-static {v7, v2, v5, v6, v8}, Lcom/android/internal/os/BinderLatencyObserver;->-$$Nest$mfillApiStatsProto(Lcom/android/internal/os/BinderLatencyObserver;Landroid/util/proto/ProtoOutputStream;Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;Ljava/lang/String;[I)V

    nop

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-lez v3, :cond_3

    iget-object v4, p0, Lcom/android/internal/os/BinderLatencyObserver$1;->this$0:Lcom/android/internal/os/BinderLatencyObserver;

    invoke-virtual {v4, v2}, Lcom/android/internal/os/BinderLatencyObserver;->writeAtomToStatsd(Landroid/util/proto/ProtoOutputStream;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
