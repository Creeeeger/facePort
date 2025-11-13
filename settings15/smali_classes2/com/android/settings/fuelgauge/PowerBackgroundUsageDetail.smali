.class public Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment$AppButtonsDialogListener;
.implements Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

.field mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

.field mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field mLogStringBuilder:Ljava/lang/StringBuilder;

.field mMainSwitchPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

.field mOptimizationMode:I

.field mOptimizePreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

.field mState:Lcom/android/settingslib/applications/ApplicationsState;

.field mUnrestrictedPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mOptimizationMode:I

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra_uid"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "extra_package_name"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v7

    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v4, v3

    move-object v6, p0

    move-object v8, v1

    invoke-direct/range {v4 .. v11}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState;II)V

    iput-object v3, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/android/settings/fuelgauge/AllowBackgroundPreferenceController;

    invoke-direct {p0, p1, v2, v1}, Lcom/android/settings/fuelgauge/AllowBackgroundPreferenceController;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/android/settings/fuelgauge/OptimizedPreferenceController;

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-direct {v3, p1, v2, v1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/fuelgauge/OptimizedPreferenceController;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/android/settings/fuelgauge/UnrestrictedPreferenceController;

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-direct {v3, p1, v2, v1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/fuelgauge/UnrestrictedPreferenceController;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/android/settings/fuelgauge/RestrictedPreferenceController;

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const-string v3, "allow_background_usage"

    iput-object v3, p0, Lcom/android/settings/fuelgauge/RestrictedPreferenceController;->KEY_RESTRICTED_PREF:Ljava/lang/String;

    new-instance v3, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-direct {v3, p1, v2, v1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/fuelgauge/RestrictedPreferenceController;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PowerBackgroundUsageDetail"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x807

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1701db

    return p0
.end method

.method public getSelectedPreference()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mMainSwitchPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iget-boolean v0, v0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mUnrestrictedPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iget-boolean v0, v0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mOptimizePreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iget-boolean p0, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final handleDialogClick(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->handleDialogClick(I)V

    :cond_0
    return-void
.end method

.method public initFooter()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->isDisabledForOptimizeModeOnly()Z

    move-result v1

    const v2, 0x7f1416e9

    if-eqz v1, :cond_0

    const v1, 0x7f1416eb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->isSystemOrDefaultApp()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f1416f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v1, 0x7f1416e8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f141165

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    new-instance v3, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Lcom/android/settingslib/widget/FooterPreference;->setLearnMoreAction(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    const v1, 0x7f1416ea    # 1.9684472E38f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/FooterPreference;->setLearnMoreText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public initHeader()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a05c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lcom/android/settings/widget/EntityHeaderController;

    invoke-direct {v3, v1, p0, v0}, Lcom/android/settings/widget/EntityHeaderController;-><init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;Landroid/view/View;)V

    const/4 v0, 0x0

    iput v0, v3, Lcom/android/settings/widget/EntityHeaderController;->mAction1:I

    iput v0, v3, Lcom/android/settings/widget/EntityHeaderController;->mAction2:I

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v4, :cond_1

    const-string v4, "extra_label"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/widget/EntityHeaderController;->mLabel:Ljava/lang/CharSequence;

    const-string v4, "extra_icon_id"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v1, v4}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v3, v1}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v3, Lcom/android/settings/widget/EntityHeaderController;->mAppContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/settingslib/applications/AppUtils;->getIconWithoutCache(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v3, Lcom/android/settings/widget/EntityHeaderController;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    iput-boolean v1, v3, Lcom/android/settings/widget/EntityHeaderController;->mIsInstantApp:Z

    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_2

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra_package_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f1431c2

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/android/settings/widget/EntityHeaderController;->mSummary:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to get the app name : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PowerBackgroundUsageDetail"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    const/4 p0, 0x1

    invoke-virtual {v3, p0}, Lcom/android/settings/widget/EntityHeaderController;->done(Z)Landroid/view/View;

    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawLastRoundedCorner:Z

    :cond_0
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->handleActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->initBottomButtonsLayout()V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->updateUI()V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_package_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "optimized_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mOptimizePreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    const-string v0, "unrestricted_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mUnrestrictedPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    const-string v0, "allow_background_usage"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mMainSwitchPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    const-string v0, "app_usage_footer_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/FooterPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mOptimizePreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iput-object p0, v0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mUnrestrictedPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iput-object p0, v0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mMainSwitchPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iput-object p0, v0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;

    new-instance v0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "extra_uid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    const-string v0, "header_view"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(ILjava/lang/String;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->initBottomButtonsLayout()V

    :cond_0
    return-object p1
.end method

.method public final onPause()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getAppOptimizationMode(Z)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mLogStringBuilder:Ljava/lang/StringBuilder;

    const-string v3, ", onPause mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mOptimizationMode:I

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x6f1

    goto :goto_0

    :cond_2
    const/16 v1, 0x6f0

    goto :goto_0

    :cond_3
    const/16 v1, 0x6f2

    :goto_0
    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v1, v4}, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;II)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Leave with mode: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PowerBackgroundUsageDetail"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onRadioButtonClicked(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mUnrestrictedPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mOptimizePreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mMainSwitchPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->getSelectedPreference()I

    move-result p0

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;->APPLY:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->setAppUsageState(ILcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;)V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->initHeader()V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getAppOptimizationMode(Z)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mOptimizationMode:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResume mode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mOptimizationMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mLogStringBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public updateSelectorPreference(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mOptimizePreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mUnrestrictedPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->mOptimizePreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;->onRadioButtonClicked(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;)V

    return-void
.end method
