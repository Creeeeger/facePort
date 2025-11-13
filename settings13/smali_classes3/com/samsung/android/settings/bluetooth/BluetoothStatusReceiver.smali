.class public Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothStatusReceiver.java"


# static fields
.field private static mHC_starting:Z = false


# instance fields
.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHomeControllerService:Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;

.field private mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCachedDevice(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCachedDeviceManager(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHomeControllerService(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mHomeControllerService:Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalBluetoothAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCachedDevice(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHomeControllerService(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mHomeControllerService:Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmHC_starting(Z)V
    .locals 0

    sput-boolean p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mHC_starting:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 210
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothStatusReceiver"

    if-nez v0, :cond_0

    const-string p0, "Received null intent"

    .line 78
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 81
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mContext:Landroid/content/Context;

    .line 85
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p1, :cond_1

    const-string p0, "Error: mLocalBluetoothManager not supported by system"

    .line 87
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 91
    :cond_1
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez p1, :cond_2

    const-string p0, "Error: mLocalBluetoothAdapter not supported by system"

    .line 93
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 97
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    if-nez p1, :cond_3

    const-string p0, "Error: mCachedDeviceManager not supported by system"

    .line 99
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string p1, "com.samsung.android.action.BLUETOOTH_DEVICE_FROM_APP"

    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "For launch gearmanager from non-system app :: com.samsung.android.action.BLUETOOTH_DEVICE_FROM_APP"

    .line 104
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_b

    const-string p1, "For launch gearmanager from non-system app :: sendBroadcast()"

    .line 107
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 109
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string p1, "MAC"

    .line 110
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DATA"

    .line 111
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    const-string v2, "IS_START_ACTIVITY"

    const/4 v3, 0x0

    .line 112
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "request_app_package_name"

    .line 113
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    .line 122
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v4, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v4, :cond_5

    .line 125
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v4, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez p1, :cond_5

    const-string p0, "Error: Failed to get cachedBluetoothDevice instance."

    .line 128
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 134
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    move v5, v1

    move v4, v3

    .line 135
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_8

    .line 136
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    if-eqz v6, :cond_6

    .line 137
    invoke-interface {v6}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isProfileReady()Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    move v5, v3

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 142
    :cond_8
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 143
    iput v1, p1, Landroid/os/Message;->what:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "package_name"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "is_start_activity"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 146
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "mf_data"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    if-eqz v5, :cond_9

    .line 149
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 151
    :cond_9
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_a
    const-string p0, "com.samsung.android.smartthings.headless.action.THINGS_COMMAND_RECEIVED"

    .line 154
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_b
    :goto_1
    return-void
.end method
