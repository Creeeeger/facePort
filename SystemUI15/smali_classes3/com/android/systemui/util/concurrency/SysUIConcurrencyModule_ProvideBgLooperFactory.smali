.class public final Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBgLooperFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Provider;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBgLooperFactory;
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBgLooperFactory$InstanceHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBgLooperFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideBgLooper()Landroid/os/Looper;
    .locals 1

    sget-object v0, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule;->INSTANCE:Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule;

    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule;->provideBgLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroid/os/Looper;
    .locals 0

    invoke-static {}, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBgLooperFactory;->provideBgLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBgLooperFactory;->get()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method
