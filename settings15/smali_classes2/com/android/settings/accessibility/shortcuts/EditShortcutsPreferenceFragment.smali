.class public Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final ARG_KEY_SHORTCUT_TARGETS:Ljava/lang/String; = "targets"

.field public static final BUTTON_SHORTCUT_MODE_SETTING:Landroid/net/Uri;

.field public static final BUTTON_SHORTCUT_SETTING:Landroid/net/Uri;

.field public static final QUICK_SETTINGS_SHORTCUT_SETTING:Landroid/net/Uri;

.field static final SAVED_STATE_IS_EXPANDED:Ljava/lang/String; = "isExpanded"

.field static final SHORTCUT_SETTINGS:[Landroid/net/Uri;

.field public static final TRIPLE_TAP_SHORTCUT_SETTING:Landroid/net/Uri;

.field public static final TWO_FINGERS_DOUBLE_TAP_SHORTCUT_SETTING:Landroid/net/Uri;

.field public static final VOLUME_KEYS_SHORTCUT_SETTING:Landroid/net/Uri;


# instance fields
.field public mSettingsObserver:Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$1;

.field public mShortcutTargets:Ljava/util/Set;

.field public mTouchExplorationStateChangeListener:Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$$ExternalSyntheticLambda1;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "accessibility_shortcut_target_service"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->VOLUME_KEYS_SHORTCUT_SETTING:Landroid/net/Uri;

    const-string v1, "accessibility_button_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->BUTTON_SHORTCUT_MODE_SETTING:Landroid/net/Uri;

    const-string v2, "accessibility_button_targets"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->BUTTON_SHORTCUT_SETTING:Landroid/net/Uri;

    const-string v3, "accessibility_display_magnification_enabled"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->TRIPLE_TAP_SHORTCUT_SETTING:Landroid/net/Uri;

    const-string v4, "accessibility_magnification_two_finger_triple_tap_enabled"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sput-object v4, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->TWO_FINGERS_DOUBLE_TAP_SHORTCUT_SETTING:Landroid/net/Uri;

    const-string v5, "accessibility_qs_targets"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sput-object v5, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->QUICK_SETTINGS_SHORTCUT_SETTING:Landroid/net/Uri;

    const/4 v6, 0x6

    new-array v6, v6, [Landroid/net/Uri;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    sput-object v6, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->SHORTCUT_SETTINGS:[Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method public static getTitlesFromAccessibilityTargetList(Ljava/util/Set;Ljava/util/List;Landroid/content/res/Resources;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;",
            "Landroid/content/res/Resources;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    new-instance v2, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$$ExternalSyntheticLambda2;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Shortcut target does not have a label: "

    invoke-static {p2, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    new-instance p0, Landroid/util/Pair;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f1401ac

    invoke-virtual {p2, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Landroid/util/Pair;

    const p1, 0x7f140190

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f14018d

    invoke-virtual {p2, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Found no labels for any shortcut targets."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "EditShortcutsPreferenceFragment"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x714

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17000c

    return p0
.end method

.method public initializePreferenceControllerArguments()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceControllers()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;Z)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "EditShortcutsPreferenceFragment requires non-empty shortcut targets"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "targets"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->mShortcutTargets:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->initializePreferenceControllerArguments()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-class p1, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-class p1, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "isExpanded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/android/settings/accessibility/shortcuts/AdvancedShortcutsPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/shortcuts/AdvancedShortcutsPreferenceController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/shortcuts/AdvancedShortcutsPreferenceController;->setExpanded(Z)V

    const-class v0, Lcom/android/settings/accessibility/shortcuts/TripleTapShortcutOptionController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accessibility/shortcuts/TripleTapShortcutOptionController;

    invoke-virtual {v2, v1}, Lcom/android/settings/accessibility/shortcuts/TripleTapShortcutOptionController;->setExpanded(Z)V

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->refreshPreferenceController(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->refreshPreferenceController(Ljava/lang/Class;)V

    :cond_0
    new-instance p1, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$1;-><init>(Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->mSettingsObserver:Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$1;

    sget-object p1, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->SHORTCUT_SETTINGS:[Landroid/net/Uri;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->mSettingsObserver:Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$1;

    invoke-virtual {v4, v3, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.settings.ACCESSIBILITY_SHORTCUT_SETTINGS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getInstalledTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->mShortcutTargets:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->getTitlesFromAccessibilityTargetList(Ljava/util/Set;Ljava/util/List;Landroid/content/res/Resources;)Landroid/util/Pair;

    move-result-object p2

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f14016b

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    instance-of v0, p2, Lcom/google/android/setupdesign/GlifPreferenceLayout;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/google/android/setupdesign/GlifPreferenceLayout;

    iget-object p0, p2, Lcom/google/android/setupdesign/GlifRecyclerLayout;->recyclerMixin:Lcom/google/android/setupdesign/template/RecyclerMixin;

    iget-object p0, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/preference/PreferenceFragmentCompat;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->mSettingsObserver:Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$1;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->mSettingsObserver:Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$1;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->mTouchExplorationStateChangeListener:Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$$ExternalSyntheticLambda1;

    if-eqz v0, :cond_0

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iget-object p0, p0, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->mTouchExplorationStateChangeListener:Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$$ExternalSyntheticLambda1;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :cond_0
    return-void
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    const v0, 0x7f1401ba

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/settings/accessibility/shortcuts/AdvancedShortcutsPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accessibility/shortcuts/AdvancedShortcutsPreferenceController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/shortcuts/AdvancedShortcutsPreferenceController;->setExpanded(Z)V

    const-class v1, Lcom/android/settings/accessibility/shortcuts/TripleTapShortcutOptionController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accessibility/shortcuts/TripleTapShortcutOptionController;

    invoke-virtual {v3, v2}, Lcom/android/settings/accessibility/shortcuts/TripleTapShortcutOptionController;->setExpanded(Z)V

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->refreshPreferenceController(Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->refreshPreferenceController(Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->writePreferenceClickMetric(Landroidx/preference/Preference;)V

    return v2

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    new-instance v0, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->mTouchExplorationStateChangeListener:Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$$ExternalSyntheticLambda1;

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->mTouchExplorationStateChangeListener:Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;->mShortcutTargets:Ljava/util/Set;

    invoke-static {v0, p0}, Lcom/android/settings/accessibility/PreferredShortcuts;->updatePreferredShortcutsFromSettings(Landroid/content/Context;Ljava/util/Set;)V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-class v0, Lcom/android/settings/accessibility/shortcuts/AdvancedShortcutsPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/accessibility/shortcuts/AdvancedShortcutsPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/shortcuts/AdvancedShortcutsPreferenceController;->isExpanded()Z

    move-result p0

    const-string v0, "isExpanded"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    instance-of p2, p1, Lcom/google/android/setupdesign/GlifPreferenceLayout;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/google/android/setupdesign/GlifPreferenceLayout;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, ":settings:show_fragment_title"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2, v0, v0}, Lcom/android/settings/accessibility/AccessibilitySetupWizardUtils;->updateGlifPreferenceLayout(Landroid/content/Context;Lcom/google/android/setupdesign/GlifPreferenceLayout;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    const-class p2, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment;)V

    invoke-static {p2, p1, v0}, Lcom/android/settings/accessibility/AccessibilitySetupWizardUtils;->setPrimaryButton(Landroid/content/Context;Lcom/google/android/setupcompat/template/FooterBarMixin;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final refreshPreferenceController(Ljava/lang/Class;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
