.class public final Lcom/android/settings/utils/SensorPrivacyManagerHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;


# static fields
.field public static sInstance:Lcom/android/settings/utils/SensorPrivacyManagerHelper;


# instance fields
.field public final cache:Ljava/util/Map;

.field public final callbacks:Ljava/util/Map;

.field public final lock:Ljava/lang/Object;

.field public final sensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->cache:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->callbacks:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->lock:Ljava/lang/Object;

    const-class v0, Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/hardware/SensorPrivacyManager;

    iput-object v0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->sensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(Ljava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/android/settings/utils/SensorPrivacyManagerHelper;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->sInstance:Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->sInstance:Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    :cond_0
    sget-object p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->sInstance:Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    return-object p0
.end method


# virtual methods
.method public final addSensorBlockedListener(IILjava/util/concurrent/Executor;Lcom/android/settings/privacy/SensorToggleController;)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->addSensorBlockedListener(IILjava/util/concurrent/Executor;Lcom/android/settings/privacy/SensorToggleController;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->addSensorBlockedListener(IILjava/util/concurrent/Executor;Lcom/android/settings/privacy/SensorToggleController;)V

    return-void

    :cond_0
    if-ne p2, v2, :cond_1

    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->addSensorBlockedListener(IILjava/util/concurrent/Executor;Lcom/android/settings/privacy/SensorToggleController;)V

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->addSensorBlockedListener(IILjava/util/concurrent/Executor;Lcom/android/settings/privacy/SensorToggleController;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->callbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    check-cast p1, Ljava/util/Set;

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, p4, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final isSensorBlocked(II)Z
    .locals 5

    iget-object v0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->isSensorBlocked(II)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p2}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->isSensorBlocked(II)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return p1

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->cache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object p0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->sensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final onSensorPrivacyChanged(IZ)V
    .locals 0

    return-void
.end method

.method public final onSensorPrivacyChanged(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;)V
    .locals 5

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->cache:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->getToggleType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->getSensor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->isEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->isEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->callbacks:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->getToggleType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->getSensor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/settings/utils/SensorPrivacyManagerHelper$onSensorPrivacyChanged$1$1$1;

    invoke-direct {v3, v1, p1}, Lcom/android/settings/utils/SensorPrivacyManagerHelper$onSensorPrivacyChanged$1$1$1;-><init>(Lkotlin/Pair;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method
