.class public final Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mListening:Z

.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer$Receiver;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    if-eqz v0, :cond_0

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer$Receiver;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    iget p2, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mStreamType:I

    if-ne p2, p1, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->updateSlider()V

    goto/16 :goto_6

    :cond_0
    const-string v0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer$Receiver;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer$Receiver;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    iget p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mStreamType:I

    const/16 p2, 0x8

    if-eq p1, p2, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->updateSlider()V

    goto/16 :goto_6

    :cond_1
    const-string v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer$Receiver;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    iget p2, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mStreamType:I

    if-ne p2, p1, :cond_c

    iget-boolean p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->isRingerUpdatedToAudio:Z

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->updateSlider()V

    goto/16 :goto_6

    :cond_2
    const-string p2, "com.samsung.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer$Receiver;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    iget p2, p1, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    iget p2, p1, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mCurrentSimSlot:I

    if-ne p2, v0, :cond_3

    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    goto :goto_0

    :cond_3
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    :goto_0
    iput-object p2, p1, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    goto :goto_2

    :cond_4
    const/4 v1, 0x5

    if-ne p2, v1, :cond_6

    iget p2, p1, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mCurrentSimSlot:I

    if-ne p2, v0, :cond_5

    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI_2:Landroid/net/Uri;

    goto :goto_1

    :cond_5
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    :goto_1
    iput-object p2, p1, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    :cond_6
    :goto_2
    :try_start_0
    iget-object p2, p1, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz p2, :cond_c

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer$Receiver;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    new-instance p2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer$Receiver;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    iget p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mStreamType:I

    invoke-virtual {p2, p0}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Exception happens in SIM_CHANGED_ACTION : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecSeekBarVolumizer"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_7
    const-string p2, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer$Receiver;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    iget-object p2, p1, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p2}, Landroid/app/NotificationManager;->getZenMode()I

    move-result p2

    iput p2, p1, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mZenMode:I

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer$Receiver;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->updateSlider()V

    goto :goto_6

    :cond_8
    const-string p2, "android.app.action.NOTIFICATION_POLICY_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer$Receiver;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    iget-object p2, p1, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p2}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p2

    iput-object p2, p1, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mNotificationPolicy:Landroid/app/NotificationManager$Policy;

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer$Receiver;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    iget-object p2, p1, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mNotificationPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, p2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v2, v1, 0x20

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    move v2, v0

    goto :goto_3

    :cond_9
    move v2, v3

    :goto_3
    iput-boolean v2, p1, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mAllowAlarms:Z

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_a

    move v1, v0

    goto :goto_4

    :cond_a
    move v1, v3

    :goto_4
    iput-boolean v1, p1, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mAllowMedia:Z

    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result p2

    xor-int/2addr p2, v0

    iput-boolean p2, p1, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mAllowRinger:Z

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer$Receiver;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mNotificationPolicy:Landroid/app/NotificationManager$Policy;

    iget p1, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_b

    goto :goto_5

    :cond_b
    move v0, v3

    :goto_5
    iput-boolean v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mAllowSystem:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->updateSlider()V

    :cond_c
    :goto_6
    return-void
.end method

.method public final setListening(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer$Receiver;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer$Receiver;->mListening:Z

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.app.action.NOTIFICATION_POLICY_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer$Receiver;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer$Receiver;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    return-void
.end method
