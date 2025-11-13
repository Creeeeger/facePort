.class public final Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;


# static fields
.field public static final Companion:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl$Companion;


# instance fields
.field public final _listeners:Ljava/util/Set;

.field public final broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public final context:Landroid/content/Context;

.field public final executor:Ljava/util/concurrent/Executor;

.field public final lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public final logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

.field public final mediaFilterRepository:Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;

.field public final mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

.field public final mediaLoadingLogger:Lcom/android/systemui/media/controls/domain/pipeline/MediaLoadingLogger;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final userTrackerCallback:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl$userTrackerCallback$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->Companion:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/media/controls/util/MediaUiEventLogger;Lcom/android/systemui/media/controls/util/MediaFlags;Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;Lcom/android/systemui/media/controls/domain/pipeline/MediaLoadingLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    iput-object p4, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object p5, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->executor:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p7, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    iput-object p8, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    iput-object p9, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->mediaFilterRepository:Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;

    iput-object p10, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->mediaLoadingLogger:Lcom/android/systemui/media/controls/domain/pipeline/MediaLoadingLogger;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->_listeners:Ljava/util/Set;

    new-instance p1, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl$userTrackerCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl$userTrackerCallback$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;)V

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->userTrackerCallback:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl$userTrackerCallback$1;

    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p2, p1, p5}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final getKey(Lcom/android/internal/logging/InstanceId;)Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->mediaFilterRepository:Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;

    iget-object p0, p0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->allUserEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-object v2, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public final handleProfileChanged$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->mediaFilterRepository:Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;

    iget-object v1, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->allUserEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget v4, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->userId:I

    iget-object v5, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast v5, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isProfileAvailable(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    new-instance v5, Ljava/util/LinkedHashMap;

    iget-object v6, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->_selectedUserEntries:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v6}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-direct {v5, v7}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v5, v4, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v6, v4, v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_0
    new-instance v4, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Removed;

    iget-object v5, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    invoke-direct {v4, v5}, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Removed;-><init>(Lcom/android/internal/logging/InstanceId;)V

    invoke-virtual {v0, v4}, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->addMediaDataLoadingState(Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel;)V

    iget-object v2, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    const-string v4, "Removing "

    const-string v5, " after profile change"

    invoke-static {v4, v3, v5}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->mediaLoadingLogger:Lcom/android/systemui/media/controls/domain/pipeline/MediaLoadingLogger;

    invoke-virtual {v5, v2, v4}, Lcom/android/systemui/media/controls/domain/pipeline/MediaLoadingLogger;->logMediaRemoved(Lcom/android/internal/logging/InstanceId;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->_listeners:Ljava/util/Set;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;->onMediaDataRemoved(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final handleUserSwitched$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->_listeners:Ljava/util/Set;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->mediaFilterRepository:Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;

    iget-object v3, v2, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->selectedUserEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v3, v3, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v5, v2, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->_selectedUserEntries:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->mediaLoadingLogger:Lcom/android/systemui/media/controls/domain/pipeline/MediaLoadingLogger;

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/logging/InstanceId;

    new-instance v9, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Removed;

    invoke-direct {v9, v4}, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Removed;-><init>(Lcom/android/internal/logging/InstanceId;)V

    invoke-virtual {v2, v9}, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->addMediaDataLoadingState(Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel;)V

    const-string v9, "Removing media after user change"

    invoke-virtual {v8, v4, v9}, Lcom/android/systemui/media/controls/domain/pipeline/MediaLoadingLogger;->logMediaRemoved(Lcom/android/internal/logging/InstanceId;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->getKey(Lcom/android/internal/logging/InstanceId;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v8, v1

    check-cast v8, Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;

    invoke-interface {v9, v4, v7}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;->onMediaDataRemoved(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->allUserEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v3, v3, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget v10, v4, Lcom/android/systemui/media/controls/shared/model/MediaData;->userId:I

    iget-object v11, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast v11, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-virtual {v11, v10}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isCurrentProfile(I)Z

    move-result v10

    if-eqz v10, :cond_2

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    invoke-direct {v10, v11}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iget-object v11, v4, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    invoke-interface {v10, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v6, v10}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    new-instance v10, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;

    iget-object v11, v4, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    const/4 v12, 0x2

    invoke-direct {v10, v11, v7, v12, v6}, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;-><init>(Lcom/android/internal/logging/InstanceId;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v10}, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->addMediaDataLoadingState(Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel;)V

    iget-object v10, v4, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-boolean v11, v4, Lcom/android/systemui/media/controls/shared/model/MediaData;->active:Z

    const-string v12, "Re-adding "

    const-string v13, " after user change"

    invoke-static {v12, v9, v13}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v10, v11, v12}, Lcom/android/systemui/media/controls/domain/pipeline/MediaLoadingLogger;->logMediaLoaded(Lcom/android/internal/logging/InstanceId;ZLjava/lang/String;)V

    move-object v10, v1

    check-cast v10, Ljava/lang/Iterable;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x38

    move-object v11, v9

    move-object v13, v4

    invoke-static/range {v10 .. v17}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;->onMediaDataLoaded$default(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;ZIZI)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;ZIZ)V
    .locals 8

    const/4 p4, 0x0

    iget-object p5, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->mediaFilterRepository:Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_0

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p6, Ljava/util/LinkedHashMap;

    iget-object v0, p5, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->_allUserEntries:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {p6, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p6, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/controls/shared/model/MediaData;

    invoke-virtual {v0, p4, p6}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p6, Ljava/util/LinkedHashMap;

    iget-object v0, p5, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->_allUserEntries:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {p6, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p6, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p4, p6}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p6, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast p6, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget v0, p3, Lcom/android/systemui/media/controls/shared/model/MediaData;->userId:I

    invoke-virtual {p6, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isCurrentProfile(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p6, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isProfileAvailable(I)Z

    move-result p6

    if-nez p6, :cond_1

    goto :goto_1

    :cond_1
    new-instance p6, Ljava/util/LinkedHashMap;

    iget-object v0, p5, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->_selectedUserEntries:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {p6, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iget-object v1, p3, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    invoke-interface {p6, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p4, p6}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p6, p3, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-boolean v0, p3, Lcom/android/systemui/media/controls/shared/model/MediaData;->active:Z

    const-string v1, "loading media"

    iget-object v2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->mediaLoadingLogger:Lcom/android/systemui/media/controls/domain/pipeline/MediaLoadingLogger;

    invoke-virtual {v2, p6, v0, v1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaLoadingLogger;->logMediaLoaded(Lcom/android/internal/logging/InstanceId;ZLjava/lang/String;)V

    new-instance p6, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;

    iget-object v0, p3, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p6, v0, v1, v2, p4}, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;-><init>(Lcom/android/internal/logging/InstanceId;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p5, p6}, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->addMediaDataLoadingState(Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel;)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->_listeners:Ljava/util/Set;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x38

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;->onMediaDataLoaded$default(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;ZIZI)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final onMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->mediaFilterRepository:Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->_allUserEntries:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-direct {v1, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/controls/shared/model/MediaData;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz v3, :cond_0

    iget-object v1, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    new-instance v2, Ljava/util/LinkedHashMap;

    iget-object v3, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->_selectedUserEntries:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-direct {v2, v5}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/media/controls/shared/model/MediaData;

    invoke-virtual {v3, v4, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz v5, :cond_0

    new-instance v2, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Removed;

    invoke-direct {v2, v1}, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Removed;-><init>(Lcom/android/internal/logging/InstanceId;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->addMediaDataLoadingState(Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel;)V

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->mediaLoadingLogger:Lcom/android/systemui/media/controls/domain/pipeline/MediaLoadingLogger;

    const-string v2, "removing media card"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/media/controls/domain/pipeline/MediaLoadingLogger;->logMediaRemoved(Lcom/android/internal/logging/InstanceId;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->_listeners:Ljava/util/Set;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;->onMediaDataRemoved(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onSmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;)V
    .locals 46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v2, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->isActive:Z

    const-string v4, "MediaDataFilter"

    if-nez v3, :cond_0

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {v0}, Lcom/android/systemui/media/controls/util/MediaFlags;->isPersistentSsCardEnabled()V

    const-string v0, "Inactive recommendation data. Skip triggering."

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v5, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->mediaFilterRepository:Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;

    iget-object v6, v5, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->_smartspaceMediaData:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v6, v5, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->selectedUserEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v6, v6, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    new-instance v8, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl$onSmartspaceMediaDataLoaded$$inlined$compareBy$1;

    invoke-direct {v8, v6}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl$onSmartspaceMediaDataLoaded$$inlined$compareBy$1;-><init>(Ljava/util/Map;)V

    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9, v8}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v9, v6}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    invoke-interface {v9}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v8

    iget-object v10, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    const-wide v11, 0x7fffffffffffffffL

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v10}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    invoke-virtual {v9}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/logging/InstanceId;

    invoke-virtual {v9, v8}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/media/controls/shared/model/MediaData;

    if-eqz v8, :cond_2

    iget-wide v11, v8, Lcom/android/systemui/media/controls/shared/model/MediaData;->lastActive:J

    sub-long v11, v13, v11

    :cond_2
    :goto_0
    sget-object v8, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->Companion:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v13, 0x1e

    invoke-virtual {v8, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    const-string v8, "debug.sysui.smartspace_max_age"

    invoke-static {v8, v13, v14}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    iget-object v8, v2, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->cardAction:Landroid/app/smartspace/SmartspaceAction;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_3

    const-string/jumbo v15, "resumable_media_max_age_seconds"

    move-wide/from16 v16, v13

    const-wide/16 v13, 0x0

    invoke-virtual {v8, v15, v13, v14}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v13, v7, v13

    if-lez v13, :cond_4

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v13, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    goto :goto_1

    :cond_3
    move-wide/from16 v16, v13

    :cond_4
    move-wide/from16 v13, v16

    :goto_1
    iget-object v7, v2, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->cardAction:Landroid/app/smartspace/SmartspaceAction;

    const/4 v8, 0x1

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_5

    const-string v15, "SHOULD_TRIGGER_RESUME"

    invoke-virtual {v7, v15, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    goto :goto_2

    :cond_5
    move v7, v8

    :goto_2
    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-boolean v15, v15, Lcom/android/systemui/media/controls/shared/model/MediaData;->active:Z

    if-eqz v15, :cond_7

    goto :goto_4

    :cond_8
    :goto_3
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v8

    if-eqz v6, :cond_9

    if-eqz v3, :cond_9

    move v6, v8

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v6, 0x0

    :goto_5
    cmp-long v7, v11, v13

    iget-object v11, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->mediaLoadingLogger:Lcom/android/systemui/media/controls/domain/pipeline/MediaLoadingLogger;

    iget-object v12, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    if-gez v7, :cond_b

    if-eqz v6, :cond_c

    invoke-virtual {v9}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/logging/InstanceId;

    iget-object v7, v5, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->_reactivatedId:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v7, v6}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v9, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v18, v7

    check-cast v18, Lcom/android/systemui/media/controls/shared/model/MediaData;

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const v37, 0xfffbfff

    invoke-static/range {v18 .. v37}, Lcom/android/systemui/media/controls/shared/model/MediaData;->copy$default(Lcom/android/systemui/media/controls/shared/model/MediaData;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/shared/model/MediaButton;Ljava/lang/String;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;ZLcom/android/systemui/media/controls/domain/resume/MediaResumeListener$getResumeAction$1;ZZLjava/lang/Boolean;ZJJLcom/android/internal/logging/InstanceId;II)Lcom/android/systemui/media/controls/shared/model/MediaData;

    move-result-object v7

    iget-object v8, v7, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v9, v12, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v13, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_RECOMMENDATION_ACTIVATED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    iget v14, v7, Lcom/android/systemui/media/controls/shared/model/MediaData;->appUid:I

    iget-object v15, v7, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    invoke-interface {v9, v13, v14, v15, v8}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    new-instance v8, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v9, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v8, v6, v14, v9, v13}, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;-><init>(Lcom/android/internal/logging/InstanceId;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v5, v8}, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->addMediaDataLoadingState(Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel;)V

    iget-object v8, v7, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-boolean v9, v7, Lcom/android/systemui/media/controls/shared/model/MediaData;->active:Z

    const-string v13, "reactivating media instead of smartspace"

    invoke-virtual {v11, v8, v9, v13}, Lcom/android/systemui/media/controls/domain/pipeline/MediaLoadingLogger;->logMediaLoaded(Lcom/android/internal/logging/InstanceId;ZLjava/lang/String;)V

    iget-object v8, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->_listeners:Ljava/util/Set;

    invoke-static {v8}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v38, v9

    check-cast v38, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;

    invoke-virtual {v0, v6}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->getKey(Lcom/android/internal/logging/InstanceId;)Ljava/lang/String;

    move-result-object v40

    if-eqz v40, :cond_a

    invoke-interface {v10}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v13

    move-object v15, v8

    iget-wide v8, v2, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->headphoneConnectionTimeMillis:J

    sub-long/2addr v13, v8

    long-to-int v8, v13

    const/16 v42, 0x0

    const/16 v44, 0x1

    const/16 v45, 0x8

    move-object/from16 v39, v40

    move-object/from16 v41, v7

    move/from16 v43, v8

    invoke-static/range {v38 .. v45}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;->onMediaDataLoaded$default(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;ZIZI)V

    goto :goto_7

    :cond_a
    move-object v15, v8

    :goto_7
    move-object v8, v15

    goto :goto_6

    :cond_b
    if-eqz v3, :cond_c

    goto :goto_8

    :cond_c
    const/4 v8, 0x0

    :goto_8
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->isValid()Z

    move-result v6

    if-nez v6, :cond_d

    const-string v0, "Invalid recommendation data. Skip showing the rec card"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    iget-object v4, v5, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->smartspaceMediaData:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v4, v4, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-object v6, v4, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->packageName:Ljava/lang/String;

    iget-object v4, v4, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v7, v12, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v9, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_RECOMMENDATION_ADDED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10, v6, v4}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    new-instance v4, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaLoadingModel$Loaded;

    invoke-direct {v4, v1, v8}, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaLoadingModel$Loaded;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v5, v4}, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->setRecommendationsLoadingState(Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaLoadingModel;)V

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v5, Lcom/android/systemui/media/controls/domain/pipeline/MediaLoadingLogger$logRecommendationLoaded$2;->INSTANCE:Lcom/android/systemui/media/controls/domain/pipeline/MediaLoadingLogger$logRecommendationLoaded$2;

    iget-object v6, v11, Lcom/android/systemui/media/controls/domain/pipeline/MediaLoadingLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v7, "MediaLoadingLog"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v5, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v5, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-boolean v3, v5, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    const-string v3, "loading recommendations"

    iput-object v3, v5, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v6, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->_listeners:Ljava/util/Set;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;

    invoke-interface {v3, v1, v2}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;->onSmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;)V

    goto :goto_9

    :cond_e
    return-void
.end method

.method public final onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v10, p2

    iget-object v11, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->mediaFilterRepository:Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;

    iget-object v2, v11, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->reactivatedId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/android/internal/logging/InstanceId;

    const/4 v13, 0x0

    iget-object v14, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->mediaLoadingLogger:Lcom/android/systemui/media/controls/domain/pipeline/MediaLoadingLogger;

    if-eqz v12, :cond_1

    iget-object v2, v11, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->_reactivatedId:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v2, v13}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    iget-object v2, v11, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->selectedUserEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/systemui/media/controls/shared/model/MediaData;

    if-eqz v15, :cond_1

    new-instance v2, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;

    invoke-direct {v2, v12, v10}, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;-><init>(Lcom/android/internal/logging/InstanceId;Z)V

    invoke-virtual {v11, v2}, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->addMediaDataLoadingState(Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel;)V

    iget-boolean v2, v15, Lcom/android/systemui/media/controls/shared/model/MediaData;->active:Z

    const-string v3, "expiring reactivated id"

    invoke-virtual {v14, v12, v2, v3}, Lcom/android/systemui/media/controls/domain/pipeline/MediaLoadingLogger;->logMediaLoaded(Lcom/android/internal/logging/InstanceId;ZLjava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->_listeners:Ljava/util/Set;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;

    invoke-virtual {v0, v12}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->getKey(Lcom/android/internal/logging/InstanceId;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x30

    move-object v3, v4

    move-object v5, v15

    move/from16 v6, p2

    invoke-static/range {v2 .. v9}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;->onMediaDataLoaded$default(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;ZIZI)V

    goto :goto_0

    :cond_1
    iget-object v2, v11, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->smartspaceMediaData:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-boolean v3, v2, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->isActive:Z

    if-eqz v3, :cond_2

    sget-object v15, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImplKt;->EMPTY_SMARTSPACE_MEDIA_DATA:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-object v3, v2, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    const-wide/16 v19, 0x0

    const-wide/16 v22, 0x0

    iget-object v2, v2, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->targetId:Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v24, 0x17e

    move-object/from16 v16, v2

    move-object/from16 v21, v3

    invoke-static/range {v15 .. v24}, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->copy$default(Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;Ljava/lang/String;ZLandroid/content/Intent;JLcom/android/internal/logging/InstanceId;JI)Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    move-result-object v2

    iget-object v3, v11, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->_smartspaceMediaData:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v3, v13, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_2
    new-instance v2, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaLoadingModel$Removed;

    invoke-direct {v2, v1, v10}, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaLoadingModel$Removed;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v11, v2}, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->setRecommendationsLoadingState(Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaLoadingModel;)V

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v3, Lcom/android/systemui/media/controls/domain/pipeline/MediaLoadingLogger$logRecommendationRemoved$2;->INSTANCE:Lcom/android/systemui/media/controls/domain/pipeline/MediaLoadingLogger$logRecommendationRemoved$2;

    iget-object v4, v14, Lcom/android/systemui/media/controls/domain/pipeline/MediaLoadingLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v5, "MediaLoadingLog"

    invoke-virtual {v4, v5, v2, v3, v13}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-boolean v10, v3, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    const-string v5, "removing recommendations card"

    iput-object v5, v3, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->_listeners:Ljava/util/Set;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;

    invoke-interface {v2, v1, v10}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;->onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    return-void
.end method
