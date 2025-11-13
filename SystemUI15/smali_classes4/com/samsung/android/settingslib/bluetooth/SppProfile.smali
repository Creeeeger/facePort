.class public final Lcom/samsung/android/settingslib/bluetooth/SppProfile;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# instance fields
.field public final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field public final mHandler:Lcom/samsung/android/settingslib/bluetooth/SppProfile$1;

.field public final mIsProfileReady:Z

.field public final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settingslib/bluetooth/SppProfile;->mIsProfileReady:Z

    new-instance p1, Lcom/samsung/android/settingslib/bluetooth/SppProfile$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p1, p0, p4}, Lcom/samsung/android/settingslib/bluetooth/SppProfile$1;-><init>(Lcom/samsung/android/settingslib/bluetooth/SppProfile;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/settingslib/bluetooth/SppProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iput-object p3, p0, Lcom/samsung/android/settingslib/bluetooth/SppProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    new-instance p0, Landroid/os/Message;

    invoke-direct {p0}, Landroid/os/Message;-><init>()V

    const/4 p2, 0x0

    iput p2, p0, Landroid/os/Message;->what:I

    const-wide/16 p2, 0x12c

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

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

.method public final getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 0

    const p0, 0x7f080c31

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

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "SPP"

    return-object p0
.end method
