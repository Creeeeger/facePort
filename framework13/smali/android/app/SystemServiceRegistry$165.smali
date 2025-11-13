.class Landroid/app/SystemServiceRegistry$165;
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
        "Lcom/samsung/android/continuity/SemContinuityManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 2064
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Lcom/samsung/android/continuity/SemContinuityManager;
    .locals 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 2067
    const-string v0, "SemContinuityService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2068
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/continuity/ISemContinuityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/continuity/ISemContinuityManager;

    move-result-object v1

    .line 2069
    .local v1, "service":Lcom/samsung/android/continuity/ISemContinuityManager;
    new-instance v2, Lcom/samsung/android/continuity/SemContinuityManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v4

    invoke-direct {v2, v3, v1, v4}, Lcom/samsung/android/continuity/SemContinuityManager;-><init>(Landroid/content/Context;Lcom/samsung/android/continuity/ISemContinuityManager;I)V

    return-object v2
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 2064
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$165;->createService(Landroid/app/ContextImpl;)Lcom/samsung/android/continuity/SemContinuityManager;

    move-result-object p1

    return-object p1
.end method
