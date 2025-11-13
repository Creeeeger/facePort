.class final Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$animatedRadialGradientBackground$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $centerFraction$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $fromColor:J

.field final synthetic $offsetPx:F

.field final synthetic $toColor:J


# direct methods
.method public constructor <init>(FJJLandroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FJJ",
            "Landroidx/compose/runtime/State;",
            ")V"
        }
    .end annotation

    iput p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$animatedRadialGradientBackground$1$1;->$offsetPx:F

    iput-wide p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$animatedRadialGradientBackground$1$1;->$fromColor:J

    iput-wide p4, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$animatedRadialGradientBackground$1$1;->$toColor:J

    iput-object p6, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$animatedRadialGradientBackground$1$1;->$centerFraction$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$animatedRadialGradientBackground$1$1;->$offsetPx:F

    add-float v6, v0, v2

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v0

    iget v2, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$animatedRadialGradientBackground$1$1;->$offsetPx:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    neg-float v0, v2

    iget-object v2, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$animatedRadialGradientBackground$1$1;->$centerFraction$delegate:Landroidx/compose/runtime/State;

    sget-object v3, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt;->sceneTransitions:Lcom/android/compose/animation/scene/SceneTransitions;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$animatedRadialGradientBackground$1$1;->$offsetPx:F

    sub-float/2addr v2, v3

    invoke-static {v0, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v7

    iget v0, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$animatedRadialGradientBackground$1$1;->$offsetPx:F

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v2

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$animatedRadialGradientBackground$1$1;->$centerFraction$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    mul-float/2addr v3, v1

    iget v0, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$animatedRadialGradientBackground$1$1;->$offsetPx:F

    sub-float/2addr v3, v0

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v3

    sget-object v9, Landroidx/compose/ui/graphics/Brush;->Companion:Landroidx/compose/ui/graphics/Brush$Companion;

    iget-wide v0, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$animatedRadialGradientBackground$1$1;->$fromColor:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$animatedRadialGradientBackground$1$1;->$toColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v1

    filled-new-array {v0, v1}, [Landroidx/compose/ui/graphics/Color;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v9, v0, v3, v4, v6}, Landroidx/compose/ui/graphics/Brush$Companion;->radialGradient-P_Vx-Ks$default(Landroidx/compose/ui/graphics/Brush$Companion;Ljava/util/List;JF)Landroidx/compose/ui/graphics/RadialGradient;

    move-result-object v1

    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v10, Landroidx/compose/ui/graphics/BlendMode;->SrcAtop:I

    move-object v0, p1

    move v2, v6

    move v5, v10

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-V9BoPsw$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/RadialGradient;FJI)V

    iget-wide v0, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$animatedRadialGradientBackground$1$1;->$fromColor:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$animatedRadialGradientBackground$1$1;->$toColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object p0

    filled-new-array {v0, p0}, [Landroidx/compose/ui/graphics/Color;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {v9, p0, v7, v8, v6}, Landroidx/compose/ui/graphics/Brush$Companion;->radialGradient-P_Vx-Ks$default(Landroidx/compose/ui/graphics/Brush$Companion;Ljava/util/List;JF)Landroidx/compose/ui/graphics/RadialGradient;

    move-result-object v1

    move-object v0, p1

    move v2, v6

    move-wide v3, v7

    move v5, v10

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-V9BoPsw$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/RadialGradient;FJI)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
