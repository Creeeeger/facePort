.class public final Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$CreatePreferenceNewTask;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mAppList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mAppList:Ljava/util/List;

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x107006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v0

    array-length v4, v1

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p1, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mList:[Ljava/lang/String;

    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p1, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mList:[Ljava/lang/String;

    array-length v1, v1

    array-length v4, v0

    invoke-static {v0, v5, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/widget/SecIconResizer;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/samsung/android/settings/widget/SecIconResizer;-><init>(Landroid/content/Context;)V

    iget-object v3, v1, Lcom/samsung/android/settings/widget/SecIconResizer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070dc3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Lcom/samsung/android/settings/widget/SecIconResizer;->mIconHeight:I

    iput v3, v1, Lcom/samsung/android/settings/widget/SecIconResizer;->mIconWidth:I

    move v3, v5

    move v4, v3

    :goto_0
    iget-object v6, p1, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mList:[Ljava/lang/String;

    array-length v7, v6

    if-ge v3, v7, :cond_6

    aget-object v6, v6, v3

    iget-object v7, p1, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v7, v6}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->getVideoEnhancerSettingState(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x80

    :try_start_0
    invoke-virtual {v0, v6, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    if-eqz v8, :cond_5

    const/4 v9, 0x1

    invoke-virtual {v8, v0, v9, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v8, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v11

    sget-object v12, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v11, v8, v12}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v8

    :cond_1
    if-nez v10, :cond_2

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v0, v10, v9}, Landroid/content/pm/PackageManager;->semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    :cond_2
    add-int/lit8 v4, v4, 0x1

    new-instance v11, Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v6}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mAppListPreference:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v6}, Landroidx/preference/Preference;->getOrder()I

    move-result v6

    mul-int/lit8 v12, v4, 0xa

    add-int/2addr v12, v6

    invoke-virtual {v11, v12}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-virtual {v11, v8}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v11}, Landroidx/preference/Preference;->setPersistent()V

    if-eqz v10, :cond_3

    invoke-virtual {v1, v10}, Lcom/samsung/android/settings/widget/SecIconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    const-string v6, ""

    invoke-virtual {v11, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    if-ne v7, v9, :cond_4

    move v6, v9

    goto :goto_1

    :cond_4
    move v6, v5

    :goto_1
    invoke-virtual {v11, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {v11, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v11, v9}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    iput-object v2, p1, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mAppList:Ljava/util/List;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mAppList:Ljava/util/List;

    :goto_2
    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, v0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mFragmentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->setAppListUp(Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$CreatePreferenceNewTask;->this$0:Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
