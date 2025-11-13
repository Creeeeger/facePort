.class public final synthetic Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/network/MobileNetworkRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/MobileNetworkRepository;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mMobileNetworkInfoEntityList:Ljava/util/List;

    sget-object v0, Lcom/android/settings/network/MobileNetworkRepository;->sCallbacks:Ljava/util/Collection;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;

    invoke-interface {v1, p1}, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;->onAllMobileNetworkInfoChanged(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/MobileNetworkRepository;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mContext:Landroid/content/Context;

    const/16 v0, 0x7b5

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/MobileNetworkRepository;

    check-cast p1, Ljava/util/List;

    const-string p0, "onAvailableSubInfoChanged, duplicates = "

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/android/settings/network/MobileNetworkRepository;->mAvailableSubInfoEntityList:Ljava/util/List;

    if-eqz v1, :cond_1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/android/settings/network/MobileNetworkRepository;->mAvailableSubInfoEntityList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MobileNetworkRepository"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p0, v0, Lcom/android/settings/network/MobileNetworkRepository;->mAvailableSubInfoEntityList:Ljava/util/List;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "MobileNetworkRepository"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAvailableSubInfoChanged, availableSubInfoEntityList = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/settings/network/MobileNetworkRepository;->sCallbacks:Ljava/util/Collection;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;

    invoke-interface {v1, p1}, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;->onAvailableSubInfoChanged(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    iget-object p0, v0, Lcom/android/settings/network/MobileNetworkRepository;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    iget-object v1, v0, Lcom/android/settings/network/MobileNetworkRepository;->mContext:Landroid/content/Context;

    const/16 v2, 0x7b3

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda9;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda9;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const-string p1, "MobileNetworkRepository"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActiveSubInfoChanged, activeSubInfoEntityList = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-enter v0

    :try_start_1
    iput-object p0, v0, Lcom/android/settings/network/MobileNetworkRepository;->mActiveSubInfoEntityList:Ljava/util/List;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object p0, Lcom/android/settings/network/MobileNetworkRepository;->sCallbacks:Ljava/util/Collection;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;

    invoke-interface {v0, p1}, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;->onActiveSubInfoChanged(Ljava/util/List;)V

    goto :goto_2

    :cond_3
    :goto_3
    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :pswitch_1
    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mUiccInfoEntityList:Ljava/util/List;

    sget-object v0, Lcom/android/settings/network/MobileNetworkRepository;->sCallbacks:Ljava/util/Collection;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;

    invoke-interface {v1, p1}, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;->onAllUiccInfoChanged(Ljava/util/List;)V

    goto :goto_5

    :cond_4
    iget-object p1, p0, Lcom/android/settings/network/MobileNetworkRepository;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mContext:Landroid/content/Context;

    const/16 v0, 0x7b4

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
