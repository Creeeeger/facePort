.class Landroid/media/AudioManager$CallInjectionModeChangedListener;
.super Ljava/lang/Object;
.source "AudioManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallInjectionModeChangedListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onModeChanged(I)V
    .locals 8

    iget-object v0, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->-$$Nest$fgetmCallRedirectionLock(Landroid/media/AudioManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->-$$Nest$fgetmCallIRedirectionClients(Landroid/media/AudioManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager$CallIRedirectionClientInfo;

    iget-object v4, v3, Landroid/media/AudioManager$CallIRedirectionClientInfo;->trackOrRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    iget v5, v3, Landroid/media/AudioManager$CallIRedirectionClientInfo;->redirectMode:I

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-ne v5, v6, :cond_0

    if-eq p1, v7, :cond_0

    const/4 v5, 0x4

    if-eq p1, v5, :cond_0

    const/4 v5, 0x5

    if-ne p1, v5, :cond_1

    :cond_0
    iget v5, v3, Landroid/media/AudioManager$CallIRedirectionClientInfo;->redirectMode:I

    if-ne v5, v7, :cond_3

    const/4 v5, 0x3

    if-eq p1, v5, :cond_3

    const/4 v5, 0x6

    if-eq p1, v5, :cond_3

    :cond_1
    instance-of v5, v4, Landroid/media/AudioTrack;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->release()V

    goto :goto_1

    :cond_2
    move-object v5, v4

    check-cast v5, Landroid/media/AudioRecord;

    invoke-virtual {v5}, Landroid/media/AudioRecord;->release()V

    :goto_1
    iget-object v5, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v5}, Landroid/media/AudioManager;->-$$Nest$fgetmCallIRedirectionClients(Landroid/media/AudioManager;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v2}, Landroid/media/AudioManager;->-$$Nest$fgetmCallIRedirectionClients(Landroid/media/AudioManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v3}, Landroid/media/AudioManager;->-$$Nest$fgetmCallRedirectionModeListener(Landroid/media/AudioManager;)Landroid/media/AudioManager$CallInjectionModeChangedListener;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    iget-object v4, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v4}, Landroid/media/AudioManager;->-$$Nest$fgetmCallRedirectionModeListener(Landroid/media/AudioManager;)Landroid/media/AudioManager$CallInjectionModeChangedListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->removeOnModeChangedListener(Landroid/media/AudioManager$OnModeChangedListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :try_start_2
    iget-object v3, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v3, v2}, Landroid/media/AudioManager;->-$$Nest$fputmCallRedirectionModeListener(Landroid/media/AudioManager;Landroid/media/AudioManager$CallInjectionModeChangedListener;)V

    iget-object v3, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    :goto_2
    invoke-static {v3, v2}, Landroid/media/AudioManager;->-$$Nest$fputmCallIRedirectionClients(Landroid/media/AudioManager;Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "AudioManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeOnModeChangedListener failed with exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v3, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v3, v2}, Landroid/media/AudioManager;->-$$Nest$fputmCallRedirectionModeListener(Landroid/media/AudioManager;Landroid/media/AudioManager$CallInjectionModeChangedListener;)V

    iget-object v3, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    goto :goto_2

    :goto_3
    iget-object v4, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v4, v2}, Landroid/media/AudioManager;->-$$Nest$fputmCallRedirectionModeListener(Landroid/media/AudioManager;Landroid/media/AudioManager$CallInjectionModeChangedListener;)V

    iget-object v4, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v4, v2}, Landroid/media/AudioManager;->-$$Nest$fputmCallIRedirectionClients(Landroid/media/AudioManager;Ljava/util/ArrayList;)V

    nop

    throw v3

    :cond_6
    :goto_4
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
