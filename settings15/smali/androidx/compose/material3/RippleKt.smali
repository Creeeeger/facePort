.class public abstract Landroidx/compose/material3/RippleKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DefaultBoundedRipple:Landroidx/compose/material3/RippleNodeFactory;

.field public static final DefaultUnboundedRipple:Landroidx/compose/material3/RippleNodeFactory;

.field public static final LocalRippleConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

.field public static final LocalUseFallbackRippleImplementation:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Landroidx/compose/material3/RippleKt$LocalUseFallbackRippleImplementation$1;->INSTANCE:Landroidx/compose/material3/RippleKt$LocalUseFallbackRippleImplementation$1;

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Landroidx/compose/material3/RippleKt;->LocalUseFallbackRippleImplementation:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v0, Landroidx/compose/material3/RippleKt$LocalRippleConfiguration$1;->INSTANCE:Landroidx/compose/material3/RippleKt$LocalRippleConfiguration$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->compositionLocalOf$default(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/RippleKt;->LocalRippleConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    new-instance v0, Landroidx/compose/material3/RippleNodeFactory;

    sget-wide v1, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    const/4 v3, 0x1

    const/high16 v4, 0x7fc00000    # Float.NaN

    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/compose/material3/RippleNodeFactory;-><init>(ZFJ)V

    sput-object v0, Landroidx/compose/material3/RippleKt;->DefaultBoundedRipple:Landroidx/compose/material3/RippleNodeFactory;

    new-instance v0, Landroidx/compose/material3/RippleNodeFactory;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/compose/material3/RippleNodeFactory;-><init>(ZFJ)V

    sput-object v0, Landroidx/compose/material3/RippleKt;->DefaultUnboundedRipple:Landroidx/compose/material3/RippleNodeFactory;

    return-void
.end method

.method public static final rippleOrFallbackImplementation-9IZ8Weo(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;
    .locals 4

    const/4 v0, 0x1

    and-int/lit8 v1, p6, 0x1

    if-eqz v1, :cond_0

    move p0, v0

    :cond_0
    and-int/lit8 v1, p6, 0x2

    const/high16 v2, 0x7fc00000    # Float.NaN

    if-eqz v1, :cond_1

    move p1, v2

    :cond_1
    const/4 v1, 0x4

    and-int/2addr p6, v1

    if-eqz p6, :cond_2

    sget-wide p2, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    :cond_2
    sget-object p6, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    check-cast p4, Landroidx/compose/runtime/ComposerImpl;

    const p6, -0x4c54f1d9

    invoke-virtual {p4, p6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p6, Landroidx/compose/material3/RippleKt;->LocalUseFallbackRippleImplementation:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p4, p6}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Boolean;

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p6

    const/4 v3, 0x0

    if-eqz p6, :cond_b

    sget-object p6, Landroidx/compose/material/ripple/RippleKt;->DefaultTweenSpec:Landroidx/compose/animation/core/TweenSpec;

    const p6, 0x61769d80

    invoke-virtual {p4, p6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    new-instance p6, Landroidx/compose/ui/graphics/Color;

    invoke-direct {p6, p2, p3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-static {p6, p4}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object p2

    const p3, -0x59e688e6

    invoke-virtual {p4, p3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    and-int/lit8 p3, p5, 0xe

    xor-int/lit8 p3, p3, 0x6

    if-le p3, v1, :cond_3

    invoke-virtual {p4, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result p3

    if-nez p3, :cond_4

    :cond_3
    and-int/lit8 p3, p5, 0x6

    if-ne p3, v1, :cond_5

    :cond_4
    move p3, v0

    goto :goto_0

    :cond_5
    move p3, v3

    :goto_0
    and-int/lit8 p6, p5, 0x70

    xor-int/lit8 p6, p6, 0x30

    const/16 v1, 0x20

    if-le p6, v1, :cond_6

    invoke-virtual {p4, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result p6

    if-nez p6, :cond_8

    :cond_6
    and-int/lit8 p5, p5, 0x30

    if-ne p5, v1, :cond_7

    goto :goto_1

    :cond_7
    move v0, v3

    :cond_8
    :goto_1
    or-int/2addr p3, v0

    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p5

    if-nez p3, :cond_9

    sget-object p3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne p5, p3, :cond_a

    :cond_9
    new-instance p5, Landroidx/compose/material/ripple/PlatformRipple;

    invoke-direct {p5, p0, p1, p2}, Landroidx/compose/material/ripple/PlatformRipple;-><init>(ZFLandroidx/compose/runtime/MutableState;)V

    invoke-virtual {p4, p5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_a
    check-cast p5, Landroidx/compose/material/ripple/PlatformRipple;

    invoke-virtual {p4, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p4, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_3

    :cond_b
    invoke-static {p1, v2}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p5

    if-eqz p5, :cond_d

    sget-wide p5, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    invoke-static {p2, p3, p5, p6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p5

    if-eqz p5, :cond_d

    if-eqz p0, :cond_c

    sget-object p0, Landroidx/compose/material3/RippleKt;->DefaultBoundedRipple:Landroidx/compose/material3/RippleNodeFactory;

    :goto_2
    move-object p5, p0

    goto :goto_3

    :cond_c
    sget-object p0, Landroidx/compose/material3/RippleKt;->DefaultUnboundedRipple:Landroidx/compose/material3/RippleNodeFactory;

    goto :goto_2

    :cond_d
    new-instance p5, Landroidx/compose/material3/RippleNodeFactory;

    invoke-direct {p5, p0, p1, p2, p3}, Landroidx/compose/material3/RippleNodeFactory;-><init>(ZFJ)V

    move-object p0, p5

    goto :goto_2

    :goto_3
    invoke-virtual {p4, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p5
.end method
