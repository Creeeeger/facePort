.class public Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;
.super Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;
.source "ConnectedBluetoothDeviceUpdater.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ConnBluetoothDeviceUpdater"

    const/4 v1, 0x3

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V

    const-string p2, "audio"

    .line 45
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method protected addPreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 108
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->addPreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 109
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public isFilterMatched(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    const/4 p0, 0x0

    return p0
.end method

.method public onAudioModeChanged()V
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->forceUpdate()V

    return-void
.end method
