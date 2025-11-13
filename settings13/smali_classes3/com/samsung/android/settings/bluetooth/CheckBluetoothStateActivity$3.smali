.class Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$3;
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

    .line 118
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$3;->this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 121
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mKeyGuardReceiver onReceive :: action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CheckBluetoothStateActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

    .line 124
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "showing"

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string v2, "bouncerShowing"

    .line 126
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "occluded"

    .line 127
    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyguard onReceive :: showing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", bouncerShowing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", occluded = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 130
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$3;->this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->-$$Nest$fgetmKeyGuardReceiver(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)Landroid/content/BroadcastReceiver;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->-$$Nest$sfgetmIsRegisterKeyGuardReceiver()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->-$$Nest$sfputmIsRegisterKeyGuardReceiver(Z)V

    .line 132
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$3;->this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->-$$Nest$fgetmKeyGuardReceiver(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)Landroid/content/BroadcastReceiver;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 135
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$3;->this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
