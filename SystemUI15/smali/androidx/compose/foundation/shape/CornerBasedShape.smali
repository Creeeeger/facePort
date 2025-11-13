.class public abstract Landroidx/compose/foundation/shape/CornerBasedShape;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/graphics/Shape;


# instance fields
.field public final bottomEnd:Landroidx/compose/foundation/shape/CornerSize;

.field public final bottomStart:Landroidx/compose/foundation/shape/CornerSize;

.field public final topEnd:Landroidx/compose/foundation/shape/CornerSize;

.field public final topStart:Landroidx/compose/foundation/shape/CornerSize;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/shape/CornerBasedShape;->topStart:Landroidx/compose/foundation/shape/CornerSize;

    iput-object p2, p0, Landroidx/compose/foundation/shape/CornerBasedShape;->topEnd:Landroidx/compose/foundation/shape/CornerSize;

    iput-object p3, p0, Landroidx/compose/foundation/shape/CornerBasedShape;->bottomEnd:Landroidx/compose/foundation/shape/CornerSize;

    iput-object p4, p0, Landroidx/compose/foundation/shape/CornerBasedShape;->bottomStart:Landroidx/compose/foundation/shape/CornerSize;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/DpCornerSize;Landroidx/compose/foundation/shape/DpCornerSize;Landroidx/compose/foundation/shape/DpCornerSize;I)Landroidx/compose/foundation/shape/CornerBasedShape;
    .locals 1

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/compose/foundation/shape/CornerBasedShape;->topStart:Landroidx/compose/foundation/shape/CornerSize;

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/shape/CornerBasedShape;->topEnd:Landroidx/compose/foundation/shape/CornerSize;

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    iget-object p2, p0, Landroidx/compose/foundation/shape/CornerBasedShape;->bottomEnd:Landroidx/compose/foundation/shape/CornerSize;

    :cond_1
    invoke-virtual {p0, p1, v0, p2, p3}, Landroidx/compose/foundation/shape/CornerBasedShape;->copy(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract copy(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)Landroidx/compose/foundation/shape/RoundedCornerShape;
.end method

.method public abstract createOutline-LjSzlW0(JFFFFLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/graphics/Outline;
.end method

.method public final createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;
    .locals 10

    iget-object v4, p0, Landroidx/compose/foundation/shape/CornerBasedShape;->topStart:Landroidx/compose/foundation/shape/CornerSize;

    invoke-interface {v4, p4, p1, p2}, Landroidx/compose/foundation/shape/CornerSize;->toPx-TmRCtEA(Landroidx/compose/ui/unit/Density;J)F

    move-result v4

    iget-object v5, p0, Landroidx/compose/foundation/shape/CornerBasedShape;->topEnd:Landroidx/compose/foundation/shape/CornerSize;

    invoke-interface {v5, p4, p1, p2}, Landroidx/compose/foundation/shape/CornerSize;->toPx-TmRCtEA(Landroidx/compose/ui/unit/Density;J)F

    move-result v5

    iget-object v6, p0, Landroidx/compose/foundation/shape/CornerBasedShape;->bottomEnd:Landroidx/compose/foundation/shape/CornerSize;

    invoke-interface {v6, p4, p1, p2}, Landroidx/compose/foundation/shape/CornerSize;->toPx-TmRCtEA(Landroidx/compose/ui/unit/Density;J)F

    move-result v6

    iget-object v7, p0, Landroidx/compose/foundation/shape/CornerBasedShape;->bottomStart:Landroidx/compose/foundation/shape/CornerSize;

    invoke-interface {v7, p4, p1, p2}, Landroidx/compose/foundation/shape/CornerSize;->toPx-TmRCtEA(Landroidx/compose/ui/unit/Density;J)F

    move-result v3

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->getMinDimension-impl(J)F

    move-result v7

    add-float v8, v4, v3

    cmpl-float v9, v8, v7

    if-lez v9, :cond_0

    div-float v8, v7, v8

    mul-float/2addr v4, v8

    mul-float/2addr v3, v8

    :cond_0
    move v8, v3

    move v3, v4

    add-float v4, v5, v6

    cmpl-float v9, v4, v7

    if-lez v9, :cond_1

    div-float/2addr v7, v4

    mul-float/2addr v5, v7

    mul-float/2addr v6, v7

    :cond_1
    move v4, v5

    move v5, v6

    const/4 v6, 0x0

    cmpl-float v7, v3, v6

    if-ltz v7, :cond_2

    cmpl-float v7, v4, v6

    if-ltz v7, :cond_2

    cmpl-float v7, v5, v6

    if-ltz v7, :cond_2

    cmpl-float v6, v8, v6

    if-ltz v6, :cond_2

    move-object v0, p0

    move-wide v1, p1

    move v6, v8

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Landroidx/compose/foundation/shape/CornerBasedShape;->createOutline-LjSzlW0(JFFFFLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/graphics/Outline;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "Corner size in Px can\'t be negative(topStart = "

    const-string v1, ", topEnd = "

    const-string v2, ", bottomEnd = "

    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/animation/core/CubicBezierEasing$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bottomStart = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
