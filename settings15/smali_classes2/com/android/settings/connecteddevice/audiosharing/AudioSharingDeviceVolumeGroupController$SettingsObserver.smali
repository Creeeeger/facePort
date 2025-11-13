.class public final Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;


# direct methods
.method public constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController$SettingsObserver;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    const-string p1, "AudioSharingDeviceVolumeGroupController"

    const-string v0, "onChange, fallback device group id has been changed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController$SettingsObserver;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->-$$Nest$fgetmVolumePreferences(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumePreference;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController$SettingsObserver;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;

    iget-object v2, v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-static {v1, v2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->-$$Nest$mgetPreferenceOrderForDevice(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
