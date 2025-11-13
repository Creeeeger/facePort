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
    .param p1, "this$0"    # Lcom/samsung/android/media/fmradio/SemFmEventListener;

    .line 194
    iput-object p1, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAlternateFrequencyReceived(J)V
    .locals 4
    .param p1, "freq"    # J

    .line 276
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 278
    return-void
.end method

.method public blacklist onAlternateFrequencyStarted()V
    .locals 4

    .line 271
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 273
    return-void
.end method

.method public blacklist onChannelFound(J)V
    .locals 4
    .param p1, "freq"    # J

    .line 197
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 199
    return-void
.end method

.method public blacklist onHeadsetConnected()V
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 231
    return-void
.end method

.method public blacklist onHeadsetDisconnected()V
    .locals 4

    .line 234
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 236
    return-void
.end method

.method public blacklist onProgrammeIdentificationExtendedCountryCodesReceived(II)V
    .locals 5
    .param p1, "pi"    # I
    .param p2, "ecc"    # I

    .line 252
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 253
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 252
    const/16 v2, 0x12

    invoke-static {v0, v2, v3, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 255
    return-void
.end method

.method public blacklist onRadioDataSystemDisabled()V
    .locals 4

    .line 263
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 266
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 267
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 268
    return-void
.end method

.method public blacklist onRadioDataSystemEnabled()V
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 260
    return-void
.end method

.method public blacklist onRadioDataSystemReceived(JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "freq"    # J
    .param p3, "channelName"    # Ljava/lang/String;
    .param p4, "radioText"    # Ljava/lang/String;

    .line 240
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 241
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    .line 240
    const/16 v2, 0xa

    invoke-static {v0, v2, v3, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 243
    return-void
.end method

.method public blacklist onRadioDisabled(I)V
    .locals 4
    .param p1, "reasonCode"    # I

    .line 221
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 222
    return-void
.end method

.method public blacklist onRadioEnabled()V
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 218
    return-void
.end method

.method public blacklist onRadioTextPlusReceived(IIIIII)V
    .locals 5
    .param p1, "contentType1"    # I
    .param p2, "startPos1"    # I
    .param p3, "additionalLen1"    # I
    .param p4, "contentType2"    # I
    .param p5, "startPos2"    # I
    .param p6, "additionalLen2"    # I

    .line 246
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    .line 247
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    .line 246
    const/16 v2, 0x10

    invoke-static {v0, v2, v3, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 249
    return-void
.end method

.method public blacklist onRecordingFinished()V
    .locals 4

    .line 286
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 288
    return-void
.end method

.method public blacklist onScanFinished([J)V
    .locals 3
    .param p1, "freqArry"    # [J

    .line 212
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 214
    return-void
.end method

.method public blacklist onScanStarted()V
    .locals 4

    .line 202
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 204
    return-void
.end method

.method public blacklist onScanStopped([J)V
    .locals 3
    .param p1, "freqArry"    # [J

    .line 207
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 209
    return-void
.end method

.method public blacklist onTuned(J)V
    .locals 4
    .param p1, "freq"    # J

    .line 225
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 226
    return-void
.end method

.method public blacklist onVolumeLocked()V
    .locals 4

    .line 281
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 283
    return-void
.end method
