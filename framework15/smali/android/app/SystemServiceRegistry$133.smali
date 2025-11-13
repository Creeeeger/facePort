.class Landroid/app/SystemServiceRegistry$133;
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
        "Lcom/samsung/android/provider/DynamicFeatureManager;",
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
.method public blacklist createService(Landroid/app/ContextImpl;)Lcom/samsung/android/provider/DynamicFeatureManager;
    .locals 4

    const-string v0, "dynamic_feature"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/provider/IDynamicFeatureManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/provider/IDynamicFeatureManager;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "SystemServiceRegistry"

    const-string v3, "IDynamicFeatureManager is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2

    :cond_0
    new-instance v2, Lcom/samsung/android/provider/DynamicFeatureManager;

    invoke-direct {v2, v1}, Lcom/samsung/android/provider/DynamicFeatureManager;-><init>(Lcom/samsung/android/provider/IDynamicFeatureManager;)V

    return-object v2
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

    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$133;->createService(Landroid/app/ContextImpl;)Lcom/samsung/android/provider/DynamicFeatureManager;

    move-result-object p1

    return-object p1
.end method
