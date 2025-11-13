.class public final Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

.field public final context:Landroid/content/Context;

.field public isBudsManagerFront:Z

.field public final qsDetailControllerLazy:Ldagger/Lazy;

.field public final soundCraftQpDetailAdapter:Lcom/android/systemui/audio/soundcraft/view/SoundCraftQpDetailAdapter;

.field public final soundCraftSettings:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;

.field public final wearableManager:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;Lcom/android/systemui/volume/util/BroadcastReceiverManager;Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager;Lcom/android/systemui/shared/system/TaskStackChangeListeners;Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;Ldagger/Lazy;Lcom/android/systemui/audio/soundcraft/view/SoundCraftQpDetailAdapter;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;",
            "Lcom/android/systemui/volume/util/BroadcastReceiverManager;",
            "Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager;",
            "Lcom/android/systemui/shared/system/TaskStackChangeListeners;",
            "Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/audio/soundcraft/view/SoundCraftQpDetailAdapter;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->context:Landroid/content/Context;

    move-object v2, p2

    iput-object v2, v0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    move-object/from16 v2, p4

    iput-object v2, v0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->wearableManager:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager;

    move-object/from16 v2, p6

    iput-object v2, v0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->soundCraftSettings:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;

    move-object/from16 v2, p7

    iput-object v2, v0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->qsDetailControllerLazy:Ldagger/Lazy;

    move-object/from16 v2, p8

    iput-object v2, v0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->soundCraftQpDetailAdapter:Lcom/android/systemui/audio/soundcraft/view/SoundCraftQpDetailAdapter;

    const-string v2, "SoundCraft.SoundCraftManager"

    const-string v3, "init"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$1;-><init>(Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;)V

    iget-object v3, v1, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastReceiverItemMap:Ljava/util/Map;

    sget-object v4, Lcom/android/systemui/volume/util/BroadcastReceiverType;->A2DP_ACTIVE_DEVICE_CHANGE:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    if-eqz v3, :cond_0

    new-instance v12, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerA2dpActiveDeviceChange$1$1;

    invoke-direct {v12, v2}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerA2dpActiveDeviceChange$1$1;-><init>(Ljava/util/function/Consumer;)V

    iget-object v6, v3, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->intentFilter:Landroid/content/IntentFilter;

    const/4 v8, 0x0

    const/16 v11, 0x3c

    iget-object v4, v1, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v12

    invoke-static/range {v4 .. v11}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    iput-object v12, v3, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->receiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_0
    sget-object v2, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$2;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$2;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$3;-><init>(Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->registerHeadsetConnectionAction(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    new-instance v2, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$4;-><init>(Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;)V

    iget-object v3, v1, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastReceiverItemMap:Ljava/util/Map;

    sget-object v4, Lcom/android/systemui/volume/util/BroadcastReceiverType;->HDMI_CONNECTION:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    if-eqz v3, :cond_1

    new-instance v12, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerHdmiConnectionAction$1$1;

    invoke-direct {v12, v2}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerHdmiConnectionAction$1$1;-><init>(Ljava/util/function/Consumer;)V

    iget-object v6, v3, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->intentFilter:Landroid/content/IntentFilter;

    const/4 v8, 0x0

    const/16 v11, 0x3c

    iget-object v4, v1, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v12

    invoke-static/range {v4 .. v11}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    iput-object v12, v3, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->receiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1
    new-instance v2, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$5;-><init>(Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;)V

    iget-object v3, v1, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastReceiverItemMap:Ljava/util/Map;

    sget-object v4, Lcom/android/systemui/volume/util/BroadcastReceiverType;->UNINSTALL_PACKAGE:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    if-eqz v3, :cond_2

    new-instance v12, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerUninstallPackage$1$1;

    invoke-direct {v12, v2}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerUninstallPackage$1$1;-><init>(Ljava/util/function/Consumer;)V

    iget-object v6, v3, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->intentFilter:Landroid/content/IntentFilter;

    const/4 v8, 0x0

    const/16 v11, 0x3c

    iget-object v4, v1, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v12

    invoke-static/range {v4 .. v11}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    iput-object v12, v3, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->receiver:Landroid/content/BroadcastReceiver;

    :cond_2
    new-instance v1, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$6;-><init>(Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method


# virtual methods
.method public final requestGWPluginModel(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    new-instance v0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$requestGWPluginModel$success$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$requestGWPluginModel$success$1;-><init>(Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;Landroid/bluetooth/BluetoothDevice;)V

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->wearableManager:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubPluginStateRequester;

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager;->context:Landroid/content/Context;

    invoke-direct {v1, p1, v0}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubPluginStateRequester;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.uhm.action.PLUGIN_INFO_SERVICE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    new-instance p1, Landroid/content/ComponentName;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p1, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object p1, v3

    :goto_0
    const/4 v0, 0x1

    const-string v3, "SoundCraft.wearable.GWStubServiceRequester"

    if-nez p1, :cond_1

    const-string p1, "bindService : intent is null."

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester;->context:Landroid/content/Context;

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester;->serviceConnection:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester$serviceConnection$1;

    invoke-virtual {v2, p1, v1, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    const-string p1, "isSuccess="

    invoke-static {p1, v3, v2}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    if-nez v2, :cond_2

    sget-object p1, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;->isBudsConnected(Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->context:Landroid/content/Context;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;->budsPluginPackageName(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->soundCraftSettings:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;->update()V

    return-void
.end method
