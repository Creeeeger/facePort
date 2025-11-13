.class public final Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$LauncherAppListLoader;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    monitor-enter p0

    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->getCoverLauncherAvailableAppList(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$LauncherAppListLoader$AppInfomation;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-direct {v4, v3, v5}, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$LauncherAppListLoader$AppInfomation;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_1
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/app/IActivityTaskManager;->getCoverLauncherAvailableAppList(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$LauncherAppListLoader$AppInfomation;

    invoke-direct {v4, v3, v1}, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$LauncherAppListLoader$AppInfomation;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$LauncherAppListLoader$AppInfomation;

    new-instance v2, Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;

    iget-object v3, v1, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$LauncherAppListLoader$AppInfomation;->packageName:Ljava/lang/String;

    const-string v4, ""

    iget v5, v1, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$LauncherAppListLoader$AppInfomation;->id:I

    sget-object v6, Landroidx/picker/model/AppInfo;->Companion:Landroidx/picker/model/AppInfo$Companion;

    invoke-static {v5, v3, v4}, Landroidx/picker/model/AppInfo$Companion;->obtain(ILjava/lang/String;Ljava/lang/String;)Landroidx/picker/model/AppInfo;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;-><init>(Landroidx/picker/model/AppInfo;)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;

    invoke-virtual {v3}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "large_cover_screen_apps"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    move v3, v5

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    xor-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;->setDimmed(Z)Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$LauncherAppListLoader$AppInfomation;->packageName:Ljava/lang/String;

    iget v1, v1, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$LauncherAppListLoader$AppInfomation;->id:I

    invoke-interface {v3, v4, v1, v5}, Landroid/app/IActivityTaskManager;->isPackageSettingsEnabledForCoverLauncher(Ljava/lang/String;II)Z

    move-result v1

    invoke-virtual {v2, v1}, Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;->setSelected(Z)Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;->build()Landroidx/picker/model/AppInfoData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_4
    :try_start_2
    const-string v1, "AppsAllowedOnCoverScreenSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not retrieve app list : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit p0

    return-object v0

    :goto_5
    monitor-exit p0

    throw p1
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslAppPickerView;->submitList(Ljava/util/List;)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
