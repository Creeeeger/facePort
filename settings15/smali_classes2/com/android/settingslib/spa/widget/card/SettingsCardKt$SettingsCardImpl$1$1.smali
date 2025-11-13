.class final Lcom/android/settingslib/spa/widget/card/SettingsCardKt$SettingsCardImpl$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u000b\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "invoke",
        "(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $model:Lcom/android/settingslib/spa/widget/card/CardModel;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spa/widget/card/CardModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$SettingsCardImpl$1$1;->$model:Lcom/android/settingslib/spa/widget/card/CardModel;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Landroidx/compose/foundation/layout/ColumnScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    const-string v0, "$this$SettingsCardContent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p3, 0x51

    const/16 p3, 0x10

    if-ne p1, p3, :cond_1

    move-object p1, p2

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_3

    :cond_1
    :goto_0
    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p0, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$SettingsCardImpl$1$1;->$model:Lcom/android/settingslib/spa/widget/card/CardModel;

    iget-object v4, p1, Lcom/android/settingslib/spa/widget/card/CardModel;->onClick:Lkotlin/jvm/functions/Function0;

    sget-object p1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    if-eqz v4, :cond_3

    const/4 v1, 0x0

    const/4 v5, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/ClickableKt;->clickable-XHw0xAI$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object p3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, p3

    :cond_3
    :goto_1
    sget p3, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->dialogItemPaddingHorizontal:F

    sget v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingAround:F

    invoke-static {p1, p3, v0}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object p1

    invoke-static {v0}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object p3

    iget-object p0, p0, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$SettingsCardImpl$1$1;->$model:Lcom/android/settingslib/spa/widget/card/CardModel;

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/4 v1, 0x6

    invoke-static {p3, v0, p2, v1}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object p3

    invoke-static {p2}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    move-result v0

    move-object v7, p2

    check-cast v7, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v1

    invoke-static {p2, p1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v3, v7, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v3, v3, Landroidx/compose/runtime/Applier;

    if-eqz v3, :cond_7

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v3, v7, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v3, :cond_4

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_2
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {p2, p3, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object p3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v1, p3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object p3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v1, v7, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v1, :cond_5

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    invoke-static {v0, v7, v0, p3}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_6
    sget-object p3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {p2, p1, p3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v0, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->imageVector:Landroidx/compose/ui/graphics/vector/ImageVector;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-wide v1, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->tintColor:J

    iget-object v3, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->onDismiss:Lkotlin/jvm/functions/Function0;

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lcom/android/settingslib/spa/widget/card/SettingsCardKt;->CardHeader-3IgeMak(Landroidx/compose/ui/graphics/vector/ImageVector;JLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    const/4 v4, 0x0

    const/4 v5, 0x6

    iget-object v0, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->title:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/android/settingslib/spa/widget/ui/TextKt;->SettingsTitle(Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/runtime/Composer;II)V

    const/4 v4, 0x0

    const/4 v5, 0x6

    iget-object v0, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->text:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/android/settingslib/spa/widget/ui/TextKt;->SettingsBody(Ljava/lang/String;Ljava/lang/String;ILandroidx/compose/runtime/Composer;II)V

    iget-object p1, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->buttons:Ljava/util/List;

    const/16 p3, 0x8

    iget-wide v0, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->tintColor:J

    invoke-static {p1, v0, v1, p2, p3}, Lcom/android/settingslib/spa/widget/card/SettingsCardKt;->access$Buttons-RPmYEkk(Ljava/util/List;JLandroidx/compose/runtime/Composer;I)V

    const/4 p0, 0x1

    invoke-virtual {v7, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_7
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 p0, 0x0

    throw p0
.end method
