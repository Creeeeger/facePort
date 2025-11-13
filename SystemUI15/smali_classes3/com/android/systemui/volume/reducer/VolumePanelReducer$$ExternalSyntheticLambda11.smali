.class public final synthetic Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda11;->f$0:I

    iput-object p1, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda11;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda11;->f$0:I

    iget-object p0, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda11;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v1, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isRemoteMic()Z

    move-result p0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isMuted()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isVibrate(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isSilent(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    if-nez p0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getLevel()I

    move-result p0

    add-int/lit8 v3, p0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getLevel()I

    move-result v3

    :cond_3
    :goto_0
    invoke-virtual {v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->realLevel(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method
