.class public abstract Landroidx/compose/material3/TopAppBarDefaults;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroidx/compose/material3/tokens/TopAppBarSmallTokens;->$r8$clinit:I

    sget v0, Landroidx/compose/material3/tokens/TopAppBarMediumTokens;->$r8$clinit:I

    sget v0, Landroidx/compose/material3/tokens/TopAppBarLargeTokens;->$r8$clinit:I

    return-void
.end method

.method public static exitUntilCollapsedScrollBehavior(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;
    .locals 7

    sget v0, Landroidx/compose/material3/AppBarKt;->$r8$clinit:I

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Landroidx/compose/material3/TopAppBarState;->Saver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    move-object v4, p0

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x800001

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v6

    or-int/2addr v3, v6

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v6

    or-int/2addr v3, v6

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_0

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v6, v3, :cond_1

    :cond_0
    new-instance v6, Landroidx/compose/material3/AppBarKt$rememberTopAppBarState$1$1;

    invoke-direct {v6, v0, v5, v5}, Landroidx/compose/material3/AppBarKt$rememberTopAppBarState$1$1;-><init>(FFF)V

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    move-object v3, v6

    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x4

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/SaverKt$Saver$1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/TopAppBarState;

    sget-object v1, Landroidx/compose/material3/TopAppBarDefaults$exitUntilCollapsedScrollBehavior$1;->INSTANCE:Landroidx/compose/material3/TopAppBarDefaults$exitUntilCollapsedScrollBehavior$1;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/high16 v4, 0x43c80000    # 400.0f

    invoke-static {v4, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v2

    invoke-static {p0}, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec_androidKt;->rememberSplineBasedDecay(Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    move-result-object p0

    new-instance v3, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;

    invoke-direct {v3, v0, v2, p0, v1}, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;-><init>(Landroidx/compose/material3/TopAppBarState;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpecImpl;Lkotlin/jvm/functions/Function0;)V

    return-object v3
.end method
