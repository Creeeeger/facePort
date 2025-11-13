.class public final Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;
.super Landroidx/compose/foundation/layout/CrossAxisAlignment;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final vertical:Landroidx/compose/ui/Alignment$Vertical;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Alignment$Vertical;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/layout/CrossAxisAlignment;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;->vertical:Landroidx/compose/ui/Alignment$Vertical;

    return-void
.end method


# virtual methods
.method public final align$foundation_layout_release(ILandroidx/compose/ui/unit/LayoutDirection;)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;->vertical:Landroidx/compose/ui/Alignment$Vertical;

    check-cast p0, Landroidx/compose/ui/BiasAlignment$Vertical;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Landroidx/compose/ui/BiasAlignment$Vertical;->align(II)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;

    iget-object p0, p0, Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;->vertical:Landroidx/compose/ui/Alignment$Vertical;

    iget-object p1, p1, Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;->vertical:Landroidx/compose/ui/Alignment$Vertical;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;->vertical:Landroidx/compose/ui/Alignment$Vertical;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VerticalCrossAxisAlignment(vertical="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;->vertical:Landroidx/compose/ui/Alignment$Vertical;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
