.class public Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment;
.super Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public cameraFlashPreference:Landroidx/preference/SecSwitchPreferenceScreen;

.field public final mCameraFlashObserver:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment$1;

.field public mContext:Landroid/content/Context;

.field public final mScreenFlashObserver:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment$1;

.field public screenFlashPreference:Landroidx/preference/SecSwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    const v1, 0x7f17019d

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment;->mCameraFlashObserver:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment$1;

    new-instance v0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment;->mScreenFlashObserver:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment$1;

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1774

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17019d

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment;->mContext:Landroid/content/Context;

    const-class p1, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationAllAppsPreferenceController;->setParentFragment(Landroidx/fragment/app/Fragment;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->enableAutoFlowLogging(Z)V

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getA11ySettingsMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string p1, "camera_flash"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment;->cameraFlashPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    const-string/jumbo p1, "screen_flash"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment;->screenFlashPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string p2, "guide_preference"

    invoke-virtual {p0, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;

    if-eqz p0, :cond_0

    new-instance p2, Lcom/samsung/android/settings/accessibility/advanced/SecAccessibilityControlTimeoutPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/accessibility/advanced/SecAccessibilityControlTimeoutPreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;)V

    invoke-virtual {p1, p2}, Landroidx/activity/ComponentActivity;->addOnConfigurationChangedListener(Landroidx/core/util/Consumer;)V

    :cond_0
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 v1, 0x1774

    const-string v2, "A11Y0001"

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->clicked(ILjava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment;->mCameraFlashObserver:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment$1;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment;->mScreenFlashObserver:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment$1;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 v1, 0x1774

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->visible(Landroid/content/Context;III)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_flash_notification"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment;->mCameraFlashObserver:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment$1;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_flash_notification"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment;->mScreenFlashObserver:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment$1;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment;->updateCameraFlashNotificationSwitch()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment;->updateScreenFlashNotificationSwitch()V

    return-void
.end method

.method public final updateCameraFlashNotificationSwitch()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_flash_notification"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment;->cameraFlashPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    const-class v0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecCameraFlashNotificationPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecCameraFlashNotificationPreferenceController;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment;->cameraFlashPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecCameraFlashNotificationPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_1
    return-void
.end method

.method public final updateScreenFlashNotificationSwitch()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_flash_notification"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment;->screenFlashPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment;->screenFlashPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_1
    const-class v1, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecScreenFlashNotificationPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecScreenFlashNotificationPreferenceController;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecScreenFlashNotificationPreferenceController;->setChecked(Z)Z

    :cond_2
    return-void
.end method
