.class public final Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$FallbackDeviceGroupIdSettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$FallbackDeviceGroupIdSettingsObserver;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    const-string p1, "CallsAndAlarmsPreferenceController"

    const-string v0, "onChange, fallback device group id has been changed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$FallbackDeviceGroupIdSettingsObserver;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;

    new-instance p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;I)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method
