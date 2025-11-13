.class public Lcom/android/settings/notification/ConfigureNotificationSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ConfigureNotificationSettings.java"

# interfaces
.implements Lcom/android/settings/core/OnActivityResultListener;


# static fields
.field static final KEY_LOCKSCREEN:Ljava/lang/String; = "lock_screen_notifications"

.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNotificationAssistantPreferenceController:Lcom/android/settings/notification/NotificationAssistantPreferenceController;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

.field private mRequestPreference:Lcom/android/settings/RingtonePreference;


# direct methods
.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Landroid/app/Application;Landroidx/fragment/app/Fragment;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/notification/ConfigureNotificationSettings;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Application;Landroidx/fragment/app/Fragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 115
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/notification/ConfigureNotificationSettings;->MY_USER_ID:I

    .line 308
    new-instance v0, Lcom/android/settings/notification/ConfigureNotificationSettings$2;

    sget v1, Lcom/android/settings/R$xml;->sec_configure_notification_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/notification/ConfigureNotificationSettings$2;-><init>(I)V

    sput-object v0, Lcom/android/settings/notification/ConfigureNotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Landroid/app/Application;Landroidx/fragment/app/Fragment;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Application;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 224
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 239
    new-instance p2, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;

    const-string v0, "app_and_notif_cell_broadcast_settings"

    invoke-direct {p2, p0, v0}, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance p2, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;

    const-string v0, "key_notification_icons_on_status_bar"

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    new-instance p2, Lcom/samsung/android/settings/notification/brief/NotificationPopupStyleController;

    const-string/jumbo v0, "notis_popup_style_main_settings"

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/notification/brief/NotificationPopupStyleController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private makeRelativeLinkView()V
    .locals 6

    .line 354
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Settings_Relative_Link_View"

    const-string v2, "hide"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    if-nez v0, :cond_5

    .line 359
    new-instance v0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    .line 360
    new-instance v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v0}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 361
    sget v1, Lcom/android/settings/R$string;->relative_link_notification_sound:I

    iput v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 362
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 363
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getSecSimFeatureProvider()Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    move-result-object v2

    .line 364
    invoke-interface {v2}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isMultiSimModel()Z

    move-result v3

    const-string v4, ":settings:fragment_args_key"

    if-eqz v3, :cond_2

    .line 365
    invoke-interface {v2}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->getEnabledSimCnt()I

    move-result v3

    const/4 v5, 0x2

    if-ge v3, v5, :cond_1

    invoke-interface {v2}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->getFirstSlotIndex()I

    move-result v2

    if-lez v2, :cond_2

    :cond_1
    const-string v2, "ds_notification_sound"

    .line 366
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "notification_sound"

    .line 368
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const v2, 0x8d0f

    .line 370
    iput v2, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 371
    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getMetricsCategory()I

    move-result v2

    iput v2, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 372
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$SoundSettingsActivity"

    .line 373
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, ":settings:show_fragment_args"

    .line 374
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v3, "extra_from_search"

    .line 375
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 376
    iput-object v2, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 377
    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    .line 379
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x18894

    if-lt v0, v1, :cond_4

    .line 381
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSupportFlashNotification()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isScreenNotificationSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 382
    :cond_3
    new-instance v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v0}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 383
    sget v1, Lcom/android/settings/R$string;->relative_link_flash_notification:I

    iput v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 384
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.accessibility"

    const-string v3, "com.samsung.accessibility.Activities$FlashNotificationActivity"

    .line 385
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x8d10

    .line 387
    iput v2, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 388
    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getMetricsCategory()I

    move-result v2

    iput v2, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 389
    iput-object v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const-string/jumbo v1, "top_level_accessibility"

    .line 390
    iput-object v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    .line 391
    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    .line 394
    :cond_4
    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private setLinkedDataView()V
    .locals 1

    .line 347
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportRelativeLink(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->makeRelativeLinkView()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 199
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 206
    :goto_0
    invoke-static {p1, v0, p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Application;Landroidx/fragment/app/Fragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected enableNAS(Landroid/content/ComponentName;)V
    .locals 2

    .line 413
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 414
    const-class v1, Lcom/android/settings/notification/NotificationAssistantPreferenceController;

    .line 415
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/notification/NotificationAssistantPreferenceController;

    .line 416
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationAssistantPreferenceController;->setNotificationAssistantGranted(Landroid/content/ComponentName;)V

    .line 417
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ConfigNotiSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x151

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 194
    sget p0, Lcom/android/settings/R$xml;->sec_configure_notification_settings:I

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    const/4 p1, 0x0

    .line 292
    iput-object p1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 211
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 213
    const-class p1, Lcom/android/settings/notification/NotificationAssistantPreferenceController;

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/NotificationAssistantPreferenceController;

    iput-object p1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mNotificationAssistantPreferenceController:Lcom/android/settings/notification/NotificationAssistantPreferenceController;

    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {p1, p0}, Lcom/android/settings/notification/NotificationAssistantPreferenceController;->setFragment(Landroidx/fragment/app/Fragment;)V

    .line 218
    iget-object p0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mNotificationAssistantPreferenceController:Lcom/android/settings/notification/NotificationAssistantPreferenceController;

    new-instance p1, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {p1}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationAssistantPreferenceController;->setBackend(Lcom/android/settings/notification/NotificationBackend;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 138
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 142
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    const-string v0, "configure_notifications_advanced"

    .line 145
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 152
    sget v0, Lcom/android/settings/R$string;->lock_screen_notifs_redact_work:I

    const-string v1, "lock_screen_work_redact"

    const-string v2, "Settings.WORK_PROFILE_LOCK_SCREEN_REDACT_NOTIFICATION_TITLE"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    .line 155
    sget v0, Lcom/android/settings/R$string;->lock_screen_notifs_redact_work_summary:I

    const-string v2, "Settings.WORK_PROFILE_LOCK_SCREEN_REDACT_NOTIFICATION_SUMMARY"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringSummary(Ljava/lang/String;Ljava/lang/String;I)V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ":settings:show_fragment_title_res_package_name"

    .line 162
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ":settings:show_fragment_title_resid"

    if-nez v2, :cond_0

    .line 163
    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, -0x1

    .line 167
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v1, :cond_1

    if-eq v0, v4, :cond_1

    .line 169
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 170
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfigNotiSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const-string v0, "lockscreen_notifications"

    .line 180
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    .line 181
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isAlwaysOnDisplayEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/android/settings/notification/ConfigureNotificationSettings;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 184
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 187
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/16 v0, 0xc

    .line 188
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v1

    .line 186
    invoke-static {p0, v0, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    .line 189
    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 402
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 267
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "all_notifications"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x8cab

    if-eqz v0, :cond_0

    const-string v0, "NSTE0031"

    .line 268
    invoke-static {v1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(ILjava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "lock_screen_notifications"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "NSTE0032"

    .line 271
    invoke-static {v1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(ILjava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "notis_popup_style_main_settings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "NSTE0033"

    .line 274
    invoke-static {v1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(ILjava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "zen_mode_notifications"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "NSTE0007"

    .line 277
    invoke-static {v1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(ILjava/lang/String;)V

    goto :goto_0

    .line 279
    :cond_3
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "more_settings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "NSTE0008"

    .line 280
    invoke-static {v1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(ILjava/lang/String;)V

    .line 284
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 341
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 342
    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->setLinkedDataView()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 298
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 299
    iget-object p0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz p0, :cond_0

    .line 300
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "selected_preference"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 407
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    return-void
.end method
