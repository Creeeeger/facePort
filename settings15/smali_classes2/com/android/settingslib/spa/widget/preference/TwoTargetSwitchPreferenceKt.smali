.class public abstract Lcom/android/settingslib/spa/widget/preference/TwoTargetSwitchPreferenceKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final TwoTargetSwitchPreference(Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x4

    const/4 v2, 0x6

    const-string v3, "model"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const v3, -0x6870d1fb

    invoke-virtual {p3, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, p4, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, p4, 0xe

    if-nez v3, :cond_2

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    or-int/2addr v3, p4

    goto :goto_1

    :cond_2
    move v3, p4

    :goto_1
    and-int/2addr v0, p5

    if-eqz v0, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v4, p4, 0x70

    if-nez v4, :cond_5

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v3, v4

    :cond_5
    :goto_3
    and-int/2addr v1, p5

    if-eqz v1, :cond_6

    or-int/lit16 v3, v3, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v1, p4, 0x380

    if-nez v1, :cond_8

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x100

    goto :goto_4

    :cond_7
    const/16 v1, 0x80

    :goto_4
    or-int/2addr v3, v1

    :cond_8
    :goto_5
    and-int/lit16 v1, v3, 0x2db

    const/16 v3, 0x92

    if-ne v1, v3, :cond_a

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_6
    move-object v5, p1

    goto :goto_8

    :cond_a
    :goto_7
    if-eqz v0, :cond_b

    sget-object p1, Lcom/android/settingslib/spa/widget/preference/TwoTargetSwitchPreferenceKt$TwoTargetSwitchPreference$1;->INSTANCE:Lcom/android/settingslib/spa/widget/preference/TwoTargetSwitchPreferenceKt$TwoTargetSwitchPreference$1;

    :cond_b
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/android/settingslib/spa/widget/preference/TwoTargetSwitchPreferenceKt$TwoTargetSwitchPreference$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settingslib/spa/widget/preference/TwoTargetSwitchPreferenceKt$TwoTargetSwitchPreference$2;-><init>(Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    const v1, -0x2013e30a

    invoke-static {v1, v0, p3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v0, p3, v2}, Lcom/android/settingslib/spa/framework/util/EntryHighlightKt;->EntryHighlight(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_6

    :goto_8
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_c

    new-instance p3, Lcom/android/settingslib/spa/widget/preference/TwoTargetSwitchPreferenceKt$TwoTargetSwitchPreference$3;

    move-object v3, p3

    move-object v4, p0

    move-object v6, p2

    move v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/settingslib/spa/widget/preference/TwoTargetSwitchPreferenceKt$TwoTargetSwitchPreference$3;-><init>(Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V

    iput-object p3, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_c
    return-void
.end method
