.class Lcom/samsung/android/settings/display/FrontScreenAppsFragment$5;
.super Ljava/lang/Object;
.source "FrontScreenAppsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/FrontScreenAppsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$5;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 432
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$5;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmPackageListTemp(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 433
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    const-string v1, "FrontScreenAppsFragment"

    const-string v2, "Collecting apps..."

    .line 434
    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "FrontScreenAppsFragment"

    const-string v2, "Getting ApplicationInfo..."

    .line 435
    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$5;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmPackageListTemp(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 437
    iget-object v1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$5;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmRows(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 438
    iget-object v1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$5;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmStateMap(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 439
    iget-object v1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$5;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fputmItemCount(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;I)V

    .line 440
    iget-object v1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$5;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fputmValidItemCount(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;I)V

    .line 442
    iget-object v1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$5;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 444
    monitor-exit v0

    return-void

    .line 446
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$5;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 447
    iget-object v3, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$5;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmLauncherApps(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/content/pm/LauncherApps;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    .line 448
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x0

    .line 447
    invoke-virtual {v3, v5, v4}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    const-string v4, "FrontScreenAppsFragment"

    .line 449
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " LauncherActivityInfo.size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/LauncherActivityInfo;

    const-string v7, "FrontScreenAppsFragment"

    .line 452
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {v6}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 454
    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 455
    invoke-virtual {v6}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 456
    iget-object v9, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$5;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v9}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmRows(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/util/ArrayMap;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    add-int/lit8 v4, v4, 0x1

    const-string v6, "FrontScreenAppsFragment"

    .line 459
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "check duplicated : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    const/16 v9, 0x80

    .line 465
    :try_start_1
    invoke-virtual {v1, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v9, "FrontScreenAppsFragment"

    .line 467
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to get ApplicationInfo metadata : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v5

    :goto_1
    if-eqz v9, :cond_3

    .line 471
    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v9, :cond_3

    const-string v10, "com.samsung.android.foldable.continue_apps_group"

    .line 472
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "FrontScreenAppsFragment"

    .line 473
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "continue_apps_group="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " package="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    move-object v9, v5

    .line 476
    :goto_2
    iget-object v10, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$5;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-virtual {v10, v1, v7, v6}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;)Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;

    move-result-object v6

    .line 477
    iput-object v9, v6, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;->mFamilyAppsName:Ljava/lang/String;

    .line 478
    iget-object v7, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$5;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmRows(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iget-object v7, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$5;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmPackageListTemp(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    iget-object v7, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$5;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmItemCount(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fputmItemCount(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;I)V

    .line 481
    iget v6, v6, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;->mType:I

    if-eq v6, v9, :cond_4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 482
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$5;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmValidItemCount(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)I

    move-result v7

    add-int/2addr v7, v9

    invoke-static {v6, v7}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fputmValidItemCount(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;I)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "FrontScreenAppsFragment"

    .line 486
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "skipCount : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    new-instance v1, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;

    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$5;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-direct {v1, p0, v5}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask;-><init>(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;Lcom/samsung/android/settings/display/FrontScreenAppsFragment$CreatePreferenceNewTask-IA;)V

    new-array p0, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 489
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
