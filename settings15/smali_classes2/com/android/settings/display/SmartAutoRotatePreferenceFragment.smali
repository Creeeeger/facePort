.class public Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final AUTO_ROTATE_MAIN_SWITCH_PREFERENCE_KEY:Ljava/lang/String; = "auto_rotate_main_switch"

.field static final AUTO_ROTATE_SWITCH_PREFERENCE_KEY:Ljava/lang/String; = "auto_rotate_switch"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment$1;

    const v1, 0x7f170054

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public addHelpLink()V
    .locals 2

    const-string v0, "auto_rotate_footer_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/FooterPreference;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;->setLearnMoreAction(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f140507

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/FooterPreference;->setLearnMoreText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public createHeader(Lcom/android/settings/SettingsActivity;)V
    .locals 2

    invoke-static {p1}, Lcom/android/settings/display/DeviceStateAutoRotationHelper;->isDeviceStateRotationEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1}, Lcom/android/settings/display/SmartAutoRotateController;->isRotationResolverServiceAvailable(Landroid/content/Context;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    const-string p1, "auto_rotate_switch"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "auto_rotate_main_switch"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    invoke-static {p1}, Lcom/android/settings/display/DeviceStateAutoRotationHelper;->createPreferenceControllers(Landroid/content/Context;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SmartAutoRotatePreferenceFragment"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x74b

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170054

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    const-class v0, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->useAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;

    invoke-virtual {v0, p1}, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->init(Landroidx/lifecycle/Lifecycle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0, p2}, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;->createHeader(Lcom/android/settings/SettingsActivity;)V

    const-string p3, "auto_rotate_footer_preference"

    invoke-virtual {p0, p3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-static {p2}, Lcom/android/settings/display/SmartAutoRotateController;->isRotationResolverServiceAvailable(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {p3, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;->setupFooter()V

    :cond_0
    return-object p1
.end method

.method public setupFooter()V
    .locals 1

    const v0, 0x7f14116a

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;->addHelpLink()V

    :cond_0
    return-void
.end method
