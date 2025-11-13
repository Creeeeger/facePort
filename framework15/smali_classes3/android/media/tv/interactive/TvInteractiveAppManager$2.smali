.class Landroid/media/tv/interactive/TvInteractiveAppManager$2;
.super Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub;
.source "TvInteractiveAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/interactive/TvInteractiveAppManager;-><init>(Landroid/media/tv/interactive/ITvInteractiveAppManager;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$2;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-direct {p0}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onInteractiveAppServiceAdded(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$2;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmLock(Landroid/media/tv/interactive/TvInteractiveAppManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$2;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmCallbackRecords(Landroid/media/tv/interactive/TvInteractiveAppManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;

    invoke-virtual {v2, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;->postInteractiveAppServiceAdded(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onInteractiveAppServiceRemoved(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$2;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmLock(Landroid/media/tv/interactive/TvInteractiveAppManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$2;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmCallbackRecords(Landroid/media/tv/interactive/TvInteractiveAppManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;

    invoke-virtual {v2, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;->postInteractiveAppServiceRemoved(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onInteractiveAppServiceUpdated(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$2;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmLock(Landroid/media/tv/interactive/TvInteractiveAppManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$2;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmCallbackRecords(Landroid/media/tv/interactive/TvInteractiveAppManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;

    invoke-virtual {v2, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;->postInteractiveAppServiceUpdated(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onStateChanged(Ljava/lang/String;III)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$2;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmLock(Landroid/media/tv/interactive/TvInteractiveAppManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$2;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmCallbackRecords(Landroid/media/tv/interactive/TvInteractiveAppManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;->postStateChanged(Ljava/lang/String;III)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onTvInteractiveAppServiceInfoUpdated(Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$2;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmLock(Landroid/media/tv/interactive/TvInteractiveAppManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$2;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmCallbackRecords(Landroid/media/tv/interactive/TvInteractiveAppManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;

    invoke-virtual {v2, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;->postTvInteractiveAppServiceInfoUpdated(Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
