.class Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothPermissionActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothPermissionActivity"

    if-nez p1, :cond_0

    const-string/jumbo p0, "onReceive :: Intent.getAction() is return null"

    .line 100
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 103
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive :: getAction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 p1, -0x80000000

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 107
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xd

    if-ne p1, p2, :cond_1

    .line 109
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    :cond_1
    return-void

    :cond_2
    const-string v0, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    const-string v0, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    .line 114
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 116
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->-$$Nest$fgetmRequestType(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    return-void

    :cond_3
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 117
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 118
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    invoke-static {p2}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->-$$Nest$mdismissDialog(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)V

    :cond_4
    return-void
.end method
