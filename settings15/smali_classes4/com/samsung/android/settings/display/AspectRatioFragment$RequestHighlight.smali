.class public final Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/AspectRatioFragment;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_4

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/display/AspectRatioFragment;->mPackageListTemp:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppRows:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    const/4 v0, 0x0

    iput v0, p1, Lcom/samsung/android/settings/display/AspectRatioFragment;->mItemCount:I

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v2, v1, Lcom/samsung/android/settings/display/AspectRatioFragment;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget-object v1, v1, Lcom/samsung/android/settings/display/AspectRatioFragment;->mUserInfo:Landroid/content/pm/SemUserInfo;

    invoke-virtual {v1}, Landroid/content/pm/SemUserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    const-string v2, "AspectRatioFragment"

    const-string v3, "  launchable activities:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    const-string v3, "AspectRatioFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.android.settings"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v5, v5, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppRows:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v5, v5, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v5, v4}, Lcom/android/settingslib/applications/AppUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-boolean v6, v5, Lcom/samsung/android/settings/display/AspectRatioFragment;->mIsSupportAspectRatio:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_6

    iget-object v6, v5, Lcom/samsung/android/settings/display/AspectRatioFragment;->mCompatChangeableApps:Lcom/samsung/android/core/CompatChangeableApps;

    if-nez v6, :cond_4

    new-instance v6, Lcom/samsung/android/core/CompatChangeableApps;

    iget-object v8, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v8, v8, Lcom/samsung/android/settings/display/AspectRatioFragment;->mUserInfo:Landroid/content/pm/SemUserInfo;

    if-eqz v8, :cond_3

    iget v8, v8, Landroid/content/pm/SemUserInfo;->id:I

    goto :goto_1

    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v8

    :goto_1
    invoke-direct {v6, v8, v7}, Lcom/samsung/android/core/CompatChangeableApps;-><init>(IZ)V

    iput-object v6, v5, Lcom/samsung/android/settings/display/AspectRatioFragment;->mCompatChangeableApps:Lcom/samsung/android/core/CompatChangeableApps;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v5, v5, Lcom/samsung/android/settings/display/AspectRatioFragment;->mCompatChangeableApps:Lcom/samsung/android/core/CompatChangeableApps;

    invoke-virtual {v5, v4}, Lcom/samsung/android/core/CompatChangeableApps;->isMinAspectRatioOverrideDisallowed(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v5, v5, Lcom/samsung/android/settings/display/AspectRatioFragment;->mCompatChangeableApps:Lcom/samsung/android/core/CompatChangeableApps;

    invoke-virtual {v5, v4}, Lcom/samsung/android/core/CompatChangeableApps;->isOrientationOverrideDisallowed(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto/16 :goto_0

    :cond_5
    move v5, v0

    goto :goto_3

    :cond_6
    move v5, v7

    :goto_3
    iget-object v6, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v6, p1, v3, v2, v5}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$mloadAppRow(Lcom/samsung/android/settings/display/AspectRatioFragment;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/LauncherActivityInfo;Z)Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-boolean v5, v3, Lcom/samsung/android/settings/display/AspectRatioFragment;->mIsSupportAspectRatio:Z

    if-nez v5, :cond_7

    iget v5, v2, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mType:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    const/4 v6, 0x4

    if-ne v5, v6, :cond_7

    goto/16 :goto_0

    :cond_7
    iget-object v3, v3, Lcom/samsung/android/settings/display/AspectRatioFragment;->mPackageListTemp:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget v5, v3, Lcom/samsung/android/settings/display/AspectRatioFragment;->mItemCount:I

    add-int/2addr v5, v7

    iput v5, v3, Lcom/samsung/android/settings/display/AspectRatioFragment;->mItemCount:I

    iget-object v3, v3, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppRows:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/display/AspectRatioFragment;->mPackageListTemp:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    move-object p0, p1

    :goto_4
    return-object p0

    :goto_5
    monitor-exit p0

    throw p1

    :pswitch_0
    check-cast p1, [Ljava/lang/Void;

    const/4 p1, 0x0

    :goto_6
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {v0, p1}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v1, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightKey:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {v0, p1}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object v0

    iget-object v0, v0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_7

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_a
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_7
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mLoadingPanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mPackageList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v2, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mPackageList:Ljava/util/List;

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mPackageListTemp:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iput-object p1, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mResultList:Ljava/util/List;

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/display/AspectRatioFragment$FullScreenAppsListAdapter;

    iget-object v3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v4, v3, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    iget-object v5, v3, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    iget-object v5, v5, Landroidx/apppickerview/widget/AppPickerView;->mAppPickerIconLoader:Landroidx/apppickerview/widget/AppPickerIconLoader;

    invoke-direct {v0, v3, v4, v5}, Lcom/samsung/android/settings/display/AspectRatioFragment$FullScreenAppsListAdapter;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment;Landroid/content/Context;Landroidx/apppickerview/widget/AppPickerIconLoader;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/display/AspectRatioFragment;->mPackageList:Ljava/util/List;

    invoke-virtual {v0, v3, v2}, Landroidx/apppickerview/widget/AbsAdapter;->resetPackages(Ljava/util/List;Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    iput-object v0, v3, Landroidx/apppickerview/widget/AppPickerView;->mAdapter:Landroidx/apppickerview/widget/AbsAdapter;

    const/4 v0, 0x0

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v0, v4}, Landroidx/apppickerview/widget/AppPickerView;->setAppPickerView(ILjava/util/List;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {v0}, Landroidx/apppickerview/widget/AppPickerView;->addCustomViewItem$1()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {v0}, Landroidx/apppickerview/widget/AppPickerView;->addSeparator()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-boolean v3, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mIsSupportAspectRatio:Z

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    iget-object v4, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppRows:Landroid/util/ArrayMap;

    new-instance v5, Lcom/samsung/android/settings/display/AspectRatioFragment$4;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v0, v4}, Lcom/samsung/android/settings/display/AspectRatioFragment$4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Landroidx/apppickerview/widget/AppPickerView;->setOnBindListener(Landroidx/apppickerview/widget/AppPickerView$OnBindListener;)V

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    iget-object v4, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppRows:Landroid/util/ArrayMap;

    new-instance v5, Lcom/samsung/android/settings/display/AspectRatioFragment$4;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v0, v4}, Lcom/samsung/android/settings/display/AspectRatioFragment$4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Landroidx/apppickerview/widget/AppPickerView;->setOnBindListener(Landroidx/apppickerview/widget/AppPickerView$OnBindListener;)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mPackageList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_4

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mSearchMenu:Landroid/view/MenuItem;

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHandler:Lcom/samsung/android/settings/display/AspectRatioFragment$6;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/display/AspectRatioFragment;->mEmptyViewText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v0, p1, Lcom/samsung/android/settings/display/AspectRatioFragment;->mEmptyViewText:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f15094f

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAspectRatioLayout:Landroid/view/View;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/display/AspectRatioFragment$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/AspectRatioFragment$7;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mEmptyViewText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    :goto_3
    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_7

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightPosition:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mHighlightPosition = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget v1, v1, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightPosition:I

    const-string v2, "AspectRatioFragment"

    invoke-static {v0, v1, v2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    new-instance v1, Lcom/samsung/android/settings/display/AspectRatioFragment$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Lcom/samsung/android/settings/display/AspectRatioFragment$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 p0, 0x258

    invoke-virtual {v0, v1, p0, p1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPreExecute()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mLoadingPanel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :pswitch_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
