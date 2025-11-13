.class Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$7;
.super Landroid/os/Handler;
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

    .line 397
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$7;->this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mKeyGuardHandler - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CheckBluetoothStateActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

    .line 407
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 409
    invoke-static {}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->-$$Nest$sfgetmIsRegisterKeyGuardReceiver()Z

    move-result v1

    if-nez v1, :cond_2

    .line 410
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$7;->this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->-$$Nest$fgetmKeyGuardReceiver(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 411
    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->-$$Nest$sfputmIsRegisterKeyGuardReceiver(Z)V

    goto :goto_0

    .line 403
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$7;->this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->-$$Nest$msendBendedPendingIntent(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    :cond_2
    :goto_0
    return-void
.end method
