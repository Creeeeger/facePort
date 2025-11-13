.class Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy;
.super Lcom/samsung/android/wifi/ISemAbTestConfigurationUpdateObserver$Stub;
.source "SemWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AbTestConfigUpdateObserverProxy"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mModule:Ljava/lang/String;

.field private final blacklist mObserver:Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserver;

.field private final blacklist mWifiManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/wifi/SemWifiManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$sjJA9A7BYjAQ5DH1XZVk0nsqgaE(Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy;Lcom/samsung/android/wifi/SemWifiManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy;->lambda$registered$0(Lcom/samsung/android/wifi/SemWifiManager;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wIBGXRB_0G-dYudRY7RkmY_zCWs(Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy;Lcom/samsung/android/wifi/SemAbTestConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy;->lambda$notifyAbTestConfigUpdate$1(Lcom/samsung/android/wifi/SemAbTestConfiguration;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/wifi/SemWifiManager;Ljava/util/concurrent/Executor;Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserver;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/wifi/ISemAbTestConfigurationUpdateObserver$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy;->mWifiManager:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy;->mObserver:Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserver;

    iput-object p4, p0, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy;->mModule:Ljava/lang/String;

    return-void
.end method

.method private synthetic blacklist lambda$notifyAbTestConfigUpdate$1(Lcom/samsung/android/wifi/SemAbTestConfiguration;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy;->mObserver:Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserver;

    invoke-virtual {v0, p1}, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserver;->onUpdated(Lcom/samsung/android/wifi/SemAbTestConfiguration;)V

    return-void
.end method

.method private synthetic blacklist lambda$registered$0(Lcom/samsung/android/wifi/SemWifiManager;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy;->mObserver:Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserver;

    new-instance v1, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigSubscription;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy;->mObserver:Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserver;

    iget-object v3, p0, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy;->mModule:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3}, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigSubscription;-><init>(Lcom/samsung/android/wifi/SemWifiManager;Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserver;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserver;->onRegistered(Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigSubscription;)V

    return-void
.end method


# virtual methods
.method public blacklist notifyAbTestConfigUpdate(Lcom/samsung/android/wifi/SemAbTestConfiguration;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy;Lcom/samsung/android/wifi/SemAbTestConfiguration;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist registered()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy;->mWifiManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy;Lcom/samsung/android/wifi/SemWifiManager;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
