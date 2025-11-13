.class public final Landroidx/compose/foundation/pager/MeasuredPage;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final crossAxisSize:I

.field public final horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

.field public final index:I

.field public final isVertical:Z

.field public final key:Ljava/lang/Object;

.field public final layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field public mainAxisLayoutSize:I

.field public offset:I

.field public final placeableOffsets:[I

.field public final placeables:Ljava/util/List;

.field public final reverseLayout:Z

.field public final size:I

.field public final verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

.field public final visualOffset:J


# direct methods
.method public constructor <init>(IILjava/util/List;JLjava/lang/Object;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    iput p2, p0, Landroidx/compose/foundation/pager/MeasuredPage;->size:I

    iput-object p3, p0, Landroidx/compose/foundation/pager/MeasuredPage;->placeables:Ljava/util/List;

    iput-wide p4, p0, Landroidx/compose/foundation/pager/MeasuredPage;->visualOffset:J

    iput-object p6, p0, Landroidx/compose/foundation/pager/MeasuredPage;->key:Ljava/lang/Object;

    iput-object p8, p0, Landroidx/compose/foundation/pager/MeasuredPage;->horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    iput-object p9, p0, Landroidx/compose/foundation/pager/MeasuredPage;->verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    iput-object p10, p0, Landroidx/compose/foundation/pager/MeasuredPage;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iput-boolean p11, p0, Landroidx/compose/foundation/pager/MeasuredPage;->reverseLayout:Z

    sget-object p1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const/4 p2, 0x0

    if-ne p7, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput-boolean p1, p0, Landroidx/compose/foundation/pager/MeasuredPage;->isVertical:Z

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    move p4, p2

    :goto_1
    if-ge p2, p1, :cond_2

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/compose/ui/layout/Placeable;

    iget-boolean p6, p0, Landroidx/compose/foundation/pager/MeasuredPage;->isVertical:Z

    if-nez p6, :cond_1

    iget p5, p5, Landroidx/compose/ui/layout/Placeable;->height:I

    goto :goto_2

    :cond_1
    iget p5, p5, Landroidx/compose/ui/layout/Placeable;->width:I

    :goto_2
    invoke-static {p4, p5}, Ljava/lang/Math;->max(II)I

    move-result p4

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    iput p4, p0, Landroidx/compose/foundation/pager/MeasuredPage;->crossAxisSize:I

    iget-object p1, p0, Landroidx/compose/foundation/pager/MeasuredPage;->placeables:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/compose/foundation/pager/MeasuredPage;->placeableOffsets:[I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/compose/foundation/pager/MeasuredPage;->mainAxisLayoutSize:I

    return-void
.end method


# virtual methods
.method public final applyScrollDelta(I)V
    .locals 6

    iget v0, p0, Landroidx/compose/foundation/pager/MeasuredPage;->offset:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/compose/foundation/pager/MeasuredPage;->offset:I

    iget-object v0, p0, Landroidx/compose/foundation/pager/MeasuredPage;->placeableOffsets:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-boolean v3, p0, Landroidx/compose/foundation/pager/MeasuredPage;->isVertical:Z

    if-eqz v3, :cond_0

    rem-int/lit8 v4, v2, 0x2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    :cond_0
    if-nez v3, :cond_2

    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_2

    :cond_1
    aget v3, v0, v2

    add-int/2addr v3, p1

    aput v3, v0, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final position(III)V
    .locals 10

    iput p1, p0, Landroidx/compose/foundation/pager/MeasuredPage;->offset:I

    iget-boolean v0, p0, Landroidx/compose/foundation/pager/MeasuredPage;->isVertical:Z

    if-eqz v0, :cond_0

    move v1, p3

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    iput v1, p0, Landroidx/compose/foundation/pager/MeasuredPage;->mainAxisLayoutSize:I

    iget-object v1, p0, Landroidx/compose/foundation/pager/MeasuredPage;->placeables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    mul-int/lit8 v5, v3, 0x2

    iget-object v6, p0, Landroidx/compose/foundation/pager/MeasuredPage;->placeableOffsets:[I

    if-eqz v0, :cond_2

    iget-object v7, p0, Landroidx/compose/foundation/pager/MeasuredPage;->horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    if-eqz v7, :cond_1

    iget v8, v4, Landroidx/compose/ui/layout/Placeable;->width:I

    iget-object v9, p0, Landroidx/compose/foundation/pager/MeasuredPage;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-interface {v7, v8, p2, v9}, Landroidx/compose/ui/Alignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v7

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    aput p1, v6, v5

    iget v4, v4, Landroidx/compose/ui/layout/Placeable;->height:I

    :goto_2
    add-int/2addr p1, v4

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null horizontalAlignment"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    aput p1, v6, v5

    add-int/lit8 v5, v5, 0x1

    iget-object v7, p0, Landroidx/compose/foundation/pager/MeasuredPage;->verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    if-eqz v7, :cond_3

    iget v8, v4, Landroidx/compose/ui/layout/Placeable;->height:I

    check-cast v7, Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-virtual {v7, v8, p3}, Landroidx/compose/ui/BiasAlignment$Vertical;->align(II)I

    move-result v7

    aput v7, v6, v5

    iget v4, v4, Landroidx/compose/ui/layout/Placeable;->width:I

    goto :goto_2

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null verticalAlignment"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method
