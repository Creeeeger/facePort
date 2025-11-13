.class public final Lcom/android/settings/applications/RunningState$BackgroundHandler;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/applications/RunningState;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/RunningState;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/settings/applications/RunningState;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v1, v1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_65

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto/16 :goto_48

    :cond_0
    iget-object v1, v0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v4, v0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/settings/applications/RunningState;

    iget-boolean v5, v4, Lcom/android/settings/applications/RunningState;->mResumed:Z

    if-nez v5, :cond_1

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_47

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v4, Lcom/android/settings/applications/RunningState;->mHandler:Lcom/android/settings/applications/RunningState$2;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v4, v0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v5, v4, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    iget-object v6, v4, Lcom/android/settings/applications/RunningState;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget v8, v4, Lcom/android/settings/applications/RunningState;->mSequence:I

    add-int/2addr v8, v2

    iput v8, v4, Lcom/android/settings/applications/RunningState;->mSequence:I

    const/16 v8, 0x64

    invoke-virtual {v6, v8}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_5

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-boolean v13, v12, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-nez v13, :cond_3

    iget v13, v12, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-nez v13, :cond_3

    invoke-interface {v8, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    :cond_3
    iget v12, v12, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    and-int/lit8 v12, v12, 0x8

    if-eqz v12, :cond_4

    invoke-interface {v8, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    :goto_3
    add-int/2addr v11, v2

    goto :goto_1

    :cond_5
    invoke-virtual {v6}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    goto :goto_4

    :cond_6
    const/4 v11, 0x0

    :goto_4
    iget-object v12, v4, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->clear()V

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v11, :cond_7

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v14, v4, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    iget v15, v13, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    new-instance v3, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    invoke-direct {v3, v13}, Lcom/android/settings/applications/RunningState$AppProcessInfo;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual {v14, v15, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x2

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    :goto_6
    const-wide/16 v12, 0x0

    if-ge v3, v10, :cond_9

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RunningServiceInfo;

    move/from16 v16, v10

    iget-wide v9, v14, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    cmp-long v9, v9, v12

    if-nez v9, :cond_8

    iget v9, v14, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-lez v9, :cond_8

    iget-object v10, v4, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    if-eqz v9, :cond_8

    iput-boolean v2, v9, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasServices:Z

    iget-boolean v10, v14, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    if-eqz v10, :cond_8

    iput-boolean v2, v9, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    :cond_8
    add-int/lit8 v3, v3, 0x1

    move/from16 v10, v16

    goto :goto_6

    :cond_9
    move/from16 v16, v10

    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_7
    move/from16 v14, v16

    if-ge v3, v14, :cond_1d

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Landroid/app/ActivityManager$RunningServiceInfo;

    move/from16 v18, v3

    iget-wide v2, v15, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    cmp-long v2, v2, v12

    if-nez v2, :cond_c

    iget v2, v15, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-lez v2, :cond_c

    iget-object v3, v4, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    if-eqz v2, :cond_c

    iget-boolean v3, v2, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    if-nez v3, :cond_c

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v10, 0x12c

    if-ge v3, v10, :cond_c

    iget-object v3, v4, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    iget v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    :goto_8
    if-eqz v2, :cond_c

    iget-boolean v3, v2, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasServices:Z

    if-nez v3, :cond_b

    iget-object v3, v2, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-static {v3}, Lcom/android/settings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_9

    :cond_a
    iget-object v3, v4, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    goto :goto_8

    :cond_b
    :goto_9
    move-object/from16 v24, v1

    move-object/from16 v22, v8

    move/from16 v23, v14

    goto/16 :goto_12

    :cond_c
    iget-object v2, v4, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    iget v3, v15, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-nez v2, :cond_d

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, v4, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    iget v10, v15, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-virtual {v3, v10, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_d
    iget-object v3, v15, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v3, :cond_e

    new-instance v3, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v9, v15, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    iget-object v10, v15, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-direct {v3, v5, v9, v10}, Lcom/android/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v9, v15, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v2, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x1

    :cond_e
    iget v2, v3, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v10, v4, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-eq v2, v10, :cond_14

    move-object v2, v8

    move v10, v9

    iget-wide v8, v15, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    cmp-long v8, v8, v12

    if-nez v8, :cond_f

    iget v8, v15, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    goto :goto_a

    :cond_f
    const/4 v8, 0x0

    :goto_a
    iget v9, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-eq v8, v9, :cond_13

    if-eq v9, v8, :cond_12

    if-eqz v9, :cond_10

    iget-object v10, v4, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->remove(I)V

    :cond_10
    if-eqz v8, :cond_11

    iget-object v9, v4, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v9, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_11
    iput v8, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    :cond_12
    const/4 v10, 0x1

    :cond_13
    iget-object v8, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    iget v8, v4, Lcom/android/settings/applications/RunningState;->mSequence:I

    iput v8, v3, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    move v9, v10

    goto :goto_b

    :cond_14
    move-object v2, v8

    move v10, v9

    :goto_b
    const-string v8, "getServiceInfo returned null for: "

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v12, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    iget-object v13, v15, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/applications/RunningState$ServiceItem;

    if-nez v12, :cond_17

    new-instance v12, Lcom/android/settings/applications/RunningState$ServiceItem;

    iget v13, v3, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    move-object/from16 v22, v2

    const/4 v2, 0x0

    invoke-direct {v12, v13, v2}, Lcom/android/settings/applications/RunningState$BaseItem;-><init>(IZ)V

    iput-object v15, v12, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    :try_start_1
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    iget-object v2, v15, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v23, v14

    :try_start_2
    iget v14, v15, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v24, v1

    const-wide/32 v0, 0x400000

    :try_start_3
    invoke-interface {v13, v2, v0, v1, v14}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iput-object v0, v12, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_15

    const-string v0, "RunningService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v15, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v15, 0x0

    goto/16 :goto_11

    :catch_0
    move-object/from16 v24, v1

    goto :goto_c

    :catch_1
    move-object/from16 v24, v1

    move/from16 v23, v14

    :catch_2
    :cond_15
    :goto_c
    iget-object v0, v12, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v12, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-static {v10, v0, v1}, Lcom/android/settings/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v12, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iget-object v0, v3, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_16
    const/4 v0, 0x0

    :goto_d
    iput-object v0, v3, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    iget-object v0, v12, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, v12, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v0, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    iget-object v1, v15, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_e

    :cond_17
    move-object/from16 v24, v1

    move-object/from16 v22, v2

    move/from16 v23, v14

    const/4 v0, 0x0

    :goto_e
    iget v1, v3, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iput v1, v12, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iput-object v15, v12, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-wide v1, v15, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    const-wide/16 v13, 0x0

    cmp-long v1, v1, v13

    if-nez v1, :cond_18

    iget-wide v1, v15, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    goto :goto_f

    :cond_18
    const-wide/16 v1, -0x1

    :goto_f
    iget-wide v13, v12, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    cmp-long v3, v13, v1

    if-eqz v3, :cond_19

    iput-wide v1, v12, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    const/4 v0, 0x1

    :cond_19
    iget-object v1, v15, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    if-eqz v1, :cond_1b

    iget v2, v15, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v2, :cond_1b

    iget-boolean v2, v12, Lcom/android/settings/applications/RunningState$ServiceItem;->mShownAsStarted:Z

    if-eqz v2, :cond_1a

    const/4 v2, 0x0

    iput-boolean v2, v12, Lcom/android/settings/applications/RunningState$ServiceItem;->mShownAsStarted:Z

    const/4 v0, 0x1

    :cond_1a
    :try_start_4
    invoke-virtual {v10, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iget v3, v15, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v8, 0x7f142aab

    invoke-virtual {v3, v8, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/android/settings/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_10

    :catch_3
    const/4 v1, 0x0

    iput-object v1, v12, Lcom/android/settings/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;

    :goto_10
    move v15, v0

    goto :goto_11

    :cond_1b
    iget-boolean v1, v12, Lcom/android/settings/applications/RunningState$ServiceItem;->mShownAsStarted:Z

    if-nez v1, :cond_1c

    const/4 v1, 0x1

    iput-boolean v1, v12, Lcom/android/settings/applications/RunningState$ServiceItem;->mShownAsStarted:Z

    const/4 v0, 0x1

    :cond_1c
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f142ab2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/android/settings/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;

    goto :goto_10

    :goto_11
    or-int v0, v9, v15

    move v9, v0

    :goto_12
    add-int/lit8 v3, v18, 0x1

    const/4 v2, 0x1

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v8, v22

    move/from16 v16, v23

    move-object/from16 v1, v24

    goto/16 :goto_7

    :cond_1d
    move-object/from16 v24, v1

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v11, :cond_22

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v3, v4, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    iget v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v3, :cond_1f

    iget-object v3, v4, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    iget v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v3, :cond_1e

    new-instance v3, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget-object v9, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {v3, v5, v8, v9}, Lcom/android/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v8, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    iget-object v9, v4, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v9, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v9, 0x1

    :cond_1e
    iget-object v8, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    :cond_1f
    invoke-static {v1}, Lcom/android/settings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v8

    if-eqz v8, :cond_21

    iget-object v8, v4, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_20

    iget-object v8, v4, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    :cond_20
    iget v8, v4, Lcom/android/settings/applications/RunningState;->mSequence:I

    iput v8, v3, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    const/4 v8, 0x1

    iput-boolean v8, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    invoke-virtual {v3, v7}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    goto :goto_14

    :cond_21
    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    :goto_14
    iget v2, v4, Lcom/android/settings/applications/RunningState;->mSequence:I

    iput v2, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningSeq:I

    iput-object v1, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_22
    iget-object v0, v4, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v0, :cond_27

    iget-object v2, v4, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v3, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningSeq:I

    iget v6, v4, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v3, v6, :cond_26

    iget-object v3, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    if-eqz v3, :cond_25

    iget-object v6, v4, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v6, :cond_23

    iget-object v6, v4, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/android/settings/applications/RunningState$ProcessItem;

    :cond_23
    if-eqz v6, :cond_24

    iget-object v3, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    iget v6, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v3, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_24
    const/4 v3, 0x0

    goto :goto_16

    :cond_25
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_26
    const/4 v3, 0x0

    iget-object v2, v4, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v0, v0, -0x1

    const/4 v9, 0x1

    goto :goto_15

    :cond_27
    const/4 v3, 0x0

    iget-object v0, v4, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v0, :cond_2a

    iget-object v2, v4, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-boolean v6, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    if-eqz v6, :cond_29

    iget-object v6, v4, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    iget v2, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_28

    goto :goto_18

    :cond_28
    const/4 v2, 0x1

    goto :goto_19

    :cond_29
    :goto_18
    iget-object v2, v4, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x1

    const/4 v9, 0x1

    :goto_19
    add-int/2addr v1, v2

    goto :goto_17

    :cond_2a
    iget-object v0, v4, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v0, :cond_2c

    iget-object v2, v4, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v6, v2, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v8, v4, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v6, v8, :cond_2b

    invoke-virtual {v2, v7, v8}, Lcom/android/settings/applications/RunningState$ProcessItem;->buildDependencyChain(Landroid/content/pm/PackageManager;I)Z

    move-result v2

    or-int/2addr v2, v9

    move v9, v2

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2c
    move-object v1, v3

    const/4 v0, 0x0

    :goto_1b
    iget-object v2, v4, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_35

    iget-object v2, v4, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2d
    :goto_1c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_34

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v10, v8, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v11, v4, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v10, v11, :cond_30

    invoke-virtual {v8, v7}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    iget v10, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-nez v10, :cond_2e

    iget-object v10, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    :cond_2e
    iget-object v8, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2f
    :goto_1d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/applications/RunningState$ServiceItem;

    iget v10, v10, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v11, v4, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-eq v10, v11, :cond_2f

    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    const/4 v9, 0x1

    goto :goto_1d

    :cond_30
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v9

    if-nez v9, :cond_32

    if-nez v1, :cond_31

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_31
    iget-object v9, v4, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    iget v8, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-eqz v8, :cond_33

    iget-object v9, v4, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->remove(I)V

    :cond_33
    const/4 v9, 0x1

    goto :goto_1c

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1b

    :cond_35
    if-eqz v1, :cond_36

    const/4 v0, 0x0

    :goto_1e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_36

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v6, v4, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_36
    if-eqz v9, :cond_49

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_1f
    iget-object v2, v4, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3b

    iget-object v2, v4, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/RunningState$ProcessItem;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    const-wide v7, 0x7fffffffffffffffL

    iput-wide v7, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    iget-object v7, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_37
    :goto_21
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_39

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v10, v8, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v10, :cond_38

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v11, 0x1

    and-int/2addr v10, v11

    if-eqz v10, :cond_38

    iput-boolean v11, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    :cond_38
    iget-object v8, v8, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v8, :cond_37

    iget v10, v8, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v10, :cond_37

    const/4 v10, 0x0

    iput-boolean v10, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    iget-wide v10, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    iget-wide v12, v8, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    cmp-long v8, v10, v12

    if-lez v8, :cond_37

    iput-wide v12, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    goto :goto_21

    :cond_39
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_3b
    iget-object v1, v4, Lcom/android/settings/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings/applications/RunningState$1;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v4, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/4 v6, 0x0

    :goto_22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_42

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/RunningState$ProcessItem;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v4, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-object v10, v4, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1, v10}, Lcom/android/settings/applications/RunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v10, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-lez v10, :cond_3c

    iget-object v10, v4, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3c
    iget-object v10, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v11, v3

    :cond_3d
    :goto_23
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/applications/RunningState$ServiceItem;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v12, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v12, :cond_3d

    move-object v11, v12

    goto :goto_23

    :cond_3e
    new-instance v10, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v11, v7, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-direct {v10, v11}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    iget-object v11, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_24
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v13, v10, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v10, v12, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    goto :goto_24

    :cond_3f
    iput-object v7, v10, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v7, v10, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    :goto_25
    iget-object v7, v4, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v11, 0x1

    sub-int/2addr v7, v11

    if-ge v8, v7, :cond_40

    iget-object v7, v10, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    iget-object v11, v4, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/applications/RunningState$ProcessItem;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    :cond_40
    const/4 v7, 0x0

    invoke-virtual {v10, v5, v7}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)V

    iget v7, v10, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    iget v8, v4, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v7, v8, :cond_41

    iget-object v7, v4, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    invoke-virtual {v4, v5, v2, v7, v10}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    goto :goto_26

    :cond_41
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_26
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_22

    :cond_42
    iget-object v0, v4, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_27
    if-ge v1, v0, :cond_46

    iget-object v6, v4, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v7, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v7, :cond_45

    iget-object v7, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-gtz v7, :cond_45

    iget-object v7, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-nez v7, :cond_43

    new-instance v7, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v8, v6, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-direct {v7, v8}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    iput-object v7, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iput-object v6, v7, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    :cond_43
    iget-object v7, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)V

    iget-object v7, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget v10, v7, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    iget v11, v4, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v10, v11, :cond_44

    iget-object v10, v4, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    invoke-virtual {v4, v5, v2, v10, v7}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    goto :goto_28

    :cond_44
    invoke-virtual {v2, v8, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_28
    iget-object v7, v4, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_46
    iget-object v0, v4, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_29
    if-ge v1, v0, :cond_48

    iget-object v6, v4, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v7, v6, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v8, v4, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v7, v8, :cond_47

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)V

    goto :goto_2a

    :cond_47
    const/4 v7, 0x0

    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_48
    const/4 v7, 0x0

    iget-object v1, v4, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iput-object v2, v4, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    monitor-exit v1

    goto :goto_2b

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_49
    const/4 v7, 0x0

    :goto_2b
    iget-object v0, v4, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v4, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    iget-object v1, v4, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v4, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v1, v7

    move v2, v1

    :goto_2c
    const/16 v6, 0x190

    if-ge v1, v0, :cond_4d

    iget-object v8, v4, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v10, v8, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v11, v4, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-eq v10, v11, :cond_4c

    iget-object v10, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v10, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-lt v10, v6, :cond_4a

    add-int/lit8 v2, v2, 0x1

    iget-object v6, v4, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_4a
    const/16 v6, 0xc8

    if-gt v10, v6, :cond_4b

    iget-object v6, v4, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_4b
    const-string v6, "RunningState"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unknown non-service process: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    invoke-static {v10, v8, v6}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_4c
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_4d
    :try_start_6
    iget-object v0, v4, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_a

    move v8, v7

    :goto_2e
    if-ge v8, v0, :cond_4e

    :try_start_7
    iget-object v10, v4, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v10, v10, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    aput v10, v1, v8
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    :catch_4
    move-object v1, v3

    move/from16 v17, v7

    const-wide/16 v12, 0x0

    :goto_2f
    const-wide/16 v20, 0x0

    goto/16 :goto_3c

    :cond_4e
    :try_start_8
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-interface {v8, v1}, Landroid/app/IActivityManager;->getProcessPss([I)[J

    move-result-object v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_a

    move-object v8, v3

    move v10, v7

    move v11, v10

    move/from16 v17, v11

    const-wide/16 v12, 0x0

    const-wide/16 v20, 0x0

    :goto_30
    if-ge v10, v0, :cond_59

    :try_start_9
    iget-object v14, v4, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/applications/RunningState$ProcessItem;

    aget-wide v18, v1, v10

    iget v15, v4, Lcom/android/settings/applications/RunningState;->mSequence:I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    const-wide/16 v22, 0x400

    move-object/from16 v25, v8

    mul-long v7, v18, v22

    :try_start_a
    iput-wide v7, v14, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    iget v3, v14, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    if-ne v3, v15, :cond_4f

    invoke-static {v5, v7, v8}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v14, Lcom/android/settings/applications/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4f

    iput-object v3, v14, Lcom/android/settings/applications/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    :cond_4f
    iget v3, v14, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v7, v4, Lcom/android/settings/applications/RunningState;->mSequence:I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_7

    if-ne v3, v7, :cond_50

    :try_start_b
    iget-wide v7, v14, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_5

    add-long v20, v20, v7

    move-object/from16 v8, v25

    goto/16 :goto_3a

    :catch_5
    move-object/from16 v1, v25

    goto/16 :goto_3c

    :cond_50
    :try_start_c
    iget-object v3, v14, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-lt v3, v6, :cond_58

    iget-wide v7, v14, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    add-long/2addr v12, v7

    if-eqz v25, :cond_52

    new-instance v3, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v7, v14, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-direct {v3, v7}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    iput-object v3, v14, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iput-object v14, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v8, v4, Lcom/android/settings/applications/RunningState;->mMyUserId:I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_7

    if-eq v7, v8, :cond_51

    const/4 v7, 0x1

    goto :goto_31

    :cond_51
    const/4 v7, 0x0

    :goto_31
    or-int v17, v17, v7

    move-object/from16 v7, v25

    :try_start_d
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_32
    const/4 v6, 0x1

    goto/16 :goto_38

    :catch_6
    :goto_33
    move-object v1, v7

    goto/16 :goto_3c

    :catch_7
    move-object/from16 v7, v25

    goto :goto_33

    :cond_52
    move-object/from16 v7, v25

    iget-object v3, v4, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v11, v3, :cond_54

    iget-object v3, v4, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v3, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eq v3, v14, :cond_53

    goto :goto_34

    :cond_53
    iget-object v3, v4, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/RunningState$MergedItem;

    goto :goto_32

    :cond_54
    :goto_34
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_6

    const/4 v7, 0x0

    :goto_35
    if-ge v7, v11, :cond_56

    :try_start_e
    iget-object v8, v4, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v15, v8, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    iget v6, v4, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v15, v6, :cond_55

    const/4 v6, 0x1

    goto :goto_36

    :cond_55
    const/4 v6, 0x0

    :goto_36
    or-int v17, v17, v6

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    const/16 v6, 0x190

    goto :goto_35

    :catch_8
    move-object v1, v3

    goto :goto_3c

    :cond_56
    new-instance v6, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v7, v14, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-direct {v6, v7}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    iput-object v6, v14, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iput-object v14, v6, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v8, v4, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v7, v8, :cond_57

    const/4 v7, 0x1

    goto :goto_37

    :cond_57
    const/4 v7, 0x0

    :goto_37
    or-int v17, v17, v7

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_8

    move-object v7, v3

    move-object v3, v6

    goto :goto_32

    :goto_38
    :try_start_f
    invoke-virtual {v3, v5, v6}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)V

    invoke-virtual {v3, v5}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_6

    add-int/lit8 v11, v11, 0x1

    :goto_39
    move-object v8, v7

    goto :goto_3a

    :cond_58
    move-object/from16 v7, v25

    goto :goto_39

    :goto_3a
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    const/16 v6, 0x190

    const/4 v7, 0x0

    goto/16 :goto_30

    :catch_9
    move-object v7, v8

    goto :goto_33

    :cond_59
    move-object v7, v8

    :goto_3b
    move-wide/from16 v0, v20

    goto :goto_3d

    :catch_a
    const/4 v1, 0x0

    const-wide/16 v12, 0x0

    const/16 v17, 0x0

    goto/16 :goto_2f

    :goto_3c
    move-object v8, v1

    goto :goto_3b

    :goto_3d
    if-nez v8, :cond_5b

    iget-object v3, v4, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_5b

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_3e
    if-ge v3, v2, :cond_5b

    iget-object v6, v4, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v7, v6, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    iget v10, v4, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v7, v10, :cond_5a

    const/4 v7, 0x1

    goto :goto_3f

    :cond_5a
    const/4 v7, 0x0

    :goto_3f
    or-int v17, v17, v7

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    :cond_5b
    if-eqz v8, :cond_60

    if-nez v17, :cond_5c

    move-object v10, v8

    goto :goto_43

    :cond_5c
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_40
    if-ge v3, v2, :cond_5e

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v7, v6, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    iget v11, v4, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v7, v11, :cond_5d

    iget-object v7, v4, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    invoke-virtual {v4, v5, v10, v7, v6}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    goto :goto_41

    :cond_5d
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    :cond_5e
    iget-object v2, v4, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_42
    if-ge v3, v2, :cond_61

    iget-object v6, v4, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v7, v6, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v11, v4, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v7, v11, :cond_5f

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)V

    invoke-virtual {v6, v5}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)V

    :cond_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    :cond_60
    const/4 v10, 0x0

    :cond_61
    :goto_43
    const/4 v2, 0x0

    :goto_44
    iget-object v3, v4, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_62

    iget-object v3, v4, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {v3, v5}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    :cond_62
    iget-object v2, v4, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_10
    iput-wide v12, v4, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    iput-wide v0, v4, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J

    if-eqz v8, :cond_63

    iput-object v8, v4, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    iput-object v10, v4, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    iget-boolean v0, v4, Lcom/android/settings/applications/RunningState;->mWatchingBackgroundItems:Z

    if-eqz v0, :cond_63

    const/4 v1, 0x1

    goto :goto_45

    :catchall_2
    move-exception v0

    goto :goto_46

    :cond_63
    move v1, v9

    :goto_45
    iget-boolean v0, v4, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    if-nez v0, :cond_64

    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    iget-object v0, v4, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_64
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    move-object/from16 v0, v24

    iput v1, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v2, p0

    iget-object v1, v2, Lcom/android/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState;->mHandler:Lcom/android/settings/applications/RunningState$2;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_48

    :goto_46
    :try_start_11
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    throw v0

    :goto_47
    :try_start_12
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    throw v0

    :cond_65
    move-object v2, v0

    iget-object v0, v2, Lcom/android/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v1, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_48
    return-void
.end method
