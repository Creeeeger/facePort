.class public Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;
.super Ljava/lang/Object;
.source "LocalBluetoothCastAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter$BluetoothCastAdapterStateCallback;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field mBluetoothCastListener:Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter$BluetoothCastAdapterListener;

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter$BluetoothCastAdapterStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCastAdapter:Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;

.field private mCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

.field private mContext:Landroid/content/Context;

.field private mDiscoveryAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCastAdapter(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;)Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mCastAdapter:Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCastProfileManager(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCastAdapter(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mCastAdapter:Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->TAG:Ljava/lang/String;

    .line 44
    new-instance v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter$1;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;)V

    iput-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mDiscoveryAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 131
    new-instance v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter$2;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;)V

    iput-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mBluetoothCastListener:Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter$BluetoothCastAdapterListener;

    const-string v1, "LocalBluetoothCastAdapter"

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mContext:Landroid/content/Context;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mCallbacks:Ljava/util/ArrayList;

    const-string v0, "alarm"

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mAlarmManager:Landroid/app/AlarmManager;

    .line 64
    iget-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mBluetoothCastListener:Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter$BluetoothCastAdapterListener;

    invoke-static {p1, p0}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->getProxy(Landroid/content/Context;Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter$BluetoothCastAdapterListener;)Z

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;
    .locals 2

    const-class v0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->sInstance:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    invoke-direct {v1, p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->sInstance:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    .line 56
    :cond_0
    sget-object p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->sInstance:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public cancelDiscovery()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mCastAdapter:Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;

    if-nez v0, :cond_0

    .line 97
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->TAG:Ljava/lang/String;

    const-string v0, "Cannot cancelDiscovery"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->TAG:Ljava/lang/String;

    const-string v1, "cancelDiscovery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mCastAdapter:Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->cancelDiscovery()V

    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 158
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 159
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mCastAdapter:Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->closeProxy()V

    return-void
.end method

.method public getLastConnectedTime(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)J
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mCastAdapter:Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;

    if-nez v0, :cond_0

    .line 116
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->TAG:Ljava/lang/String;

    const-string p1, "Cannot getLastConnectedTime"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, 0x0

    return-wide p0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->TAG:Ljava/lang/String;

    const-string v1, "cancelDiscovery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mCastAdapter:Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->getLastConnectedTime(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)J

    move-result-wide p0

    return-wide p0
.end method

.method public registerCallback(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter$BluetoothCastAdapterStateCallback;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->TAG:Ljava/lang/String;

    const-string v1, "callback added"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCastProfileManager(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    .line 69
    iget-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mCastAdapter:Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;

    if-nez p1, :cond_0

    .line 70
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->TAG:Ljava/lang/String;

    const-string p1, "Cannot set BluetoothCastStateOn"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public startDiscovery()V
    .locals 11

    .line 85
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mCastAdapter:Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;

    if-nez v0, :cond_0

    .line 86
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->TAG:Ljava/lang/String;

    const-string v0, "Cannot startDiscovery"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->TAG:Ljava/lang/String;

    const-string v1, "startDiscovery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x2ee0

    add-long v6, v0, v2

    .line 91
    iget-object v4, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    iget-object v9, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mDiscoveryAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v10, 0x0

    const-string v8, "Discovery"

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 92
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mCastAdapter:Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->startDiscovery()V

    return-void
.end method

.method public suspendDiscovery()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mCastAdapter:Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;

    if-nez v0, :cond_0

    .line 106
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->TAG:Ljava/lang/String;

    const-string v0, "Cannot suspendDiscovery"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->TAG:Ljava/lang/String;

    const-string v1, "suspendDiscovery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mDiscoveryAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 111
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mCastAdapter:Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->suspendDiscovery()V

    return-void
.end method

.method public unregisterCallback(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter$BluetoothCastAdapterStateCallback;)V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
