.class public final Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$ListPreference$3$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/widget/preference/PreferenceModel;


# instance fields
.field public final enabled:Lkotlin/jvm/functions/Function0;

.field public final icon:Lkotlin/jvm/functions/Function2;

.field public final onClick:Lkotlin/jvm/functions/Function0;

.field public final summary:Lkotlin/jvm/functions/Function0;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spa/widget/preference/ListPreferenceModel;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/android/settingslib/spa/widget/preference/ListPreferenceModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$ListPreference$3$1;->title:Ljava/lang/String;

    new-instance v0, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$ListPreference$3$1$summary$1;

    invoke-direct {v0, p1}, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$ListPreference$3$1$summary$1;-><init>(Lcom/android/settingslib/spa/widget/preference/ListPreferenceModel;)V

    iput-object v0, p0, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$ListPreference$3$1;->summary:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lcom/android/settingslib/spa/widget/preference/ListPreferenceModel;->getIcon()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$ListPreference$3$1;->icon:Lkotlin/jvm/functions/Function2;

    invoke-interface {p1}, Lcom/android/settingslib/spa/widget/preference/ListPreferenceModel;->getEnabled()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$ListPreference$3$1;->enabled:Lkotlin/jvm/functions/Function0;

    new-instance v0, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$ListPreference$3$1$onClick$1;

    invoke-direct {v0, p2}, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$ListPreference$3$1$onClick$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-interface {p1}, Lcom/android/settingslib/spa/widget/preference/ListPreferenceModel;->getOptions()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$ListPreference$3$1;->onClick:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final getEnabled()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$ListPreference$3$1;->enabled:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getIcon()Lkotlin/jvm/functions/Function2;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$ListPreference$3$1;->icon:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final getOnClick()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$ListPreference$3$1;->onClick:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getSummary()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$ListPreference$3$1;->summary:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$ListPreference$3$1;->title:Ljava/lang/String;

    return-object p0
.end method
