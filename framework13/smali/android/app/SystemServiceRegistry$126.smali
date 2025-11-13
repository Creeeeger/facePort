.class Landroid/app/SystemServiceRegistry$126;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Lcom/samsung/android/wifi/aware/SemWifiAwareManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1636
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Lcom/samsung/android/wifi/aware/SemWifiAwareManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1639
    nop

    .line 1640
    const-string/jumbo v0, "sem_wifi_aware"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1639
    invoke-static {v0}, Lcom/samsung/android/wifi/aware/ISemWifiAwareManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;

    move-result-object v0

    .line 1641
    .local v0, "service":Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;
    new-instance v1, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;-><init>(Landroid/content/Context;Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;)V

    return-object v1
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1636
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$126;->createService(Landroid/app/ContextImpl;)Lcom/samsung/android/wifi/aware/SemWifiAwareManager;

    move-result-object p1

    return-object p1
.end method
