.class Landroid/media/tv/ad/TvAdManager$1;
.super Landroid/media/tv/ad/ITvAdClient$Stub;
.source "TvAdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/ad/TvAdManager;-><init>(Landroid/media/tv/ad/ITvAdManager;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/ad/TvAdManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/ad/TvAdManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-direct {p0}, Landroid/media/tv/ad/ITvAdClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onLayoutSurface(IIIII)V
    .locals 5

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    if-nez v1, :cond_0

    const-string v2, "TvAdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postLayoutSurface(IIII)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onRequestCurrentChannelUri(I)V
    .locals 5

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    if-nez v1, :cond_0

    const-string v2, "TvAdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postRequestCurrentChannelUri()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onRequestCurrentTvInputId(I)V
    .locals 5

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    if-nez v1, :cond_0

    const-string v2, "TvAdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postRequestCurrentTvInputId()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onRequestCurrentVideoBounds(I)V
    .locals 5

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    if-nez v1, :cond_0

    const-string v2, "TvAdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postRequestCurrentVideoBounds()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)V
    .locals 5

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    if-nez v1, :cond_0

    const-string v2, "TvAdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onRequestTrackInfoList(I)V
    .locals 5

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    if-nez v1, :cond_0

    const-string v2, "TvAdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postRequestTrackInfoList()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .locals 15

    move-object v1, p0

    move-object/from16 v10, p2

    move/from16 v11, p4

    iget-object v0, v1, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v12

    monitor-enter v12

    :try_start_0
    iget-object v0, v1, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    if-nez v0, :cond_0

    const-string v2, "TvAdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v12

    return-void

    :cond_0
    const/4 v13, 0x0

    if-eqz v10, :cond_1

    new-instance v14, Landroid/media/tv/ad/TvAdManager$Session;

    iget-object v2, v1, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v2}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmService(Landroid/media/tv/ad/TvAdManager;)Landroid/media/tv/ad/ITvAdManager;

    move-result-object v5

    iget-object v2, v1, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v2}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmUserId(Landroid/media/tv/ad/TvAdManager;)I

    move-result v6

    iget-object v2, v1, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v2}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v8

    const/4 v9, 0x0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v7, p4

    invoke-direct/range {v2 .. v9}, Landroid/media/tv/ad/TvAdManager$Session;-><init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/ad/ITvAdManager;IILandroid/util/SparseArray;Landroid/media/tv/ad/TvAdManager$Session-IA;)V

    move-object v13, v14

    goto :goto_0

    :cond_1
    iget-object v2, v1, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v2}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->delete(I)V

    :goto_0
    invoke-virtual {v0, v13}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postSessionCreated(Landroid/media/tv/ad/TvAdManager$Session;)V

    monitor-exit v12

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist onSessionReleased(I)V
    .locals 5

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    iget-object v2, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v2}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    if-nez v1, :cond_0

    const-string v2, "TvAdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;)Landroid/media/tv/ad/TvAdManager$Session;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/ad/TvAdManager$Session;->-$$Nest$mreleaseInternal(Landroid/media/tv/ad/TvAdManager$Session;)V

    invoke-virtual {v1}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postSessionReleased()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 5

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    if-nez v1, :cond_0

    const-string v2, "TvAdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1, p1, p2}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
