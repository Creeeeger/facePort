.class public Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "HDReffectSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$SettingsObserver;,
        Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$CreatePreferenceNewTask;
    }
.end annotation


# instance fields
.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/SecSwitchPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mAppListPreference:Landroidx/preference/SecPreferenceCategory;

.field private mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

.field private mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field private mFragmentVisible:Z

.field private mHandler:Landroid/os/Handler;

.field private mList:[Ljava/lang/String;

.field private mPreviewPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSecBrightenUpVideoPreference:Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;

.field private mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$SettingsObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppList(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mAppList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressBar(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAppList(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mAppList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$misFragmentVisible(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->isFragmentVisible()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mloadAppsList(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->loadAppsList(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshDisplayedItems(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->refreshDisplayedItems()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetAppListUp(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->setAppListUp(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mList:[Ljava/lang/String;

    .line 83
    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mFragmentVisible:Z

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mAppList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized isFragmentVisible()Z
    .locals 1

    monitor-enter p0

    .line 329
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mFragmentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadAppsList(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 334
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    sget v1, Lcom/android/settings/R$string;->hdr_setting_text_2:I

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 335
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mAppList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 336
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mAppList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->setAppListUp(Ljava/util/List;)V

    goto :goto_0

    .line 338
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 339
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 340
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 341
    new-instance p1, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$CreatePreferenceNewTask;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$CreatePreferenceNewTask;-><init>(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$CreatePreferenceNewTask-IA;)V

    new-array p0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 344
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    sget v1, Lcom/android/settings/R$string;->hdr_setting_text_1:I

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 345
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mAppListPreference:Landroidx/preference/SecPreferenceCategory;

    if-eqz p0, :cond_2

    .line 346
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private refreshDisplayedItems()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/preference/SecSwitchPreference;",
            ">;"
        }
    .end annotation

    .line 238
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 240
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 242
    array-length v3, v0

    array-length v4, v1

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mList:[Ljava/lang/String;

    .line 243
    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mList:[Ljava/lang/String;

    array-length v1, v1

    array-length v4, v0

    invoke-static {v0, v5, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 246
    new-instance v1, Lcom/samsung/android/settings/widget/SecIconResizer;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/samsung/android/settings/widget/SecIconResizer;-><init>(Landroid/content/Context;)V

    .line 247
    sget v3, Lcom/android/settings/R$dimen;->sec_widget_list_app_icon_size:I

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/widget/SecIconResizer;->setIconSize(I)V

    move v3, v5

    move v4, v3

    .line 249
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mList:[Ljava/lang/String;

    array-length v7, v6

    if-ge v3, v7, :cond_5

    .line 250
    aget-object v6, v6, v3

    .line 254
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v7, v6}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->getVideoEnhancerSettingState(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x80

    .line 256
    :try_start_0
    invoke-virtual {v0, v6, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    if-eqz v8, :cond_4

    const/4 v9, 0x1

    .line 258
    invoke-virtual {v8, v0, v9, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 259
    invoke-virtual {v8, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 260
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 261
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v11

    .line 262
    sget-object v12, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v11, v8, v12}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v8

    :cond_0
    if-nez v10, :cond_1

    .line 265
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v0, v10, v9}, Landroid/content/pm/PackageManager;->semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 268
    new-instance v11, Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroidx/preference/SecSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 269
    invoke-virtual {v11, v6}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 270
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mAppListPreference:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v6}, Landroidx/preference/Preference;->getOrder()I

    move-result v6

    mul-int/lit8 v12, v4, 0xa

    add-int/2addr v6, v12

    invoke-virtual {v11, v6}, Landroidx/preference/Preference;->setOrder(I)V

    .line 271
    invoke-virtual {v11, v8}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 272
    invoke-virtual {v11, v5}, Landroidx/preference/Preference;->setPersistent(Z)V

    if-eqz v10, :cond_2

    .line 274
    invoke-virtual {v1, v10}, Lcom/samsung/android/settings/widget/SecIconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const-string v6, ""

    .line 276
    invoke-virtual {v11, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    if-ne v7, v9, :cond_3

    move v6, v9

    goto :goto_1

    :cond_3
    move v6, v5

    .line 277
    :goto_1
    invoke-virtual {v11, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 278
    invoke-virtual {v11, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 279
    invoke-virtual {v11, v9}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 280
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v2
.end method

.method private setAppListUp(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/preference/SecSwitchPreference;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 290
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mAppListPreference:Landroidx/preference/SecPreferenceCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 291
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 293
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mAppListPreference:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 296
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mAppListPreference:Landroidx/preference/SecPreferenceCategory;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_1

    .line 298
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

.method private declared-synchronized setFragmentVisibleState(Z)V
    .locals 0

    monitor-enter p0

    .line 325
    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mFragmentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setImageMinHeight()V
    .locals 2

    .line 231
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->sec_widget_Video_Brightness_horizontal_radio_preference_icon_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 232
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mSecBrightenUpVideoPreference:Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;

    if-eqz p0, :cond_0

    .line 233
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->setImageMinHeight(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "HDReffectSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1118

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 190
    sget p0, Lcom/android/settings/R$xml;->sec_hdreffect_settings:I

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 216
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 217
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isVideoBrightnessMenuDisabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 218
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mAppListPreference:Landroidx/preference/SecPreferenceCategory;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 219
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 220
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mSecBrightenUpVideoPreference:Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->setEnabled(Z)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mAppListPreference:Landroidx/preference/SecPreferenceCategory;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 223
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 224
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mSecBrightenUpVideoPreference:Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->setEnabled(Z)V

    .line 226
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->setImageMinHeight()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "DisplaySolution"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 108
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mHandler:Landroid/os/Handler;

    .line 109
    new-instance p1, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$SettingsObserver;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$SettingsObserver;-><init>(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$SettingsObserver;

    const-string p1, "hdr_effect_app_list_preference"

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mAppListPreference:Landroidx/preference/SecPreferenceCategory;

    const-string p1, "sec_hdr_effect_preview"

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    const-string p1, "sec_brighten_up_video"

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mSecBrightenUpVideoPreference:Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;

    .line 114
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->setImageMinHeight()V

    .line 115
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mAppListPreference:Landroidx/preference/SecPreferenceCategory;

    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 117
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mAppListPreference:Landroidx/preference/SecPreferenceCategory;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 119
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mAppList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 124
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 125
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    .line 126
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$dimen;->sec_widget_list_item_padding_start:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/settings/R$dimen;->sec_app_list_item_icon_min_width:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    add-float/2addr p2, p3

    float-to-int p2, p2

    .line 129
    new-instance p3, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

    .line 130
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->sec_top_level_list_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v0, v1, p2}, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)V

    .line 131
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const p2, 0x102003f

    .line 132
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 133
    new-instance p3, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x1

    .line 134
    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 135
    iget-object p3, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mProgressBar:Landroid/widget/ProgressBar;

    sget v0, Lcom/android/settings/R$style;->LoadingTheme:I

    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setScrollBarStyle(I)V

    .line 136
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p3, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    .line 137
    iput v0, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 138
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-object p1
.end method

.method public onPause()V
    .locals 3

    .line 200
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const/4 v0, 0x0

    .line 201
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->setFragmentVisibleState(Z)V

    .line 202
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v1, :cond_1

    .line 206
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    .line 208
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$SettingsObserver;

    if-eqz p0, :cond_2

    .line 209
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$SettingsObserver;->setListening(Z)V

    :cond_2
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 353
    instance-of v0, p1, Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_0

    .line 354
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 355
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setVideoEnhancerSettingState(Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 4

    .line 145
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 146
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 150
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "desktopmode"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_1

    .line 152
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    .line 166
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    :cond_1
    const/4 v0, 0x1

    .line 168
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->setFragmentVisibleState(Z)V

    .line 169
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$SettingsObserver;

    if-eqz v1, :cond_2

    .line 170
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$SettingsObserver;->setListening(Z)V

    .line 173
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

    .line 174
    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->loadAppsList(Z)V

    .line 176
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isVideoBrightnessMenuDisabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 177
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mAppListPreference:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 178
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mSecBrightenUpVideoPreference:Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->setEnabled(Z)V

    goto :goto_1

    .line 181
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mAppListPreference:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 182
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 183
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mSecBrightenUpVideoPreference:Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->setEnabled(Z)V

    .line 185
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->setImageMinHeight()V

    return-void
.end method
