.class public Lcom/att/iqi/lib/IQIManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback;,
        Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;,
        Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;,
        Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;,
        Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;
    }
.end annotation


# static fields
.field public static sInstance:Lcom/att/iqi/lib/IQIManager;

.field public static final sLock:Ljava/lang/Object;


# instance fields
.field public final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public mIQIService:Lcom/att/iqi/IIQIBroker;

.field public final mMessageDispatcher:Landroid/os/Handler;

.field public final mMetricQueryCallbackMap:Landroid/util/SparseArray;

.field public final mMetricSourcingCallback:Lcom/att/iqi/IMetricSourcingCallback;

.field public final mMetricSourcingListenerMap:Landroid/util/SparseArray;

.field public final mProfileChangeListenerList:Ljava/util/List;

.field public final mProfileChangedCallback:Lcom/att/iqi/IProfileChangedCallback;

.field public final mQueryCallback:Lcom/att/iqi/IMetricQueryCallback;

.field public final mServiceStateChangeListenerList:Ljava/util/List;

.field public final mServiceStateChangedCallback:Lcom/att/iqi/IServiceStateChangeCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/IQIManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricQueryCallbackMap:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangeListenerList:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricSourcingListenerMap:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangeListenerList:Ljava/util/List;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/att/iqi/lib/IQIManager$2;

    invoke-direct {v0, p0}, Lcom/att/iqi/lib/IQIManager$2;-><init>(Lcom/att/iqi/lib/IQIManager;)V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mQueryCallback:Lcom/att/iqi/IMetricQueryCallback;

    new-instance v0, Lcom/att/iqi/lib/IQIManager$3;

    invoke-direct {v0, p0}, Lcom/att/iqi/lib/IQIManager$3;-><init>(Lcom/att/iqi/lib/IQIManager;)V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricSourcingCallback:Lcom/att/iqi/IMetricSourcingCallback;

    new-instance v0, Lcom/att/iqi/lib/IQIManager$4;

    invoke-direct {v0, p0}, Lcom/att/iqi/lib/IQIManager$4;-><init>(Lcom/att/iqi/lib/IQIManager;)V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangedCallback:Lcom/att/iqi/IProfileChangedCallback;

    new-instance v0, Lcom/att/iqi/lib/IQIManager$5;

    invoke-direct {v0, p0}, Lcom/att/iqi/lib/IQIManager$5;-><init>(Lcom/att/iqi/lib/IQIManager;)V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangedCallback:Lcom/att/iqi/IServiceStateChangeCallback;

    invoke-virtual {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "msg-handler-iqi"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :cond_0
    new-instance v1, Landroid/os/Handler;

    new-instance v2, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback;

    invoke-direct {v2, p0}, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback;-><init>(Lcom/att/iqi/lib/IQIManager;)V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/att/iqi/lib/IQIManager;->mMessageDispatcher:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Lcom/att/iqi/lib/IQIManager;
    .locals 2

    sget-object v0, Lcom/att/iqi/lib/IQIManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/att/iqi/lib/IQIManager;->sInstance:Lcom/att/iqi/lib/IQIManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/att/iqi/lib/IQIManager;

    invoke-direct {v1}, Lcom/att/iqi/lib/IQIManager;-><init>()V

    sput-object v1, Lcom/att/iqi/lib/IQIManager;->sInstance:Lcom/att/iqi/lib/IQIManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/att/iqi/lib/IQIManager;->sInstance:Lcom/att/iqi/lib/IQIManager;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public disableService()V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    invoke-interface {p0}, Lcom/att/iqi/IIQIBroker;->disableService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public forceStopService(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object v6, p0, Lcom/att/iqi/lib/IQIManager;->mMessageDispatcher:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {v6, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    new-instance v1, Lcom/att/iqi/lib/IQIManager$1;

    invoke-direct {v1, p0, v7, p2}, Lcom/att/iqi/lib/IQIManager$1;-><init>(Lcom/att/iqi/lib/IQIManager;Landroid/os/Message;Ljava/lang/Runnable;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string p2, "com.att.iqi.action.SERVICE_FORCE_STOPPED"

    invoke-direct {v2, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x2

    const-string v3, "com.att.iqi.permission.RECEIVE_FORCE_STOP_NOTIFICATION"

    move-object v0, p1

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const-wide/16 p1, 0xdac

    invoke-virtual {v6, v7, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    invoke-interface {p0}, Lcom/att/iqi/IIQIBroker;->forceStopService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final getService()V
    .locals 5

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "android.os.ServiceManager"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "getService"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string v1, "iqi"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/att/iqi/IIQIBroker$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IIQIBroker;

    move-result-object v0

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public registerMetricSourcingListener(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->mMetricSourcingCallback:Lcom/att/iqi/IMetricSourcingCallback;

    invoke-interface {v0, p1, v1}, Lcom/att/iqi/IIQIBroker;->registerMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricSourcingListenerMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricSourcingListenerMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v1

    invoke-virtual {p0, v1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void

    :catch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Callback already registered for metric ID "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public registerProfileChangeListener(Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangeListenerList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangeListenerList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    iget-object v2, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangeListenerList:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangedCallback:Lcom/att/iqi/IProfileChangedCallback;

    invoke-interface {p1, p0}, Lcom/att/iqi/IIQIBroker;->registerProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public registerQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->mQueryCallback:Lcom/att/iqi/IMetricQueryCallback;

    invoke-interface {v0, p1, v1}, Lcom/att/iqi/IIQIBroker;->registerMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricQueryCallbackMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricQueryCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v1

    invoke-virtual {p0, v1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void

    :catch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Callback already registered for metric ID "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public registerServiceStateChangeListener(Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangeListenerList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangeListenerList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    iget-object v2, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangeListenerList:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangedCallback:Lcom/att/iqi/IServiceStateChangeCallback;

    invoke-interface {p1, p0}, Lcom/att/iqi/IIQIBroker;->registerServiceChangedCallback(Lcom/att/iqi/IServiceStateChangeCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public setUnlockCode(J)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    invoke-interface {p0, p1, p2}, Lcom/att/iqi/IIQIBroker;->setUnlockCode(J)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    invoke-interface {p0, p1}, Lcom/att/iqi/IIQIBroker;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public submitMetric(Lcom/att/iqi/lib/Metric;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    invoke-interface {p0, p1}, Lcom/att/iqi/IIQIBroker;->submitMetric(Lcom/att/iqi/lib/Metric;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public unregisterMetricSourcingListener(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    iget-object p2, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricSourcingCallback:Lcom/att/iqi/IMetricSourcingCallback;

    invoke-interface {p2, p1, v0}, Lcom/att/iqi/IIQIBroker;->unregisterMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V

    iget-object p2, p0, Lcom/att/iqi/lib/IQIManager;->mMetricSourcingListenerMap:Landroid/util/SparseArray;

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricSourcingListenerMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public unregisterProfileChangeListener(Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangeListenerList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangeListenerList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangeListenerList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangedCallback:Lcom/att/iqi/IProfileChangedCallback;

    invoke-interface {p1, p0}, Lcom/att/iqi/IIQIBroker;->unregisterProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public unregisterQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    iget-object p2, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mQueryCallback:Lcom/att/iqi/IMetricQueryCallback;

    invoke-interface {p2, p1, v0}, Lcom/att/iqi/IIQIBroker;->unregisterMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V

    iget-object p2, p0, Lcom/att/iqi/lib/IQIManager;->mMetricQueryCallbackMap:Landroid/util/SparseArray;

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricQueryCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public unregisterServiceStateChangeListener(Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangeListenerList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangeListenerList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangeListenerList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangedCallback:Lcom/att/iqi/IServiceStateChangeCallback;

    invoke-interface {p1, p0}, Lcom/att/iqi/IIQIBroker;->unregisterServiceChangedCallback(Lcom/att/iqi/IServiceStateChangeCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
