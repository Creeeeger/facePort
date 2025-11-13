.class public interface abstract Landroid/media/tv/tuner/frontend/ScanCallback;
.super Ljava/lang/Object;
.source "ScanCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# virtual methods
.method public abstract whitelist onAnalogSifStandardReported(I)V
.end method

.method public abstract whitelist onAtsc3PlpInfosReported([Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V
.end method

.method public whitelist onDvbcAnnexReported(I)V
    .locals 0

    return-void
.end method

.method public abstract whitelist onDvbsStandardReported(I)V
.end method

.method public whitelist onDvbtCellIdsReported([I)V
    .locals 0

    return-void
.end method

.method public abstract whitelist onDvbtStandardReported(I)V
.end method

.method public whitelist onFrequenciesLongReported([J)V
    .locals 4

    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-wide v2, p1, v1

    long-to-int v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Landroid/media/tv/tuner/frontend/ScanCallback;->onFrequenciesReported([I)V

    return-void
.end method

.method public abstract whitelist onFrequenciesReported([I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist onGroupIdsReported([I)V
.end method

.method public abstract whitelist onHierarchyReported(I)V
.end method

.method public abstract whitelist onInputStreamIdsReported([I)V
.end method

.method public abstract whitelist onLocked()V
.end method

.method public whitelist onModulationReported(I)V
    .locals 0

    return-void
.end method

.method public abstract whitelist onPlpIdsReported([I)V
.end method

.method public whitelist onPriorityReported(Z)V
    .locals 0

    return-void
.end method

.method public abstract whitelist onProgress(I)V
.end method

.method public abstract whitelist onScanStopped()V
.end method

.method public abstract whitelist onSignalTypeReported(I)V
.end method

.method public abstract whitelist onSymbolRatesReported([I)V
.end method

.method public whitelist onUnlocked()V
    .locals 0

    return-void
.end method
