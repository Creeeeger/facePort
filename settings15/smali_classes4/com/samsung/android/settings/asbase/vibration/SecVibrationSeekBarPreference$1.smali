.class public final Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 4

    if-eqz p3, :cond_7

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;->mResolver:Landroid/content/ContentResolver;

    iget-object p3, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;->mSystemDBName:Ljava/lang/String;

    invoke-static {p1, p3, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "setVibrationIntensity : "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;->mSystemDBName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SecVibrationSeekBarPreference"

    invoke-static {p3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;->mTouchSeekBarCallBack:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1;

    iget p3, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;->mStream:I

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1;->this$0:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_0

    iget-object p3, p1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->mIconHandler:Landroid/os/Handler;

    const/16 v0, 0xa

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->mIconHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_0
    const/4 v0, 0x5

    if-ne p3, v0, :cond_1

    iget-object p3, p1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->mIconHandler:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->mIconHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_1
    if-eq p3, v1, :cond_3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p3, v0, :cond_4

    iget-object p3, p1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->mIconHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->mIconHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p3, p1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->mIconHandler:Landroid/os/Handler;

    const/4 v0, 0x7

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->mIconHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    :goto_1
    sget-boolean p1, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;->mRingtone:Landroid/media/Ringtone;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;->mResolver:Landroid/content/ContentResolver;

    iget-object p3, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;->mSyncDbName:Ljava/lang/String;

    invoke-static {p1, p3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_5

    invoke-static {}, Landroid/media/AudioManager;->isHapticPlaybackSupported()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;->mTouchSeekBarCallBack:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1;

    iget-object p3, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;->mRingtone:Landroid/media/Ringtone;

    iget-object v0, p1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1;->this$0:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->stopVibration()V

    iput-object p3, v0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->mRingtone:Landroid/media/Ringtone;

    if-eqz p3, :cond_6

    iget-object p3, v0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->mHandler:Landroid/os/Handler;

    if-eqz p3, :cond_6

    new-instance v0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1$2;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1$2;-><init>(Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1;)V

    const-wide/16 v1, 0x50

    invoke-virtual {p3, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;->mTouchSeekBarCallBack:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1;

    iget-object p3, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;->mVibrationEffect:Landroid/os/VibrationEffect;

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;->mVibrationAttributes:Landroid/os/VibrationAttributes;

    iget-object v1, p1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1;->this$0:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;

    invoke-virtual {v1}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->stopVibration()V

    iput-object p3, v1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->mEffect:Landroid/os/VibrationEffect;

    iget-object v2, v1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_6

    if-eqz p3, :cond_6

    iget-object p3, v1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->mHandler:Landroid/os/Handler;

    if-eqz p3, :cond_6

    new-instance v1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1$1;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1$1;-><init>(Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1;Landroid/os/VibrationAttributes;)V

    const-wide/16 v2, 0xa

    invoke-virtual {p3, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_2
    iget p0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;->mSALogEventId:I

    int-to-long p1, p2

    const/16 p3, 0xfa2

    invoke-static {p3, p0, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_7
    return-void
.end method

.method public final onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    return-void
.end method
