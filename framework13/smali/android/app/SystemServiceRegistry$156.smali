.class Landroid/app/SystemServiceRegistry$156;
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
        "Lcom/samsung/android/knox/SemRemoteContentManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1940
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Lcom/samsung/android/knox/SemRemoteContentManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 1943
    const-string/jumbo v0, "rcp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1944
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Lcom/samsung/android/knox/SemRemoteContentManager;

    invoke-static {v0}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemRemoteContentManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/SemRemoteContentManager;-><init>(Lcom/samsung/android/knox/ISemRemoteContentManager;)V

    return-object v1
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1940
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$156;->createService(Landroid/app/ContextImpl;)Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object p1

    return-object p1
.end method
