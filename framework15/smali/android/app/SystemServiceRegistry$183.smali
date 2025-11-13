.class Landroid/app/SystemServiceRegistry$183;
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
        "Lvendor/samsung/frameworks/codecsolution/SemCodecSolutionService;",
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

    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$183;->createService(Landroid/app/ContextImpl;)Lvendor/samsung/frameworks/codecsolution/SemCodecSolutionService;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createService(Landroid/app/ContextImpl;)Lvendor/samsung/frameworks/codecsolution/SemCodecSolutionService;
    .locals 1

    new-instance v0, Lvendor/samsung/frameworks/codecsolution/SemCodecSolutionService;

    invoke-direct {v0}, Lvendor/samsung/frameworks/codecsolution/SemCodecSolutionService;-><init>()V

    return-object v0
.end method
