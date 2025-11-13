.class final Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/nexus/video/VideoLayer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/nexus/video/VideoLayer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$4;->this$0:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitComplete(Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V
    .locals 5

    invoke-static {}, Lcom/samsung/android/nexus/video/VideoLayer;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnInitCompleteListener : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/media/SemMediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$4;->this$0:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoLayer;->getPreparedListener()Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;->onInitComplete(Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$4;->this$0:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-static {p1}, Lcom/samsung/android/nexus/video/VideoLayer;->access$getMReservedActions$p(Lcom/samsung/android/nexus/video/VideoLayer;)Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$4;->this$0:Lcom/samsung/android/nexus/video/VideoLayer;

    iget-object p2, p1, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->mList:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_0
    iget-object v0, p1, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    :try_start_2
    iget-object v0, p1, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    const-string v2, "ReservedActionQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doAction : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/nexus/base/reflection/ReservedAction;->mMethodName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;->doAction(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    iget-object p0, p1, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_3
    const-string p1, "ReservedActionQueue"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doAction : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ConcurrentModificationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    monitor-exit p2

    :goto_3
    return-void

    :goto_4
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
