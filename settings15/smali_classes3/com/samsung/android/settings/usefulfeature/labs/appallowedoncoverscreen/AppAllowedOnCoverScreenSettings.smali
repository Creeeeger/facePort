.class public Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field public mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

.field public mConfiguration:Landroid/content/res/Configuration;

.field public mProgressBar:Landroid/widget/ProgressBar;

.field public mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    const p0, 0x7f1424e2

    return p0
.end method

.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/samsung/android/settings/usefulfeature/labs/LabsSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const p0, 0x10c5c

    return p0
.end method

.method public final getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top_level_advanced_features"

    return-object p0
.end method

.method public final initPreference$12()V
    .locals 8

    const v0, 0x7f17013c

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "app_allowed_cover_screen_apps_picker"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a086c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/picker/widget/SeslAppPickerView;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/picker/widget/SeslAppPickerView;->setAppListOrder(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$1;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Landroidx/picker/widget/SeslAppPickerView;->mOnStateChangeListener:Landroidx/picker/widget/AppPickerState$OnStateChangeListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0d07f8

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a0b90

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Landroid/view/View;->semSetRoundedCorners(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f060738

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v6, v5}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    invoke-virtual {v3, v0, v6}, Landroidx/picker/widget/SeslAppPickerView;->addHeader(Landroid/view/View;I)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.android.multistar"

    const-string v5, "com.samsung.android.coverstar.ui.apps.AppsLauncherSettingsHelper"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "from_settings"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d07f9

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a09a8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v5, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;Landroid/content/Intent;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    invoke-virtual {v0, v2}, Landroidx/picker/widget/SeslAppPickerView;->addFooter(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    invoke-virtual {v0, v2}, Landroidx/picker/widget/SeslAppPickerView;->addFooter(Landroid/view/View;)V

    const v0, 0x7f0a09aa

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a08de

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/settings/widget/LoadingViewController;

    new-instance v5, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v2, v0, v5}, Lcom/android/settings/widget/LoadingViewController;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v3, v1, v1, v1}, Lcom/android/settings/widget/LoadingViewController;->handleLoadingContainer(ZZZ)V

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v3}, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;Lcom/android/settings/widget/LoadingViewController;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "large_cover_screen_apps"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const p1, 0x10c5c

    const v0, 0x10c5f

    invoke-static {p1, v0, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    iget-object v0, v0, Landroidx/picker/widget/SeslAppPickerView;->mViewDataController:Landroidx/picker/controller/ViewDataController;

    iget-object v0, v0, Landroidx/picker/controller/ViewDataController;->appDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/model/AppData;

    instance-of v2, v1, Landroidx/picker/model/AppInfoData;

    if-eqz v2, :cond_0

    new-instance v2, Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;

    check-cast v1, Landroidx/picker/model/AppInfoData;

    invoke-direct {v2, v1}, Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;-><init>(Landroidx/picker/model/AppInfoData;)V

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v2, v1}, Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;->setDimmed(Z)Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;->build()Landroidx/picker/model/AppInfoData;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslAppPickerView;->submitList(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    new-instance v0, Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d08bb

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->initPreference$12()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "large_cover_screen_apps"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    :cond_1
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$LauncherAppListLoader;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$LauncherAppListLoader;-><init>(Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->initPreference$12()V

    new-instance p2, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const p3, 0x7f150298

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setScrollBarStyle(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const p2, 0x102003f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p3, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslSwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "large_cover_screen_apps"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$LauncherAppListLoader;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$LauncherAppListLoader;-><init>(Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
