.class public final Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;


# instance fields
.field public final backgroundExecutor:Ljava/util/concurrent/Executor;

.field public final foregroundExecutor:Ljava/util/concurrent/Executor;

.field public final keyedTokens:Ljava/util/Map;

.field public final listeners:Ljava/util/Set;

.field public final packageControllers:Ljava/util/LinkedHashMap;

.field public final sessionListener:Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$sessionListener$1;

.field public final sessionManager:Landroid/media/session/MediaSessionManager;

.field public final tokensWithNotifications:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/session/MediaSessionManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->sessionManager:Landroid/media/session/MediaSessionManager;

    iput-object p3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->foregroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->listeners:Ljava/util/Set;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->packageControllers:Ljava/util/LinkedHashMap;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->keyedTokens:Ljava/util/Map;

    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->tokensWithNotifications:Ljava/util/Set;

    new-instance p2, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$sessionListener$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$sessionListener$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;)V

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->sessionListener:Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$sessionListener$1;

    new-instance p2, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$1;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$1;-><init>(Landroid/content/Context;Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;)V

    invoke-interface {p4, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final access$handleControllersChanged(Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;Ljava/util/List;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->packageControllers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    if-eqz p1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->packageControllers:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/media/session/MediaController;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->packageControllers:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    new-instance v2, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$TokenId;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$TokenId;-><init>(Landroid/media/session/MediaSession$Token;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->tokensWithNotifications:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public final onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;ZIZ)V
    .locals 6

    iget-object p5, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance p6, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;

    move-object v0, p6

    move-object v1, p3

    move-object v2, p2

    move-object v3, p1

    move-object v4, p0

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;-><init>(Lcom/android/systemui/media/controls/shared/model/MediaData;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;Z)V

    invoke-interface {p5, p6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataRemoved$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataRemoved$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onSmartspaceMediaDataRemoved$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onSmartspaceMediaDataRemoved$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
