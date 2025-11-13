.class final Landroidx/compose/foundation/layout/PaddingElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation


# instance fields
.field public final bottom:F

.field public final end:F

.field public final rtlAware:Z

.field public final start:F

.field public final top:F


# direct methods
.method private constructor <init>(FFFFZLkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFZ",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/PaddingElement;->start:F

    iput p2, p0, Landroidx/compose/foundation/layout/PaddingElement;->top:F

    iput p3, p0, Landroidx/compose/foundation/layout/PaddingElement;->end:F

    iput p4, p0, Landroidx/compose/foundation/layout/PaddingElement;->bottom:F

    iput-boolean p5, p0, Landroidx/compose/foundation/layout/PaddingElement;->rtlAware:Z

    const/4 p0, 0x0

    cmpl-float p5, p1, p0

    if-gez p5, :cond_0

    sget-object p5, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p5, Landroidx/compose/ui/unit/Dp;->Unspecified:F

    invoke-static {p1, p5}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    cmpl-float p1, p2, p0

    if-gez p1, :cond_1

    sget-object p1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Landroidx/compose/ui/unit/Dp;->Unspecified:F

    invoke-static {p2, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    cmpl-float p1, p3, p0

    if-gez p1, :cond_2

    sget-object p1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Landroidx/compose/ui/unit/Dp;->Unspecified:F

    invoke-static {p3, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    cmpl-float p0, p4, p0

    if-gez p0, :cond_4

    sget-object p0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Landroidx/compose/ui/unit/Dp;->Unspecified:F

    invoke-static {p4, p0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

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

.method public constructor <init>(FFFFZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    and-int/lit8 v0, p7, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    int-to-float v0, v1

    sget-object v2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, p1

    :goto_0
    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_1

    int-to-float v0, v1

    sget-object v2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    move v5, v0

    goto :goto_1

    :cond_1
    move v5, p2

    :goto_1
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_2

    int-to-float v0, v1

    sget-object v2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    move v6, v0

    goto :goto_2

    :cond_2
    move v6, p3

    :goto_2
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_3

    int-to-float v0, v1

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    move v7, v0

    goto :goto_3

    :cond_3
    move v7, p4

    :goto_3
    const/4 v10, 0x0

    move-object v3, p0

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v10}, Landroidx/compose/foundation/layout/PaddingElement;-><init>(FFFFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(FFFFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroidx/compose/foundation/layout/PaddingElement;-><init>(FFFFZLkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 8

    new-instance v7, Landroidx/compose/foundation/layout/PaddingNode;

    iget v3, p0, Landroidx/compose/foundation/layout/PaddingElement;->end:F

    iget v4, p0, Landroidx/compose/foundation/layout/PaddingElement;->bottom:F

    iget v1, p0, Landroidx/compose/foundation/layout/PaddingElement;->start:F

    iget v2, p0, Landroidx/compose/foundation/layout/PaddingElement;->top:F

    iget-boolean v5, p0, Landroidx/compose/foundation/layout/PaddingElement;->rtlAware:Z

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/layout/PaddingNode;-><init>(FFFFZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
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

    iget v1, p0, Landroidx/compose/foundation/layout/PaddingElement;->bottom:F

    iget v2, p1, Landroidx/compose/foundation/layout/PaddingElement;->bottom:F

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/PaddingElement;->rtlAware:Z

    iget-boolean p1, p1, Landroidx/compose/foundation/layout/PaddingElement;->rtlAware:Z

    if-ne p0, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 3

    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    iget v0, p0, Landroidx/compose/foundation/layout/PaddingElement;->start:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/foundation/layout/PaddingElement;->top:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Landroidx/compose/foundation/layout/PaddingElement;->end:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Landroidx/compose/foundation/layout/PaddingElement;->bottom:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/PaddingElement;->rtlAware:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
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

    iget v0, p0, Landroidx/compose/foundation/layout/PaddingElement;->bottom:F

    iput v0, p1, Landroidx/compose/foundation/layout/PaddingNode;->bottom:F

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/PaddingElement;->rtlAware:Z

    iput-boolean p0, p1, Landroidx/compose/foundation/layout/PaddingNode;->rtlAware:Z

    return-void
.end method
