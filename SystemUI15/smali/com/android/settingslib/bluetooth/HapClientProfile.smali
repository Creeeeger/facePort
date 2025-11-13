.class public final Lcom/android/settingslib/bluetooth/HapClientProfile;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# instance fields
.field public final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field public mIsProfileReady:Z

.field public final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field public mService:Landroid/bluetooth/BluetoothHapClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/HapClientProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iput-object p3, p0, Lcom/android/settingslib/bluetooth/HapClientProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    const-class p2, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothManager;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/HapClientProfile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance p3, Lcom/android/settingslib/bluetooth/HapClientProfile$HapClientServiceListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/settingslib/bluetooth/HapClientProfile$HapClientServiceListener;-><init>(Lcom/android/settingslib/bluetooth/HapClientProfile;I)V

    const/16 p0, 0x1c

    invoke-virtual {p2, p1, p3, p0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/HapClientProfile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    :goto_0
    return-void
.end method


# virtual methods
.method public final accessProfileEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final finalize()V
    .locals 4

    const-string v0, "finalize()"

    const-string v1, "HapClientProfile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HapClientProfile;->mService:Landroid/bluetooth/BluetoothHapClient;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/HapClientProfile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v3, 0x1c

    invoke-virtual {v2, v3, v0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/HapClientProfile;->mService:Landroid/bluetooth/BluetoothHapClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "Error cleaning up HAP Client proxy"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HapClientProfile;->mService:Landroid/bluetooth/BluetoothHapClient;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHapClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public final getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 0

    const p0, 0x10803b3

    return p0
.end method

.method public final getProfileId()I
    .locals 0

    const/16 p0, 0x1c

    return p0
.end method

.method public final isEnabled(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HapClientProfile;->mService:Landroid/bluetooth/BluetoothHapClient;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHapClient;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public final isProfileReady()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/HapClientProfile;->mIsProfileReady:Z

    return p0
.end method

.method public final selectPreset(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HapClientProfile;->mService:Landroid/bluetooth/BluetoothHapClient;

    if-nez p0, :cond_0

    const-string p0, "HapClientProfile"

    const-string p1, "Proxy not attached to service. Cannot select preset."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothHapClient;->selectPreset(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "HapClient"

    return-object p0
.end method
