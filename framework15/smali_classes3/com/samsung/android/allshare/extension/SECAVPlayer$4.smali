.class Lcom/samsung/android/allshare/extension/SECAVPlayer$4;
.super Ljava/lang/Object;
.source "SECAVPlayer.java"

# interfaces
.implements Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/extension/SECAVPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/extension/SECAVPlayer;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/extension/SECAVPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$4;->this$0:Lcom/samsung/android/allshare/extension/SECAVPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onGetMuteResponseReceived(ZLcom/samsung/android/allshare/ERROR;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$4;->this$0:Lcom/samsung/android/allshare/extension/SECAVPlayer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRequestChangeMute:Z

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    const-string v2, " onGetMuteResponseReceived - "

    const-string v3, "SECAVPLAYER"

    if-ne p2, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$4;->this$0:Lcom/samsung/android/allshare/extension/SECAVPlayer;

    iget-boolean v0, v0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mChangeMute:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$4;->this$0:Lcom/samsung/android/allshare/extension/SECAVPlayer;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->-$$Nest$fgetmAVPlayer(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Lcom/samsung/android/allshare/media/AVPlayer;

    move-result-object v0

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/allshare/media/AVPlayer;->setMute(Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$4;->this$0:Lcom/samsung/android/allshare/extension/SECAVPlayer;

    iput-boolean v1, v0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mChangeMute:Z

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$4;->this$0:Lcom/samsung/android/allshare/extension/SECAVPlayer;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->-$$Nest$fgetmAVPlayerVolumeResponseListener(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$4;->this$0:Lcom/samsung/android/allshare/extension/SECAVPlayer;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->-$$Nest$fgetmAVPlayerVolumeResponseListener(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onGetMuteResponseReceived(ZLcom/samsung/android/allshare/ERROR;)V

    :cond_2
    return-void
.end method

.method public whitelist onGetVolumeResponseReceived(ILcom/samsung/android/allshare/ERROR;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$4;->this$0:Lcom/samsung/android/allshare/extension/SECAVPlayer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/allshare/extension/SECAVPlayer;->mRequestVolume:Z

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    const-string v2, " onGetVolumeResponseReceived - "

    const-string v3, "SECAVPLAYER"

    if-ne p2, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$4;->this$0:Lcom/samsung/android/allshare/extension/SECAVPlayer;

    invoke-static {v0, p1}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->-$$Nest$msetVolumeDelta(Lcom/samsung/android/allshare/extension/SECAVPlayer;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$4;->this$0:Lcom/samsung/android/allshare/extension/SECAVPlayer;

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->-$$Nest$fputmVolumeDelta(Lcom/samsung/android/allshare/extension/SECAVPlayer;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$4;->this$0:Lcom/samsung/android/allshare/extension/SECAVPlayer;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->-$$Nest$fgetmAVPlayerVolumeResponseListener(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$4;->this$0:Lcom/samsung/android/allshare/extension/SECAVPlayer;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->-$$Nest$fgetmAVPlayerVolumeResponseListener(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onGetVolumeResponseReceived(ILcom/samsung/android/allshare/ERROR;)V

    :cond_1
    return-void
.end method

.method public whitelist onSetMuteResponseReceived(ZLcom/samsung/android/allshare/ERROR;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    const-string v1, " onSetMuteResponseReceived - "

    const-string v2, "SECAVPLAYER"

    if-ne p2, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$4;->this$0:Lcom/samsung/android/allshare/extension/SECAVPlayer;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->-$$Nest$fgetmAVPlayerVolumeResponseListener(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$4;->this$0:Lcom/samsung/android/allshare/extension/SECAVPlayer;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->-$$Nest$fgetmAVPlayerVolumeResponseListener(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onSetMuteResponseReceived(ZLcom/samsung/android/allshare/ERROR;)V

    :cond_1
    return-void
.end method

.method public whitelist onSetVolumeResponseReceived(ILcom/samsung/android/allshare/ERROR;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    const-string v1, " onSetVolumeResponseReceived - "

    const-string v2, "SECAVPLAYER"

    if-ne p2, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$4;->this$0:Lcom/samsung/android/allshare/extension/SECAVPlayer;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->-$$Nest$fgetmAVPlayerVolumeResponseListener(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$4;->this$0:Lcom/samsung/android/allshare/extension/SECAVPlayer;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->-$$Nest$fgetmAVPlayerVolumeResponseListener(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onSetVolumeResponseReceived(ILcom/samsung/android/allshare/ERROR;)V

    :cond_1
    return-void
.end method
