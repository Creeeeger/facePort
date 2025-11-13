.class public final Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeControlUpdater$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeControlUpdater;

.field public final synthetic val$cachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;


# direct methods
.method public constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeControlUpdater;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeControlUpdater$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeControlUpdater;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeControlUpdater$1;->val$cachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 7

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeControlUpdater$1;->val$cachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->getGroupId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/16 v3, 0x787

    const/4 v4, 0x0

    if-eq v0, v1, :cond_0

    iget-object v5, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeControlUpdater$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeControlUpdater;

    iget-object v5, v5, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "bluetooth_le_broadcast_fallback_active_group_id"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeControlUpdater$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeControlUpdater;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mContext:Landroid/content/Context;

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float p1, p1

    int-to-float v5, v5

    mul-float/2addr p1, v5

    const/16 v5, 0xff

    int-to-float v5, v5

    div-float/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v0, v1, p1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Fail to setAudioManagerStreamVolumeForFallbackDevice, error = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioSharingDeviceVolumeControlUpdater"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeControlUpdater$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeControlUpdater;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeControlUpdater$1;->val$cachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v1, v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeControlUpdater;->mVolumeControl:Lcom/android/settingslib/bluetooth/VolumeControlProfile;

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/VolumeControlProfile;->mService:Landroid/bluetooth/BluetoothVolumeControl;

    const-string v5, "VolumeControlProfile"

    if-nez v1, :cond_1

    const-string p0, "Proxy not attached to service. Cannot set volume offset."

    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    const-string p0, "Device is null. Cannot set volume offset."

    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p0, p1, v2}, Landroid/bluetooth/BluetoothVolumeControl;->setDeviceVolume(Landroid/bluetooth/BluetoothDevice;IZ)V

    :goto_0
    iget-object p0, v0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    iget-object p1, v0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    :cond_3
    :goto_1
    return-void
.end method
