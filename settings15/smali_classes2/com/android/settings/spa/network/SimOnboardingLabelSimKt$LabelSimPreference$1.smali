.class public final Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/widget/preference/PreferenceModel;


# instance fields
.field public final onClick:Lkotlin/reflect/KFunction;

.field public final summary:Lkotlin/jvm/functions/Function0;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$alertDialogPresenter$1$1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$1;->title:Ljava/lang/String;

    new-instance p2, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$1$summary$1;

    invoke-direct {p2, p3}, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$1$summary$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    iput-object p2, p0, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$1;->summary:Lkotlin/jvm/functions/Function0;

    new-instance p2, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$1$onClick$1;

    const-class v3, Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;

    const-string v4, "open"

    const/4 v1, 0x0

    const-string v5, "open()V"

    const/4 v6, 0x0

    move-object v0, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$1;->onClick:Lkotlin/reflect/KFunction;

    return-void
.end method


# virtual methods
.method public final getOnClick()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$1;->onClick:Lkotlin/reflect/KFunction;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getSummary()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$1;->summary:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$1;->title:Ljava/lang/String;

    return-object p0
.end method
