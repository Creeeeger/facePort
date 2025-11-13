.class Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothAboutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 247
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "BluetoothAboutFragment"

    .line 249
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "com.samsung.bluetooth.device.action.SMEP_CONNECTION_STATE_CHANGED"

    .line 251
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    if-eqz v0, :cond_2

    .line 253
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 255
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->-$$Nest$fgetmDevice(Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, -0x1

    const-string v0, "android.bluetooth.profile.extra.STATE"

    .line 256
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 258
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->-$$Nest$minitPreference(Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    .line 260
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    :cond_2
    const-string v0, "com.samsung.bluetooth.device.action.META_DATA_CHANGED"

    .line 264
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 266
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 268
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;

    invoke-static {p2}, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->-$$Nest$fgetmDevice(Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 269
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->-$$Nest$minitPreference(Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;)V

    :cond_3
    :goto_0
    return-void
.end method
