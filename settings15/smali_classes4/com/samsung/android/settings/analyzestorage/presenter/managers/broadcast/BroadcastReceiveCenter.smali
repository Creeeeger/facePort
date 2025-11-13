.class public final Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastHandler$NotifyBroadcastListener;


# static fields
.field public static final sInstanceMap:Landroid/util/SparseArray;


# instance fields
.field public final mDynamicListenerMap:Ljava/util/Map;

.field public final mHandler:Landroid/os/Handler;

.field public final mListenerMap:Ljava/util/Map;

.field public final mStorageBroadcastHandler:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/StorageBroadcastHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->sInstanceMap:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/StorageBroadcastHandler;

    invoke-direct {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/StorageBroadcastHandler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->mStorageBroadcastHandler:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/StorageBroadcastHandler;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->mDynamicListenerMap:Ljava/util/Map;

    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->mListenerMap:Ljava/util/Map;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final addDynamicListener(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->mDynamicListenerMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final notify(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 5

    const-string v0, "BroadcastReceiveCenter"

    const-string/jumbo v1, "notify ("

    check-cast p3, Ljava/util/EnumMap;

    invoke-virtual {p3, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-eqz p3, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") - "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, v1, p1, p2, v4}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Landroid/os/Bundle;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "notify() ] ConcurrentModificationException e : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ConcurrentModificationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final notifyDynamicBroadcast(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Landroid/os/Bundle;)V
    .locals 6

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->MEDIA_EJECTED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    if-eq v0, p1, :cond_1

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->MEDIA_UNMOUNTED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    if-eq v0, p1, :cond_1

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->MEDIA_MOUNTED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    if-eq v0, p1, :cond_1

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->MEDIA_REMOVED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->mDynamicListenerMap:Ljava/util/Map;

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->notify(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Landroid/os/Bundle;Ljava/util/Map;)V

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->mDynamicListenerMap:Ljava/util/Map;

    const-string v1, "BroadcastReceiveCenter"

    const-string/jumbo v2, "notifySequentially ("

    check-cast v0, Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") - "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;

    iget-object v3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    invoke-direct {v4, v2, p1, p2, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Landroid/os/Bundle;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "notifySequentially() ] ConcurrentModificationException e : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ConcurrentModificationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public final removeDynamicListener(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->mDynamicListenerMap:Ljava/util/Map;

    check-cast p0, Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final removeListener(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->mListenerMap:Ljava/util/Map;

    check-cast p0, Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
