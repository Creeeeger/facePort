.class Lcom/samsung/android/media/fmradio/SemFmEventListener$1;
.super Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;
.source "SemFmEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/fmradio/SemFmEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/media/fmradio/SemFmEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAlternateFrequencyReceived(J)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xe

    invoke-static {v0, v3, v1, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onAlternateFrequencyStarted()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xd

    invoke-static {v0, v3, v1, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onChannelFound(J)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onHeadsetConnected()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v0, v3, v1, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onHeadsetDisconnected()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-static {v0, v3, v1, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onProgrammeIdentificationExtendedCountryCodesReceived(II)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onRadioDataSystemDisabled()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-static {v0, v3, v1, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public blacklist onRadioDataSystemEnabled()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-static {v0, v3, v1, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onRadioDataSystemReceived(JLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1, p3, p4}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onRadioDisabled(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v0, v3, v1, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onRadioEnabled()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-static {v0, v3, v1, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onRadioTextPlusReceived(IIIIII)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onRecordingFinished()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x11

    invoke-static {v0, v3, v1, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onScanFinished([J)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onScanStarted()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v3, v1, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onScanStopped([J)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onTuned(J)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {v0, v3, v1, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onVolumeLocked()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-static {v0, v3, v1, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
