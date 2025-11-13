.class public final Lcom/samsung/android/settingslib/bluetooth/SppProfile;
.super Ljava/lang/Object;
.source "SppProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field mHandler:Landroid/os/Handler;

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDeviceManager(Lcom/samsung/android/settingslib/bluetooth/SppProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/SppProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalAdapter(Lcom/samsung/android/settingslib/bluetooth/SppProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/SppProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/samsung/android/settingslib/bluetooth/SppProfile;->mIsProfileReady:Z

    .line 82
    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/SppProfile$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settingslib/bluetooth/SppProfile$1;-><init>(Lcom/samsung/android/settingslib/bluetooth/SppProfile;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/SppProfile;->mHandler:Landroid/os/Handler;

    .line 71
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/SppProfile;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/samsung/android/settingslib/bluetooth/SppProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 73
    iput-object p3, p0, Lcom/samsung/android/settingslib/bluetooth/SppProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 74
    iput-object p4, p0, Lcom/samsung/android/settingslib/bluetooth/SppProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 76
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 p2, 0x0

    .line 77
    iput p2, p1, Landroid/os/Message;->what:I

    .line 78
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/SppProfile;->mHandler:Landroid/os/Handler;

    const-wide/16 p2, 0x12c

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public accessProfileEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected finalize()V
    .locals 0

    return-void
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 151
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

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 0

    .line 199
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_general_device:I

    return p0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 187
    sget p0, Lcom/android/settingslib/R$string;->unknown:I

    return p0
.end method

.method public getOrdinal()I
    .locals 0

    const/16 p0, 0xc8

    return p0
.end method

.method public getProfileId()I
    .locals 0

    const/16 p0, 0xc8

    return p0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 195
    sget p0, Lcom/android/settingslib/R$string;->unknown:I

    return p0
.end method

.method public isEnabled(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 147
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->semIsGearConnected()Z

    move-result p0

    return p0
.end method

.method public isProfileReady()Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/samsung/android/settingslib/bluetooth/SppProfile;->mIsProfileReady:Z

    return p0
.end method

.method public setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 128
    iget-object p2, p0, Lcom/samsung/android/settingslib/bluetooth/SppProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {p2, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 131
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/SppProfile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->shouldLaunchGM(Ljava/lang/String;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "SppProfile"

    const-string p1, "disconnect :: Bluetooth device is null"

    .line 134
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "SPP"

    return-object p0
.end method
