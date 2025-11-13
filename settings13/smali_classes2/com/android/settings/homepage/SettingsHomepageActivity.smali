.class public Lcom/android/settings/homepage/SettingsHomepageActivity;
.super Lcom/android/settings/core/SettingsBaseActivity;
.source "SettingsHomepageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentCreator;
    }
.end annotation


# instance fields
.field private mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

.field private mIsEmbeddingActivityEnabled:Z

.field private mIsMultiPaneSupported:Z

.field private mIsRegularLayout:Z

.field private mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

.field private mMainView:Landroid/widget/LinearLayout;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mPrimaryPane:Landroid/widget/FrameLayout;

.field private mPrimaryPaneDisplayed:Z

.field private mSecondaryPane:Landroid/widget/FrameLayout;

.field private mThemeApplyReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$9jtmrgTpIPgK6EQYgpR1CFMzclM(Lcom/android/settings/homepage/SettingsHomepageActivity;Ljava/lang/String;)Lcom/android/settings/homepage/TopLevelSettings;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/homepage/SettingsHomepageActivity;->lambda$onCreate$2(Ljava/lang/String;)Lcom/android/settings/homepage/TopLevelSettings;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HrAuBqbd-TdCkuw6sCvAi-tWP8U(Lcom/android/settings/homepage/SettingsHomepageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->lambda$updateTilesList$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$Q0VnzxqKLtCf3NDXjV31knZwQ-w(Lcom/android/settings/homepage/SettingsHomepageActivity;Landroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/homepage/SettingsHomepageActivity;->lambda$updateSplitLayout$3(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ywJBP5yr2aS27mn5_KbQBeWnDWw(Lcom/android/settings/homepage/SettingsHomepageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->lambda$onCreate$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTilesList(Lcom/android/settings/homepage/SettingsHomepageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateTilesList()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 120
    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsRegularLayout:Z

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mPrimaryPaneDisplayed:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/homepage/SettingsHomepageActivity;)Lcom/android/settings/core/CategoryMixin;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

    return-object p0
.end method

.method private doUpdateTilesList()V
    .locals 8

    .line 1038
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 1039
    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    .line 1041
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1042
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1044
    invoke-static {p0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 1045
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    .line 1046
    :goto_0
    new-instance v6, Landroid/content/ComponentName;

    const-class v7, Lcom/android/settings/Settings$DevelopmentSettingsDashboardActivity;

    .line 1047
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    invoke-direct {p0, v2, v6, v3, v0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    move v4, v5

    :cond_1
    const-string v0, "SettingsHomepageActivity"

    if-eqz v4, :cond_2

    .line 1053
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enabled state changed for some tiles, reloading all categories "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1053
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    iget-object p0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

    invoke-virtual {p0}, Lcom/android/settings/core/CategoryMixin;->updateCategories()V

    goto :goto_1

    :cond_2
    const-string p0, "No enabled state changed, skipping updateCategory call"

    .line 1057
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private getHighlightMenuKey()Ljava/lang/String;
    .locals 2

    .line 931
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 932
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.settings.SETTINGS_EMBED_DEEP_LINK_ACTIVITY"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_HIGHLIGHT_MENU_KEY"

    .line 934
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 936
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "top_level_connections"

    return-object p0
.end method

.method private isRunOnTop()Z
    .locals 1

    .line 695
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 697
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onCreate$1()V
    .locals 1

    const-string v0, "SettingsHomepageActivity#TopLevelCacheManager_createControllersFromXml"

    .line 252
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 256
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 262
    invoke-static {}, Lcom/samsung/android/settings/homepage/TopLevelCacheManager;->getInstance()Lcom/samsung/android/settings/homepage/TopLevelCacheManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/homepage/TopLevelCacheManager;->createControllersFromXml(Landroid/content/Context;)V

    .line 263
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method private synthetic lambda$onCreate$2(Ljava/lang/String;)Lcom/android/settings/homepage/TopLevelSettings;
    .locals 3

    .line 343
    new-instance v0, Lcom/android/settings/homepage/TopLevelSettings;

    invoke-direct {v0}, Lcom/android/settings/homepage/TopLevelSettings;-><init>()V

    .line 344
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, ":settings:fragment_args_key"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 348
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.settings.SETTINGS_EMBED_DEEP_LINK_ACTIVITY"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_HIGHLIGHT_MENU_KEY"

    .line 351
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_HIGHLIGHT_MENU_TITLE"

    .line 352
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 354
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 355
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, ":settings:fragment_args_title"

    .line 356
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private synthetic lambda$updateSplitLayout$3(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 686
    instance-of v0, p1, Lcom/android/settings/homepage/SplitLayoutListener;

    if-eqz v0, :cond_0

    .line 687
    check-cast p1, Lcom/android/settings/homepage/SplitLayoutListener;

    iget-boolean p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsRegularLayout:Z

    invoke-interface {p1, p0}, Lcom/android/settings/homepage/SplitLayoutListener;->onSplitLayoutChanged(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateTilesList$6()V
    .locals 0

    .line 1034
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->doUpdateTilesList()V

    return-void
.end method

.method private launchDeepLinkIntentToRight()V
    .locals 12

    .line 825
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsMultiPaneSupported:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 830
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 831
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.settings.SETTINGS_EMBED_DEEP_LINK_ACTIVITY"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 836
    :cond_1
    instance-of v1, p0, Lcom/android/settings/homepage/DeepLinkHomepageActivity;

    const-string v2, "SettingsHomepageActivity"

    if-nez v1, :cond_2

    instance-of v1, p0, Lcom/android/settings/homepage/DeepLinkHomepageActivityInternal;

    if-nez v1, :cond_2

    const-string v0, "Not a deep link component"

    .line 838
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->finish()V

    return-void

    :cond_2
    const-string v1, "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_INTENT_URI"

    .line 843
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 845
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "No EXTRA_SETTINGS_EMBEDDED_DEEP_LINK_INTENT_URI to deep link"

    .line 846
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->finish()V

    return-void

    :cond_3
    const/4 v3, 0x1

    .line 853
    :try_start_0
    invoke-static {v1, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_4

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No valid target for the deep link intent: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->finish()V

    return-void

    .line 866
    :cond_4
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 869
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10080000

    .line 871
    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeFlags(I)V

    const v2, 0x88000

    .line 873
    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeFlags(I)V

    const/high16 v2, 0x2000000

    .line 874
    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeFlags(I)V

    .line 881
    invoke-virtual {v1, v0}, Landroid/content/Intent;->replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const-string v2, "is_from_settings_homepage"

    .line 883
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x0

    const-string v3, "is_from_slice"

    .line 884
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "settings_large_screen_deep_link_intent_data"

    .line 886
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 890
    new-instance v6, Landroid/content/ComponentName;

    .line 891
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v6, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 893
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v5, p0

    move-object v7, v4

    .line 890
    invoke-static/range {v5 .. v11}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRule(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;IIZ)V

    .line 897
    new-instance v6, Landroid/content/ComponentName;

    .line 898
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/settings/Settings;

    invoke-direct {v6, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 900
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 897
    invoke-static/range {v5 .. v11}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRule(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;IIZ)V

    .line 907
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->isLaunchModeSingleInstance(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, -0x1

    goto :goto_0

    :cond_5
    const v2, 0xffff

    .line 908
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->getPopOverBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v3

    .line 910
    const-class v4, Landroid/os/UserHandle;

    const-string/jumbo v5, "user_handle"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    if-eqz v0, :cond_6

    .line 914
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 919
    :cond_6
    invoke-virtual {p0, v1, v2, v3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse deep link intent: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->finish()V

    :cond_7
    :goto_2
    return-void
.end method

.method private launchHomepagePlaceholderToRight()V
    .locals 4

    .line 804
    invoke-static {p0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isShowingMultiPaneLayout(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 808
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->isRunOnTop()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 812
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "need_search_icon_in_action_bar"

    const/4 v2, 0x1

    .line 813
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 814
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/Settings$ConnectionsSettingsActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v3, 0x102000

    .line 815
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, ":settings:show_fragment_args"

    .line 816
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v0, ":settings:is_second_layer_page"

    .line 817
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v0, 0xffff

    .line 818
    invoke-static {p0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->getPopOverBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method private setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z
    .locals 1

    if-nez p4, :cond_0

    .line 1066
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    sget-object p4, Lcom/android/settings/core/gateway/SettingsGateway;->SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

    .line 1068
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1067
    invoke-static {p4, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p3, 0x0

    .line 1071
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/core/SettingsBaseActivity;->setTileEnabled(Landroid/content/ComponentName;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1073
    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return p0
.end method

.method private showFragment(Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentCreator;I)Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/fragment/app/Fragment;",
            ">(",
            "Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentCreator<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 786
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 787
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 788
    invoke-virtual {p0, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-nez p0, :cond_0

    .line 791
    invoke-interface {p1}, Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentCreator;->create()Landroidx/fragment/app/Fragment;

    move-result-object p0

    .line 792
    invoke-interface {p1, p0}, Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentCreator;->init(Landroidx/fragment/app/Fragment;)V

    .line 793
    invoke-virtual {v0, p2, p0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 795
    :cond_0
    invoke-interface {p1, p0}, Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentCreator;->init(Landroidx/fragment/app/Fragment;)V

    .line 796
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 798
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-object p0
.end method

.method private updateSplitLayout()V
    .locals 10

    .line 575
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsMultiPaneSupported:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 579
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isShowingMultiPaneLayout(Landroid/content/Context;)Z

    move-result v0

    .line 584
    invoke-static {p0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    const/16 v5, 0x8

    const-string v6, "SettingsHomepageActivity"

    if-nez v4, :cond_4

    if-eqz v0, :cond_2

    .line 593
    invoke-static {p0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->getPopOverWidthRatio(Landroid/content/Context;)F

    move-result v1

    .line 594
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v8, v7

    mul-float/2addr v8, v1

    .line 595
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr v7, v1

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 598
    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->getSplitRatio(Landroid/content/Context;)F

    move-result v1

    .line 599
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v8, v7

    div-float/2addr v8, v1

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v1

    mul-float/2addr v8, v9

    .line 600
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v3

    move v7, v1

    .line 604
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "primaryScreenWidthDp : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "secondaryScreenWidthDp : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x24d

    if-ge v7, v8, :cond_4

    if-lt v1, v8, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v5

    .line 611
    :goto_2
    sget v7, Lcom/android/settings/R$id;->content_parent_start_padding:I

    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 613
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 616
    :cond_5
    iget-boolean v1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsMultiPaneSupported:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x2

    if-nez v0, :cond_7

    .line 619
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->isRunOnTop()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    move v0, v3

    .line 625
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "multiPaneState : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-boolean v7, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mPrimaryPaneDisplayed:Z

    if-nez v7, :cond_8

    if-eq v0, v1, :cond_8

    .line 628
    iput-boolean v2, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mPrimaryPaneDisplayed:Z

    .line 630
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPrimaryPaneDisplayed : "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mPrimaryPaneDisplayed:Z

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_a

    .line 633
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentConfig()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    .line 635
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v7

    .line 636
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCurrentConfig().getLayoutDirection() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getResources().getConfiguration().getLayoutDirection() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v7, :cond_a

    .line 641
    iget-object v6, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    move v1, v3

    .line 642
    :goto_4
    iget-object v6, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_a

    .line 643
    iget-object v6, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 645
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 652
    :cond_a
    iget-object v1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mPrimaryPane:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_c

    if-ne v0, v2, :cond_b

    const/high16 v2, 0x20000

    goto :goto_5

    :cond_b
    const/high16 v2, 0x60000

    .line 653
    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    .line 659
    :cond_c
    iget-object v1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mSecondaryPane:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_e

    if-nez v0, :cond_d

    goto :goto_6

    :cond_d
    move v3, v5

    .line 660
    :goto_6
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 666
    :cond_e
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsRegularLayout:Z

    if-ne v0, v4, :cond_f

    return-void

    .line 669
    :cond_f
    iput-boolean v4, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsRegularLayout:Z

    .line 685
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/homepage/SettingsHomepageActivity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateTilesList()V
    .locals 1

    .line 1034
    new-instance v0, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/homepage/SettingsHomepageActivity;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public clearActivityStack()V
    .locals 2

    .line 1091
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsMultiPaneSupported:Z

    if-eqz v0, :cond_0

    .line 1092
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1093
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x24000000

    .line 1094
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1096
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .line 1082
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsMultiPaneSupported:Z

    if-eqz v0, :cond_0

    .line 1083
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->isRunOnTop()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1084
    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->clearActivityStack()V

    .line 1087
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getMainFragment()Lcom/android/settings/homepage/TopLevelSettings;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

    return-object p0
.end method

.method protected isNeedCategoryUpdateWithCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 515
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 516
    invoke-static {p0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isShowingMultiPaneLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request Code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  , Result Code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , Intent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SettingsHomepageActivity"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->isRunOnTop()Z

    move-result p3

    if-eqz p3, :cond_1

    const p3, 0xffff

    if-ne p1, p3, :cond_0

    const/16 p1, 0x7e6

    if-ne p2, p1, :cond_1

    .line 523
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->launchHomepagePlaceholderToRight()V

    goto :goto_0

    :cond_0
    const/high16 p3, 0x10000

    if-ne p1, p3, :cond_1

    const/16 p1, 0x7e5

    if-eq p2, p1, :cond_1

    .line 527
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->launchHomepagePlaceholderToRight()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 537
    invoke-super {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 551
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateSplitLayout()V

    .line 553
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->launchHomepagePlaceholderToRight()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "SettingsHomepageActivity#onCreate"

    .line 245
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "VerificationLog"

    const-string v1, "OnCreate"

    .line 248
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v0, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/homepage/SettingsHomepageActivity;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 267
    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 269
    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    .line 271
    invoke-static {p0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isSupportMultiPaneLayout(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsMultiPaneSupported:Z

    if-nez p1, :cond_0

    .line 273
    iget-boolean p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    if-eqz p1, :cond_1

    .line 275
    :cond_0
    const-class p1, Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 276
    invoke-virtual {p0}, Landroid/app/Activity;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-class v1, Lcom/android/settings/homepage/DeepLinkHomepageActivityInternal;

    .line 284
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x2000000

    .line 285
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 286
    invoke-virtual {p0}, Landroid/app/Activity;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    const-string/jumbo v2, "user_handle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 287
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeFlags(I)V

    .line 288
    invoke-virtual {p1}, Landroid/os/UserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->finish()V

    return-void

    .line 296
    :cond_1
    sget p1, Lcom/android/settings/R$layout;->sec_settings_homepage_container:I

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->setContentView(I)V

    .line 297
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 300
    iget-boolean p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsMultiPaneSupported:Z

    if-eqz p1, :cond_2

    .line 301
    sget p1, Lcom/android/settings/R$id;->setting_main_view:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainView:Landroid/widget/LinearLayout;

    .line 302
    sget p1, Lcom/android/settings/R$id;->primary_pane:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mPrimaryPane:Landroid/widget/FrameLayout;

    .line 303
    sget p1, Lcom/android/settings/R$id;->secondary_pane:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mSecondaryPane:Landroid/widget/FrameLayout;

    .line 326
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getHighlightMenuKey()Ljava/lang/String;

    move-result-object p1

    .line 342
    new-instance v0, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/homepage/SettingsHomepageActivity;Ljava/lang/String;)V

    sget p1, Lcom/android/settings/R$id;->main_content:I

    invoke-direct {p0, v0, p1}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showFragment(Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentCreator;I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/homepage/TopLevelSettings;

    iput-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

    .line 364
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->launchDeepLinkIntentToRight()V

    .line 368
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateSplitLayout()V

    .line 370
    iget-boolean p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsMultiPaneSupported:Z

    if-eqz p1, :cond_3

    .line 371
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->launchHomepagePlaceholderToRight()V

    .line 373
    :cond_3
    new-instance p1, Lcom/android/settings/homepage/SettingsHomepageActivity$1;

    invoke-direct {p1, p0}, Lcom/android/settings/homepage/SettingsHomepageActivity$1;-><init>(Lcom/android/settings/homepage/SettingsHomepageActivity;)V

    iput-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mThemeApplyReceiver:Landroid/content/BroadcastReceiver;

    .line 380
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.theme.themecenter.THEME_APPLY_START"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 384
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mThemeApplyReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 449
    iput-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mThemeApplyReceiver:Landroid/content/BroadcastReceiver;

    .line 451
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/homepage/TopLevelCacheManager;->getInstance()Lcom/samsung/android/settings/homepage/TopLevelCacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/homepage/TopLevelCacheManager;->release()V

    .line 452
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 488
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 492
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 496
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 500
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->launchDeepLinkIntentToRight()V

    .line 503
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->launchHomepagePlaceholderToRight()V

    .line 508
    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->unregisterSubSettingsPairRule(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "VerificationLog"

    const-string/jumbo v1, "onResume"

    .line 459
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-boolean v1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsMultiPaneSupported:Z

    if-eqz v1, :cond_2

    .line 463
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->isRunOnTop()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 464
    invoke-static {p0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isShowingMultiPaneLayout(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 465
    invoke-virtual {p0}, Lcom/android/settings/core/SettingsBaseActivity;->isLockTaskModePinned()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 466
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->launchHomepagePlaceholderToRight()V

    goto :goto_0

    .line 468
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->finish()V

    goto :goto_0

    .line 470
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mPrimaryPaneDisplayed:Z

    if-nez v1, :cond_2

    .line 471
    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->finish()V

    .line 476
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onResume()V

    .line 478
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateSplitLayout()V

    .line 481
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateTilesList()V

    const-string p0, "Executed"

    .line 482
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStart()V
    .locals 4

    .line 390
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsApplication;

    invoke-virtual {v0, p0}, Lcom/android/settings/SettingsApplication;->setHomeActivity(Lcom/android/settings/homepage/SettingsHomepageActivity;)V

    const-string v0, "SettingsHomepageActivity#PkgUtils_clearAllCaches"

    .line 392
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 393
    invoke-static {}, Lcom/samsung/android/settings/PkgUtils;->clearAllCaches()V

    .line 394
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    .line 396
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 398
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsMultiPaneSupported:Z

    if-eqz v0, :cond_0

    .line 399
    new-instance v0, Lcom/android/settings/homepage/SettingsHomepageActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/SettingsHomepageActivity$2;-><init>(Lcom/android/settings/homepage/SettingsHomepageActivity;)V

    iput-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

    .line 406
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settingslib.development.DevelopmentSettingsEnabler.SETTINGS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 410
    new-instance v0, Lcom/android/settings/homepage/SettingsHomepageActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/SettingsHomepageActivity$3;-><init>(Lcom/android/settings/homepage/SettingsHomepageActivity;)V

    iput-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 417
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 418
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 419
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 420
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 421
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 430
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 431
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsMultiPaneSupported:Z

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 433
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

    .line 434
    invoke-virtual {v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 435
    iput-object v1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 439
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 440
    iput-object v1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    return-void
.end method
