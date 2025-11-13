.class public final Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "BluetoothAboutFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "com.samsung.bluetooth.device.action.SMEP_CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    if-eqz v0, :cond_2

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "android.bluetooth.profile.extra.STATE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->initPreference$2$1()V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    :cond_2
    const-string v0, "com.samsung.bluetooth.device.action.META_DATA_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;

    iget-object p2, p2, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->initPreference$2$1()V

    :cond_3
    :goto_0
    return-void
.end method
