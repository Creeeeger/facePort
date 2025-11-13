.class public final Lcom/android/systemui/statusbar/phone/CoverScreenIconController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

.field public final context:Landroid/content/Context;

.field public final delayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mobileConnectionsRepository:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;

.field public final slotMode:Ljava/lang/String;

.field public final subRoomNetworkInfo:Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;


# direct methods
.method public constructor <init>(Lcom/android/systemui/subscreen/SubScreenManager;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 7

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->subRoomNetworkInfo:Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;

    move-object v3, p5

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->context:Landroid/content/Context;

    move-object v4, p6

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object v4, p7

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object/from16 v4, p9

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->mobileConnectionsRepository:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;

    move-object/from16 v4, p10

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->delayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040edd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->slotMode:Ljava/lang/String;

    new-instance v3, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$broadcastReceiver$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$broadcastReceiver$1;-><init>(Lcom/android/systemui/statusbar/phone/CoverScreenIconController;)V

    sget-object v4, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->SUB_SCREEN_MODE_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-interface {p3, v4, v5, v6}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x12f

    move-object v6, p1

    invoke-virtual {p1, v4, p4}, Lcom/android/systemui/subscreen/SubScreenManager;->setSubRoom(ILcom/android/systemui/plugins/subscreen/SubRoom;)V

    move-object v2, p2

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->SUB_SCREEN_SIGNAL:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {p3, v0, v5, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3c

    move-object p0, p8

    move-object p1, v3

    move-object p2, v0

    move-object p3, v4

    move-object p4, v5

    move p5, v1

    move-object p6, v2

    move p7, v6

    invoke-static/range {p0 .. p7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final removeIcon(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->slotMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CoverScreenIconController"

    const-string v0, "Remove mode icon"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->subRoomNetworkInfo:Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;->modeIcon:[B

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;->stateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "airplane"

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;->isAirplane:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "no_siginal"

    iget v2, p0, Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;->noServiceType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "routine_mode"

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;->modeIcon:[B

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->onStateChanged(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->slotMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p2, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1;

    invoke-direct {p1, p2, p0}, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1;-><init>(Lcom/android/internal/statusbar/StatusBarIcon;Lcom/android/systemui/statusbar/phone/CoverScreenIconController;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p1, "CoverScreenIconController"

    const-string p2, "Remove mode icon"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->subRoomNetworkInfo:Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;->modeIcon:[B

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;->stateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    if-eqz p1, :cond_1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "airplane"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;->isAirplane:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "no_siginal"

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;->noServiceType:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "routine_mode"

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;->modeIcon:[B

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->onStateChanged(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method
