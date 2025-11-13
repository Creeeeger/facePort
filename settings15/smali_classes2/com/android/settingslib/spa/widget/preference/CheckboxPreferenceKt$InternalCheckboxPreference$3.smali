.class final Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceKt$InternalCheckboxPreference$3;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $changeable:Z

.field final synthetic $checked:Ljava/lang/Boolean;

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceKt$InternalCheckboxPreference$3;->$checked:Ljava/lang/Boolean;

    iput-boolean p2, p0, Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceKt$InternalCheckboxPreference$3;->$changeable:Z

    iput-object p3, p0, Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceKt$InternalCheckboxPreference$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p1, p1, 0xb

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    move-object p1, v4

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object p1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    sget p2, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingEnd:F

    invoke-static {p1, p2}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p1

    invoke-static {v4, p1}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    iget-object v0, p0, Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceKt$InternalCheckboxPreference$3;->$checked:Ljava/lang/Boolean;

    move-object p1, v4

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const p2, -0x3f2b152b

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-boolean p2, p0, Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceKt$InternalCheckboxPreference$3;->$changeable:Z

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result p2

    iget-boolean v1, p0, Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceKt$InternalCheckboxPreference$3;->$changeable:Z

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez p2, :cond_2

    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, p2, :cond_3

    :cond_2
    new-instance v2, Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceKt$InternalCheckboxPreference$3$1$1;

    invoke-direct {v2, v1}, Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceKt$InternalCheckboxPreference$3$1$1;-><init>(Z)V

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    move-object v1, v2

    check-cast v1, Lkotlin/jvm/functions/Function0;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v3, p0, Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceKt$InternalCheckboxPreference$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/4 v2, 0x0

    const/16 v5, 0xd80

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/settingslib/spa/widget/ui/CheckboxKt;->SettingsCheckbox(Ljava/lang/Boolean;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
