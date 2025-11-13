.class public final Lcom/android/wm/shell/util/StageUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertStagePositionToDockSide(I)I
    .locals 1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_3

    const/16 v0, 0x10

    if-eq p0, v0, :cond_2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x40

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x2

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static getMultiSplitLaunchPosition(IZ)I
    .locals 2

    const/16 v0, 0x30

    const/16 v1, 0x60

    if-eqz p0, :cond_3

    if-eqz p1, :cond_1

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/16 v1, 0x18

    :cond_0
    return v1

    :cond_1
    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x48

    :goto_0
    return v0

    :cond_3
    if-eqz p1, :cond_4

    move v0, v1

    :cond_4
    return v0
.end method
