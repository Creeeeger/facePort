.class Landroid/media/AudioManager$2;
.super Landroid/media/IAudioFocusDispatcher$Stub;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/AudioManager;

    .line 3945
    iput-object p1, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/IAudioFocusDispatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist dispatchAudioFocusChange(ILjava/lang/String;)V
    .locals 4
    .param p1, "focusChange"    # I
    .param p2, "id"    # Ljava/lang/String;

    .line 3948
    iget-object v0, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    invoke-static {v0, p2}, Landroid/media/AudioManager;->-$$Nest$mfindFocusRequestInfo(Landroid/media/AudioManager;Ljava/lang/String;)Landroid/media/AudioManager$FocusRequestInfo;

    move-result-object v0

    .line 3949
    .local v0, "fri":Landroid/media/AudioManager$FocusRequestInfo;
    if-eqz v0, :cond_1

    .line 3950
    iget-object v1, v0, Landroid/media/AudioManager$FocusRequestInfo;->mRequest:Landroid/media/AudioFocusRequest;

    .line 3951
    invoke-virtual {v1}, Landroid/media/AudioFocusRequest;->getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    .line 3952
    .local v1, "listener":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    if-eqz v1, :cond_1

    .line 3953
    iget-object v2, v0, Landroid/media/AudioManager$FocusRequestInfo;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 3954
    iget-object v2, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    invoke-static {v2}, Landroid/media/AudioManager;->-$$Nest$fgetmServiceEventHandlerDelegate(Landroid/media/AudioManager;)Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroid/media/AudioManager$FocusRequestInfo;->mHandler:Landroid/os/Handler;

    .line 3955
    .local v2, "h":Landroid/os/Handler;
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 3958
    .local v3, "m":Landroid/os/Message;
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3961
    .end local v1    # "listener":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .end local v2    # "h":Landroid/os/Handler;
    .end local v3    # "m":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public blacklist dispatchFocusResultFromExtPolicy(ILjava/lang/String;)V
    .locals 4
    .param p1, "requestResult"    # I
    .param p2, "clientId"    # Ljava/lang/String;

    .line 3965
    iget-object v0, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->-$$Nest$fgetmFocusRequestsLock(Landroid/media/AudioManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3967
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->-$$Nest$fgetmFocusRequestsAwaitingResult(Landroid/media/AudioManager;)Ljava/util/HashMap;

    move-result-object v1

    .line 3968
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager$BlockingFocusResultReceiver;

    .line 3969
    .local v1, "focusReceiver":Landroid/media/AudioManager$BlockingFocusResultReceiver;
    if-eqz v1, :cond_0

    .line 3970
    invoke-virtual {v1, p1}, Landroid/media/AudioManager$BlockingFocusResultReceiver;->notifyResult(I)V

    goto :goto_0

    .line 3972
    :cond_0
    const-string v2, "AudioManager"

    const-string v3, "dispatchFocusResultFromExtPolicy found no result receiver"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3974
    .end local v1    # "focusReceiver":Landroid/media/AudioManager$BlockingFocusResultReceiver;
    :goto_0
    monitor-exit v0

    .line 3975
    return-void

    .line 3974
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
