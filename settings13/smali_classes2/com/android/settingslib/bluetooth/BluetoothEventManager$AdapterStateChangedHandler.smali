.class Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;
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
    name = "AdapterStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 6

    const-string p3, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    .line 471
    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 474
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AdapterStateChangedHandler :: BluetoothAdapter.ACTION_STATE_CHANGED, state = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "BluetoothEventManager"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$fgetmLocalAdapter(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    .line 479
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->updateDeviceName(Landroid/content/Context;)V

    .line 482
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$fgetmCallbacks(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    .line 483
    invoke-interface {v1, p2}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onBluetoothStateChanged(I)V

    goto :goto_0

    .line 486
    :cond_0
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$fgetmDeviceManager(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 487
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$fgetmDeviceManager(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->onBluetoothStateChanged(I)V

    :cond_1
    const/16 p3, 0xc

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p2, p3, :cond_6

    .line 492
    invoke-static {}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getQuickPannelOn()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 493
    invoke-static {p1, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 495
    invoke-virtual {p3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result p3

    if-nez p3, :cond_4

    .line 496
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$fgetmContext(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Landroid/content/Context;

    move-result-object p3

    const-string v3, "keyguard"

    invoke-virtual {p3, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/KeyguardManager;

    .line 498
    invoke-virtual {p3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p3

    if-nez p3, :cond_4

    .line 499
    new-instance p3, Landroid/content/Intent;

    const-string v3, "com.samsung.settings.bluetooth.scandialog.LAUNCH"

    invoke-direct {p3, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10800000

    .line 501
    invoke-virtual {p3, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 504
    :try_start_0
    invoke-static {}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getDexQuickPannelOn()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 505
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$fgetmContext(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "desktopmode"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 506
    invoke-virtual {v3}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v3

    const/16 v4, 0x66

    if-ne v3, v4, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :cond_2
    move v3, v2

    .line 508
    :goto_1
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v4

    .line 509
    invoke-virtual {v4, v3}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 510
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$fgetmContext(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, p3, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 512
    :cond_3
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$fgetmContext(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, p3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p3

    .line 515
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivity() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_4
    :goto_2
    invoke-static {v2, v2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->setQuickPannelOn(ZZ)V

    .line 522
    :cond_5
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$fgetmDeviceManager(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 523
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$fgetmDeviceManager(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->setOngoingSetMemberPair(Landroid/bluetooth/BluetoothDevice;)V

    :cond_6
    const/16 p3, 0xa

    if-ne p2, p3, :cond_8

    const-string p2, "bluetooth_restart"

    .line 529
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "key_bluetooth_restart"

    .line 530
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 533
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$fgetmLocalAdapter(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->enable()Z

    .line 534
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 535
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 536
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 539
    :cond_7
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$fgetmDeviceManager(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 540
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-$$Nest$fgetmDeviceManager(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->setOngoingSetMemberPair(Landroid/bluetooth/BluetoothDevice;)V

    :cond_8
    return-void
.end method
