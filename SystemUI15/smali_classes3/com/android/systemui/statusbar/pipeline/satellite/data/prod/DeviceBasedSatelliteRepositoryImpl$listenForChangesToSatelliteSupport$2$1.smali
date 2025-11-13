.class public final Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl$listenForChangesToSatelliteSupport$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $sm:Landroid/telephony/satellite/SatelliteManager;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl;Landroid/telephony/satellite/SatelliteManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl$listenForChangesToSatelliteSupport$2$1;->this$0:Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl$listenForChangesToSatelliteSupport$2$1;->$sm:Landroid/telephony/satellite/SatelliteManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl$listenForChangesToSatelliteSupport$2$1;->this$0:Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl;->getSatelliteSupport()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/SatelliteSupport$Supported;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl$listenForChangesToSatelliteSupport$2$1;->$sm:Landroid/telephony/satellite/SatelliteManager;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/SatelliteSupport$Supported;-><init>(Landroid/telephony/satellite/SatelliteManager;)V

    check-cast p1, Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl;->getSatelliteSupport()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/SatelliteSupport$NotSupported;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/SatelliteSupport$NotSupported;

    check-cast p0, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
