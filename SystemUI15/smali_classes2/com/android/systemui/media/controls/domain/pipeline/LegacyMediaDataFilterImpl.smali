.class public final Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;


# instance fields
.field public final _listeners:Ljava/util/Set;

.field public final allEntries:Ljava/util/LinkedHashMap;

.field public final broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public final context:Landroid/content/Context;

.field public final executor:Ljava/util/concurrent/Executor;

.field public final lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public final logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

.field public mediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

.field public final mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

.field public reactivatedKey:Ljava/lang/String;

.field public smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final userEntries:Ljava/util/LinkedHashMap;

.field public final userTrackerCallback:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl$userTrackerCallback$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/media/controls/util/MediaUiEventLogger;Lcom/android/systemui/media/controls/util/MediaFlags;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    iput-object p4, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object p5, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->executor:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p7, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    iput-object p8, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->_listeners:Ljava/util/Set;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->allEntries:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->userEntries:Ljava/util/LinkedHashMap;

    sget-object p1, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImplKt;->EMPTY_SMARTSPACE_MEDIA_DATA:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    new-instance p1, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl$userTrackerCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl$userTrackerCallback$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;)V

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->userTrackerCallback:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl$userTrackerCallback$1;

    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p2, p1, p5}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final handleProfileChanged$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->allEntries:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget v3, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->userId:I

    iget-object v4, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast v4, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isProfileAvailable(I)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Removing "

    const-string v4, " after profile change"

    const-string v5, "MediaDataFilter"

    invoke-static {v3, v2, v4, v5}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->userEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->_listeners:Ljava/util/Set;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;->onMediaDataRemoved(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final handleUserSwitched$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V
    .locals 15

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->_listeners:Ljava/util/Set;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->userEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->userEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, " after user change"

    const-string v4, "MediaDataFilter"

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "Removing "

    invoke-static {v5, v2, v3, v4}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-interface {v4, v2, v5}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;->onMediaDataRemoved(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->allEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget v6, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->userId:I

    iget-object v7, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast v7, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isCurrentProfile(I)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "Re-adding "

    invoke-static {v6, v5, v3, v4}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->userEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v5, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v13, 0x38

    move-object v7, v5

    move-object v9, v2

    invoke-static/range {v6 .. v13}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;->onMediaDataLoaded$default(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;ZIZI)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;ZIZ)V
    .locals 8

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->allEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p4, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p4, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->allEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p4, p1, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast p4, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget p5, p3, Lcom/android/systemui/media/controls/shared/model/MediaData;->userId:I

    invoke-virtual {p4, p5}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isCurrentProfile(I)Z

    move-result p6

    if-eqz p6, :cond_3

    invoke-virtual {p4, p5}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isProfileAvailable(I)Z

    move-result p4

    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    iget-object p4, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->userEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p4, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p4, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->userEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p4, p1, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->_listeners:Ljava/util/Set;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

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

    :cond_3
    :goto_1
    return-void
.end method

.method public final onMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->allEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->userEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/controls/shared/model/MediaData;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->_listeners:Ljava/util/Set;

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
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-boolean v2, v1, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->isActive:Z

    const-string v3, "MediaDataFilter"

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {v0}, Lcom/android/systemui/media/controls/util/MediaFlags;->isPersistentSsCardEnabled()V

    const-string v0, "Inactive recommendation data. Skip triggering."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-object v4, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->userEntries:Ljava/util/LinkedHashMap;

    new-instance v5, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl$onSmartspaceMediaDataLoaded$$inlined$compareBy$1;

    invoke-direct {v5, v0}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl$onSmartspaceMediaDataLoaded$$inlined$compareBy$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;)V

    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v6, v4}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    invoke-interface {v6}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v4

    iget-object v5, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    const-wide v7, 0x7fffffffffffffffL

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v5}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-virtual {v6}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/controls/shared/model/MediaData;

    if-eqz v4, :cond_2

    iget-wide v7, v4, Lcom/android/systemui/media/controls/shared/model/MediaData;->lastActive:J

    sub-long v7, v9, v7

    :cond_2
    :goto_0
    sget-wide v9, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImplKt;->SMARTSPACE_MAX_AGE:J

    iget-object v4, v1, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->cardAction:Landroid/app/smartspace/SmartspaceAction;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string/jumbo v11, "resumable_media_max_age_seconds"

    const-wide/16 v12, 0x0

    invoke-virtual {v4, v11, v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    cmp-long v4, v14, v12

    if-lez v4, :cond_3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    :cond_3
    iget-object v4, v1, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->cardAction:Landroid/app/smartspace/SmartspaceAction;

    const/4 v11, 0x1

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v12, "SHOULD_TRIGGER_RESUME"

    invoke-virtual {v4, v12, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    goto :goto_1

    :cond_4
    move v4, v11

    :goto_1
    const/4 v12, 0x0

    if-eqz v4, :cond_8

    iget-object v4, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->userEntries:Ljava/util/LinkedHashMap;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-boolean v13, v13, Lcom/android/systemui/media/controls/shared/model/MediaData;->active:Z

    if-eqz v13, :cond_6

    goto :goto_3

    :cond_7
    :goto_2
    iget-object v4, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->userEntries:Ljava/util/LinkedHashMap;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v11

    if-eqz v4, :cond_8

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    move v11, v12

    :goto_4
    cmp-long v4, v7, v9

    iget-object v7, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    if-gez v4, :cond_9

    if-eqz v11, :cond_9

    invoke-virtual {v6}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "reactivating "

    const-string v8, " instead of smartspace"

    invoke-static {v4, v2, v8, v3}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->reactivatedKey:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v13, v4

    check-cast v13, Lcom/android/systemui/media/controls/shared/model/MediaData;

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const v32, 0xfffbfff

    invoke-static/range {v13 .. v32}, Lcom/android/systemui/media/controls/shared/model/MediaData;->copy$default(Lcom/android/systemui/media/controls/shared/model/MediaData;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/shared/model/MediaButton;Ljava/lang/String;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;ZLcom/android/systemui/media/controls/domain/resume/MediaResumeListener$getResumeAction$1;ZZLjava/lang/Boolean;ZJJLcom/android/internal/logging/InstanceId;II)Lcom/android/systemui/media/controls/shared/model/MediaData;

    move-result-object v4

    iget-object v6, v4, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v8, v7, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v9, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_RECOMMENDATION_ACTIVATED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    iget v10, v4, Lcom/android/systemui/media/controls/shared/model/MediaData;->appUid:I

    iget-object v11, v4, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    invoke-interface {v8, v9, v10, v11, v6}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    iget-object v6, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->_listeners:Ljava/util/Set;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v13, v8

    check-cast v13, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v5}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v1, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->headphoneConnectionTimeMillis:J

    sub-long/2addr v8, v10

    long-to-int v8, v8

    const/16 v17, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x8

    move-object v14, v2

    move-object v15, v2

    move-object/from16 v16, v4

    move/from16 v18, v8

    invoke-static/range {v13 .. v20}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;->onMediaDataLoaded$default(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;ZIZI)V

    goto :goto_5

    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->isValid()Z

    move-result v2

    if-nez v2, :cond_a

    const-string v0, "Invalid recommendation data. Skip showing the rec card"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-object v3, v2, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->packageName:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v4, v7, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v5, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_RECOMMENDATION_ADDED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    invoke-interface {v4, v5, v12, v3, v2}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->_listeners:Ljava/util/Set;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;

    move-object/from16 v3, p1

    invoke-interface {v2, v3, v1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;->onSmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;)V

    goto :goto_6

    :cond_b
    return-void
.end method

.method public final onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 12

    iget-object v8, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->reactivatedKey:Ljava/lang/String;

    if-eqz v8, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->reactivatedKey:Ljava/lang/String;

    const-string v0, "expiring reactivated key "

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaDataFilter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->userEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/media/controls/shared/model/MediaData;

    if-eqz v9, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->_listeners:Ljava/util/Set;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    move-object v1, v8

    move-object v2, v8

    move-object v3, v9

    move v4, p2

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;->onMediaDataLoaded$default(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;ZIZI)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-boolean v1, v0, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->isActive:Z

    if-eqz v1, :cond_1

    sget-object v2, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImplKt;->EMPTY_SMARTSPACE_MEDIA_DATA:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-object v8, v0, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    const-wide/16 v6, 0x0

    const-wide/16 v9, 0x0

    iget-object v3, v0, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->targetId:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v11, 0x17e

    invoke-static/range {v2 .. v11}, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->copy$default(Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;Ljava/lang/String;ZLandroid/content/Intent;JLcom/android/internal/logging/InstanceId;JI)Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->_listeners:Ljava/util/Set;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;->onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    return-void
.end method
