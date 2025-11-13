.class public abstract Landroidx/compose/material/ripple/RippleKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DefaultTweenSpec:Landroidx/compose/animation/core/TweenSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, Landroidx/compose/animation/core/TweenSpec;

    sget-object v3, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    const/16 v1, 0xf

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v6, Landroidx/compose/material/ripple/RippleKt;->DefaultTweenSpec:Landroidx/compose/animation/core/TweenSpec;

    return-void
.end method

.method public static final rememberRipple-9IZ8Weo(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/ripple/PlatformRipple;
    .locals 3

    check-cast p4, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x61769d80

    invoke-virtual {p4, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    const/4 v0, 0x4

    and-int/2addr p6, v0

    if-eqz p6, :cond_0

    sget-object p2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide p2, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    :cond_0
    sget-object p6, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object p2

    invoke-static {p2, p4}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object p2

    const p3, -0x59e688e6

    invoke-virtual {p4, p3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    and-int/lit8 p3, p5, 0xe

    xor-int/lit8 p3, p3, 0x6

    const/4 p6, 0x1

    const/4 v1, 0x0

    if-le p3, v0, :cond_1

    invoke-virtual {p4, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result p3

    if-nez p3, :cond_2

    :cond_1
    and-int/lit8 p3, p5, 0x6

    if-ne p3, v0, :cond_3

    :cond_2
    move p3, p6

    goto :goto_0

    :cond_3
    move p3, v1

    :goto_0
    and-int/lit8 v0, p5, 0x70

    xor-int/lit8 v0, v0, 0x30

    const/16 v2, 0x20

    if-le v0, v2, :cond_4

    invoke-virtual {p4, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    and-int/lit8 p5, p5, 0x30

    if-ne p5, v2, :cond_5

    goto :goto_1

    :cond_5
    move p6, v1

    :cond_6
    :goto_1
    or-int/2addr p3, p6

    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p5

    if-nez p3, :cond_7

    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne p5, p3, :cond_8

    :cond_7
    new-instance p5, Landroidx/compose/material/ripple/PlatformRipple;

    const/4 p3, 0x0

    invoke-direct {p5, p0, p1, p2, p3}, Landroidx/compose/material/ripple/PlatformRipple;-><init>(ZFLandroidx/compose/runtime/State;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p4, p5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_8
    check-cast p5, Landroidx/compose/material/ripple/PlatformRipple;

    invoke-virtual {p4, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p4, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p5
.end method
