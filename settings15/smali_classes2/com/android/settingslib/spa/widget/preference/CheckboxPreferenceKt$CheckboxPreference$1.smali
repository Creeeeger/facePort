.class final Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceKt$CheckboxPreference$1;
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
.field final synthetic $model:Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceModel;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceKt$CheckboxPreference$1;->$model:Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p1, p1, 0xb

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    move-object p1, v9

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

    iget-object p1, p0, Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceKt$CheckboxPreference$1;->$model:Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceModel;

    check-cast p1, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1;

    iget-object v0, p1, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1;->title:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1;->getSummary()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    iget-object p1, p0, Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceKt$CheckboxPreference$1;->$model:Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceKt$CheckboxPreference$1;->$model:Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceModel;

    check-cast p1, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1;

    iget-object p1, p1, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1;->checked:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceKt$CheckboxPreference$1;->$model:Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceModel;

    check-cast p1, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1;

    iget-object p1, p1, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1;->changeable:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object p0, p0, Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceKt$CheckboxPreference$1;->$model:Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceModel;

    check-cast p0, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1;

    iget-object v8, p0, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1;->onCheckedChange:Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xe0

    invoke-static/range {v0 .. v11}, Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceKt;->InternalCheckboxPreference-0HqY7hA(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Ljava/lang/Boolean;ZFFFLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
