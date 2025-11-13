.class public interface abstract Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository$Companion;->$$INSTANCE:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository$Companion;

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository$Companion;

    return-void
.end method


# virtual methods
.method public abstract getAllowNetworkSliceIndicator()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getCarrierId()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getCarrierName()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getCarrierNetworkChangeActive()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getCdmaLevel()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getCdmaRoaming()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getDataActivityDirection()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getDataConnectionState()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getDataEnabled()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getHasPrioritizedNetworkCapabilities()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getImsRegState()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getInflateSignalStrength()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getMobileDataEnabledChanged()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getMobileServiceState()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getNetworkName()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getNumberOfLevels()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getOnTheCall()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getOperatorAlphaShort()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getPrimaryLevel()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getResolvedNetworkType()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getSatelliteLevel()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getSemOMCChangedEvent()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getSemSatelliteEnabled()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getSemSatelliteServiceState()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getSemSatelliteSignalStrength()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getSim1On()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getSimCardInfo()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getSlotId()I
.end method

.method public abstract getSubId()I
.end method

.method public abstract getSwRoaming()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getTableLogBuffer()Lcom/android/systemui/log/table/TableLogBuffer;
.end method

.method public abstract isAllowedDuringAirplaneMode()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract isEmergencyOnly()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract isGsm()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract isInEcmMode(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract isInService()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract isNonTerrestrial()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract isRoaming()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract isUsingNonTerrestrialNetwork()Lkotlinx/coroutines/flow/StateFlow;
.end method
