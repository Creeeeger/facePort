.class public final Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$ActiveDeviceChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$ActiveDeviceChangedReceiver;->this$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ActiveDeviceChangedReceiver: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecBluetoothLeBroadcastSourceSetting"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "android.bluetooth.action.LE_AUDIO_ACTIVE_DEVICE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$ActiveDeviceChangedReceiver;->this$0:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mDeviceAdapter:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceAdapter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceAdapter;->setActiveLeAudioDevice(Landroid/bluetooth/BluetoothDevice;)V

    :goto_0
    return-void
.end method
