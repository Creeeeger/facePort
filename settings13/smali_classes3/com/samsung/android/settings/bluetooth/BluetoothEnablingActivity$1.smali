.class Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity$1;
.super Landroid/os/Handler;
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

    .line 126
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: msg.what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothEnablingActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    :goto_0
    return-void
.end method
