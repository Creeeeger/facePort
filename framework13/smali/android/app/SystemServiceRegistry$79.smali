.class Landroid/app/SystemServiceRegistry$79;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
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
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher<",
        "Landroid/app/trust/TrustManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1137
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService()Landroid/app/trust/TrustManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1140
    const-string/jumbo v0, "trust"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1141
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/app/trust/TrustManager;

    invoke-direct {v1, v0}, Landroid/app/trust/TrustManager;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public bridge synthetic blacklist createService()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1137
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$79;->createService()Landroid/app/trust/TrustManager;

    move-result-object v0

    return-object v0
.end method
