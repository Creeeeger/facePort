.class public final synthetic Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ZZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda28;->f$0:Z

    iput-boolean p2, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda28;->f$1:Z

    iput-object p3, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda28;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda28;->f$3:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda28;->f$4:Z

    iput-object p6, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda28;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda28;->f$6:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-boolean v0, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda28;->f$0:Z

    iget-boolean v1, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda28;->f$1:Z

    iget-object v2, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda28;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda28;->f$3:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda28;->f$4:Z

    iget-object v5, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda28;->f$5:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda28;->f$6:Ljava/lang/String;

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v6

    const/16 v7, 0x15

    if-ne v6, v7, :cond_2

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getDualBtDeviceName()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-static {v2, v3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->getAppDevicePairName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->remoteLabel(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    invoke-virtual {p0, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->remoteLabel(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v1

    const/16 v3, 0x16

    if-ne v1, v3, :cond_7

    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getDualBtDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->getAppDevicePairName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getDualBtDeviceName()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->remoteLabel(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p1

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_8

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    invoke-virtual {v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->remoteLabel(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p1

    :cond_8
    :goto_2
    return-object p1
.end method
