.class public final Lcom/android/settings/network/apn/ApnSettings$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/network/apn/ApnSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/apn/ApnSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$4;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const-string p1, "ApnSettings"

    const-string v0, "BluetoothListener onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$4;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    iget-object p1, p1, Lcom/android/settings/network/apn/ApnSettings;->mBluetoothPanLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings$4;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    iput-object p2, v0, Lcom/android/settings/network/apn/ApnSettings;->mProxy:Landroid/bluetooth/BluetoothPan;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/settings/network/apn/ApnSettings;->mIsBtTetherOn:Z

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings$4;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnSettings;->fillList()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onServiceDisconnected(I)V
    .locals 1

    const-string p1, "ApnSettings"

    const-string v0, "BluetoothListener onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$4;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    iget-object p1, p1, Lcom/android/settings/network/apn/ApnSettings;->mBluetoothPanLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings$4;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mProxy:Landroid/bluetooth/BluetoothPan;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsBtTetherOn:Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
