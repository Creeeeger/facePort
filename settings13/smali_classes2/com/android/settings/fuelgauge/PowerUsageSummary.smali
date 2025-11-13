.class public Lcom/android/settings/fuelgauge/PowerUsageSummary;
.super Lcom/android/settings/fuelgauge/PowerUsageBase;
.source "PowerUsageSummary.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;


# static fields
.field static final BATTERY_INFO_LOADER:I = 0x1

.field static final BATTERY_TIP_LOADER:I = 0x2

.field static final KEY_BATTERY_ERROR:Ljava/lang/String; = "battery_help_message"

.field static final KEY_BATTERY_USAGE:Ljava/lang/String; = "battery_usage_summary"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

.field mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

.field mBatteryInfoLoaderCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Lcom/android/settings/fuelgauge/BatteryInfo;",
            ">;"
        }
    .end annotation
.end field

.field mBatteryLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

.field mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

.field private mBatteryTipsCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;",
            ">;>;"
        }
    .end annotation
.end field

.field mBatteryUsagePreference:Landroidx/preference/Preference;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field mHelpPreference:Landroidx/preference/Preference;

.field mNeedUpdateBatteryTip:Z

.field mPowerFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

.field final mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 327
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->power_usage_summary:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;-><init>()V

    .line 93
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 101
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoLoaderCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    .line 124
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipsCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 231
    sget p0, Lcom/android/settings/R$string;->help_url_battery:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PowerUsageSummary"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x4ef

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 226
    sget p0, Lcom/android/settings/R$xml;->power_usage_summary:I

    return p0
.end method

.method initFeatureProvider()V
    .locals 2

    .line 272
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 273
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 274
    invoke-virtual {v1, v0}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    return-void
.end method

.method initPreference()V
    .locals 3

    const-string v0, "battery_usage_summary"

    .line 279
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryUsagePreference:Landroidx/preference/Preference;

    .line 281
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isChartGraphEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    sget v1, Lcom/android/settings/R$string;->advanced_battery_preference_summary_with_hours:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 283
    :cond_0
    sget v1, Lcom/android/settings/R$string;->advanced_battery_preference_summary:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 280
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "battery_help_message"

    .line 285
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHelpPreference:Landroidx/preference/Preference;

    const/4 p0, 0x0

    .line 286
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method protected isBatteryHistoryNeeded()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 148
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 151
    const-class v0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    .line 152
    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->setActivity(Landroid/app/Activity;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->setFragment(Landroidx/preference/PreferenceFragmentCompat;)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->setLifecycle(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 156
    const-class v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    .line 157
    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->setActivity(Lcom/android/settings/SettingsActivity;)V

    .line 158
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->setFragment(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    .line 159
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->setBatteryTipListener(Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;)V

    return-void
.end method

.method public onBatteryTipHandled(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V
    .locals 0

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->restartBatteryTipLoader()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 164
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 167
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string v0, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v1, "com.samsung.android.lool"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.sm.ACTION_POWER_USAGE_SUMMARY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 169
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 170
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 175
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 211
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 201
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_estimates_last_update_time"

    .line 203
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    .line 202
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 318
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 319
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->saveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected refreshUi(I)V
    .locals 2

    .line 240
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 245
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mIsBatteryPresent:Z

    if-nez v0, :cond_1

    return-void

    .line 250
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mNeedUpdateBatteryTip:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq p1, v1, :cond_2

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->restartBatteryTipLoader()V

    goto :goto_0

    .line 254
    :cond_2
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mNeedUpdateBatteryTip:Z

    .line 257
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->restartBatteryInfoLoader()V

    return-void
.end method

.method restartBatteryInfoLoader()V
    .locals 3

    .line 291
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 295
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mIsBatteryPresent:Z

    if-nez v0, :cond_1

    return-void

    .line 298
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoLoaderCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method protected restartBatteryStatsLoader(I)V
    .locals 0

    .line 309
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->restartBatteryStatsLoader(I)V

    .line 311
    iget-boolean p1, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mIsBatteryPresent:Z

    if-eqz p1, :cond_0

    .line 312
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->quickUpdateHeaderPreference()V

    :cond_0
    return-void
.end method

.method restartBatteryTipLoader()V
    .locals 3

    .line 262
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipsCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method setBatteryLayoutPreference(Lcom/android/settingslib/widget/LayoutPreference;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    return-void
.end method

.method updateBatteryTipFlag(Landroid/os/Bundle;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 304
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->needUpdate()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mNeedUpdateBatteryTip:Z

    return-void
.end method
