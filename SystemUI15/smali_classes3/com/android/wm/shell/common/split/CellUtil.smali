.class public final Lcom/android/wm/shell/common/split/CellUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCellSide(IZ)I
    .locals 0

    if-eqz p1, :cond_1

    and-int/lit8 p1, p0, 0x10

    if-eqz p1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_1
    and-int/lit8 p1, p0, 0x8

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public static isCellInLeftOrTopBounds(IZ)Z
    .locals 1

    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
