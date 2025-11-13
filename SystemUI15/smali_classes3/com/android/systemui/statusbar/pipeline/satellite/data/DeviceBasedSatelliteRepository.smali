.class public interface abstract Lcom/android/systemui/statusbar/pipeline/satellite/data/DeviceBasedSatelliteRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract getConnectionState()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getSignalStrength()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract isOpportunisticSatelliteIconEnabled()Z
.end method

.method public abstract isSatelliteAllowedForCurrentLocation()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract isSatelliteProvisioned()Lkotlinx/coroutines/flow/StateFlow;
.end method
