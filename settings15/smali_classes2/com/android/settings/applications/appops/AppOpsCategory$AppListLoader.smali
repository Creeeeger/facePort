.class public final Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mApps:Ljava/util/List;

.field public final mLastConfig:Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;

.field public mPackageObserver:Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

.field public final mState:Lcom/android/settings/applications/appops/AppOpsState;

.field public final mTemplate:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settings/applications/appops/AppOpsState;Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/loader/content/Loader;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;

    invoke-direct {p1}, Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mLastConfig:Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;

    iput-object p2, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mState:Lcom/android/settings/applications/appops/AppOpsState;

    iput-object p3, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mTemplate:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    return-void
.end method


# virtual methods
.method public final deliverResult(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mStarted:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/loader/content/Loader;->deliverResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final loadInBackground()Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Lcom/android/settings/applications/appops/AppOpsState;->LABEL_COMPARATOR:Lcom/android/settings/applications/appops/AppOpsState$2;

    iget-object v2, v0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mState:Lcom/android/settings/applications/appops/AppOpsState;

    iget-object v3, v2, Lcom/android/settings/applications/appops/AppOpsState;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/16 v8, 0x95

    new-array v8, v8, [I

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    iget-object v11, v0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mTemplate:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    iget-object v12, v11, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;->ops:[I

    array-length v13, v12

    if-ge v10, v13, :cond_1

    iget-object v13, v11, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;->showPerms:[Z

    aget-boolean v13, v13, v10

    if-eqz v13, :cond_0

    aget v12, v12, v10

    invoke-static {v12}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v11, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;->ops:[I

    aget v12, v12, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, v11, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;->ops:[I

    aget v11, v11, v10

    aput v10, v8, v11

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, v2, Lcom/android/settings/applications/appops/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v12}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    const/4 v8, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_4

    move v11, v9

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_4

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v12}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object v14, v3

    check-cast v14, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2, v14, v4, v13, v10}, Lcom/android/settings/applications/appops/AppOpsState;->getAppEntry(Landroidx/fragment/app/FragmentActivity;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    move-result-object v13

    if-nez v13, :cond_2

    goto :goto_3

    :cond_2
    move v14, v9

    :goto_2
    invoke-virtual {v12}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_3

    invoke-virtual {v12}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/AppOpsManager$OpEntry;

    invoke-static {v5, v13, v15, v8, v9}, Lcom/android/settings/applications/appops/AppOpsState;->addOp(Ljava/util/List;Lcom/android/settings/applications/appops/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v11, v2, Lcom/android/settings/applications/appops/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v0, v9}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    move v11, v9

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_c

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageInfo;

    iget-object v13, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v14, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v15, v3

    check-cast v15, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2, v15, v4, v13, v14}, Lcom/android/settings/applications/appops/AppOpsState;->getAppEntry(Landroidx/fragment/app/FragmentActivity;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    move-result-object v13

    if-nez v13, :cond_6

    :cond_5
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move v2, v9

    goto/16 :goto_b

    :cond_6
    iget-object v14, v12, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v14, :cond_5

    move v14, v9

    move-object v15, v10

    :goto_5
    iget-object v10, v12, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v10, v10

    if-ge v14, v10, :cond_5

    iget-object v10, v12, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-eqz v10, :cond_7

    aget v10, v10, v14

    and-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_7

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move v2, v9

    goto/16 :goto_a

    :cond_7
    move v10, v9

    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v10, v8, :cond_b

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, v12, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v9, v9, v14

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v13, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mOps:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v8

    if-ltz v8, :cond_9

    :goto_7
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    const/4 v2, 0x0

    const/4 v8, 0x1

    goto :goto_9

    :cond_9
    if-nez v15, :cond_a

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Landroid/app/AppOpsManager$PackageOps;

    iget-object v9, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v8, v9, v0, v15}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    goto :goto_8

    :cond_a
    move-object/from16 v16, v0

    :goto_8
    new-instance v0, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v9

    move-object/from16 v17, v2

    const/4 v2, 0x0

    invoke-direct {v0, v8, v2, v9}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/Map;)V

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    invoke-static {v5, v13, v0, v8, v2}, Lcom/android/settings/applications/appops/AppOpsState;->addOp(Ljava/util/List;Lcom/android/settings/applications/appops/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V

    :goto_9
    add-int/lit8 v10, v10, 0x1

    move v9, v2

    move-object/from16 v0, v16

    move-object/from16 v2, v17

    goto :goto_6

    :cond_b
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move v2, v9

    const/4 v8, 0x1

    :goto_a
    add-int/lit8 v14, v14, 0x1

    move v9, v2

    move-object/from16 v0, v16

    move-object/from16 v2, v17

    goto/16 :goto_5

    :goto_b
    add-int/lit8 v11, v11, 0x1

    move v9, v2

    move-object/from16 v0, v16

    move-object/from16 v2, v17

    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_c
    invoke-static {v5, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v5
.end method

.method public final bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    return-void
.end method

.method public final onReset()V
    .locals 3

    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->onCancelLoad()Z

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroidx/loader/content/Loader;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

    :cond_1
    return-void
.end method

.method public final onStartLoading()V
    .locals 6

    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onContentChanged()V

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    iget-boolean v1, p0, Landroidx/loader/content/Loader;->mStarted:Z

    if-eqz v1, :cond_0

    invoke-super {p0, v0}, Landroidx/loader/content/Loader;->deliverResult(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;-><init>(Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;)V

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

    :cond_1
    iget-object v0, p0, Landroidx/loader/content/Loader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mLastConfig:Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;

    iget-object v2, v1, Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v2

    iget v3, v1, Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;->mLastDensity:I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    const/4 v5, 0x0

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    and-int/lit16 v2, v2, 0x304

    if-eqz v2, :cond_3

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, v1, Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;->mLastDensity:I

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v5

    :goto_1
    iget-boolean v1, p0, Landroidx/loader/content/Loader;->mContentChanged:Z

    iput-boolean v5, p0, Landroidx/loader/content/Loader;->mContentChanged:Z

    iget-boolean v2, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    or-int/2addr v2, v1

    iput-boolean v2, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->onForceLoad()V

    :cond_5
    return-void
.end method

.method public final onStopLoading()V
    .locals 0

    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->onCancelLoad()Z

    return-void
.end method
