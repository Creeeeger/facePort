.class public final Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static sInstance:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mBluetoothCastListener:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter$2;

.field public final mCallbacks:Ljava/util/ArrayList;

.field public mCastAdapter:Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;

.field public mCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

.field public final mDiscoveryAlarmListener:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LocalBluetoothCastAdapter"

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter$1;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;)V

    iput-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mDiscoveryAlarmListener:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter$1;

    new-instance v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter$2;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;)V

    invoke-static {v0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mCallbacks:Ljava/util/ArrayList;

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {p1, v1}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->getProxy(Landroid/content/Context;Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter$BluetoothCastAdapterListener;)Z

    return-void
.end method


# virtual methods
.method public final cancelDiscovery()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mCastAdapter:Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->TAG:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p0, "Cannot cancelDiscovery"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "cancelDiscovery"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mCastAdapter:Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->cancelDiscovery()V

    return-void
.end method

.method public final finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mCastAdapter:Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->closeProxy()V

    return-void
.end method

.method public final startDiscovery()V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mCastAdapter:Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->TAG:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p0, "Cannot startDiscovery"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->startDiscovery()V

    const-string v0, "startDiscovery"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x2ee0

    add-long v6, v0, v2

    iget-object v4, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v9, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mDiscoveryAlarmListener:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter$1;

    const/4 v5, 0x2

    const-string v8, "Discovery"

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method
