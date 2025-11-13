.class public final Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;


# instance fields
.field public final allowNetworkSliceIndicator:Lkotlinx/coroutines/flow/StateFlow;

.field public final carrierId:Lkotlinx/coroutines/flow/StateFlow;

.field public final carrierName:Lkotlinx/coroutines/flow/StateFlow;

.field public final carrierNetworkChangeActive:Lkotlinx/coroutines/flow/StateFlow;

.field public final cdmaLevel:Lkotlinx/coroutines/flow/StateFlow;

.field public final cdmaRoaming:Lkotlinx/coroutines/flow/StateFlow;

.field public final connectionRepository:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;

.field public final dataActivityDirection:Lkotlinx/coroutines/flow/StateFlow;

.field public final dataConnectionState:Lkotlinx/coroutines/flow/StateFlow;

.field public final dataEnabled:Lkotlinx/coroutines/flow/StateFlow;

.field public final hasPrioritizedNetworkCapabilities:Lkotlinx/coroutines/flow/StateFlow;

.field public final imsRegState:Lkotlinx/coroutines/flow/StateFlow;

.field public final inflateSignalStrength:Lkotlinx/coroutines/flow/StateFlow;

.field public final isAllowedDuringAirplaneMode:Lkotlinx/coroutines/flow/StateFlow;

.field public final isEmergencyOnly:Lkotlinx/coroutines/flow/StateFlow;

.field public final isGsm:Lkotlinx/coroutines/flow/StateFlow;

.field public final isInService:Lkotlinx/coroutines/flow/StateFlow;

.field public final isNonTerrestrial:Lkotlinx/coroutines/flow/StateFlow;

.field public final isRoaming:Lkotlinx/coroutines/flow/StateFlow;

.field public final isUsingNonTerrestrialNetwork:Lkotlinx/coroutines/flow/StateFlow;

.field public final mobileDataEnabledChanged:Lkotlinx/coroutines/flow/StateFlow;

.field public final mobileServiceState:Lkotlinx/coroutines/flow/StateFlow;

.field public final networkName:Lkotlinx/coroutines/flow/StateFlow;

.field public final numberOfLevels:Lkotlinx/coroutines/flow/StateFlow;

.field public final onTheCall:Lkotlinx/coroutines/flow/StateFlow;

.field public final operatorAlphaShort:Lkotlinx/coroutines/flow/StateFlow;

.field public final primaryLevel:Lkotlinx/coroutines/flow/StateFlow;

.field public final resolvedNetworkType:Lkotlinx/coroutines/flow/StateFlow;

.field public final satelliteLevel:Lkotlinx/coroutines/flow/StateFlow;

.field public final semOMCChangedEvent:Lkotlinx/coroutines/flow/StateFlow;

.field public final semSatelliteEnabled:Lkotlinx/coroutines/flow/StateFlow;

.field public final semSatelliteServiceState:Lkotlinx/coroutines/flow/StateFlow;

.field public final semSatelliteSignalStrength:Lkotlinx/coroutines/flow/StateFlow;

.field public final sim1On:Lkotlinx/coroutines/flow/StateFlow;

.field public final simCardInfo:Lkotlinx/coroutines/flow/StateFlow;

.field public final slotId:I

.field public final subId:I

.field public final swRoaming:Lkotlinx/coroutines/flow/StateFlow;

.field public final tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->connectionRepository:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->getSubId()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->subId:I

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->getSlotId()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->slotId:I

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->getCarrierId()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->carrierId:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->getInflateSignalStrength()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->inflateSignalStrength:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->getAllowNetworkSliceIndicator()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->allowNetworkSliceIndicator:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->getTableLogBuffer()Lcom/android/systemui/log/table/TableLogBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->isEmergencyOnly()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->isEmergencyOnly:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->isRoaming()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->isRoaming:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->getOperatorAlphaShort()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->operatorAlphaShort:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->isInService()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->isInService:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->isNonTerrestrial()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->isNonTerrestrial:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->isGsm()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->isGsm:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->getCdmaLevel()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->cdmaLevel:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->getPrimaryLevel()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->primaryLevel:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->getSatelliteLevel()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->satelliteLevel:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->getDataConnectionState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->dataConnectionState:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->getDataActivityDirection()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->dataActivityDirection:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->getCarrierNetworkChangeActive()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->carrierNetworkChangeActive:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->getResolvedNetworkType()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->resolvedNetworkType:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->getNumberOfLevels()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->numberOfLevels:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->getDataEnabled()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->dataEnabled:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->getCdmaRoaming()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->cdmaRoaming:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->getSwRoaming()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->swRoaming:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->getNetworkName()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->networkName:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->getCarrierName()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->carrierName:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->getSimCardInfo()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->simCardInfo:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->isAllowedDuringAirplaneMode()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->isAllowedDuringAirplaneMode:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->getHasPrioritizedNetworkCapabilities()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->hasPrioritizedNetworkCapabilities:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->getSim1On()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->sim1On:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->getOnTheCall()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->onTheCall:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->isUsingNonTerrestrialNetwork()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->isUsingNonTerrestrialNetwork:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->getMobileServiceState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->mobileServiceState:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->getImsRegState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->imsRegState:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->getMobileDataEnabledChanged()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->mobileDataEnabledChanged:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->getSemSatelliteServiceState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->semSatelliteServiceState:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->getSemSatelliteSignalStrength()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->semSatelliteSignalStrength:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->getSemSatelliteEnabled()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->semSatelliteEnabled:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->getSemOMCChangedEvent()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->semOMCChangedEvent:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method


# virtual methods
.method public final getAllowNetworkSliceIndicator()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->allowNetworkSliceIndicator:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getCarrierId()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->carrierId:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getCarrierName()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->carrierName:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getCarrierNetworkChangeActive()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->carrierNetworkChangeActive:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getCdmaLevel()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->cdmaLevel:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getCdmaRoaming()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->cdmaRoaming:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getDataActivityDirection()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->dataActivityDirection:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getDataConnectionState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->dataConnectionState:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getDataEnabled()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->dataEnabled:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getHasPrioritizedNetworkCapabilities()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->hasPrioritizedNetworkCapabilities:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getImsRegState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->imsRegState:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getInflateSignalStrength()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->inflateSignalStrength:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getMobileDataEnabledChanged()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->mobileDataEnabledChanged:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getMobileServiceState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->mobileServiceState:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getNetworkName()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->networkName:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getNumberOfLevels()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->numberOfLevels:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getOnTheCall()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->onTheCall:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getOperatorAlphaShort()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->operatorAlphaShort:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getPrimaryLevel()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->primaryLevel:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getResolvedNetworkType()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->resolvedNetworkType:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getSatelliteLevel()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->satelliteLevel:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getSemOMCChangedEvent()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->semOMCChangedEvent:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getSemSatelliteEnabled()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->semSatelliteEnabled:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getSemSatelliteServiceState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->semSatelliteServiceState:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getSemSatelliteSignalStrength()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->semSatelliteSignalStrength:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getSim1On()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->sim1On:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getSimCardInfo()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->simCardInfo:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getSlotId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->slotId:I

    return p0
.end method

.method public final getSubId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->subId:I

    return p0
.end method

.method public final getSwRoaming()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->swRoaming:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getTableLogBuffer()Lcom/android/systemui/log/table/TableLogBuffer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    return-object p0
.end method

.method public final isAllowedDuringAirplaneMode()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->isAllowedDuringAirplaneMode:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final isEmergencyOnly()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->isEmergencyOnly:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final isGsm()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->isGsm:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final isInEcmMode(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->connectionRepository:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->isInEcmMode(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final isInService()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->isInService:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final isNonTerrestrial()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->isNonTerrestrial:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final isRoaming()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->isRoaming:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final isUsingNonTerrestrialNetwork()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/FakeMobileConnectionRepository;->isUsingNonTerrestrialNetwork:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method
