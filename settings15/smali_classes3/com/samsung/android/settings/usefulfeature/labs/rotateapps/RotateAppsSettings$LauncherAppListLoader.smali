.class public final Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$LauncherAppListLoader;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Lcom/samsung/android/core/CompatChangeableApps;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/core/CompatChangeableApps;-><init>(I)V

    invoke-virtual {v0}, Lcom/samsung/android/core/CompatChangeableApps;->getCompatChangeablePackageNameList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/core/CompatChangeableApps;->isOrientationOverrideDisallowed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Lcom/samsung/android/core/CompatChangeableApps;->getUid(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;

    const-string v5, ""

    sget-object v6, Landroidx/picker/model/AppInfo;->Companion:Landroidx/picker/model/AppInfo$Companion;

    invoke-static {v3, v2, v5}, Landroidx/picker/model/AppInfo$Companion;->obtain(ILjava/lang/String;Ljava/lang/String;)Landroidx/picker/model/AppInfo;

    move-result-object v3

    invoke-direct {v4, v3}, Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;-><init>(Landroidx/picker/model/AppInfo;)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getPackageOrientation(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getPolicyFromLegacyFlag(I)I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    const/16 v3, 0x1f

    if-eq v2, v3, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2}, Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;->setSelected(Z)Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;->build()Landroidx/picker/model/AppInfoData;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    const-string v0, "RotateAppsSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supported Rotated Apps : Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;->mProgressBar:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslAppPickerView;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public final onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;->mProgressBar:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
