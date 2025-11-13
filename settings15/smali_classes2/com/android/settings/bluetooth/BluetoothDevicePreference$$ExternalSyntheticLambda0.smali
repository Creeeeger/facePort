.class public final synthetic Lcom/android/settings/bluetooth/BluetoothDevicePreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget-object p0, v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object p0, v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    const/16 v3, 0xa

    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary()Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v3, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    iget-object p0, v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDrawableWithDescription()Landroid/util/Pair;

    move-result-object v4

    iget-object p0, v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v5

    iget-boolean p0, v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mShowDevicesWithoutNames:Z

    const/4 v0, 0x1

    if-nez p0, :cond_2

    iget-object p0, v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v0

    if-eqz p0, :cond_1

    goto :goto_2

    :cond_1
    const/4 p0, 0x0

    move v6, p0

    goto :goto_3

    :cond_2
    :goto_2
    move v6, v0

    :goto_3
    new-instance p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$$ExternalSyntheticLambda3;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/bluetooth/BluetoothDevicePreference$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/bluetooth/BluetoothDevicePreference;Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;ZZ)V

    invoke-static {p0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
