.class public final Lcom/android/systemui/bluetooth/qsdialog/SavedHearingDeviceItemFactory;
.super Lcom/android/systemui/bluetooth/qsdialog/SavedDeviceItemFactory;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bluetooth/qsdialog/SavedDeviceItemFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final isFilterMatched(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroid/media/AudioManager;)Z
    .locals 0

    invoke-static {}, Lcom/android/settingslib/flags/Flags;->enableHideExclusivelyManagedBluetoothDevice()V

    iget-object p0, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isExclusivelyManagedBluetoothDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isHearingAidDevice()Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    const/16 p1, 0xc

    if-ne p0, p1, :cond_0

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
