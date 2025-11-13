.class public final Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceNameChangedHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceNameChangedHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    const-string p0, "BluetoothEventManager"

    const-string p2, "DeviceNameChangedHandler :: com.android.settings.DEVICE_NAME_CHANGED"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->updateDeviceName(Landroid/content/Context;)V

    return-void
.end method
