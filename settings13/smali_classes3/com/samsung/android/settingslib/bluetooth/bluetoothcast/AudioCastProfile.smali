.class public Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;
.super Ljava/lang/Object;
.source "AudioCastProfile.java"

# interfaces
.implements Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;


# instance fields
.field private final TAG:Ljava/lang/String;

.field mAudioCastProfileListener:Lcom/samsung/android/bluetooth/SemBluetoothCastProfile$BluetoothCastProfileListener;

.field private final mCastDeviceManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

.field private final mCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

.field private mContext:Landroid/content/Context;

.field mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCastDeviceManager(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mCastDeviceManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCastProfileManager(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->TAG:Ljava/lang/String;

    .line 160
    new-instance v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;)V

    iput-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mAudioCastProfileListener:Lcom/samsung/android/bluetooth/SemBluetoothCastProfile$BluetoothCastProfileListener;

    const-string v1, "AudioCastProfile"

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mCastDeviceManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    .line 41
    iput-object p3, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    .line 42
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mAudioCastProfileListener:Lcom/samsung/android/bluetooth/SemBluetoothCastProfile$BluetoothCastProfileListener;

    invoke-static {p1, p0}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getProxy(Landroid/content/Context;Lcom/samsung/android/bluetooth/SemBluetoothCastProfile$BluetoothCastProfileListener;)Z

    return-void
.end method


# virtual methods
.method public connect(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->TAG:Ljava/lang/String;

    const-string v1, "connect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 49
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->connect(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z

    move-result p0

    return p0
.end method

.method public disconnect(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->TAG:Ljava/lang/String;

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 56
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->disconnect(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z

    move-result p0

    return p0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 210
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 211
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    if-eqz p0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->closeProxy()V

    :cond_0
    return-void
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getConnectedDevices()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getConnectionState(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)I
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->TAG:Ljava/lang/String;

    const-string v1, "getConnectionState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 63
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getConnectionState(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)I

    move-result p0

    return p0
.end method

.method public isHostEnabled()Z
    .locals 2

    .line 72
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "bluetooth_cast_mode"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
