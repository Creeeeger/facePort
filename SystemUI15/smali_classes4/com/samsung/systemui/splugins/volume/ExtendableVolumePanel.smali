.class public interface abstract Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract getVolumePanelCurrentState()Lcom/samsung/systemui/splugins/volume/VolumePanelState;
.end method

.method public abstract recreateVolumePanelForNewConfig()V
.end method

.method public abstract restoreToDefaultStore()V
.end method

.method public abstract setActionObserver(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setStateObservable(Lcom/samsung/systemui/splugins/volume/VolumeObservable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/volume/VolumeObservable<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
            ">;)V"
        }
    .end annotation
.end method
