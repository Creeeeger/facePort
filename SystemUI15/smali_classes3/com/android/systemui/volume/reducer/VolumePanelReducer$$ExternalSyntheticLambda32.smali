.class public final synthetic Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/samsung/systemui/splugins/volume/VolumePanelState;


# direct methods
.method public synthetic constructor <init>(ZZLcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda32;->f$0:Z

    iput-boolean p2, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda32;->f$1:Z

    iput-object p3, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda32;->f$2:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda32;->f$0:Z

    iget-boolean v1, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda32;->f$1:Z

    iget-object p0, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda32;->f$2:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    if-nez v0, :cond_4

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v2

    const/16 v3, 0x15

    if-ne v2, v3, :cond_1

    if-nez v1, :cond_4

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v2

    const/16 v3, 0x17

    if-eq v2, v3, :cond_4

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isMultiSoundBt()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->earProtectionLevel(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    goto :goto_1

    :cond_4
    :goto_0
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getEarProtectLevel()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->earProtectionLevel(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    :goto_1
    return-object p0
.end method
