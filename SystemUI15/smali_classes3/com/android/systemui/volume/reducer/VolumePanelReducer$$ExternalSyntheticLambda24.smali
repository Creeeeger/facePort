.class public final synthetic Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda24;->f$0:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    iput-boolean p2, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda24;->f$1:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda24;->f$0:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    iget-boolean p0, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda24;->f$1:Z

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v1, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isDualAudio()Z

    move-result v3

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isMultiSoundBt()Z

    move-result v0

    invoke-static {p1, v2, p0, v3, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineVisibility(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;IZZZ)Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isVisible(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method
