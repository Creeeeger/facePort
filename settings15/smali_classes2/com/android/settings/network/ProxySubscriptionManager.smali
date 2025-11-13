.class public Lcom/android/settings/network/ProxySubscriptionManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field public static sSingleton:Lcom/android/settings/network/ProxySubscriptionManager;


# instance fields
.field public mActiveSubscriptionsListeners:Ljava/util/List;

.field public mAirplaneModeMonitor:Lcom/android/settings/network/GlobalSettingsChangeListener;

.field public mLifecycle:Landroidx/lifecycle/Lifecycle;

.field public mPendingNotifyListeners:Ljava/util/List;

.field public mSubscriptionMonitor:Lcom/android/settings/network/ActiveSubscriptionsListener;


# direct methods
.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/network/ProxySubscriptionManager;
    .locals 4

    sget-object v0, Lcom/android/settings/network/ProxySubscriptionManager;->sSingleton:Lcom/android/settings/network/ProxySubscriptionManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/settings/network/ProxySubscriptionManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/settings/network/ProxySubscriptionManager$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/settings/network/ProxySubscriptionManager$1;-><init>(Lcom/android/settings/network/ProxySubscriptionManager;Landroid/os/Looper;Landroid/content/Context;)V

    new-instance v3, Lcom/android/settings/network/ProxySubscriptionManager$2;

    invoke-direct {v3, v0, v1, p0, v2}, Lcom/android/settings/network/ProxySubscriptionManager$2;-><init>(Lcom/android/settings/network/ProxySubscriptionManager;Landroid/os/Looper;Landroid/content/Context;Lcom/android/settings/network/ProxySubscriptionManager$1;)V

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/settings/network/ProxySubscriptionManager;->init(Landroid/content/Context;Lcom/android/settings/network/ActiveSubscriptionsListener;Lcom/android/settings/network/GlobalSettingsChangeListener;)V

    sput-object v0, Lcom/android/settings/network/ProxySubscriptionManager;->sSingleton:Lcom/android/settings/network/ProxySubscriptionManager;

    return-object v0
.end method


# virtual methods
.method public addActiveSubscriptionsListener(Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;)V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mPendingNotifyListeners:Ljava/util/List;

    new-instance v1, Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/network/ProxySubscriptionManager;Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mActiveSubscriptionsListeners:Ljava/util/List;

    new-instance v1, Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/network/ProxySubscriptionManager;Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mActiveSubscriptionsListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final getAccessibleSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 3

    iget-object p0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mSubscriptionMonitor:Lcom/android/settings/network/ActiveSubscriptionsListener;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/ActiveSubscriptionsListener;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ActiveSubscriptionsListener;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    if-ne v2, p1, :cond_2

    move-object v0, v1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/android/settings/network/ActiveSubscriptionsListener;Lcom/android/settings/network/GlobalSettingsChangeListener;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mActiveSubscriptionsListeners:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mPendingNotifyListeners:Ljava/util/List;

    iput-object p2, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mSubscriptionMonitor:Lcom/android/settings/network/ActiveSubscriptionsListener;

    iput-object p3, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mAirplaneModeMonitor:Lcom/android/settings/network/GlobalSettingsChangeListener;

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Lcom/android/settings/network/ActiveSubscriptionsListener;->monitorSubscriptionsChange(Z)V

    return-void
.end method

.method public notifySubscriptionInfoMightChanged()V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mPendingNotifyListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mActiveSubscriptionsListeners:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mPendingNotifyListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mActiveSubscriptionsListeners:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mActiveSubscriptionsListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mPendingNotifyListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ProxySubscriptionManager;->processStatusChangeOnListeners(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mSubscriptionMonitor:Lcom/android/settings/network/ActiveSubscriptionsListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ActiveSubscriptionsListener;->monitorSubscriptionsChange(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mAirplaneModeMonitor:Lcom/android/settings/network/GlobalSettingsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/GlobalSettingsChangeListener;->close()V

    iget-object v0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    sput-object v0, Lcom/android/settings/network/ProxySubscriptionManager;->sSingleton:Lcom/android/settings/network/ProxySubscriptionManager;

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mSubscriptionMonitor:Lcom/android/settings/network/ActiveSubscriptionsListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ActiveSubscriptionsListener;->monitorSubscriptionsChange(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mPendingNotifyListeners:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mPendingNotifyListeners:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ProxySubscriptionManager;->processStatusChangeOnListeners(Ljava/util/List;)V

    return-void
.end method

.method public onStop()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object p0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mSubscriptionMonitor:Lcom/android/settings/network/ActiveSubscriptionsListener;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ActiveSubscriptionsListener;->monitorSubscriptionsChange(Z)V

    return-void
.end method

.method public final processStatusChangeOnListeners(Ljava/util/List;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/ProxySubscriptionManager;)V

    invoke-static {v0}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/network/ProxySubscriptionManager;I)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/network/ProxySubscriptionManager;I)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method public removeActiveSubscriptionsListener(Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;)V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mPendingNotifyListeners:Ljava/util/List;

    new-instance v1, Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/network/ProxySubscriptionManager;Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mActiveSubscriptionsListeners:Ljava/util/List;

    new-instance v1, Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/network/ProxySubscriptionManager;Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public final setLifecycle(Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_2
    iput-object p1, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    iget-object p0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mAirplaneModeMonitor:Lcom/android/settings/network/GlobalSettingsChangeListener;

    iget-object v0, p0, Lcom/android/settings/network/GlobalSettingsChangeListener;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_4
    iput-object p1, p0, Lcom/android/settings/network/GlobalSettingsChangeListener;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    return-void
.end method
