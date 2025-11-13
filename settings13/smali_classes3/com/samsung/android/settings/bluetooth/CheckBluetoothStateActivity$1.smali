.class Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CheckBluetoothStateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;->this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive :: action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CheckBluetoothStateActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 p1, -0x80000000

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 89
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive :: ACTION_STATE_CHANGED change to = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mExpectingBluetoothOn = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->-$$Nest$sfgetmExpectingBluetoothOn()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mIsDestroyed = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->-$$Nest$sfgetmIsDestroyed()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0xc

    if-ne p1, p2, :cond_0

    .line 95
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;->this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->-$$Nest$mlaunchDevicePicker(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    goto :goto_0

    :cond_0
    const/16 p2, 0xa

    if-ne p1, p2, :cond_2

    .line 96
    invoke-static {}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->-$$Nest$sfgetmExpectingBluetoothOn()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->-$$Nest$sfgetmIsDestroyed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 98
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;->this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const-string p2, "com.android.launcher.action.EASY_MODE_CHANGE"

    .line 100
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "EASY_MODE_CHANGE"

    .line 101
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;->this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method
