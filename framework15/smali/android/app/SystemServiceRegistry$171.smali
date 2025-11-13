.class Landroid/app/SystemServiceRegistry$171;
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
        "Landroid/provider/E2eeContactKeysManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/provider/E2eeContactKeysManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/Flags;->userKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/provider/E2eeContactKeysManager;

    invoke-direct {v0, p1}, Landroid/provider/E2eeContactKeysManager;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/ServiceManager$ServiceNotFoundException;

    const-string v1, "ContactKeysManager is not supported"

    invoke-direct {v0, v1}, Landroid/os/ServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$171;->createService(Landroid/app/ContextImpl;)Landroid/provider/E2eeContactKeysManager;

    move-result-object p1

    return-object p1
.end method
