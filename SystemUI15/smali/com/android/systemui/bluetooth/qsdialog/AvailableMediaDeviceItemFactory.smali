.class public Lcom/android/systemui/bluetooth/qsdialog/AvailableMediaDeviceItemFactory;
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

    sget-object v2, Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;->AVAILABLE_MEDIA_BLUETOOTH_DEVICE:Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;

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
    const p0, 0x7f130108

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

.method public isFilterMatched(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroid/media/AudioManager;)Z
    .locals 0

    invoke-static {p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isActiveMediaDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p2, p3}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isAvailableMediaBluetoothDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroid/media/AudioManager;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
