.class public abstract Lcom/samsung/sesl/compose/foundation/RecoilKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static seslRecoil-42QJj7c$default(Landroidx/compose/ui/Modifier;Lcom/samsung/sesl/compose/foundation/RecoilType;Landroidx/compose/foundation/shape/RoundedCornerShape;)Landroidx/compose/ui/Modifier;
    .locals 8

    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v4, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    invoke-virtual {p1}, Lcom/samsung/sesl/compose/foundation/RecoilType;->getScaleRatio$core_release()F

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/sesl/compose/foundation/RecoilType;->getShowFeedbackFront$core_release()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, p2

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/sesl/compose/foundation/RecoilType;->getShowFeedbackFront$core_release()Z

    move-result p1

    if-eqz p1, :cond_1

    move-object v7, p2

    goto :goto_1

    :cond_1
    move-object v7, v1

    :goto_1
    sget-object p1, Landroidx/compose/ui/platform/InspectableValueKt;->NoInspectorInfo:Lkotlin/jvm/functions/Function1;

    new-instance p2, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2;

    const/4 v2, 0x1

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2;-><init>(ZFJLandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;)V

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
