.class public abstract Landroidx/compose/material/icons/outlined/WarningAmberKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static _warningAmber:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method public static final getWarningAmber()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 12

    sget-object v0, Landroidx/compose/material/icons/outlined/WarningAmberKt;->_warningAmber:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v2, "Outlined.WarningAmber"

    const/high16 v3, 0x41c00000    # 24.0f

    const/high16 v4, 0x41c00000    # 24.0f

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v6, 0x41c00000    # 24.0f

    const-wide/16 v7, 0x0

    const/16 v11, 0x60

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    sget-object v1, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    new-instance v1, Landroidx/compose/ui/graphics/SolidColor;

    sget-wide v2, Landroidx/compose/ui/graphics/Color;->Black:J

    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    new-instance v2, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v3, 0x41400000    # 12.0f

    const v4, 0x40bfae14    # 5.99f

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v5, 0x419c3d71    # 19.53f

    const/high16 v6, 0x41980000    # 19.0f

    invoke-virtual {v2, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v5, 0x408f0a3d    # 4.47f

    invoke-virtual {v2, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x41a80000    # 21.0f

    invoke-virtual {v2, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const/high16 v5, 0x41b00000    # 22.0f

    invoke-virtual {v2, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const/high16 v3, 0x41500000    # 13.0f

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v5, -0x40000000    # -2.0f

    invoke-virtual {v2, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v2, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v2, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v2, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {v2, v3, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v2, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v2, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const/high16 v3, -0x3f800000    # -4.0f

    invoke-virtual {v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v2, v2, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    invoke-static {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;Landroidx/compose/ui/graphics/SolidColor;)V

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/icons/outlined/WarningAmberKt;->_warningAmber:Landroidx/compose/ui/graphics/vector/ImageVector;

    return-object v0
.end method
