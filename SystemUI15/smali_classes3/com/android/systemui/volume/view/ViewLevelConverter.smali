.class public final Lcom/android/systemui/volume/view/ViewLevelConverter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/view/ViewLevelConverter;

    invoke-direct {v0}, Lcom/android/systemui/volume/view/ViewLevelConverter;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final viewMaxLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isSmartView(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getLevelMax()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getLevelMax()I

    move-result p0

    mul-int/lit8 p0, p0, 0x64

    :goto_0
    return p0
.end method

.method public static final viewMinLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isSmartView(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getLevelMin()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getLevelMin()I

    move-result p0

    mul-int/lit8 p0, p0, 0x64

    :goto_0
    return p0
.end method

.method public static final viewRealLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isMediaStream(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isSmartView(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    move-result p0

    mul-int/lit8 p0, p0, 0x64

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    move-result p0

    :goto_1
    return p0
.end method
