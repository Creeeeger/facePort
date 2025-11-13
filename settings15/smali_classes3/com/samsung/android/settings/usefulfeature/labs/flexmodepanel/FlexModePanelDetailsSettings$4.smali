.class public final Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mPackageListTemp:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mPackageListTemp:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mRows:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mStateMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    const/4 v2, 0x0

    iput v2, v1, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mValidItemCount:I

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mLauncherApps:Landroid/content/pm/LauncherApps;

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mRows:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$AppRow;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, v6, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    iget-object v8, v6, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lcom/samsung/android/view/SemWindowManager;->getSupportsFlexPanel(ILjava/lang/String;)I

    move-result v3

    iput v3, v6, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$AppRow;->mType:I

    and-int/lit8 v7, v3, 0x10

    const/16 v8, 0x10

    if-ne v7, v8, :cond_3

    goto :goto_1

    :cond_3
    and-int/lit8 v7, v3, 0x20

    const/16 v8, 0x20

    if-eq v7, v8, :cond_4

    and-int/lit8 v3, v3, 0x4

    const/4 v7, 0x4

    if-ne v3, v7, :cond_5

    :cond_4
    move-object v6, v4

    :cond_5
    :goto_1
    if-eqz v6, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    iget-object v3, v3, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mRows:Landroid/util/ArrayMap;

    invoke-virtual {v3, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    iget-object v3, v3, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mPackageListTemp:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    iget v5, v3, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mValidItemCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mValidItemCount:I

    goto :goto_0

    :cond_6
    const-string v1, "FlexModePanelDetailsSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Supported App Count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;->mPackageListTemp:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$CreatePreferenceNewTask;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings$CreatePreferenceNewTask;-><init>(Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelDetailsSettings;)V

    new-array p0, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
