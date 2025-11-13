.class public Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public mAppList:Ljava/util/List;

.field public mAppListPreference:Landroidx/preference/SecPreferenceCategory;

.field public mDesktopModeListener:Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$1;

.field public mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field public mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field public mFragmentVisible:Z

.field public mHandler:Landroid/os/Handler;

.field public mList:[Ljava/lang/String;

.field public mPreviewPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

.field public mProgressBar:Landroid/widget/ProgressBar;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mSecBrightenUpVideoPreference:Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;

.field public mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$SettingsObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mList:[Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mFragmentVisible:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mAppList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "HDReffectSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1118

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1701ab

    return p0
.end method

.method public final loadAppsList(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    const v1, 0x7f14112a

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mAppList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mAppList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->setAppListUp(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    new-instance p1, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$CreatePreferenceNewTask;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$CreatePreferenceNewTask;-><init>(Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;)V

    new-array p0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    const v1, 0x7f141129

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mAppListPreference:Landroidx/preference/SecPreferenceCategory;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isVideoBrightnessMenuDisabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mAppListPreference:Landroidx/preference/SecPreferenceCategory;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mSecBrightenUpVideoPreference:Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mAppListPreference:Landroidx/preference/SecPreferenceCategory;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mSecBrightenUpVideoPreference:Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;->setEnabled(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->setImageMinHeight()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "DisplaySolution"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$SettingsObserver;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$SettingsObserver;-><init>(Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$SettingsObserver;

    const-string p1, "hdr_effect_app_list_preference"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mAppListPreference:Landroidx/preference/SecPreferenceCategory;

    const-string/jumbo p1, "sec_hdr_effect_preview"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    const-string/jumbo p1, "sec_brighten_up_video"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mSecBrightenUpVideoPreference:Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->setImageMinHeight()V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mAppListPreference:Landroidx/preference/SecPreferenceCategory;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mAppListPreference:Landroidx/preference/SecPreferenceCategory;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mAppList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070dd1

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0708d2

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    add-float/2addr p3, p2

    float-to-int p2, p3

    new-instance p3, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080a92

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, p2, v1, v0}, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;-><init>(ILandroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const p2, 0x102003f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    new-instance p3, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object p3, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f150298

    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setScrollBarStyle(I)V

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p3, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-object p1
.end method

.method public final onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mFragmentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mDesktopModeListener:Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$1;

    invoke-virtual {v1, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$SettingsObserver;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$SettingsObserver;->setListening(Z)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setVideoEnhancerSettingState(Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isNewDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "desktopmode"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;)V

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mDesktopModeListener:Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$1;

    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    :cond_1
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mFragmentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$SettingsObserver;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$SettingsObserver;->setListening(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hdr_effect"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    move v1, v3

    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->loadAppsList(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isVideoBrightnessMenuDisabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mAppListPreference:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mSecBrightenUpVideoPreference:Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mAppListPreference:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mSecBrightenUpVideoPreference:Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;->setEnabled(Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->setImageMinHeight()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setAppListUp(Ljava/util/List;)V
    .locals 4

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mAppListPreference:Landroidx/preference/SecPreferenceCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mAppListPreference:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mAppListPreference:Landroidx/preference/SecPreferenceCategory;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/SecSwitchPreference;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->seslSetRoundedBg(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final setImageMinHeight()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070d82

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mSecBrightenUpVideoPreference:Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;

    if-eqz p0, :cond_1

    if-ltz v0, :cond_0

    iput v0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;->mMinHeight:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    return-void
.end method
