.class public Lcom/android/settings/gestures/SystemNavigationGestureSettings;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final KEY_SYSTEM_NAV_2BUTTONS:Ljava/lang/String; = "system_nav_2buttons"

.field static final KEY_SYSTEM_NAV_3BUTTONS:Ljava/lang/String; = "system_nav_3buttons"

.field static final KEY_SYSTEM_NAV_GESTURAL:Ljava/lang/String; = "system_nav_gestural"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public mA11yTutorialDialogShown:Z

.field public final mLaunchSandboxIntent:Landroid/content/Intent;

.field public mOverlayManager:Landroid/content/om/IOverlayManager;

.field public mVideoPreference:Lcom/android/settingslib/widget/IllustrationPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$1;

    const v1, 0x7f170274

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.quickstep.action.GESTURE_SANDBOX"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "use_tutorial_menu"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.apps.nexuslauncher"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mLaunchSandboxIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mA11yTutorialDialogShown:Z

    return-void
.end method

.method public static getCurrentSystemNavigationMode(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isGestureNavigationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "system_nav_gestural"

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->is2ButtonNavigationEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "system_nav_2buttons"

    return-object p0

    :cond_1
    const-string p0, "system_nav_3buttons"

    return-object p0
.end method

.method public static setCurrentSystemNavigationMode(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "com.android.internal.systemui.navbar.gestural"

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "system_nav_3buttons"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "system_nav_gestural"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "system_nav_2buttons"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v0, "com.android.internal.systemui.navbar.threebutton"

    goto :goto_1

    :pswitch_1
    const-string v0, "com.android.internal.systemui.navbar.twobutton"

    :goto_1
    :pswitch_2
    const/4 p1, -0x2

    :try_start_0
    invoke-interface {p0, v0, p1}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x6ee22145 -> :sswitch_2
        -0x51fa588d -> :sswitch_1
        -0x700f466 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bindPreferenceExtra(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;)V
    .locals 1

    instance-of p2, p3, Lcom/android/settings/utils/CandidateInfoExtra;

    if-nez p2, :cond_0

    return-void

    :cond_0
    move-object p2, p3

    check-cast p2, Lcom/android/settings/utils/CandidateInfoExtra;

    iget-object p2, p2, Lcom/android/settings/utils/CandidateInfoExtra;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    check-cast p3, Lcom/android/settings/utils/CandidateInfoExtra;

    const-string p2, "system_nav_gestural"

    iget-object p3, p3, Lcom/android/settings/utils/CandidateInfoExtra;->mKey:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lcom/android/settings/gestures/SystemNavigationGestureSettings$$ExternalSyntheticLambda2;

    const/4 p4, 0x0

    invoke-direct {p2, p0, p4}, Lcom/android/settings/gestures/SystemNavigationGestureSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/gestures/SystemNavigationGestureSettings;I)V

    invoke-virtual {p1, p2}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->setExtraWidgetOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const-string p2, "system_nav_2buttons"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "system_nav_3buttons"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p3

    const p4, 0x7f17006e

    const/4 v0, 0x0

    invoke-virtual {p3, p2, p4, v0}, Landroidx/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object p3

    invoke-static {p2, p4}, Lcom/android/settings/core/PreferenceControllerListHelper;->getPreferenceControllersFromXml(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p3}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p3

    move-object p4, p2

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-eq p3, p4, :cond_3

    const/4 p2, 0x0

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lcom/android/settings/core/PreferenceControllerListHelper$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p2

    :goto_0
    if-nez p2, :cond_4

    new-instance p2, Lcom/android/settings/gestures/SystemNavigationGestureSettings$$ExternalSyntheticLambda2;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/android/settings/gestures/SystemNavigationGestureSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/gestures/SystemNavigationGestureSettings;I)V

    invoke-virtual {p1, p2}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->setExtraWidgetOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method public final getCandidates()Ljava/util/List;
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.android.internal.systemui.navbar.gestural"

    invoke-static {p0, v1}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isOverlayPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/settings/utils/CandidateInfoExtra;

    const v2, 0x7f140daa

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f140da9

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "system_nav_gestural"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/utils/CandidateInfoExtra;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "com.android.internal.systemui.navbar.twobutton"

    invoke-static {p0, v1}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isOverlayPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/settings/utils/CandidateInfoExtra;

    const v2, 0x7f142e1d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f142e1c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "system_nav_2buttons"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/utils/CandidateInfoExtra;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "com.android.internal.systemui.navbar.threebutton"

    invoke-static {p0, v1}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isOverlayPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/settings/utils/CandidateInfoExtra;

    const v2, 0x7f1414c6

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f1414c5

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const-string v3, "system_nav_3buttons"

    invoke-direct {v1, v2, p0, v3}, Lcom/android/settings/utils/CandidateInfoExtra;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public final getDefaultKey()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getCurrentSystemNavigationMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x55e

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170274

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getSuggestionFeatureProvider()Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProviderImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "suggestions"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_system_navigation_suggestion_complete"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "overlay"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mOverlayManager:Landroid/content/om/IOverlayManager;

    new-instance v0, Lcom/android/settingslib/widget/IllustrationPreference;

    invoke-direct {v0, p1}, Lcom/android/settingslib/widget/IllustrationPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mVideoPreference:Lcom/android/settingslib/widget/IllustrationPreference;

    const/16 v0, 0x7f6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mVideoPreference:Lcom/android/settingslib/widget/IllustrationPreference;

    iput-boolean v2, v0, Lcom/android/settingslib/widget/IllustrationPreference;->mLottieDynamicColor:Z

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mVideoPreference:Lcom/android/settingslib/widget/IllustrationPreference;

    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getDefaultKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->setIllustrationVideo(Lcom/android/settingslib/widget/IllustrationPreference;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mVideoPreference:Lcom/android/settingslib/widget/IllustrationPreference;

    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getDefaultKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->setIllustrationClickListener(Lcom/android/settingslib/widget/IllustrationPreference;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-static {p1}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isGestureNavigationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v0, "com.android.internal.systemui.navbar.gestural"

    const/4 v2, -0x2

    invoke-interface {p0, v0, v2}, Landroid/content/om/IOverlayManager;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "system_nav_gestural"

    invoke-static {p0, v0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->setCurrentSystemNavigationMode(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "back_gesture_inset_scale_left"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "back_gesture_inset_scale_right"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "show_a11y_tutorial_dialog_bool"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mA11yTutorialDialogShown:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/gestures/SystemNavigationGestureSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/gestures/SystemNavigationGestureSettings;I)V

    invoke-static {p1, v0}, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial;->showGestureNavigationTutorialDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "show_a11y_tutorial_dialog_bool"

    iget-boolean v1, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mA11yTutorialDialogShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final setDefaultKey(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-static {v0, p1}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->setCurrentSystemNavigationMode(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mVideoPreference:Lcom/android/settingslib/widget/IllustrationPreference;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->setIllustrationVideo(Lcom/android/settingslib/widget/IllustrationPreference;Ljava/lang/String;)V

    const-string v0, "system_nav_gestural"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accessibility_button_mode"

    const/4 v4, -0x1

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityShortcutTargets(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mA11yTutorialDialogShown:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/android/settings/gestures/SystemNavigationGestureSettings$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/settings/gestures/SystemNavigationGestureSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/gestures/SystemNavigationGestureSettings;I)V

    invoke-static {v0, v2}, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial;->showGestureNavigationTutorialDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1

    :cond_2
    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mA11yTutorialDialogShown:Z

    :goto_1
    iget-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mVideoPreference:Lcom/android/settingslib/widget/IllustrationPreference;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->setIllustrationClickListener(Lcom/android/settingslib/widget/IllustrationPreference;Ljava/lang/String;)V

    return v1
.end method

.method public final setIllustrationClickListener(Lcom/android/settingslib/widget/IllustrationPreference;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6ee22145

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const v1, -0x51fa588d

    if-eq v0, v1, :cond_1

    const p0, -0x700f466

    if-eq v0, p0, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "system_nav_3buttons"

    :goto_0
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_1

    :cond_1
    const-string v0, "system_nav_gestural"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mLaunchSandboxIntent:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f1418f5

    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iget-object v0, p1, Lcom/android/settingslib/widget/IllustrationPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p2, p1, Lcom/android/settingslib/widget/IllustrationPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    new-instance p2, Lcom/android/settings/gestures/SystemNavigationGestureSettings$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/gestures/SystemNavigationGestureSettings;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_2

    :cond_4
    const-string p0, "system_nav_2buttons"

    goto :goto_0

    :cond_5
    :goto_1
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :goto_2
    return-void
.end method

.method public final setIllustrationVideo(Lcom/android/settingslib/widget/IllustrationPreference;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "system_nav_3buttons"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "system_nav_gestural"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "system_nav_2buttons"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const p0, 0x7f130042

    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/IllustrationPreference;->setLottieAnimationResId(I)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mLaunchSandboxIntent:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_3

    const p0, 0x7f130044

    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/IllustrationPreference;->setLottieAnimationResId(I)V

    goto :goto_1

    :cond_3
    const p0, 0x7f130043

    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/IllustrationPreference;->setLottieAnimationResId(I)V

    goto :goto_1

    :pswitch_2
    const p0, 0x7f130041

    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/IllustrationPreference;->setLottieAnimationResId(I)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6ee22145 -> :sswitch_2
        -0x51fa588d -> :sswitch_1
        -0x700f466 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateCandidates()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getDefaultKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object v2, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mVideoPreference:Lcom/android/settingslib/widget/IllustrationPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    const v2, 0x7f170274

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/settings/core/PreferenceControllerListHelper;->getPreferenceControllersFromXml(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/android/settings/gestures/SystemNavigationGestureSettings$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/gestures/SystemNavigationGestureSettings$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/gestures/SystemNavigationGestureSettings;Landroidx/preference/PreferenceScreen;)V

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getCandidates()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/widget/CandidateInfo;

    new-instance v4, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/android/settingslib/widget/CandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v3, v0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->bindPreference(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/settingslib/widget/CandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v3, v0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->bindPreferenceExtra(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->mayCheckOnlyRadioButton()V

    return-void
.end method
