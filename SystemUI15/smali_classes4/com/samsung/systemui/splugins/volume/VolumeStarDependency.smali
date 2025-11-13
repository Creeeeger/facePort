.class public interface abstract Lcom/samsung/systemui/splugins/volume/VolumeStarDependency;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract getDefaultMiddlewares()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumeMiddleware<",
            "**>;>;"
        }
    .end annotation
.end method

.method public abstract getDefaultReducer()Lcom/samsung/systemui/splugins/volume/VolumePanelReducerBase;
.end method

.method public abstract getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;
.end method

.method public abstract getVolumePanel()Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;
.end method
