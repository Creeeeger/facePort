.class final Lcom/android/settingslib/spa/widget/preference/PreferenceKt$Preference$1;
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
.field final synthetic $model:Lcom/android/settingslib/spa/widget/preference/PreferenceModel;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $singleLineSummary:Z


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;Landroidx/compose/ui/Modifier;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/preference/PreferenceKt$Preference$1;->$model:Lcom/android/settingslib/spa/widget/preference/PreferenceModel;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/preference/PreferenceKt$Preference$1;->$modifier:Landroidx/compose/ui/Modifier;

    iput-boolean p3, p0, Lcom/android/settingslib/spa/widget/preference/PreferenceKt$Preference$1;->$singleLineSummary:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0xb

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    move-object v1, v12

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Lcom/android/settingslib/spa/widget/preference/PreferenceKt$Preference$1;->$model:Lcom/android/settingslib/spa/widget/preference/PreferenceModel;

    invoke-interface {v1}, Lcom/android/settingslib/spa/widget/preference/PreferenceModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settingslib/spa/widget/preference/PreferenceKt$Preference$1;->$model:Lcom/android/settingslib/spa/widget/preference/PreferenceModel;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/android/settingslib/spa/widget/preference/PreferenceKt$Preference$1;->$model:Lcom/android/settingslib/spa/widget/preference/PreferenceModel;

    invoke-interface {v2}, Lcom/android/settingslib/spa/widget/preference/PreferenceModel;->getSummary()Lkotlin/jvm/functions/Function0;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settingslib/spa/widget/preference/PreferenceKt$Preference$1;->$model:Lcom/android/settingslib/spa/widget/preference/PreferenceModel;

    invoke-interface {v3}, Lcom/android/settingslib/spa/widget/preference/PreferenceModel;->getSummaryContentDescription()Lkotlin/jvm/functions/Function0;

    move-result-object v4

    iget-object v3, v0, Lcom/android/settingslib/spa/widget/preference/PreferenceKt$Preference$1;->$model:Lcom/android/settingslib/spa/widget/preference/PreferenceModel;

    invoke-interface {v3}, Lcom/android/settingslib/spa/widget/preference/PreferenceModel;->getIcon()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    iget-object v3, v0, Lcom/android/settingslib/spa/widget/preference/PreferenceKt$Preference$1;->$model:Lcom/android/settingslib/spa/widget/preference/PreferenceModel;

    invoke-interface {v3}, Lcom/android/settingslib/spa/widget/preference/PreferenceModel;->getEnabled()Lkotlin/jvm/functions/Function0;

    move-result-object v7

    iget-object v3, v0, Lcom/android/settingslib/spa/widget/preference/PreferenceKt$Preference$1;->$modifier:Landroidx/compose/ui/Modifier;

    iget-boolean v5, v0, Lcom/android/settingslib/spa/widget/preference/PreferenceKt$Preference$1;->$singleLineSummary:Z

    const/4 v14, 0x0

    const/16 v15, 0xf00

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move-object v11, v13

    move/from16 v13, v16

    invoke-static/range {v0 .. v15}, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt;->BasePreference-jXF2sa8(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;FFFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V

    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
