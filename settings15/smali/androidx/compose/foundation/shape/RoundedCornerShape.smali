.class public final Landroidx/compose/foundation/shape/RoundedCornerShape;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

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

    iput-object p1, p0, Landroidx/compose/foundation/shape/RoundedCornerShape;->topStart:Landroidx/compose/foundation/shape/CornerSize;

    iput-object p2, p0, Landroidx/compose/foundation/shape/RoundedCornerShape;->topEnd:Landroidx/compose/foundation/shape/CornerSize;

    iput-object p3, p0, Landroidx/compose/foundation/shape/RoundedCornerShape;->bottomEnd:Landroidx/compose/foundation/shape/CornerSize;

    iput-object p4, p0, Landroidx/compose/foundation/shape/RoundedCornerShape;->bottomStart:Landroidx/compose/foundation/shape/CornerSize;

    return-void
.end method

.method public static copy$default(Landroidx/compose/foundation/shape/RoundedCornerShape;Landroidx/compose/foundation/shape/DpCornerSize;Landroidx/compose/foundation/shape/DpCornerSize;Landroidx/compose/foundation/shape/DpCornerSize;I)Landroidx/compose/foundation/shape/RoundedCornerShape;
    .locals 1

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/compose/foundation/shape/RoundedCornerShape;->topStart:Landroidx/compose/foundation/shape/CornerSize;

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/shape/RoundedCornerShape;->topEnd:Landroidx/compose/foundation/shape/CornerSize;

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    iget-object p2, p0, Landroidx/compose/foundation/shape/RoundedCornerShape;->bottomEnd:Landroidx/compose/foundation/shape/CornerSize;

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/compose/foundation/shape/RoundedCornerShape;-><init>(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V

    return-object p0
.end method


# virtual methods
.method public final createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;
    .locals 22

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v0, Landroidx/compose/foundation/shape/RoundedCornerShape;->topStart:Landroidx/compose/foundation/shape/CornerSize;

    invoke-interface {v5, v1, v2, v4}, Landroidx/compose/foundation/shape/CornerSize;->toPx-TmRCtEA(JLandroidx/compose/ui/unit/Density;)F

    move-result v5

    iget-object v6, v0, Landroidx/compose/foundation/shape/RoundedCornerShape;->topEnd:Landroidx/compose/foundation/shape/CornerSize;

    invoke-interface {v6, v1, v2, v4}, Landroidx/compose/foundation/shape/CornerSize;->toPx-TmRCtEA(JLandroidx/compose/ui/unit/Density;)F

    move-result v6

    iget-object v7, v0, Landroidx/compose/foundation/shape/RoundedCornerShape;->bottomEnd:Landroidx/compose/foundation/shape/CornerSize;

    invoke-interface {v7, v1, v2, v4}, Landroidx/compose/foundation/shape/CornerSize;->toPx-TmRCtEA(JLandroidx/compose/ui/unit/Density;)F

    move-result v7

    iget-object v0, v0, Landroidx/compose/foundation/shape/RoundedCornerShape;->bottomStart:Landroidx/compose/foundation/shape/CornerSize;

    invoke-interface {v0, v1, v2, v4}, Landroidx/compose/foundation/shape/CornerSize;->toPx-TmRCtEA(JLandroidx/compose/ui/unit/Density;)F

    move-result v0

    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->getMinDimension-impl(J)F

    move-result v4

    add-float v8, v5, v0

    cmpl-float v9, v8, v4

    if-lez v9, :cond_0

    div-float v8, v4, v8

    mul-float/2addr v5, v8

    mul-float/2addr v0, v8

    :cond_0
    add-float v8, v6, v7

    cmpl-float v9, v8, v4

    if-lez v9, :cond_1

    div-float/2addr v4, v8

    mul-float/2addr v6, v4

    mul-float/2addr v7, v4

    :cond_1
    const/4 v4, 0x0

    cmpl-float v8, v5, v4

    if-ltz v8, :cond_7

    cmpl-float v8, v6, v4

    if-ltz v8, :cond_7

    cmpl-float v8, v7, v4

    if-ltz v8, :cond_7

    cmpl-float v8, v0, v4

    if-ltz v8, :cond_7

    add-float v8, v5, v6

    add-float/2addr v8, v7

    add-float/2addr v8, v0

    cmpg-float v4, v8, v4

    const-wide/16 v8, 0x0

    if-nez v4, :cond_2

    new-instance v0, Landroidx/compose/ui/graphics/Outline$Rectangle;

    invoke-static {v8, v9, v1, v2}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/Outline$Rectangle;-><init>(Landroidx/compose/ui/geometry/Rect;)V

    goto :goto_3

    :cond_2
    new-instance v4, Landroidx/compose/ui/graphics/Outline$Rounded;

    invoke-static {v8, v9, v1, v2}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v3, v2, :cond_3

    move v8, v5

    goto :goto_0

    :cond_3
    move v8, v6

    :goto_0
    invoke-static {v8, v8}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius(FF)J

    move-result-wide v14

    if-ne v3, v2, :cond_4

    move v5, v6

    :cond_4
    invoke-static {v5, v5}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius(FF)J

    move-result-wide v16

    if-ne v3, v2, :cond_5

    move v5, v7

    goto :goto_1

    :cond_5
    move v5, v0

    :goto_1
    invoke-static {v5, v5}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius(FF)J

    move-result-wide v18

    if-ne v3, v2, :cond_6

    goto :goto_2

    :cond_6
    move v0, v7

    :goto_2
    invoke-static {v0, v0}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius(FF)J

    move-result-wide v20

    new-instance v0, Landroidx/compose/ui/geometry/RoundRect;

    iget v12, v1, Landroidx/compose/ui/geometry/Rect;->right:F

    iget v13, v1, Landroidx/compose/ui/geometry/Rect;->bottom:F

    iget v10, v1, Landroidx/compose/ui/geometry/Rect;->left:F

    iget v11, v1, Landroidx/compose/ui/geometry/Rect;->top:F

    move-object v9, v0

    invoke-direct/range {v9 .. v21}, Landroidx/compose/ui/geometry/RoundRect;-><init>(FFFFJJJJ)V

    invoke-direct {v4, v0}, Landroidx/compose/ui/graphics/Outline$Rounded;-><init>(Landroidx/compose/ui/geometry/RoundRect;)V

    move-object v0, v4

    :goto_3
    return-object v0

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Corner size in Px can\'t be negative(topStart = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", topEnd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", bottomEnd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", bottomStart = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ")!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/shape/RoundedCornerShape;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/foundation/shape/RoundedCornerShape;

    iget-object v1, p1, Landroidx/compose/foundation/shape/RoundedCornerShape;->topStart:Landroidx/compose/foundation/shape/CornerSize;

    iget-object v3, p0, Landroidx/compose/foundation/shape/RoundedCornerShape;->topStart:Landroidx/compose/foundation/shape/CornerSize;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p1, Landroidx/compose/foundation/shape/RoundedCornerShape;->topEnd:Landroidx/compose/foundation/shape/CornerSize;

    iget-object v3, p0, Landroidx/compose/foundation/shape/RoundedCornerShape;->topEnd:Landroidx/compose/foundation/shape/CornerSize;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p1, Landroidx/compose/foundation/shape/RoundedCornerShape;->bottomEnd:Landroidx/compose/foundation/shape/CornerSize;

    iget-object v3, p0, Landroidx/compose/foundation/shape/RoundedCornerShape;->bottomEnd:Landroidx/compose/foundation/shape/CornerSize;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p1, p1, Landroidx/compose/foundation/shape/RoundedCornerShape;->bottomStart:Landroidx/compose/foundation/shape/CornerSize;

    iget-object p0, p0, Landroidx/compose/foundation/shape/RoundedCornerShape;->bottomStart:Landroidx/compose/foundation/shape/CornerSize;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/shape/RoundedCornerShape;->topStart:Landroidx/compose/foundation/shape/CornerSize;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/foundation/shape/RoundedCornerShape;->topEnd:Landroidx/compose/foundation/shape/CornerSize;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/compose/foundation/shape/RoundedCornerShape;->bottomEnd:Landroidx/compose/foundation/shape/CornerSize;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/compose/foundation/shape/RoundedCornerShape;->bottomStart:Landroidx/compose/foundation/shape/CornerSize;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RoundedCornerShape(topStart = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/foundation/shape/RoundedCornerShape;->topStart:Landroidx/compose/foundation/shape/CornerSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", topEnd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/foundation/shape/RoundedCornerShape;->topEnd:Landroidx/compose/foundation/shape/CornerSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bottomEnd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/foundation/shape/RoundedCornerShape;->bottomEnd:Landroidx/compose/foundation/shape/CornerSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bottomStart = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/foundation/shape/RoundedCornerShape;->bottomStart:Landroidx/compose/foundation/shape/CornerSize;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
