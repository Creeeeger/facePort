.class public final Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/CameraCutoutFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mPackageListTemp:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mRows:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    iget-object v1, v0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget-object v0, v0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mUserInfo:Landroid/content/pm/SemUserInfo;

    invoke-virtual {v0}, Landroid/content/pm/SemUserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    const-string v1, "CameraCutoutFragment"

    const-string v2, "  launchable activities:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    const-string v2, "CameraCutoutFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.android.settings"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.samsung.knox.securefolder"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    iget-object v4, v4, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mRows:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {v4, p1, v2, v1}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$mloadAppRow(Lcom/samsung/android/settings/display/CameraCutoutFragment;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/LauncherActivityInfo;)Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    iget-object v2, v2, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mPackageListTemp:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mRows:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_4
    const-string p1, "CameraCutoutFragment"

    const-string v0, "Finish getting ApplicationInfo"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mPackageListTemp:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    move-object p0, p1

    :goto_1
    return-object p0

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mLoadingPanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mPackageList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    iget-object v2, v0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mPackageList:Ljava/util/List;

    iget-object v0, v0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mPackageListTemp:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    iput-object p1, v0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mResultList:Ljava/util/List;

    iget-object p1, v0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    new-instance p1, Lcom/samsung/android/settings/display/CameraCutoutFragment$CustomListViewAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    iget-object v3, v2, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    iget-object v4, v2, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    iget-object v4, v4, Landroidx/apppickerview/widget/AppPickerView;->mAppPickerIconLoader:Landroidx/apppickerview/widget/AppPickerIconLoader;

    invoke-direct {p1, v2, v3, v4}, Lcom/samsung/android/settings/display/CameraCutoutFragment$CustomListViewAdapter;-><init>(Lcom/samsung/android/settings/display/CameraCutoutFragment;Landroid/content/Context;Landroidx/apppickerview/widget/AppPickerIconLoader;)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    iget-object v2, v2, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mPackageList:Ljava/util/List;

    invoke-virtual {p1, v2, v0}, Landroidx/apppickerview/widget/AbsAdapter;->resetPackages(Ljava/util/List;Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    iget-object v2, v2, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    iput-object p1, v2, Landroidx/apppickerview/widget/AppPickerView;->mAdapter:Landroidx/apppickerview/widget/AbsAdapter;

    const/4 p1, 0x0

    const/4 v3, 0x2

    invoke-virtual {v2, v0, p1, v3}, Landroidx/apppickerview/widget/AppPickerView;->setAppPickerView(ILjava/util/List;I)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView;->addCustomViewItem$1()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView;->addSeparator()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    iget-object v2, p1, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    new-instance v3, Lcom/samsung/android/settings/display/CameraCutoutFragment$1;

    invoke-direct {v3, p1}, Lcom/samsung/android/settings/display/CameraCutoutFragment$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/apppickerview/widget/AppPickerView;->setOnBindListener(Landroidx/apppickerview/widget/AppPickerView$OnBindListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mPackageList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->updateEmptyTextViewState()V

    return-void
.end method

.method public final onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mLoadingPanel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
