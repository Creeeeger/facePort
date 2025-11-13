.class public abstract Landroidx/compose/foundation/selection/SelectableKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static selectable-O2vRcR0$default(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;
    .locals 9

    instance-of v0, p3, Landroidx/compose/foundation/IndicationNodeFactory;

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    move-object v4, p3

    check-cast v4, Landroidx/compose/foundation/IndicationNodeFactory;

    new-instance p3, Landroidx/compose/foundation/selection/SelectableElement;

    const/4 v8, 0x0

    move-object v1, p3

    move v2, p1

    move-object v3, p2

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/selection/SelectableElement;-><init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    new-instance p3, Landroidx/compose/foundation/selection/SelectableElement;

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v1, p3

    move v2, p1

    move-object v3, p2

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/selection/SelectableElement;-><init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v0, p2, p3}, Landroidx/compose/foundation/IndicationKt;->indication(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/Indication;)Landroidx/compose/ui/Modifier;

    move-result-object p3

    new-instance v0, Landroidx/compose/foundation/selection/SelectableElement;

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/selection/SelectableElement;-><init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p3, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p3

    goto :goto_0

    :cond_2
    sget-object p2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    new-instance v0, Landroidx/compose/foundation/selection/SelectableKt$selectable-O2vRcR0$$inlined$clickableWithIndicationIfNeeded$1;

    move-object v1, v0

    move-object v2, p3

    move v3, p1

    move v4, p4

    move-object v5, v6

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/selection/SelectableKt$selectable-O2vRcR0$$inlined$clickableWithIndicationIfNeeded$1;-><init>(Landroidx/compose/foundation/Indication;ZZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)V

    sget-object p1, Landroidx/compose/ui/platform/InspectableValueKt;->NoInspectorInfo:Lkotlin/jvm/functions/Function1;

    invoke-static {p2, p1, v0}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p3

    :goto_0
    invoke-interface {p0, p3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
