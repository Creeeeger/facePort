.class public final Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager$bluetoothMetadataBroadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager$bluetoothMetadataBroadcastReceiver$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.bluetooth.device.action.META_DATA_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SoundCraft.BluetoothDeviceManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iget-object p2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager$bluetoothMetadataBroadcastReceiver$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    sget v0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->$r8$clinit:I

    invoke-virtual {p2}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager$bluetoothMetadataBroadcastReceiver$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getNoiseControlList(Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->currentNoiseControlList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->currentNoiseControlList:Ljava/util/Set;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->isChanged:Z

    if-eqz v0, :cond_3

    :cond_1
    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->currentNoiseControlList:Ljava/util/Set;

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->noiseControlCallback:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_2

    invoke-interface {v0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->isChanged:Z

    :cond_3
    invoke-static {p1}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getBatteryInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->currentBatteryInfo:Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_4

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->currentBatteryInfo:Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->batteryInfoCallback:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_4

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method
