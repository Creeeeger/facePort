.class Lcom/android/server/FMRadioService$6;
.super Landroid/telephony/PhoneStateListener;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mIsPhoneCallRinging:Z

.field final synthetic blacklist this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor blacklist <init>(Lcom/android/server/FMRadioService;Ljava/lang/Integer;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/FMRadioService;
    .param p2, "subId"    # Ljava/lang/Integer;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 701
    iput-object p1, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0, p2, p3}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/lang/Integer;Landroid/os/Looper;)V

    .line 702
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService$6;->mIsPhoneCallRinging:Z

    return-void
.end method


# virtual methods
.method public whitelist onCallStateChanged(ILjava/lang/String;)V
    .locals 11
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "phone state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNeedToResumeFM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/server/FMRadioService;->-$$Nest$sfgetmNeedToResumeFM()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsPhoneCallRinging : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/FMRadioService$6;->mIsPhoneCallRinging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsForcestop : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsForcestop(Lcom/android/server/FMRadioService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 706
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    .line 757
    :pswitch_0
    goto/16 :goto_4

    .line 754
    :pswitch_1
    iput-boolean v0, p0, Lcom/android/server/FMRadioService$6;->mIsPhoneCallRinging:Z

    .line 755
    goto/16 :goto_4

    .line 708
    :pswitch_2
    invoke-static {}, Lcom/android/server/FMRadioService;->-$$Nest$sfgetmNeedToResumeFM()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v1}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmNeedResumeToFreq(Lcom/android/server/FMRadioService;)J

    move-result-wide v3

    const-wide/16 v5, -0x2

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsForcestop(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/FMRadioService$6;->mIsPhoneCallRinging:Z

    if-eqz v1, :cond_6

    .line 709
    iget-object v1, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1, v2}, Lcom/android/server/FMRadioService;->-$$Nest$mon(Lcom/android/server/FMRadioService;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 710
    iget-object v1, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmAudioManager(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    move-result v1

    .line 711
    .local v1, "outputPath":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCallStateChanged() :: CALL_STATE_IDLE setPath() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 712
    iget-object v3, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmAudioManager(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->semSetRadioOutputPath(I)Z

    .line 713
    invoke-static {}, Lcom/android/server/FMRadioService;->-$$Nest$sfgetmIsTransientPaused()Z

    move-result v3

    const-wide/16 v7, 0x0

    if-eqz v3, :cond_2

    .line 714
    iget-object v3, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmAudioManager(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-static {v0}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    int-to-long v9, v4

    invoke-static {v3, v9, v10}, Lcom/android/server/FMRadioService;->-$$Nest$fputmResumeVol(Lcom/android/server/FMRadioService;J)V

    .line 715
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "slowly increase the volume till :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmResumeVol(Lcom/android/server/FMRadioService;)J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 716
    iget-object v3, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmResumeVol(Lcom/android/server/FMRadioService;)J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-eqz v3, :cond_1

    .line 717
    iget-object v0, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmResumeVol(Lcom/android/server/FMRadioService;)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/android/server/FMRadioService;->-$$Nest$fputmCurrentResumeVol(Lcom/android/server/FMRadioService;J)V

    .line 718
    sget-boolean v0, Lcom/android/server/FMRadioServiceFeature;->FEATURE_USE_CHIPSET_VOLUME:Z

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    const-wide/16 v3, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/android/server/FMRadioService;->setVolume(J)V

    .line 720
    iget-object v0, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc8

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 721
    iget-object v0, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    const-wide/16 v9, 0x64

    invoke-virtual {v0, v3, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmResumeVol(Lcom/android/server/FMRadioService;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/server/FMRadioService;->setVolume(J)V

    goto :goto_0

    .line 726
    :cond_1
    iget-object v3, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmAudioManager(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-static {v0}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v0

    iget-object v4, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmResumeVol(Lcom/android/server/FMRadioService;)J

    move-result-wide v9

    long-to-int v4, v9

    invoke-virtual {v3, v0, v4, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 729
    :goto_0
    invoke-static {v2}, Lcom/android/server/FMRadioService;->-$$Nest$sfputmIsTransientPaused(Z)V

    goto :goto_1

    .line 731
    :cond_2
    iget-object v3, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmAudioManager(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-static {v0}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v4

    iget-object v9, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v9}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmAudioManager(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v9

    .line 732
    invoke-static {v0}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 731
    invoke-virtual {v3, v4, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 734
    :goto_1
    iget-object v0, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmNeedResumeToFreq(Lcom/android/server/FMRadioService;)J

    move-result-wide v3

    cmp-long v0, v3, v7

    if-gtz v0, :cond_3

    .line 735
    iget-object v0, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    const-wide/32 v3, 0x155cc

    invoke-static {v0, v3, v4}, Lcom/android/server/FMRadioService;->-$$Nest$fputmNeedResumeToFreq(Lcom/android/server/FMRadioService;J)V

    .line 737
    :cond_3
    iget-object v0, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsExternalChipset(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 738
    iget-object v0, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmNeedResumeToFreq(Lcom/android/server/FMRadioService;)J

    move-result-wide v3

    long-to-int v0, v3

    div-int/lit8 v0, v0, 0xa

    .line 739
    .local v0, "freqExt":I
    iget-object v3, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerExternalChipset(Lcom/android/server/FMRadioService;)Lcom/android/server/PlayerExternalChipsetBase;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/PlayerExternalChipsetBase;->tune(I)V

    .line 740
    .end local v0    # "freqExt":I
    goto :goto_2

    .line 741
    :cond_4
    iget-object v0, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerNative(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNativeBase;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmNeedResumeToFreq(Lcom/android/server/FMRadioService;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/server/FMPlayerNativeBase;->tune(J)V

    .line 743
    :goto_2
    const-string/jumbo v0, "tune from CALL_STATE_IDLE"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    const/4 v3, 0x7

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmNeedResumeToFreq(Lcom/android/server/FMRadioService;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 745
    iget-object v0, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0, v5, v6}, Lcom/android/server/FMRadioService;->-$$Nest$fputmNeedResumeToFreq(Lcom/android/server/FMRadioService;J)V

    .line 746
    .end local v1    # "outputPath":I
    goto :goto_3

    .line 747
    :cond_5
    const-string v0, "Not able to resume FM player"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 750
    :cond_6
    :goto_3
    invoke-static {v2}, Lcom/android/server/FMRadioService;->-$$Nest$sfputmNeedToResumeFM(Z)V

    .line 751
    iput-boolean v2, p0, Lcom/android/server/FMRadioService$6;->mIsPhoneCallRinging:Z

    .line 752
    nop

    .line 761
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
