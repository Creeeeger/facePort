.class public final Lcom/android/settings/bluetooth/BluetoothEnabler$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$2;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothEnabler"

    if-nez p1, :cond_0

    const-string p0, "onReceive:: received null intent"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "onReceive:: action : "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.samsung.bluetooth.action.GEAR_CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-wide/16 v0, 0x32

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$2;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothEnabler;->mHandler:Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$2;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mHandler:Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    const-string p2, "com.samsung.android.bluetooth.audiocast.action.device.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$2;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothEnabler;->mHandler:Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$2;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mHandler:Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method
