.class Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$6;
.super Ljava/lang/Object;
.source "CheckBluetoothStateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->checkPickerProcess()V
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

    .line 354
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$6;->this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x190

    .line 357
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 358
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$6;->this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->-$$Nest$mlaunchDevicePicker(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InterruptedException"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CheckBluetoothStateActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method
