.class public Lcom/android/systemui/popup/data/MWOverheatWarningData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()I
    .locals 0

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f130cd4

    goto :goto_0

    :cond_0
    const p0, 0x7f130cd3

    :goto_0
    return p0
.end method

.method public getPButton()I
    .locals 0

    const p0, 0x7f131594

    return p0
.end method

.method public getTitle()I
    .locals 0

    const p0, 0x7f130cd5

    return p0
.end method
