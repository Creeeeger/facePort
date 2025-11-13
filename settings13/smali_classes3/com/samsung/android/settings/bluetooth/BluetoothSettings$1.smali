.class Lcom/samsung/android/settings/bluetooth/BluetoothSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 221
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothSettings"

    if-nez p1, :cond_0

    const-string p0, "onReceive: Intent.getAction() is return null"

    .line 223
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 226
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: getAction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.android.settings.DEVICE_NAME_CHANGED"

    .line 229
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->access$000(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->access$100(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsForegroundBtSettings:Z

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->access$200(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->-$$Nest$mupdateContent(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;IZZ)V

    goto :goto_0

    :cond_1
    const-string v0, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    .line 235
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->access$300(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v0, 0x14

    const-string v1, "android.bluetooth.adapter.extra.SCAN_MODE"

    .line 236
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 238
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->access$400(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x17

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->access$500(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->-$$Nest$fgetmPolicyEnabled(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->access$600(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->access$700(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    :cond_2
    :goto_0
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 244
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "networkInfo"

    .line 245
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    if-eqz p1, :cond_3

    .line 246
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-nez p1, :cond_3

    .line 247
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method
