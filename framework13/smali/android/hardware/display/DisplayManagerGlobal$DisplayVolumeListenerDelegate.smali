.class final Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;
.super Landroid/os/Handler;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayVolumeListenerDelegate"
.end annotation


# instance fields
.field public final blacklist mListener:Landroid/hardware/display/SemDisplayVolumeListener;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/display/SemDisplayVolumeListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/hardware/display/SemDisplayVolumeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1789
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1790
    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;->mListener:Landroid/hardware/display/SemDisplayVolumeListener;

    .line 1791
    return-void
.end method


# virtual methods
.method public blacklist clearEvents()V
    .locals 1

    .line 1800
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1801
    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1805
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1806
    .local v0, "data":Landroid/os/Bundle;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1808
    :pswitch_0
    const-string/jumbo v1, "minVol"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1809
    .local v1, "minVol":I
    const-string/jumbo v2, "maxVol"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1810
    .local v2, "maxVol":I
    const-string v3, "curVol"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1811
    .local v3, "curVol":I
    const/4 v4, 0x0

    const-string v5, "isMute"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1812
    .local v4, "isMute":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage EVENT_VOLUME_LEVEL_CHANGED= curVol: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DisplayManager"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    iget-object v5, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;->mListener:Landroid/hardware/display/SemDisplayVolumeListener;

    invoke-interface {v5, v1, v2, v3, v4}, Landroid/hardware/display/SemDisplayVolumeListener;->onVolumeChanged(IIIZ)V

    .line 1816
    .end local v1    # "minVol":I
    .end local v2    # "maxVol":I
    .end local v3    # "curVol":I
    .end local v4    # "isMute":Z
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist sendDisplayVolumeEvent(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 1794
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1795
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1796
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 1797
    return-void
.end method
