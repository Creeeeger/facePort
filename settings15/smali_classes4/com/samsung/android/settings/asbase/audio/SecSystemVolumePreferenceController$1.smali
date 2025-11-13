.class public final Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController$1;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController$1;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController$1;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;->getAudioStream()I

    move-result v0

    iget-object p1, p1, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;->updatePreferenceIcon(I)V

    :goto_0
    return-void
.end method
