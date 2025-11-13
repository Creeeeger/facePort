.class public abstract Lcom/android/settings/spa/system/LanguageAndInputPageProviderKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final access$LanguageAndInput(Landroidx/compose/runtime/Composer;I)V
    .locals 6

    check-cast p0, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x6ece25c

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v0, 0x7f1414a9

    invoke-static {p0, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/settings/spa/system/ComposableSingletons$LanguageAndInputPageProviderKt;->lambda-2:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v1, 0x0

    const/16 v4, 0x180

    const/4 v5, 0x2

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/android/settingslib/spa/widget/scaffold/RegularScaffoldKt;->RegularScaffold(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    :goto_1
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v0, Lcom/android/settings/spa/system/LanguageAndInputPageProviderKt$LanguageAndInput$1;

    invoke-direct {v0, p1}, Lcom/android/settings/spa/system/LanguageAndInputPageProviderKt$LanguageAndInput$1;-><init>(I)V

    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2
    return-void
.end method
