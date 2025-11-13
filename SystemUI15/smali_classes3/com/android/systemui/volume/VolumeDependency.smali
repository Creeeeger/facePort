.class public final Lcom/android/systemui/volume/VolumeDependency;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/volume/VolumeDependencyBase;


# static fields
.field public static final Companion:Lcom/android/systemui/volume/VolumeDependency$Companion;

.field public static sInstance:Lcom/android/systemui/volume/VolumeDependency;

.field public static final sProvider:Landroid/util/ArrayMap;


# instance fields
.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final centralSurfacesLazy:Ldagger/Lazy;

.field public final pluginAODManagerLazy:Ldagger/Lazy;

.field public final volumePanelLogger:Lcom/android/systemui/log/SamsungServiceLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/VolumeDependency$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDependency$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/volume/VolumeDependency;->Companion:Lcom/android/systemui/volume/VolumeDependency$Companion;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/VolumeDependency;->sProvider:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/log/SamsungServiceLogger;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/log/SamsungServiceLogger;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDependency;->volumePanelLogger:Lcom/android/systemui/log/SamsungServiceLogger;

    iput-object p3, p0, Lcom/android/systemui/volume/VolumeDependency;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p4, p0, Lcom/android/systemui/volume/VolumeDependency;->pluginAODManagerLazy:Ldagger/Lazy;

    iput-object p5, p0, Lcom/android/systemui/volume/VolumeDependency;->centralSurfacesLazy:Ldagger/Lazy;

    sget-object p2, Lcom/android/systemui/volume/VolumeDependency;->sProvider:Landroid/util/ArrayMap;

    const-class p3, Landroid/content/Context;

    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_0

    const-class p3, Landroid/content/Context;

    invoke-virtual {p2, p3, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_0
    sput-object p0, Lcom/android/systemui/volume/VolumeDependency;->sInstance:Lcom/android/systemui/volume/VolumeDependency;

    return-void
.end method


# virtual methods
.method public final createDependency(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    const-class v0, Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/store/VolumePanelStore;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    goto/16 :goto_0

    :cond_0
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-class v1, Lcom/android/systemui/basic/util/LogWrapper;

    if-eqz v0, :cond_1

    new-instance p1, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;

    new-instance v0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/basic/util/LogWrapper;

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;Lcom/android/systemui/basic/util/LogWrapper;)V

    goto/16 :goto_0

    :cond_1
    const-class v0, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_0

    :cond_2
    const-class v0, Lcom/android/systemui/volume/util/AudioManagerWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lcom/android/systemui/volume/util/AudioManagerWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/AudioManagerWrapper;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_3
    const-class v0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p1, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_4
    const-class v0, Lcom/android/systemui/volume/util/BixbyServiceManager;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-class v2, Lcom/android/systemui/volume/util/ActivityManagerWrapper;

    if-eqz v0, :cond_5

    new-instance p1, Lcom/android/systemui/volume/util/BixbyServiceManager;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/basic/util/LogWrapper;

    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/util/ActivityManagerWrapper;

    invoke-direct {p1, v0, v1, p0}, Lcom/android/systemui/volume/util/BixbyServiceManager;-><init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/volume/util/ActivityManagerWrapper;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p1, Lcom/android/systemui/basic/util/LogWrapper;

    sget-object v0, Lcom/android/systemui/basic/util/ModuleType;->VOLUME:Lcom/android/systemui/basic/util/ModuleType;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDependency;->volumePanelLogger:Lcom/android/systemui/log/SamsungServiceLogger;

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/basic/util/LogWrapper;-><init>(Lcom/android/systemui/basic/util/ModuleType;Lcom/android/systemui/log/SamsungServiceLogger;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p1, Lcom/android/systemui/volume/util/ActivityManagerWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/ActivityManagerWrapper;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_7
    const-class v0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance p1, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/basic/util/LogWrapper;

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;-><init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;)V

    goto/16 :goto_0

    :cond_8
    const-class v0, Lcom/android/systemui/volume/util/ZenModeHelper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance p1, Lcom/android/systemui/volume/util/ZenModeHelper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/ZenModeHelper;-><init>()V

    goto/16 :goto_0

    :cond_9
    const-class v0, Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance p1, Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/HandlerWrapper;-><init>()V

    goto/16 :goto_0

    :cond_a
    const-class v2, Lcom/android/systemui/volume/util/SoundPoolWrapper;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance p1, Lcom/android/systemui/volume/util/SoundPoolWrapper;

    const-class v1, Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-direct {p1, v1, p0}, Lcom/android/systemui/volume/util/SoundPoolWrapper;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/util/HandlerWrapper;)V

    goto/16 :goto_0

    :cond_b
    const-class v0, Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance p1, Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_c
    const-class v0, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance p1, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;-><init>()V

    goto/16 :goto_0

    :cond_d
    const-class v0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance p1, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_e
    const-class v0, Lcom/android/systemui/volume/util/StatusBarWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-class v2, Lcom/android/systemui/volume/util/KeyguardManagerWrapper;

    if-eqz v0, :cond_f

    new-instance p1, Lcom/android/systemui/volume/util/StatusBarWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/basic/util/LogWrapper;

    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/util/KeyguardManagerWrapper;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDependency;->centralSurfacesLazy:Ldagger/Lazy;

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/android/systemui/volume/util/StatusBarWrapper;-><init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/volume/util/KeyguardManagerWrapper;Ldagger/Lazy;)V

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance p1, Lcom/android/systemui/volume/util/KeyguardManagerWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/KeyguardManagerWrapper;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_10
    const-class v0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance p1, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    goto/16 :goto_0

    :cond_11
    const-class v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    goto/16 :goto_0

    :cond_12
    const-class v0, Lcom/android/systemui/volume/util/SystemClockWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance p1, Lcom/android/systemui/volume/util/SystemClockWrapper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/SystemClockWrapper;-><init>()V

    goto/16 :goto_0

    :cond_13
    const-class v0, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance p1, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;-><init>()V

    goto/16 :goto_0

    :cond_14
    const-class v0, Lcom/android/systemui/volume/util/ConfigurationWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance p1, Lcom/android/systemui/volume/util/ConfigurationWrapper;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/ConfigurationWrapper;-><init>(Lcom/android/systemui/volume/VolumeDependency;)V

    goto/16 :goto_0

    :cond_15
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_0

    :cond_16
    const-class v0, Lcom/android/systemui/volume/util/BroadcastReceiverManager;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance p1, Lcom/android/systemui/volume/util/BroadcastReceiverManager;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/basic/util/LogWrapper;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDependency;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-direct {p1, v0, v1, p0}, Lcom/android/systemui/volume/util/BroadcastReceiverManager;-><init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    goto/16 :goto_0

    :cond_17
    const-class v0, Lcom/android/systemui/volume/util/BroadcastSender;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance p1, Lcom/android/systemui/volume/util/BroadcastSender;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/BroadcastSender;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_18
    const-class v0, Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance p1, Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/DesktopManagerWrapper;-><init>()V

    goto/16 :goto_0

    :cond_19
    const-class v0, Lcom/android/systemui/volume/util/PowerManagerWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance p1, Lcom/android/systemui/volume/util/PowerManagerWrapper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/PowerManagerWrapper;-><init>()V

    goto/16 :goto_0

    :cond_1a
    const-class v0, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_0

    :cond_1b
    const-class v0, Lcom/android/systemui/volume/util/ToastWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance p1, Lcom/android/systemui/volume/util/ToastWrapper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/ToastWrapper;-><init>()V

    goto/16 :goto_0

    :cond_1c
    const-class v0, Lcom/android/systemui/volume/util/SALoggingWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance p1, Lcom/android/systemui/volume/util/SALoggingWrapper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/SALoggingWrapper;-><init>()V

    goto/16 :goto_0

    :cond_1d
    const-class v0, Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance p1, Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_1e
    const-class v0, Lcom/android/systemui/volume/view/VolumePanelMotion;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance p1, Lcom/android/systemui/volume/view/VolumePanelMotion;

    invoke-direct {p1}, Lcom/android/systemui/volume/view/VolumePanelMotion;-><init>()V

    goto/16 :goto_0

    :cond_1f
    const-class v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    invoke-direct {p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;-><init>()V

    goto/16 :goto_0

    :cond_20
    const-class v0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance p1, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_21
    const-class v0, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance p1, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/basic/util/LogWrapper;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;-><init>(Lcom/android/systemui/basic/util/LogWrapper;)V

    goto/16 :goto_0

    :cond_22
    const-class v0, Lcom/android/systemui/volume/VolumeStarInteractor;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance p1, Lcom/android/systemui/volume/VolumeStarInteractor;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/VolumeStarInteractor;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_23
    const-class v0, Lcom/android/systemui/volume/util/SemWindowManagerWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance p1, Lcom/android/systemui/volume/util/SemWindowManagerWrapper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/SemWindowManagerWrapper;-><init>()V

    goto/16 :goto_0

    :cond_24
    const-class v0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance p1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    goto/16 :goto_0

    :cond_25
    const-class v0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance p1, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_26
    const-class v0, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance p1, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_27
    const-class v0, Lcom/android/systemui/volume/util/VibratorWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance p1, Lcom/android/systemui/volume/util/VibratorWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/VibratorWrapper;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_28
    const-class v0, Lcom/android/systemui/volume/util/PluginAODManagerWrapper;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance p1, Lcom/android/systemui/volume/util/PluginAODManagerWrapper;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDependency;->pluginAODManagerLazy:Ldagger/Lazy;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/PluginAODManagerWrapper;-><init>(Ldagger/Lazy;)V

    goto :goto_0

    :cond_29
    const-class v0, Lcom/android/systemui/volume/config/VolumeConfigs;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance p1, Lcom/android/systemui/volume/config/VolumeConfigs;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/config/VolumeConfigs;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2a
    const-class v0, Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    new-instance p1, Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2b
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/android/systemui/volume/VolumeDependency;->sProvider:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDependency;->createDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public final getNewObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/android/systemui/volume/VolumeDependency;->sProvider:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDependency;->createDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
