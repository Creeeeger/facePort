.class Lcom/android/settingslib/bluetooth/BluetoothEventManager$DelayedSyncHandler;
.super Landroid/os/Handler;
.source "BluetoothEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayedSyncHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Landroid/os/Looper;)V
    .locals 0

    .line 665
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DelayedSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 666
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Landroid/os/Looper;Lcom/android/settingslib/bluetooth/BluetoothEventManager$DelayedSyncHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DelayedSyncHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 671
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 674
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DelayedSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$fgetmLocalAdapter(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DelayedSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$fgetmLocalAdapter(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 675
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DelayedSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$fgetmLocalAdapter(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->cancelDiscovery()V

    .line 677
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DelayedSyncHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->readSyncedDevices()V

    :goto_0
    return-void
.end method
