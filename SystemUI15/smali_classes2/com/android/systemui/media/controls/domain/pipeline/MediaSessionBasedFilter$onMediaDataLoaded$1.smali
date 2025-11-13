.class public final Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $data:Lcom/android/systemui/media/controls/shared/model/MediaData;

.field public final synthetic $immediately:Z

.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic $oldKey:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/shared/model/MediaData;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$data:Lcom/android/systemui/media/controls/shared/model/MediaData;

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$oldKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;

    iput-boolean p5, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$immediately:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$data:Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-object v0, v0, Lcom/android/systemui/media/controls/shared/model/MediaData;->token:Landroid/media/session/MediaSession$Token;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;

    iget-object v1, v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->tokensWithNotifications:Ljava/util/Set;

    new-instance v2, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$TokenId;

    invoke-direct {v2, v0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$TokenId;-><init>(Landroid/media/session/MediaSession$Token;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$oldKey:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;

    iget-object v3, v3, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->keyedTokens:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$oldKey:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;

    iget-object v5, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    iget-object v4, v4, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->keyedTokens:Ljava/util/Map;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$data:Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-object v3, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->token:Landroid/media/session/MediaSession$Token;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;

    iget-object v3, v3, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->keyedTokens:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$data:Lcom/android/systemui/media/controls/shared/model/MediaData;

    new-instance v5, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$TokenId;

    iget-object v4, v4, Lcom/android/systemui/media/controls/shared/model/MediaData;->token:Landroid/media/session/MediaSession$Token;

    invoke-direct {v5, v4}, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$TokenId;-><init>(Landroid/media/session/MediaSession$Token;)V

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;

    iget-object v4, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$data:Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-object v5, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    new-instance v6, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$TokenId;

    iget-object v4, v4, Lcom/android/systemui/media/controls/shared/model/MediaData;->token:Landroid/media/session/MediaSession$Token;

    invoke-direct {v6, v4}, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$TokenId;-><init>(Landroid/media/session/MediaSession$Token;)V

    filled-new-array {v6}, [Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$TokenId;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/SetsKt__SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    iget-object v3, v3, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->keyedTokens:Ljava/util/Map;

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;

    iget-object v3, v3, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->packageControllers:Ljava/util/LinkedHashMap;

    iget-object v4, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$data:Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-object v4, v4, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    check-cast v3, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroid/media/session/MediaController;

    invoke-virtual {v7}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    move-object v5, v4

    :cond_7
    if-eqz v5, :cond_8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/media/session/MediaController;

    :cond_8
    if-nez v0, :cond_a

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$data:Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-object v2, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->token:Landroid/media/session/MediaSession$Token;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->tokensWithNotifications:Ljava/util/Set;

    new-instance v2, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$TokenId;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$TokenId;-><init>(Landroid/media/session/MediaSession$Token;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$data:Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-object v2, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->token:Landroid/media/session/MediaSession$Token;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "filtering key="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " local="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " remote="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaSessionBasedFilter"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->keyedTokens:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/Set;

    new-instance v2, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$TokenId;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$TokenId;-><init>(Landroid/media/session/MediaSession$Token;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->foregroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$dispatchMediaDataRemoved$1;

    invoke-direct {v3, v0, p0, v1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$dispatchMediaDataRemoved$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;Ljava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_a
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;

    iget-object v6, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$oldKey:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$data:Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-boolean v9, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$immediately:Z

    iget-object p0, v5, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->foregroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$dispatchMediaDataLoaded$1;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$dispatchMediaDataLoaded$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;Z)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_b
    :goto_4
    return-void
.end method
