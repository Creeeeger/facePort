.class public final synthetic Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    sget v1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->sDimAlpha:I

    iget-object v1, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settingslib/bluetooth/PanProfile;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/PanProfile;->isNapEnabled()Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->stopTethering(Landroid/content/Context;)V

    :cond_2
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect$1()V

    return-void
.end method
