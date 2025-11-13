.class public final Lcom/android/systemui/statusbar/phone/CoverScreenIconController$broadcastReceiver$1$onReceive$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/CoverScreenIconController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CoverScreenIconController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$broadcastReceiver$1$onReceive$1;->this$0:Lcom/android/systemui/statusbar/phone/CoverScreenIconController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$broadcastReceiver$1$onReceive$1;->this$0:Lcom/android/systemui/statusbar/phone/CoverScreenIconController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->mobileConnectionsRepository:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;->getNoServiceInfo()Lcom/android/systemui/statusbar/phone/CoverScreenNetworkSignalModel;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no service state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CoverScreenIconController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$broadcastReceiver$1$onReceive$1;->this$0:Lcom/android/systemui/statusbar/phone/CoverScreenIconController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->SUB_SCREEN_SIGNAL:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    invoke-interface {v4, v1, v2, v3}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->subRoomNetworkInfo:Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/CoverScreenNetworkSignalModel;->isAirplaneMode:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;->isAirplane:Z

    iget v0, v0, Lcom/android/systemui/statusbar/phone/CoverScreenNetworkSignalModel;->noServiceType:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;->noServiceType:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;->stateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "airplane"

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;->isAirplane:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "no_siginal"

    iget v3, p0, Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;->noServiceType:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "routine_mode"

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;->modeIcon:[B

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->onStateChanged(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
