.class Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;
.super Landroid/os/AsyncTask;
.source "AspectRatioFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/AspectRatioFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateFullScreenAppList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/display/AspectRatioFragment;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/display/AspectRatioFragment;Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment;)V

    return-void
.end method

.method private declared-synchronized loadAppsList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 449
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmPackageListTemp(Lcom/samsung/android/settings/display/AspectRatioFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 450
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmSystemDefaultValues(Lcom/samsung/android/settings/display/AspectRatioFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 451
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 452
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fputmItemCount(Lcom/samsung/android/settings/display/AspectRatioFragment;I)V

    .line 455
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmIsSupportAspectRatio(Lcom/samsung/android/settings/display/AspectRatioFragment;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 456
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    invoke-static {v0, v2, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getFixedAspectRatioPackages(IILjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmSystemDefaultValues(Lcom/samsung/android/settings/display/AspectRatioFragment;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 465
    iget-object v3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmLauncherApps(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/content/pm/LauncherApps;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmUserInfo(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/content/pm/SemUserInfo;

    move-result-object v4

    .line 466
    invoke-virtual {v4}, Landroid/content/pm/SemUserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 465
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    const-string v3, "AspectRatioFragment"

    const-string v4, "  launchable activities:"

    .line 467
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherActivityInfo;

    const-string v4, "AspectRatioFragment"

    .line 469
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 472
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.android.settings"

    .line 473
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 477
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmIsSupportAspectRatio(Lcom/samsung/android/settings/display/AspectRatioFragment;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 478
    sget-object v6, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->EXCLUSIVE_ASPECT_RATIO_APP_LIST:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    .line 479
    invoke-static {v6, v5}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$misExceptionAppCase(Lcom/samsung/android/settings/display/AspectRatioFragment;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    .line 484
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v6, v0, v4, v3}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$mloadAppRow(Lcom/samsung/android/settings/display/AspectRatioFragment;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/LauncherActivityInfo;)Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    move-result-object v3

    .line 485
    iget-object v4, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmIsSupportAspectRatio(Lcom/samsung/android/settings/display/AspectRatioFragment;)Z

    move-result v4

    if-nez v4, :cond_4

    iget v4, v3, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mType:I

    if-eq v4, v2, :cond_1

    const/4 v6, 0x3

    if-eq v4, v6, :cond_1

    const/4 v6, 0x4

    if-ne v4, v6, :cond_4

    goto :goto_0

    .line 491
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmPackageListTemp(Lcom/samsung/android/settings/display/AspectRatioFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v4, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmItemCount(Lcom/samsung/android/settings/display/AspectRatioFragment;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v6}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fputmItemCount(Lcom/samsung/android/settings/display/AspectRatioFragment;I)V

    .line 493
    iget-object v4, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 495
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmPackageListTemp(Lcom/samsung/android/settings/display/AspectRatioFragment;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 384
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->doInBackground([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 393
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    .line 394
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 396
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->loadAppsList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 384
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmLoadingPanel(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmPackageList(Lcom/samsung/android/settings/display/AspectRatioFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 402
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmPackageList(Lcom/samsung/android/settings/display/AspectRatioFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmPackageListTemp(Lcom/samsung/android/settings/display/AspectRatioFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 403
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fputmResultList(Lcom/samsung/android/settings/display/AspectRatioFragment;Ljava/util/List;)V

    .line 404
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    move v0, v2

    .line 405
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 406
    iget-object v3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 409
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/display/AspectRatioFragment$FullScreenAppsListAdapter;

    iget-object v4, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    iget-object v3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v3

    .line 412
    invoke-virtual {v3}, Landroidx/apppickerview/widget/AppPickerView;->getAppPickerIconLoader()Landroidx/apppickerview/widget/AppPickerIconLoader;

    move-result-object v8

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/display/AspectRatioFragment$FullScreenAppsListAdapter;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment;Landroid/content/Context;IILandroidx/apppickerview/widget/AppPickerIconLoader;)V

    .line 413
    iget-object v3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmPackageList(Lcom/samsung/android/settings/display/AspectRatioFragment;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/apppickerview/widget/CustomListAdapter;->initialize(Ljava/util/List;)V

    .line 414
    iget-object v3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/apppickerview/widget/AppPickerView;->setCustomAdapter(Landroidx/apppickerview/widget/AbsAdapter;)V

    .line 415
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/apppickerview/widget/AppPickerView;->setAppPickerView(I)V

    .line 416
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/apppickerview/widget/AppPickerView;->addCustomViewItem(I)V

    .line 417
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/apppickerview/widget/AppPickerView;->addSeparator(I)V

    .line 419
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmIsSupportAspectRatio(Lcom/samsung/android/settings/display/AspectRatioFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$msetupOnFoldBindListener(Lcom/samsung/android/settings/display/AspectRatioFragment;Landroidx/apppickerview/widget/AppPickerView;Landroid/util/ArrayMap;)V

    goto :goto_1

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$msetupOnBindListener(Lcom/samsung/android/settings/display/AspectRatioFragment;Landroidx/apppickerview/widget/AppPickerView;Landroid/util/ArrayMap;)V

    .line 425
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmPackageList(Lcom/samsung/android/settings/display/AspectRatioFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmSearchMenu(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 428
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmSearchMenu(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 431
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmSearchMenu(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 432
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmSearchMenu(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 434
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmHighlightKey(Lcom/samsung/android/settings/display/AspectRatioFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 435
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 438
    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_5

    .line 439
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 440
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$style;->no_item_text_style:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 441
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$msetEmptyTextYPos(Lcom/samsung/android/settings/display/AspectRatioFragment;)V

    goto :goto_3

    .line 443
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmLoadingPanel(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 388
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$CreateFullScreenAppList;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
