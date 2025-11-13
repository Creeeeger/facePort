.class public abstract Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final excludeComponentSet:Ljava/util/HashSet;

.field public static final intentFilter:Landroid/content/IntentFilter;


# instance fields
.field public amplifySoundObserver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;

.field public final broadcastReceiver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment$2;

.field public final handler:Landroid/os/Handler;

.field public interactionControlObserver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;

.field public mResetMenu:Landroid/view/MenuItem;

.field public magnificationObserver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;

.field public final preferenceControllers:Ljava/util/List;

.field public final runnable:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment$1;

.field public shortcutContentObserver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment$3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->intentFilter:Landroid/content/IntentFilter;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->excludeComponentSet:Ljava/util/HashSet;

    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_BIXBY_AGENT:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_DISABLED_MENU_K05"

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/AccessibilityRune;->getFloatingFeatureBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_GOOGLE_TALKBACK:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_SAMSUNG_TALKBACK:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_UNIVERSAL_SWITCH:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_GOOGLE_LIVE_TRANSCRIBE_SHORTCUT:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_GOOGLE_SOUND_NOTIFICATION_SHORTCUT:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->preferenceControllers:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->runnable:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment$1;

    new-instance v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment$2;-><init>(Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->broadcastReceiver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment$2;

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->getShortcutType()I

    move-result v0

    sget-object v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager;->candidateBuilders:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager;->getCandidatesMap(Landroid/content/Context;I)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->getShortcutType()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->isSupportQuickSettings(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->preferenceControllers:Ljava/util/List;

    new-instance v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->getShortcutType()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {v3, p1, v1, v4, v5}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate;IZ)V

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->preferenceControllers:Ljava/util/List;

    new-instance v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->getShortcutType()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v3, p1, v1, v4, v5}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate;IZ)V

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->preferenceControllers:Ljava/util/List;

    return-object p0
.end method

.method public abstract getDbKey()Ljava/lang/String;
.end method

.method public abstract getDescriptionResId()I
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17001c

    return p0
.end method

.method public abstract getShortcutType()I
.end method

.method public abstract getTitleResId()I
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver;->$r8$clinit:I

    new-instance v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;-><init>(Landroid/os/Handler;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->amplifySoundObserver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/4 v2, 0x2

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;-><init>(Landroid/os/Handler;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->interactionControlObserver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;-><init>(Landroid/os/Handler;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->magnificationObserver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;

    new-instance p1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment$3;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment$3;-><init>(Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->shortcutContentObserver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment$3;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->getTitleResId()I

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0f000c

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0a095c

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->mResetMenu:Landroid/view/MenuItem;

    const/4 p2, 0x5

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->mResetMenu:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->getDbKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public final onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string/jumbo p1, "shortcut_description"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->getDescriptionResId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p2, Lcom/samsung/android/settings/accessibility/advanced/SecAccessibilityControlTimeoutPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/samsung/android/settings/accessibility/advanced/SecAccessibilityControlTimeoutPreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;)V

    invoke-virtual {p0, p2}, Landroidx/activity/ComponentActivity;->addOnConfigurationChangedListener(Landroidx/core/util/Consumer;)V

    :cond_0
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a095c

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->getDbKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accessibility_qs_targets"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f140098

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->getShortcutType()I

    move-result v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/android/internal/accessibility/util/ShortcutUtils;->getShortcutTargetsFromSettings(Landroid/content/Context;II)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->getShortcutType()I

    move-result v3

    sget-object v4, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->excludeDeviceNameSet:Ljava/util/HashSet;

    const-class v4, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v2, v4, v3, v0, v5}, Landroid/view/accessibility/AccessibilityManager;->enableShortcutsForTargets(ZILjava/util/Set;I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->updatePreferenceStates()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->getDbKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->updatePreferenceStates()V

    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->amplifySoundObserver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->interactionControlObserver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->magnificationObserver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->shortcutContentObserver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment$3;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->broadcastReceiver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment$2;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->refreshControllerList(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->amplifySoundObserver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver;->register(Landroid/content/ContentResolver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->interactionControlObserver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver;->register(Landroid/content/ContentResolver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->magnificationObserver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver;->register(Landroid/content/ContentResolver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->shortcutContentObserver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment$3;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver;->register(Landroid/content/ContentResolver;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->broadcastReceiver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment$2;

    sget-object v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->mResetMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->getDbKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0704e0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07046b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessibility/base/widget/DividerItemDecorator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    add-int/2addr p2, p1

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/settings/accessibility/base/widget/DividerItemDecorator;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public final refreshControllerList(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->getShortcutType()I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager;->getCandidatesMap(Landroid/content/Context;I)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->preferenceControllers:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-virtual {v2}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    check-cast v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceController;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceController;->setVisible(Z)V

    goto :goto_0

    :cond_0
    move-object v3, v2

    check-cast v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceController;

    invoke-virtual {v2}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->excludeComponentSet:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceController;->setVisible(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate;

    new-instance v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->getShortcutType()I

    move-result v4

    invoke-direct {v2, p1, v1, v4, v3}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate;IZ)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->getShortcutType()I

    move-result v1

    const/16 v4, 0x10

    if-eq v1, v4, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->preferenceControllers:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Lcom/android/settings/dashboard/DashboardFragment;->addPreferenceController(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->updatePreferenceStates()V

    return-void
.end method

.method public final updatePreferenceStates()V
    .locals 7

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0a0068

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->preferenceControllers:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/core/AbstractPreferenceController;

    check-cast v5, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceController;

    invoke-virtual {v5}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceController;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->getTitleResId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v3, v2, :cond_5

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v4, v2, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->getTitleResId()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->preferenceControllers:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    const v5, 0x7f142b9f

    invoke-virtual {v0, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v3, v2, :cond_5

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v5, v2, Landroid/widget/TextView;

    if-eqz v5, :cond_4

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->preferenceControllers:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const v6, 0x7f142ba0

    invoke-virtual {v0, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method
