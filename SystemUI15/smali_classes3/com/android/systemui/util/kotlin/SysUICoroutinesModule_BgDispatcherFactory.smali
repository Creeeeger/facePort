.class public final Lcom/android/systemui/util/kotlin/SysUICoroutinesModule_BgDispatcherFactory;
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


# instance fields
.field private final module:Lcom/android/systemui/util/kotlin/SysUICoroutinesModule;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/kotlin/SysUICoroutinesModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/kotlin/SysUICoroutinesModule_BgDispatcherFactory;->module:Lcom/android/systemui/util/kotlin/SysUICoroutinesModule;

    return-void
.end method

.method public static bgDispatcher(Lcom/android/systemui/util/kotlin/SysUICoroutinesModule;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/kotlin/SysUICoroutinesModule;->bgDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static create(Lcom/android/systemui/util/kotlin/SysUICoroutinesModule;)Lcom/android/systemui/util/kotlin/SysUICoroutinesModule_BgDispatcherFactory;
    .locals 1

    new-instance v0, Lcom/android/systemui/util/kotlin/SysUICoroutinesModule_BgDispatcherFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/kotlin/SysUICoroutinesModule_BgDispatcherFactory;-><init>(Lcom/android/systemui/util/kotlin/SysUICoroutinesModule;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/kotlin/SysUICoroutinesModule_BgDispatcherFactory;->get()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public get()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/SysUICoroutinesModule_BgDispatcherFactory;->module:Lcom/android/systemui/util/kotlin/SysUICoroutinesModule;

    invoke-static {p0}, Lcom/android/systemui/util/kotlin/SysUICoroutinesModule_BgDispatcherFactory;->bgDispatcher(Lcom/android/systemui/util/kotlin/SysUICoroutinesModule;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p0

    return-object p0
.end method
