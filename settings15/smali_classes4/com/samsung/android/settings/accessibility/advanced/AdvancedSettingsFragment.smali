.class public Lcom/samsung/android/settings/accessibility/advanced/AdvancedSettingsFragment;
.super Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityDashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public final shortcutContentObserver:Lcom/samsung/android/settings/accessibility/advanced/AdvancedSettingsFragment$1;


# direct methods
.method public static synthetic $r8$lambda$CT78zNSLBF6RN6iZ6JvOQ5veKdQ(Lcom/samsung/android/settings/accessibility/advanced/AdvancedSettingsFragment;Lcom/samsung/android/settings/widget/SecRelativeLinkView;Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 v0, 0x1770

    const-string v1, "A11Y6006"

    invoke-virtual {p0, v0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->clicked(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->startFooterViewLink(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    const v1, 0x7f170001

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/accessibility/advanced/AdvancedSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityDashboardFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/accessibility/advanced/AdvancedSettingsFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/advanced/AdvancedSettingsFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/advanced/AdvancedSettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/AdvancedSettingsFragment;->shortcutContentObserver:Lcom/samsung/android/settings/accessibility/advanced/AdvancedSettingsFragment$1;

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "A11y_Advanced"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1770

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170001

    return p0
.end method

.method public final onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityDashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportRelativeLink()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-direct {p2, p1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v0}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/settings/notification/reminder/NotificationReminderActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "from_relative_link"

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const-string/jumbo p1, "top_level_notifications"

    iput-object p1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    const p1, 0x7f141eac    # 1.96885E38f

    iput p1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    invoke-virtual {p2, v0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/settings/accessibility/advanced/AdvancedSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, v0}, Lcom/samsung/android/settings/accessibility/advanced/AdvancedSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/advanced/AdvancedSettingsFragment;Lcom/samsung/android/settings/widget/SecRelativeLinkView;Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityDashboardFragment;->onStart()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/AdvancedSettingsFragment;->shortcutContentObserver:Lcom/samsung/android/settings/accessibility/advanced/AdvancedSettingsFragment$1;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver;->register(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityDashboardFragment;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/AdvancedSettingsFragment;->shortcutContentObserver:Lcom/samsung/android/settings/accessibility/advanced/AdvancedSettingsFragment$1;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
