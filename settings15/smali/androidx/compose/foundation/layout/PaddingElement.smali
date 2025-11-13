.class final Landroidx/compose/foundation/layout/PaddingElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/PaddingElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/foundation/layout/PaddingNode;",
        "foundation-layout_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public final bottom:F

.field public final end:F

.field public final start:F

.field public final top:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/PaddingElement;->start:F

    iput p2, p0, Landroidx/compose/foundation/layout/PaddingElement;->top:F

    iput p3, p0, Landroidx/compose/foundation/layout/PaddingElement;->end:F

    iput p4, p0, Landroidx/compose/foundation/layout/PaddingElement;->bottom:F

    const/4 p0, 0x0

    cmpl-float v0, p1, p0

    const/high16 v1, 0x7fc00000    # Float.NaN

    if-gez v0, :cond_0

    invoke-static {p1, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    cmpl-float p1, p2, p0

    if-gez p1, :cond_1

    invoke-static {p2, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    cmpl-float p1, p3, p0

    if-gez p1, :cond_2

    invoke-static {p3, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    cmpl-float p0, p4, p0

    if-gez p0, :cond_4

    invoke-static {p4, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Padding must be non-negative"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 2

    new-instance v0, Landroidx/compose/foundation/layout/PaddingNode;

    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iget v1, p0, Landroidx/compose/foundation/layout/PaddingElement;->start:F

    iput v1, v0, Landroidx/compose/foundation/layout/PaddingNode;->start:F

    iget v1, p0, Landroidx/compose/foundation/layout/PaddingElement;->top:F

    iput v1, v0, Landroidx/compose/foundation/layout/PaddingNode;->top:F

    iget v1, p0, Landroidx/compose/foundation/layout/PaddingElement;->end:F

    iput v1, v0, Landroidx/compose/foundation/layout/PaddingNode;->end:F

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingElement;->bottom:F

    iput p0, v0, Landroidx/compose/foundation/layout/PaddingNode;->bottom:F

    const/4 p0, 0x1

    iput-boolean p0, v0, Landroidx/compose/foundation/layout/PaddingNode;->rtlAware:Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroidx/compose/foundation/layout/PaddingElement;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/foundation/layout/PaddingElement;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget v1, p0, Landroidx/compose/foundation/layout/PaddingElement;->start:F

    iget v2, p1, Landroidx/compose/foundation/layout/PaddingElement;->start:F

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/compose/foundation/layout/PaddingElement;->top:F

    iget v2, p1, Landroidx/compose/foundation/layout/PaddingElement;->top:F

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/compose/foundation/layout/PaddingElement;->end:F

    iget v2, p1, Landroidx/compose/foundation/layout/PaddingElement;->end:F

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingElement;->bottom:F

    iget p1, p1, Landroidx/compose/foundation/layout/PaddingElement;->bottom:F

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Landroidx/compose/foundation/layout/PaddingElement;->start:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/foundation/layout/PaddingElement;->top:F

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(IIF)I

    move-result v0

    iget v2, p0, Landroidx/compose/foundation/layout/PaddingElement;->end:F

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(IIF)I

    move-result v0

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingElement;->bottom:F

    invoke-static {v0, v1, p0}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(IIF)I

    move-result p0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1

    check-cast p1, Landroidx/compose/foundation/layout/PaddingNode;

    iget v0, p0, Landroidx/compose/foundation/layout/PaddingElement;->start:F

    iput v0, p1, Landroidx/compose/foundation/layout/PaddingNode;->start:F

    iget v0, p0, Landroidx/compose/foundation/layout/PaddingElement;->top:F

    iput v0, p1, Landroidx/compose/foundation/layout/PaddingNode;->top:F

    iget v0, p0, Landroidx/compose/foundation/layout/PaddingElement;->end:F

    iput v0, p1, Landroidx/compose/foundation/layout/PaddingNode;->end:F

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingElement;->bottom:F

    iput p0, p1, Landroidx/compose/foundation/layout/PaddingNode;->bottom:F

    const/4 p0, 0x1

    iput-boolean p0, p1, Landroidx/compose/foundation/layout/PaddingNode;->rtlAware:Z

    return-void
.end method
