.class final Lcom/android/systemui/media/mediaoutput/compose/material/ContainerBoxKt$SettingButton$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field final synthetic $changeScreen:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $feature:Lcom/android/systemui/media/mediaoutput/compose/common/Feature;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/compose/common/Feature;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/mediaoutput/compose/common/Feature;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/material/ContainerBoxKt$SettingButton$1;->$feature:Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/material/ContainerBoxKt$SettingButton$1;->$changeScreen:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    check-cast p1, Landroidx/compose/animation/AnimatedVisibilityScope;

    move-object v6, p2

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->Companion:Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Companion;

    iget-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/material/ContainerBoxKt$SettingButton$1;->$feature:Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p2, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->from:I

    const/16 p2, 0xa

    const/4 p3, 0x0

    const/4 v9, 0x1

    if-ne p1, p2, :cond_0

    move p1, v9

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    if-eqz p1, :cond_1

    int-to-float p1, p3

    :goto_1
    sget-object p2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    goto :goto_2

    :cond_1
    const/16 p1, 0x18

    int-to-float p1, p1

    goto :goto_1

    :goto_2
    sget-object p2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    invoke-virtual {p2, v0}, Landroidx/compose/ui/Modifier$Companion;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    invoke-static {v6}, Lcom/android/systemui/media/mediaoutput/compose/ext/ConfigurationExtKt;->isPortrait(Landroidx/compose/runtime/Composer;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {v6}, Lcom/android/systemui/media/mediaoutput/compose/ext/ConfigurationExtKt;->isFold(Landroidx/compose/runtime/Composer;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_4

    :cond_2
    :goto_3
    move v2, p1

    goto :goto_5

    :cond_3
    :goto_4
    const/16 p1, 0x38

    int-to-float p1, p1

    goto :goto_3

    :goto_5
    invoke-static {v6}, Lcom/android/systemui/media/mediaoutput/compose/ext/ConfigurationExtKt;->isPortrait(Landroidx/compose/runtime/Composer;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {v6}, Lcom/android/systemui/media/mediaoutput/compose/ext/ConfigurationExtKt;->isFold(Landroidx/compose/runtime/Composer;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_7

    :cond_4
    const/16 p1, 0x3c

    :goto_6
    int-to-float p1, p1

    move v3, p1

    goto :goto_8

    :cond_5
    :goto_7
    const/16 p1, 0xc

    goto :goto_6

    :goto_8
    const/4 v4, 0x0

    const/16 v5, 0x9

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object p1

    sget-object p2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Landroidx/compose/ui/Alignment$Companion;->TopEnd:Landroidx/compose/ui/BiasAlignment;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/material/ContainerBoxKt$SettingButton$1;->$changeScreen:Lkotlin/jvm/functions/Function1;

    invoke-static {p2, p3}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object p2

    invoke-static {v6}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    move-result v0

    move-object v10, v6

    check-cast v10, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v1

    invoke-static {v6, p1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v3, v10, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v3, v3, Landroidx/compose/runtime/Applier;

    if-eqz v3, :cond_b

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v3, v10, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v3, :cond_6

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    :cond_6
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_9
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, p2, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v1, p2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v1, v10, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v1, :cond_7

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    invoke-static {v0, v10, v0, p2}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_8
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, p1, p2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object p1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    const p1, -0x72df7bb4

    invoke-virtual {v10, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v10, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p2

    if-nez p1, :cond_9

    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne p2, p1, :cond_a

    :cond_9
    new-instance p2, Lcom/android/systemui/media/mediaoutput/compose/material/ContainerBoxKt$SettingButton$1$1$1$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/media/mediaoutput/compose/material/ContainerBoxKt$SettingButton$1$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v10, p2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_a
    move-object v0, p2

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v10, p3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object p0, Lcom/android/systemui/media/mediaoutput/compose/material/ComposableSingletons$ContainerBoxKt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/material/ComposableSingletons$ContainerBoxKt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/media/mediaoutput/compose/material/ComposableSingletons$ContainerBoxKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/high16 v7, 0x30000

    const/16 v8, 0x1e

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v8}, Lcom/samsung/sesl/compose/component/IconButtonKt;->SeslIconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_b
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 p0, 0x0

    throw p0
.end method
