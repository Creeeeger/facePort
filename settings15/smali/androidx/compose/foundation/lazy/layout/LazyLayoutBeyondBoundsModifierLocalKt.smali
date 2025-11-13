.class public abstract Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocalKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final lazyLayoutBeyondBoundsModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;ZLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 7

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    check-cast p7, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x2cecf163

    invoke-virtual {p7, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/4 v0, 0x0

    if-nez p6, :cond_0

    goto/16 :goto_5

    :cond_0
    and-int/lit8 p6, p8, 0x70

    xor-int/lit8 p6, p6, 0x30

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-le p6, v1, :cond_1

    invoke-virtual {p7, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_2

    :cond_1
    and-int/lit8 p6, p8, 0x30

    if-ne p6, v1, :cond_3

    :cond_2
    move p6, v2

    goto :goto_0

    :cond_3
    move p6, v0

    :goto_0
    and-int/lit16 v1, p8, 0x380

    xor-int/lit16 v1, v1, 0x180

    const/16 v3, 0x100

    if-le v1, v3, :cond_4

    invoke-virtual {p7, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    and-int/lit16 v1, p8, 0x180

    if-ne v1, v3, :cond_6

    :cond_5
    move v1, v2

    goto :goto_1

    :cond_6
    move v1, v0

    :goto_1
    or-int/2addr p6, v1

    and-int/lit16 v1, p8, 0x1c00

    xor-int/lit16 v1, v1, 0xc00

    const/16 v3, 0x800

    if-le v1, v3, :cond_7

    invoke-virtual {p7, p3}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    and-int/lit16 v1, p8, 0xc00

    if-ne v1, v3, :cond_9

    :cond_8
    move v1, v2

    goto :goto_2

    :cond_9
    move v1, v0

    :goto_2
    or-int/2addr p6, v1

    const v1, 0xe000

    and-int/2addr v1, p8

    xor-int/lit16 v1, v1, 0x6000

    const/16 v3, 0x4000

    if-le v1, v3, :cond_a

    invoke-virtual {p7, p4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    and-int/lit16 v1, p8, 0x6000

    if-ne v1, v3, :cond_c

    :cond_b
    move v1, v2

    goto :goto_3

    :cond_c
    move v1, v0

    :goto_3
    or-int/2addr p6, v1

    const/high16 v1, 0x70000

    and-int/2addr v1, p8

    const/high16 v3, 0x30000

    xor-int/2addr v1, v3

    const/high16 v4, 0x20000

    if-le v1, v4, :cond_d

    invoke-virtual {p7, p5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_d
    and-int/2addr p8, v3

    if-ne p8, v4, :cond_e

    goto :goto_4

    :cond_e
    move v2, v0

    :cond_f
    :goto_4
    or-int/2addr p6, v2

    invoke-virtual {p7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p8

    if-nez p6, :cond_10

    sget-object p6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne p8, p6, :cond_11

    :cond_10
    new-instance p8, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocal;

    move-object v1, p8

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocal;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;ZLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/gestures/Orientation;)V

    invoke-virtual {p7, p8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_11
    check-cast p8, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocal;

    invoke-interface {p0, p8}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :goto_5
    invoke-virtual {p7, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p0
.end method
