.class Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController$1;
.super Landroid/os/Handler;
.source "SecSystemVolumePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;Landroid/os/Looper;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController$1;->this$0:Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 29
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController$1;->this$0:Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;

    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;->getAudioStream()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/AudioHelper;->getStreamVolume(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;->updatePreferenceIcon(I)V

    :goto_0
    return-void
.end method
