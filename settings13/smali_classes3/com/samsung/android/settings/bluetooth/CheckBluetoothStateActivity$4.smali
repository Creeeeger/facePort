.class Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$4;
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

    .line 141
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$4;->this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 144
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "CheckBluetoothStateActivity"

    const-string v1, "Received BT_ENABLE_TIMEOUT"

    .line 146
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$4;->this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->-$$Nest$fgetmTimeoutHandler(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$4;->this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->-$$Nest$fgetmLocalAdapter(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mExpectingBluetoothOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->-$$Nest$sfgetmExpectingBluetoothOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsDestroyed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->-$$Nest$sfgetmIsDestroyed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$4;->this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->-$$Nest$fgetmLocalAdapter(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->-$$Nest$sfgetmExpectingBluetoothOn()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->-$$Nest$sfgetmIsDestroyed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 152
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$4;->this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method
