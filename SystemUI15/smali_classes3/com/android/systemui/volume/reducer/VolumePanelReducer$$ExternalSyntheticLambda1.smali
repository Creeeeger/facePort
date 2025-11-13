.class public final synthetic Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    check-cast p0, Ljava/util/List;

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_1
    check-cast p0, Ljava/util/List;

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda29;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda29;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p0, 0x1

    :goto_3
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
