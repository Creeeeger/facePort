.class Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$1;
.super Landroid/os/Handler;
.source "BluetoothCastSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    const-string p1, "BluetoothCastSettings"

    const-string v0, "handleMessage - EVENT_DEVICE_STATE_CHANGED "

    .line 128
    invoke-static {p1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->-$$Nest$fgetmIsEnabled(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->updateHelpPreferences(Z)V

    .line 134
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->-$$Nest$fgetmIsEnabled(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->updatePreferences(Z)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "handleMessage - Ignore msg"

    .line 130
    invoke-static {p1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
