.class public Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;
.super Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

.field public mScanAnimator:Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;

.field public mStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$1;

    const v1, 0x7f1701ec

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final displayTile(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 3

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getDashboardFeatureProvider()Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "key_find_my_mobile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "security_status_security_patch_level"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "security_status_package_verifier"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "security_status_partial_system_updates"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string/jumbo v2, "security_status_find_device"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportFindMyMobileFeature(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_2
    const-string/jumbo v2, "rampart_main_setting_alias"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x320

    iput v2, p1, Lcom/android/settingslib/drawer/Tile;->mOrderOverride:I

    const v2, 0xdeb5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/settingslib/drawer/Tile;->mSaLoggingIdOverride:Ljava/lang/String;

    :cond_3
    const-string/jumbo v2, "security_status_of_your_devices"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0xe2f4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/drawer/Tile;->mSaLoggingIdOverride:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->FMM_SUPPORT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/samsung/android/settings/account/AccountUtils;->isSamsungAccountExists(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f142a6a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/drawer/Tile;->mSummaryOverride:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14296a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/drawer/Tile;->mSummaryOverride:Ljava/lang/CharSequence;

    :cond_6
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->displayTile(Lcom/android/settingslib/drawer/Tile;)Z

    move-result p0

    return p0

    :cond_7
    :goto_1
    return v1

    :cond_8
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SecurityAndPrivacySettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2348

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1701ec

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getDashboardFeatureProvider()Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    const-string/jumbo p1, "security_dashboard_status"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    new-instance p1, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceControllers()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;->mPerformScanVi:Z

    iput-object v1, p1, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;->mStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p1, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;->mScanViMenuControllers:Ljava/util/Map;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p1, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;->mHandler:Landroid/os/Handler;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticLambda3;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    const-string v0, "key_screen_lock"

    invoke-static {v0, v2}, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;->findController(Ljava/lang/String;Ljava/util/List;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;

    const-string v4, "key_accounts_security"

    invoke-static {v4, v2}, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;->findController(Ljava/lang/String;Ljava/util/List;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;

    const-string v6, "key_device_finders_new"

    invoke-static {v6, v2}, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;->findController(Ljava/lang/String;Ljava/util/List;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;

    invoke-static {v6, v2}, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;->findController(Ljava/lang/String;Ljava/util/List;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;

    const-string v9, "key_app_security"

    invoke-static {v9, v2}, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;->findController(Ljava/lang/String;Ljava/util/List;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;

    const-string v11, "key_updates"

    invoke-static {v11, v2}, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;->findController(Ljava/lang/String;Ljava/util/List;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;

    invoke-virtual {v3}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatus()I

    move-result v12

    if-nez v12, :cond_0

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v5}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v7}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v8}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v1, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v10}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v2}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mScanAnimator:Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;

    const-class p1, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->init(Landroidx/fragment/app/Fragment;)V

    const-class p1, Lcom/samsung/android/settings/privacy/SecurityDashboardScreenLockPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/privacy/SecurityDashboardScreenLockPreferenceController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardScreenLockPreferenceController;->init(Landroidx/fragment/app/Fragment;)V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onPause()V
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mScanAnimator:Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;

    iget-object v1, v0, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;->mStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->setScanning(ZZ)V

    iget-object v0, v0, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;->mScanViMenuControllers:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->onStopScanVi()V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onPause()V

    return-void
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "privacy_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2348

    const v1, 0xdebc

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public final onResume()V
    .locals 6

    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onResume()V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->setupStatus(Z)V

    iget-object v2, v0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mScanAnimator:Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;

    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;->mPerformScanVi:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;->mStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->setScanning(ZZ)V

    iget-object v2, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;->mScanViMenuControllers:Ljava/util/Map;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;

    invoke-virtual {v3}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->setDefaultSummary()V

    sget-object v4, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->NONE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;->mScanViMenuControllers:Ljava/util/Map;

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    iget-object v3, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;->mScanViMenuControllers:Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;

    sget-object v4, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->SCANNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    invoke-virtual {v3}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->getScanCategoryIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->updateScanCategoryIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;Ljava/util/List;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;->mPerformScanVi:Z

    :cond_1
    return-void
.end method
