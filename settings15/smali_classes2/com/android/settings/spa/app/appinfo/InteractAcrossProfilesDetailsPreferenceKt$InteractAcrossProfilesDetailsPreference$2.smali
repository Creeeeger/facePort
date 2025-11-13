.class public final Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPreferenceKt$InteractAcrossProfilesDetailsPreference$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/widget/preference/PreferenceModel;


# instance fields
.field public final onClick:Lkotlin/reflect/KFunction;

.field public final summary:Lkotlin/jvm/functions/Function0;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/Composer;Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPresenter;Landroidx/compose/runtime/MutableState;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f14125c

    invoke-static {p1, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPreferenceKt$InteractAcrossProfilesDetailsPreference$2;->title:Ljava/lang/String;

    new-instance p1, Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPreferenceKt$InteractAcrossProfilesDetailsPreference$2$summary$1;

    invoke-direct {p1, p3}, Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPreferenceKt$InteractAcrossProfilesDetailsPreference$2$summary$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPreferenceKt$InteractAcrossProfilesDetailsPreference$2;->summary:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPreferenceKt$InteractAcrossProfilesDetailsPreference$2$onClick$1;

    const-class v3, Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPresenter;

    const-string v4, "startActivity"

    const/4 v1, 0x0

    const-string v5, "startActivity()V"

    const/4 v6, 0x0

    move-object v0, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPreferenceKt$InteractAcrossProfilesDetailsPreference$2;->onClick:Lkotlin/reflect/KFunction;

    return-void
.end method


# virtual methods
.method public final getOnClick()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPreferenceKt$InteractAcrossProfilesDetailsPreference$2;->onClick:Lkotlin/reflect/KFunction;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getSummary()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPreferenceKt$InteractAcrossProfilesDetailsPreference$2;->summary:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPreferenceKt$InteractAcrossProfilesDetailsPreference$2;->title:Ljava/lang/String;

    return-object p0
.end method
