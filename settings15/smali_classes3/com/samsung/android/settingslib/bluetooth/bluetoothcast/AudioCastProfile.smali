.class public final Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mAudioCastProfileListener:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;

.field public final mCastDeviceManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

.field public final mCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

.field public final mContext:Landroid/content/Context;

.field public mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AudioCastProfile"

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->TAG:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;)V

    invoke-static {v0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mCastDeviceManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    iput-object p3, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    invoke-static {p1, v1}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getProxy(Landroid/content/Context;Lcom/samsung/android/bluetooth/SemBluetoothCastProfile$BluetoothCastProfileListener;)Z

    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->closeProxy()V

    :cond_0
    return-void
.end method
