.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/bubbles/BubbleController;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBroadcastReceiver:Lcom/android/wm/shell/bubbles/BubbleController$6;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->isShowingAsBubbleBar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleBarViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$9;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleStackViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$8;

    :goto_1
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleDataListener:Lcom/android/wm/shell/bubbles/BubbleController$10;

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda6;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbleMetadataFlagListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mDataRepository:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda6;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    iput-object v2, v1, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->bubbleMetadataFlagListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda6;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mCancelledListener:Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWindowManagerShellWrapper:Lcom/android/wm/shell/WindowManagerShellWrapper;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImeListener;

    invoke-direct {v2, p0, v0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImeListener;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;I)V

    iget-object v1, v1, Lcom/android/wm/shell/WindowManagerShellWrapper;->mPinnedStackListenerForwarder:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;

    iget-object v3, v1, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    iget-object v1, v1, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;->mListenerImpl:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedTaskListenerImpl;

    invoke-interface {v2, v0, v1}, Landroid/view/IWindowManager;->registerPinnedTaskListener(ILandroid/view/IPinnedTaskListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentUserId:I

    iput v2, v1, Lcom/android/wm/shell/bubbles/BubbleData;->mCurrentUserId:I

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda8;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    iget-object v3, v1, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    iget-object v4, v1, Lcom/android/wm/shell/ShellTaskOrganizer;->mLocusIdListeners:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move v4, v0

    :goto_3
    iget-object v5, v1, Lcom/android/wm/shell/ShellTaskOrganizer;->mVisibleTasksWithLocusId:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_1

    iget-object v5, v1, Lcom/android/wm/shell/ShellTaskOrganizer;->mVisibleTasksWithLocusId:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    iget-object v7, v1, Lcom/android/wm/shell/ShellTaskOrganizer;->mVisibleTasksWithLocusId:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/LocusId;

    invoke-virtual {v2, v5, v7, v6}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda8;->onVisibilityChanged(ILandroid/content/LocusId;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :cond_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLauncherApps:Landroid/content/pm/LauncherApps;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$3;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/bubbles/BubbleController$3;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubblesTransitionObserver;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/bubbles/BubblesTransitionObserver;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleData;)V

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/transition/Transitions;->registerObserver(Lcom/android/wm/shell/transition/Transitions$TransitionObserver;)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$4;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/bubbles/BubbleController$4;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/TaskStackListenerImpl;->addListener(Lcom/android/wm/shell/common/TaskStackListenerCallback;)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda9;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    iget-object v1, v1, Lcom/android/wm/shell/common/DisplayController;->mChangeController:Lcom/android/wm/shell/common/DisplayChangeController;

    iget-object v1, v1, Lcom/android/wm/shell/common/DisplayChangeController;->mDisplayChangeListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mOneHandedOptional:Ljava/util/Optional;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda10;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda10;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mDragAndDropController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$5;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/bubbles/BubbleController$5;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    iget-object v1, v1, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mDataRepository:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_2
    iget-object v1, v2, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->volatileRepository:Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;

    monitor-enter v1

    :try_start_3
    iget-object v4, v1, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->entitiesByUser:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v5, v0

    :goto_5
    if-ge v5, v4, :cond_5

    iget-object v7, v1, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->entitiesByUser:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v0, v1, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->entitiesByUser:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->remove(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v1

    move v0, v6

    goto :goto_6

    :catchall_1
    move-exception p0

    goto :goto_8

    :cond_3
    :try_start_4
    iget-object v8, v1, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->entitiesByUser:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v0, v1, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->entitiesByUser:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v4, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$sanitizeBubbles$1;

    invoke-direct {v4, v3}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$sanitizeBubbles$1;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v4}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v1

    goto :goto_6

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    monitor-exit v1

    :goto_6
    if-eqz v0, :cond_6

    invoke-static {v2}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->persistToDisk$default(Lcom/android/wm/shell/bubbles/BubbleDataRepository;)V

    :cond_6
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_7

    :cond_7
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentProfiles:Landroid/util/SparseArray;

    sget-object v0, Lcom/android/wm/shell/Flags;->FEATURE_FLAGS:Lcom/android/wm/shell/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addConfigurationChangeListener(Lcom/android/wm/shell/sysui/ConfigurationChangeListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    const-string v1, "extra_shell_bubbles"

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda11;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/wm/shell/sysui/ShellController;->addExternalInterface(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda12;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addDumpCallback(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    return-void

    :goto_8
    monitor-exit v1

    throw p0

    :goto_9
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
