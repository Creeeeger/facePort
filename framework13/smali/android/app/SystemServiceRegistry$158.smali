.class Landroid/app/SystemServiceRegistry$158;
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
        "Lcom/samsung/android/desktopmode/SemDesktopModeManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1961
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    .locals 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 1964
    const-string v0, "desktopmode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1965
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IDesktopMode;

    move-result-object v1

    .line 1966
    .local v1, "service":Lcom/samsung/android/desktopmode/IDesktopMode;
    if-nez v1, :cond_0

    .line 1967
    const-string v2, "SystemServiceRegistry"

    const-string v3, "SemDesktopModeManager is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    const/4 v2, 0x0

    return-object v2

    .line 1970
    :cond_0
    new-instance v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;-><init>(Landroid/content/Context;Lcom/samsung/android/desktopmode/IDesktopMode;)V

    return-object v2
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1961
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$158;->createService(Landroid/app/ContextImpl;)Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    move-result-object p1

    return-object p1
.end method
