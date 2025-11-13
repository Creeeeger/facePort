.class public final Lcom/android/settingslib/bluetooth/HidProfile;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# instance fields
.field public final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field public mIsProfileReady:Z

.field public final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field public mService:Landroid/bluetooth/BluetoothHidHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iput-object p3, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    new-instance p3, Lcom/android/settingslib/bluetooth/HidProfile$HidHostServiceListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/settingslib/bluetooth/HidProfile$HidHostServiceListener;-><init>(Lcom/android/settingslib/bluetooth/HidProfile;I)V

    const/4 p0, 0x4

    invoke-virtual {p2, p1, p3, p0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method public static getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I
    .locals 2

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->semGetPeripheralMinorClass()I

    move-result v0

    const/16 v1, 0x540

    if-ne v0, v1, :cond_0

    const p0, 0x7f080c36

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->semGetPeripheralMinorClass()I

    move-result v0

    const/16 v1, 0x5c0

    if-ne v0, v1, :cond_1

    const p0, 0x7f080c35

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->semGetPeripheralMinorClass()I

    move-result v0

    const/16 v1, 0x580

    if-ne v0, v1, :cond_2

    const p0, 0x7f080c3c

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->semGetPeripheralMinorSubClass()I

    move-result v0

    const/16 v1, 0x504

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->semGetPeripheralMinorSubClass()I

    move-result v0

    const/16 v1, 0x508

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->semGetPeripheralMinorSubClass()I

    move-result p0

    const/16 v0, 0x50c

    if-ne p0, v0, :cond_3

    goto :goto_0

    :cond_3
    const p0, 0x7f080c12

    goto :goto_1

    :cond_4
    :goto_0
    const p0, 0x7f080c2e

    :goto_1
    return p0
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

    const-string v1, "HidProfile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "Error cleaning up HID proxy"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHidHost;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v3, "HidProfile"

    if-nez v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHidHost;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    const-string p1, "getConnectionStatus :: "

    invoke-static {p0, p1, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_2
    const-string p0, "getConnectionStatus :: BluetoothProfile.STATE_DISCONNECTED (cannot find device)"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 0

    if-nez p1, :cond_0

    const p0, 0x7f080c12

    return p0

    :cond_0
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result p0

    return p0
.end method

.method public final getProfileId()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final isEnabled(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHidHost;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final isProfileReady()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mIsProfileReady:Z

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "HID"

    return-object p0
.end method
