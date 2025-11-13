.class Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothEnablingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 144
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, -0x80000000

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    .line 146
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive :: action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", state = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothEnablingActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xa

    if-eq p2, p1, :cond_0

    const/16 p1, 0xc

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->-$$Nest$fgetmTimeoutHandler(Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 152
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->-$$Nest$fgetmTimeoutHandler(Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->-$$Nest$fgetmTimeoutHandler(Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;)Landroid/os/Handler;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method
