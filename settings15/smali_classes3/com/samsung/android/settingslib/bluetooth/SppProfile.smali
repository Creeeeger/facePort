.class public final Lcom/samsung/android/settingslib/bluetooth/SppProfile;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field public final mHandler:Lcom/samsung/android/settingslib/bluetooth/SppProfile$1;

.field public final mIsProfileReady:Z

.field public final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/bluetooth/SppProfile;->mIsProfileReady:Z

    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/SppProfile$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settingslib/bluetooth/SppProfile$1;-><init>(Lcom/samsung/android/settingslib/bluetooth/SppProfile;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/SppProfile;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settingslib/bluetooth/SppProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iput-object p3, p0, Lcom/samsung/android/settingslib/bluetooth/SppProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    new-instance p0, Landroid/os/Message;

    invoke-direct {p0}, Landroid/os/Message;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Landroid/os/Message;->what:I

    const-wide/16 p1, 0x12c

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public final accessProfileEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final finalize()V
    .locals 0

    return-void
.end method

.method public final getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->semIsGearConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getDrawable2dResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 0

    const p0, 0x7f080853

    return p0
.end method

.method public final getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 0

    const p0, 0x7f0806e6

    return p0
.end method

.method public final getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    const p0, 0x7f14302c

    return p0
.end method

.method public final getOrdinal()I
    .locals 0

    const/16 p0, 0xc8

    return p0
.end method

.method public final getProfileId()I
    .locals 0

    const/16 p0, 0xc8

    return p0
.end method

.method public final isEnabled(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->semIsGearConnected()Z

    move-result p0

    return p0
.end method

.method public final isProfileReady()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settingslib/bluetooth/SppProfile;->mIsProfileReady:Z

    return p0
.end method

.method public final setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/settingslib/bluetooth/SppProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {p2, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/SppProfile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->shouldLaunchGM(Ljava/lang/String;Z)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "SppProfile"

    const-string p1, "disconnect :: Bluetooth device is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "SPP"

    return-object p0
.end method
