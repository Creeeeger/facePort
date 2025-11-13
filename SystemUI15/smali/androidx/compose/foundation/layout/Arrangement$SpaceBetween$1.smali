.class public final Landroidx/compose/foundation/layout/Arrangement$SpaceBetween$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/foundation/layout/Arrangement$Horizontal;
.implements Landroidx/compose/foundation/layout/Arrangement$Vertical;


# instance fields
.field public final spacing:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    int-to-float v0, v0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    iput v0, p0, Landroidx/compose/foundation/layout/Arrangement$SpaceBetween$1;->spacing:F

    return-void
.end method


# virtual methods
.method public final arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V
    .locals 0

    sget-object p0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p4, p0, :cond_0

    sget-object p0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p2, p3, p5, p0}, Landroidx/compose/foundation/layout/Arrangement;->placeSpaceBetween$foundation_layout_release(I[I[IZ)V

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    invoke-static {p2, p3, p5, p0}, Landroidx/compose/foundation/layout/Arrangement;->placeSpaceBetween$foundation_layout_release(I[I[IZ)V

    :goto_0
    return-void
.end method

.method public final arrange(Landroidx/compose/ui/unit/Density;I[I[I)V
    .locals 0

    sget-object p0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p2, p3, p4, p0}, Landroidx/compose/foundation/layout/Arrangement;->placeSpaceBetween$foundation_layout_release(I[I[IZ)V

    return-void
.end method

.method public final getSpacing-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/Arrangement$SpaceBetween$1;->spacing:F

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Arrangement#SpaceBetween"

    return-object p0
.end method
