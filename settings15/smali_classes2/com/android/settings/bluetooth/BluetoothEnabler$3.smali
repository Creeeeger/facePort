.class public final Lcom/android/settings/bluetooth/BluetoothEnabler$3;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/BluetoothEnabler;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$3;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$3;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v0, p1, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isSatelliteModeOn(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$3;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isSatelliteModeOn(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setChecked(Z)V

    :cond_0
    return-void
.end method
