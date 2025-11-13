.class public abstract Landroidx/compose/foundation/BasicMarqueeKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static basicMarquee-1Mj1MLw$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 9

    sget-object v0, Landroidx/compose/foundation/MarqueeDefaults;->INSTANCE:Landroidx/compose/foundation/MarqueeDefaults;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/foundation/MarqueeDefaults;->Iterations:I

    sget-object v1, Landroidx/compose/foundation/MarqueeAnimationMode;->Companion:Landroidx/compose/foundation/MarqueeAnimationMode$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Landroidx/compose/foundation/MarqueeDefaults;->RepeatDelayMillis:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/foundation/MarqueeDefaults;->Spacing:Landroidx/compose/foundation/MarqueeSpacing$Companion$$ExternalSyntheticLambda0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v7, Landroidx/compose/foundation/MarqueeDefaults;->Velocity:F

    new-instance v0, Landroidx/compose/foundation/MarqueeModifierElement;

    const/4 v8, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    move v4, v5

    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/MarqueeModifierElement;-><init>(IIIILandroidx/compose/foundation/MarqueeSpacing;FLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
