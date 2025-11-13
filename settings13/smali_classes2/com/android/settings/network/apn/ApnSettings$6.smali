.class Lcom/android/settings/network/apn/ApnSettings$6;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/apn/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/apn/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/network/apn/ApnSettings;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$6;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const-string p1, "ApnSettings"

    const-string/jumbo v0, "onServiceConnected"

    .line 363
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$6;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmBluetoothPanLock(Lcom/android/settings/network/apn/ApnSettings;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings$6;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    invoke-static {v0, p2}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fputmProxy(Lcom/android/settings/network/apn/ApnSettings;Landroid/bluetooth/BluetoothPan;)V

    .line 366
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$6;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmProxy(Lcom/android/settings/network/apn/ApnSettings;)Landroid/bluetooth/BluetoothPan;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fputmIsBtTetherOn(Lcom/android/settings/network/apn/ApnSettings;Z)V

    .line 368
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings$6;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p0}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$mfillList(Lcom/android/settings/network/apn/ApnSettings;)V

    return-void

    :catchall_0
    move-exception p0

    .line 366
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    const-string p1, "ApnSettings"

    const-string/jumbo v0, "onServiceDisconnected"

    .line 371
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$6;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmBluetoothPanLock(Lcom/android/settings/network/apn/ApnSettings;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings$6;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fputmProxy(Lcom/android/settings/network/apn/ApnSettings;Landroid/bluetooth/BluetoothPan;)V

    .line 374
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings$6;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fputmIsBtTetherOn(Lcom/android/settings/network/apn/ApnSettings;Z)V

    return-void

    :catchall_0
    move-exception p0

    .line 374
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
