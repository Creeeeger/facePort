.class public final Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;
.super Landroidx/window/embedding/DividerAttributes$DragRange;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/DividerAttributes$DragRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SplitRatioDragRange"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0096\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;",
        "Landroidx/window/embedding/DividerAttributes$DragRange;",
        "minRatio",
        "",
        "maxRatio",
        "(FF)V",
        "getMaxRatio",
        "()F",
        "getMinRatio",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final maxRatio:F

.field private final minRatio:F


# direct methods
.method public constructor <init>(FF)V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/window/embedding/DividerAttributes$DragRange;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->minRatio:F

    iput p2, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->maxRatio:F

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpg-double p0, v0, v2

    if-lez p0, :cond_2

    float-to-double v0, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double p0, v0, v4

    if-gez p0, :cond_2

    float-to-double v0, p2

    cmpg-double p0, v0, v2

    if-lez p0, :cond_1

    float-to-double v0, p2

    cmpl-double p0, v0, v4

    if-gez p0, :cond_1

    cmpl-float p0, p1, p2

    if-gtz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minRatio must be less than or equal to maxRatio"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxRatio must be in the interval (0.0, 1.0)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minRatio must be in the interval (0.0, 1.0)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget v1, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->minRatio:F

    check-cast p1, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;

    iget v3, p1, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->minRatio:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_2

    iget p0, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->maxRatio:F

    iget p1, p1, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->maxRatio:F

    cmpg-float p0, p0, p1

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getMaxRatio()F
    .locals 0

    iget p0, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->maxRatio:F

    return p0
.end method

.method public final getMinRatio()F
    .locals 0

    iget p0, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->minRatio:F

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->minRatio:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->maxRatio:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SplitRatioDragRange["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->minRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->maxRatio:F

    const/16 v1, 0x5d

    invoke-static {v0, p0, v1}, Landroidx/compose/animation/AndroidFlingSpline$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
