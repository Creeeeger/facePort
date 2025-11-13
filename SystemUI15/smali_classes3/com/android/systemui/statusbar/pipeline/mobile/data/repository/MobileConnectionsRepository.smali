.class public interface abstract Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract bootstrapProfile(I)Z
.end method

.method public abstract getActiveMobileDataRepository()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getActiveMobileDataSubscriptionId()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getActiveSubChangedInGroupEvent()Lkotlinx/coroutines/flow/Flow;
.end method

.method public abstract getDefaultConnectionIsValidated()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getDefaultDataSubId()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getDefaultDataSubRatConfig()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getDefaultMobileIconGroup()Lkotlinx/coroutines/flow/Flow;
.end method

.method public abstract getDefaultMobileIconMapping()Lkotlinx/coroutines/flow/Flow;
.end method

.method public abstract getDefaultMobileIconMappingTable()Lkotlinx/coroutines/flow/Flow;
.end method

.method public abstract getDeviceOnTheCall()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getDeviceServiceState()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getHasCarrierMergedConnection()Lkotlinx/coroutines/flow/Flow;
.end method

.method public abstract getIsAnySimSecure()Z
.end method

.method public abstract getMobileIsDefault()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getNoServiceInfo()Lcom/android/systemui/statusbar/phone/CoverScreenNetworkSignalModel;
.end method

.method public abstract getRepoForSubId(I)Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;
.end method

.method public abstract getSubscriptions()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract isAnySimSecure()Lkotlinx/coroutines/flow/Flow;
.end method

.method public abstract isInEcmMode(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method
