.class Lcom/android/settings/bluetooth/BluetoothEnabler$1;
.super Landroid/os/Handler;
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

    .line 117
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->-$$Nest$fgetmSwitchType(Lcom/android/settings/bluetooth/BluetoothEnabler;)Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->-$$Nest$fgetmSwitchType(Lcom/android/settings/bluetooth/BluetoothEnabler;)Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setBluetoothSummary()V

    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "is_bluetooth_on"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 124
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->-$$Nest$fgetmLocalAdapter(Lcom/android/settings/bluetooth/BluetoothEnabler;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)Z

    move-result p1

    if-nez p1, :cond_2

    .line 125
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->-$$Nest$fgetmSwitchType(Lcom/android/settings/bluetooth/BluetoothEnabler;)Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 126
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->-$$Nest$fgetmSwitchType(Lcom/android/settings/bluetooth/BluetoothEnabler;)Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setChecked(Z)V

    :cond_2
    :goto_0
    return-void
.end method
