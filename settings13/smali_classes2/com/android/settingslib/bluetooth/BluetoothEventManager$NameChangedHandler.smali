.class Lcom/android/settingslib/bluetooth/BluetoothEventManager$NameChangedHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NameChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$NameChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$NameChangedHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$NameChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 621
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$NameChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$fgetmLocalAdapter(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBleState()I

    move-result p2

    const/16 v0, 0xa

    if-eq v0, p2, :cond_0

    .line 622
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$NameChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$fgetmDeviceManager(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->onDeviceNameUpdated(Landroid/bluetooth/BluetoothDevice;)V

    const/4 p2, 0x0

    .line 624
    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 625
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->instanceForSystemUI()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 626
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$NameChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$fgetmDeviceManager(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 627
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getGroupId()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 628
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getLeadDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    if-nez p1, :cond_1

    .line 629
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMemberDevice()Ljava/util/Set;

    move-result-object p0

    .line 630
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 631
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 632
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 640
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "NameChangedHandler :: State - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$NameChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$fgetmLocalAdapter(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBleState()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothEventManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
