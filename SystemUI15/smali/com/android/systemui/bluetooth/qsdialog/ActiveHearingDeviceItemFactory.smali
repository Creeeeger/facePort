.class public final Lcom/android/systemui/bluetooth/qsdialog/ActiveHearingDeviceItemFactory;
.super Lcom/android/systemui/bluetooth/qsdialog/ActiveMediaDeviceItemFactory;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bluetooth/qsdialog/ActiveMediaDeviceItemFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final isFilterMatched(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroid/media/AudioManager;)Z
    .locals 0

    invoke-static {p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isActiveMediaDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isAvailableHearingDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
