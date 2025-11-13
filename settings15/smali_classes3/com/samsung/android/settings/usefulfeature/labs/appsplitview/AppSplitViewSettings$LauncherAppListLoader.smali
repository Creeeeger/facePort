.class public final Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$LauncherAppListLoader;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getSplitActivityApplications(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$LauncherAppListLoader;->makeAppRow(Landroid/content/pm/ApplicationInfo;)Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppRow;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "AppSplitViewSettings"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final makeAppRow(Landroid/content/pm/ApplicationInfo;)Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppRow;
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppRow;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p1, v0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppRow;->mPackage:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mSupportEmbedActivityPackages:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p0

    iget-object p1, v0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getEmbedActivityPackageEnabled(Ljava/lang/String;I)Z

    move-result p0

    iput p0, v0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppRow;->mState:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p0

    iget-object p1, v0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSplitActivityPackageEnabled(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppRow;->mState:I

    :goto_0
    return-object v0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "AppSplitViewSettings"

    const-string v0, "empty list, so finishFragment"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mProgressBar:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mAppRows:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mAppRows:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mAdapter:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppPickerCustomListAdapter;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mAppRows:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1, v0}, Landroidx/apppickerview/widget/AbsAdapter;->resetPackages(Ljava/util/List;Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;

    iget-object v0, p1, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mAdapter:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppPickerCustomListAdapter;

    iput-object p1, v0, Landroidx/apppickerview/widget/AppPickerView;->mAdapter:Landroidx/apppickerview/widget/AbsAdapter;

    const/4 p1, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x5

    invoke-virtual {v0, v2, p1, v1}, Landroidx/apppickerview/widget/AppPickerView;->setAppPickerView(ILjava/util/List;I)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView;->addCustomViewItem$1()V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView;->addSeparator()V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/apppickerview/widget/AppPickerView;->setOnBindListener(Landroidx/apppickerview/widget/AppPickerView$OnBindListener;)V

    :goto_0
    return-void
.end method

.method public final onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mProgressBar:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSupportEmbedActivityPackages()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mSupportEmbedActivityPackages:Ljava/util/List;

    return-void
.end method
