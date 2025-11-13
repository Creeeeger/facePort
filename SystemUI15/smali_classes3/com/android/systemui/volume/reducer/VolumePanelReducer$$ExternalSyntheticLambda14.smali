.class public final synthetic Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda14;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda14;->f$1:Ljava/util/List;

    iput-boolean p3, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda14;->f$2:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda14;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda14;->f$1:Ljava/util/List;

    iget-boolean p0, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda14;->f$2:Z

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda29;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda29;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda29;

    const/4 v3, 0x2

    invoke-direct {v2, p1, v3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda29;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isImportant()Z

    move-result p0

    const/4 v3, 0x1

    if-nez p0, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move p0, v3

    :goto_1
    xor-int/lit8 v0, v1, 0x1

    and-int/2addr p0, v0

    :goto_2
    invoke-virtual {v2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isImportant(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isDynamic()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isDynamic(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method
