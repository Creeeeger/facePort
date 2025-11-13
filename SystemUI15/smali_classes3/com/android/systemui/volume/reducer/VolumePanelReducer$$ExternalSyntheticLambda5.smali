.class public final synthetic Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda5;->$r8$classId:I

    iput p1, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda5;->f$0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda5;->$r8$classId:I

    iget p0, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda5;->f$0:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getLevelMax()I

    move-result p1

    invoke-static {v1, p1, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->getImpliedLevel(III)I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getLevelMax()I

    move-result p1

    invoke-static {v1, p1, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->getImpliedLevel(III)I

    move-result p0

    if-ne v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    invoke-virtual {v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->priority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p1

    :cond_2
    return-object p1

    :pswitch_2
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    if-ne v0, p0, :cond_3

    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isActiveShow(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p1

    :cond_3
    return-object p1

    :pswitch_3
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isImportant(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isDynamic(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->originalPriority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
