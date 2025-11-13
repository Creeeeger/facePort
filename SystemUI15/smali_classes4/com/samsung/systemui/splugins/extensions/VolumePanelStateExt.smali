.class public final Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    invoke-direct {v0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;-><init>()V

    sput-object v0, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAodVolumePanel()Z

    move-result p0

    return p0
.end method

.method public static synthetic isAODVolumePanel$annotations(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 0

    return-void
.end method

.method public static final isActiveStream(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isDualViewEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isDualAudio()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isMultiSoundBt()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    invoke-static {p0, v0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isActiveStream(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Z

    move-result p0

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isActiveStream(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x16

    invoke-static {p0, v0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isActiveStream(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move p0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move p0, v2

    :goto_1
    if-eqz p0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public static synthetic isDualViewEnabled$annotations(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    return-object p1
.end method

.method public final isRowVisible(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isVisible()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
