.class final Lcom/samsung/android/sume/core/message/Response$ListenerManager;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/message/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ListenerManager"
.end annotation


# static fields
.field private static volatile blacklist sInstance:Lcom/samsung/android/sume/core/message/Response$ListenerManager;


# instance fields
.field private final blacklist consumerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/core/message/Message;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/Response$ListenerManager;->consumerMap:Ljava/util/Map;

    return-void
.end method

.method public static blacklist getInstance()Lcom/samsung/android/sume/core/message/Response$ListenerManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/sume/core/message/Response$ListenerManager;->sInstance:Lcom/samsung/android/sume/core/message/Response$ListenerManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/sume/core/message/Response$ListenerManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sume/core/message/Response$ListenerManager;->sInstance:Lcom/samsung/android/sume/core/message/Response$ListenerManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/sume/core/message/Response$ListenerManager;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/message/Response$ListenerManager;-><init>()V

    sput-object v1, Lcom/samsung/android/sume/core/message/Response$ListenerManager;->sInstance:Lcom/samsung/android/sume/core/message/Response$ListenerManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/sume/core/message/Response$ListenerManager;->sInstance:Lcom/samsung/android/sume/core/message/Response$ListenerManager;

    return-object v0
.end method


# virtual methods
.method blacklist clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/Response$ListenerManager;->consumerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method blacklist register(Ljava/util/function/Consumer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/core/message/Message;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/message/Response$ListenerManager;->consumerMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method blacklist unRegister(I)Ljava/util/function/Consumer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/core/message/Message;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/Response$ListenerManager;->consumerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    return-object v0
.end method
