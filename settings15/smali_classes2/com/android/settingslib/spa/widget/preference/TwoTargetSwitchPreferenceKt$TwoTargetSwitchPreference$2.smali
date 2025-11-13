.class final Lcom/android/settingslib/spa/widget/preference/TwoTargetSwitchPreferenceKt$TwoTargetSwitchPreference$2;
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
.field final synthetic $model:Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;

.field final synthetic $primaryEnabled:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $primaryOnClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetSwitchPreferenceKt$TwoTargetSwitchPreference$2;->$model:Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetSwitchPreferenceKt$TwoTargetSwitchPreference$2;->$primaryEnabled:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetSwitchPreferenceKt$TwoTargetSwitchPreference$2;->$primaryOnClick:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p1, p1, 0xb

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    move-object p1, v6

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

    iget-object p1, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetSwitchPreferenceKt$TwoTargetSwitchPreference$2;->$model:Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;

    invoke-interface {p1}, Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetSwitchPreferenceKt$TwoTargetSwitchPreference$2;->$model:Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;

    invoke-interface {p1}, Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;->getSummary()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetSwitchPreferenceKt$TwoTargetSwitchPreference$2;->$primaryEnabled:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetSwitchPreferenceKt$TwoTargetSwitchPreference$2;->$primaryOnClick:Lkotlin/jvm/functions/Function0;

    iget-object p1, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetSwitchPreferenceKt$TwoTargetSwitchPreference$2;->$model:Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;

    invoke-interface {p1}, Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;->getIcon()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    new-instance p1, Lcom/android/settingslib/spa/widget/preference/TwoTargetSwitchPreferenceKt$TwoTargetSwitchPreference$2$1;

    iget-object p0, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetSwitchPreferenceKt$TwoTargetSwitchPreference$2;->$model:Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;

    invoke-direct {p1, p0}, Lcom/android/settingslib/spa/widget/preference/TwoTargetSwitchPreferenceKt$TwoTargetSwitchPreference$2$1;-><init>(Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;)V

    const p0, -0x35becc32    # -3165427.5f

    invoke-static {p0, p1, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    const/high16 v7, 0x30000

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/android/settingslib/spa/widget/preference/TwoTargetPreferenceKt;->TwoTargetPreference(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
