.class public final Lcom/android/settingslib/bluetooth/MapProfile;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# instance fields
.field public final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field public mIsProfileReady:Z

.field public final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field public mService:Landroid/bluetooth/BluetoothMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/os/ParcelUuid;

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iput-object p3, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    new-instance p3, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;

    invoke-direct {p3, p0}, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;-><init>(Lcom/android/settingslib/bluetooth/MapProfile;)V

    const/16 p0, 0x9

    invoke-virtual {p2, p1, p3, p0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method


# virtual methods
.method public final accessProfileEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final finalize()V
    .locals 4

    const-string v0, "finalize()"

    const-string v1, "MapProfile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "Error cleaning up MAP proxy"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothMap;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public final getDrawable2dResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 0

    const p0, 0x7f080851

    return p0
.end method

.method public final getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 0

    const p0, 0x7f0806c6

    return p0
.end method

.method public final getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    const p0, 0x7f1407ad

    return p0
.end method

.method public final getOrdinal()I
    .locals 0

    const/16 p0, 0x9

    return p0
.end method

.method public final getProfileId()I
    .locals 0

    const/16 p0, 0x9

    return p0
.end method

.method public final isEnabled(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothMap;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final isProfileReady()Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isProfileReady(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mIsProfileReady:Z

    const-string v2, "MapProfile"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mIsProfileReady:Z

    return p0
.end method

.method public final setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    const/16 p2, 0x64

    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothMap;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothMap;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "MAP"

    return-object p0
.end method
