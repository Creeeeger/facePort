.class Landroid/app/SystemServiceRegistry$148;
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
        "Lcom/samsung/android/cocktailbar/CocktailBarManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1839
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Lcom/samsung/android/cocktailbar/CocktailBarManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 1842
    const-string v0, "CocktailBarService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1843
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;-><init>(Landroid/content/Context;Lcom/samsung/android/cocktailbar/ICocktailBarService;)V

    return-object v1
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1839
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$148;->createService(Landroid/app/ContextImpl;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object p1

    return-object p1
.end method
