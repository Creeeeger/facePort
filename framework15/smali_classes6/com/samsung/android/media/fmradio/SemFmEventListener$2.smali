.class Lcom/samsung/android/media/fmradio/SemFmEventListener$2;
.super Landroid/os/Handler;
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

    iput-object p1, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 11

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    aget-object v3, v0, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onProgrammeIdentificationExtendedCountryCodesReceived(II)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onRecordingFinished()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    aget-object v3, v0, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v1, 0x4

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v1, 0x5

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual/range {v4 .. v10}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onRadioTextPlusReceived(IIIIII)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onVolumeLocked()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onAlternateFrequencyReceived(J)V

    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onTuned(J)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onAlternateFrequencyStarted()V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onRadioDataSystemDisabled()V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onRadioDataSystemEnabled()V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    aget-object v3, v0, v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v2, v1}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onRadioDataSystemReceived(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onHeadsetDisconnected()V

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onHeadsetConnected()V

    goto :goto_0

    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onTuned(J)V

    goto :goto_0

    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v1, v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onRadioDisabled(I)V

    goto :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onRadioEnabled()V

    goto :goto_0

    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [J

    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v1, v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onScanStopped([J)V

    goto :goto_0

    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [J

    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v1, v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onScanFinished([J)V

    goto :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onScanStarted()V

    goto :goto_0

    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onChannelFound(J)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
