.class public final Lcom/android/settings/spa/network/AirplaneModePreferenceKt$AirplaneModePreference$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;


# instance fields
.field public final checked:Lkotlin/jvm/functions/Function0;

.field public final icon:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final onCheckedChange:Lkotlin/jvm/functions/Function1;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/compose/runtime/MutableState;Lcom/android/settings/spa/network/AirplaneModeController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f1402c5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/spa/network/AirplaneModePreferenceKt$AirplaneModePreference$2;->title:Ljava/lang/String;

    new-instance p1, Lcom/android/settings/spa/network/AirplaneModePreferenceKt$AirplaneModePreference$2$checked$1;

    invoke-direct {p1, p2}, Lcom/android/settings/spa/network/AirplaneModePreferenceKt$AirplaneModePreference$2$checked$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    iput-object p1, p0, Lcom/android/settings/spa/network/AirplaneModePreferenceKt$AirplaneModePreference$2;->checked:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/android/settings/spa/network/AirplaneModePreferenceKt$AirplaneModePreference$2$onCheckedChange$1;

    invoke-direct {p1, p3}, Lcom/android/settings/spa/network/AirplaneModePreferenceKt$AirplaneModePreference$2$onCheckedChange$1;-><init>(Lcom/android/settings/spa/network/AirplaneModeController;)V

    iput-object p1, p0, Lcom/android/settings/spa/network/AirplaneModePreferenceKt$AirplaneModePreference$2;->onCheckedChange:Lkotlin/jvm/functions/Function1;

    sget-object p1, Lcom/android/settings/spa/network/ComposableSingletons$AirplaneModePreferenceKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput-object p1, p0, Lcom/android/settings/spa/network/AirplaneModePreferenceKt$AirplaneModePreference$2;->icon:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    return-void
.end method


# virtual methods
.method public final getChecked()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/network/AirplaneModePreferenceKt$AirplaneModePreference$2;->checked:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getIcon()Lkotlin/jvm/functions/Function2;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/network/AirplaneModePreferenceKt$AirplaneModePreference$2;->icon:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    return-object p0
.end method

.method public final getOnCheckedChange()Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/network/AirplaneModePreferenceKt$AirplaneModePreference$2;->onCheckedChange:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/network/AirplaneModePreferenceKt$AirplaneModePreference$2;->title:Ljava/lang/String;

    return-object p0
.end method
