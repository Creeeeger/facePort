.class public final Lcom/android/systemui/settings/UserTrackerImpl$registerUserSwitchObserver$1;
.super Landroid/app/UserSwitchObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/UserTrackerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/UserTrackerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/UserTrackerImpl$registerUserSwitchObserver$1;->this$0:Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBeforeUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/settings/UserTrackerImpl$registerUserSwitchObserver$1;->this$0:Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/UserTrackerImpl;->setUserIdInternal(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/DataItem;

    iget-object v2, v1, Lcom/android/systemui/settings/DataItem;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/settings/UserTracker$Callback;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/android/systemui/settings/DataItem;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/settings/UserTrackerImpl$handleBeforeUserSwitching$$inlined$notifySubscribers$1;

    invoke-direct {v3, v2, v0, p1}, Lcom/android/systemui/settings/UserTrackerImpl$handleBeforeUserSwitching$$inlined$notifySubscribers$1;-><init>(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/CountDownLatch;I)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    if-eqz p2, :cond_2

    const/4 p0, 0x0

    invoke-interface {p2, p0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final onUserSwitchComplete(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl$registerUserSwitchObserver$1;->this$0:Lcom/android/systemui/settings/UserTrackerImpl;

    iget-object v0, v0, Lcom/android/systemui/settings/UserTrackerImpl;->featureFlagsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/flags/FeatureFlagsClassic;

    sget-object v1, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/settings/UserTrackerImpl$registerUserSwitchObserver$1;->this$0:Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    const-string v0, "UserTrackerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Switched to user "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/settings/DataItem;

    iget-object v3, v2, Lcom/android/systemui/settings/DataItem;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/settings/UserTracker$Callback;

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/android/systemui/settings/DataItem;->executor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/systemui/settings/UserTrackerImpl$handleUserSwitchComplete$$inlined$notifySubscribers$1;

    invoke-direct {v4, v3, v0, p1, p0}, Lcom/android/systemui/settings/UserTrackerImpl$handleUserSwitchComplete$$inlined$notifySubscribers$1;-><init>(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/CountDownLatch;ILcom/android/systemui/settings/UserTrackerImpl;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl$registerUserSwitchObserver$1;->this$0:Lcom/android/systemui/settings/UserTrackerImpl;

    iget-object v0, v0, Lcom/android/systemui/settings/UserTrackerImpl;->featureFlagsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/flags/FeatureFlagsClassic;

    sget-object v1, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/settings/UserTrackerImpl$registerUserSwitchObserver$1;->this$0:Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    const-string v0, "UserTrackerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Switching to user "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/settings/DataItem;

    iget-object v3, v2, Lcom/android/systemui/settings/DataItem;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/settings/UserTracker$Callback;

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/android/systemui/settings/DataItem;->executor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/systemui/settings/UserTrackerImpl$handleUserSwitching$$inlined$notifySubscribers$1;

    invoke-direct {v4, v3, v0, p1, p0}, Lcom/android/systemui/settings/UserTrackerImpl$handleUserSwitching$$inlined$notifySubscribers$1;-><init>(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/CountDownLatch;ILcom/android/systemui/settings/UserTrackerImpl;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    if-eqz p2, :cond_2

    const/4 p0, 0x0

    invoke-interface {p2, p0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
