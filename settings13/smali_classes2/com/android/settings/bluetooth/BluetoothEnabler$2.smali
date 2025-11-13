.class Lcom/android/settings/bluetooth/BluetoothEnabler$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$2;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothEnabler"

    if-nez p1, :cond_0

    const-string/jumbo p0, "onReceive:: received null intent"

    .line 144
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive:: action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.samsung.bluetooth.action.GEAR_CONNECTION_STATE_CHANGED"

    .line 150
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-wide/16 v0, 0x32

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 151
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$2;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->-$$Nest$fgetmHandler(Lcom/android/settings/bluetooth/BluetoothEnabler;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 152
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$2;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->-$$Nest$fgetmHandler(Lcom/android/settings/bluetooth/BluetoothEnabler;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    const-string p2, "com.samsung.android.bluetooth.audiocast.action.device.CONNECTION_STATE_CHANGED"

    .line 153
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 154
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$2;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->-$$Nest$fgetmHandler(Lcom/android/settings/bluetooth/BluetoothEnabler;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 155
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$2;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->-$$Nest$fgetmHandler(Lcom/android/settings/bluetooth/BluetoothEnabler;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method
