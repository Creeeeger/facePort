.class public final Lcom/android/systemui/bluetooth/qsdialog/ConnectedDeviceItemFactory;
.super Lcom/android/systemui/bluetooth/qsdialog/DeviceItemFactory;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bluetooth/qsdialog/DeviceItemFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/systemui/bluetooth/qsdialog/DeviceItem;
    .locals 7

    sget-object v2, Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;->CONNECTED_BLUETOOTH_DEVICE:Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    :cond_1
    if-nez p0, :cond_2

    const p0, 0x7f130eb0

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    move-object v3, p0

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result p0

    if-eqz p0, :cond_3

    const p0, 0x7f0806ac

    :goto_0
    move v4, p0

    goto :goto_1

    :cond_3
    const p0, 0x7f0806ab

    goto :goto_0

    :goto_1
    const p0, 0x7f130109

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object p0, Lcom/android/systemui/bluetooth/qsdialog/DeviceItemFactory;->Companion:Lcom/android/systemui/bluetooth/qsdialog/DeviceItemFactory$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/bluetooth/qsdialog/DeviceItemFactory$Companion;->createDeviceItem(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;Ljava/lang/String;ILjava/lang/String;Z)Lcom/android/systemui/bluetooth/qsdialog/DeviceItem;

    move-result-object p0

    return-object p0
.end method

.method public final isFilterMatched(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroid/media/AudioManager;)Z
    .locals 2

    invoke-static {}, Lcom/android/settingslib/flags/Flags;->enableHideExclusivelyManagedBluetoothDevice()V

    iget-object p0, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isExclusivelyManagedBluetoothDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    invoke-virtual {p3}, Landroid/media/AudioManager;->getMode()I

    move-result p0

    const/4 p3, 0x1

    const/4 v0, 0x2

    if-eq p0, p3, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, p3

    :goto_1
    invoke-static {p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isDeviceConnected(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedAshaHearingAidDevice()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedLeAudioDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    if-eq p0, p3, :cond_4

    if-eq p0, v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedA2dpDevice()Z

    move-result p0

    :goto_2
    xor-int/2addr p0, p3

    goto :goto_4

    :cond_4
    iget-object p0, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-nez p0, :cond_6

    :cond_5
    move p0, p1

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    if-eqz p0, :cond_5

    iget-object p2, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p2}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-ne p0, v0, :cond_5

    move p0, p3

    goto :goto_2

    :cond_7
    :goto_3
    move p0, p1

    :goto_4
    if-eqz p0, :cond_8

    move p1, p3

    :cond_8
    return p1
.end method
