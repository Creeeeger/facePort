.class public final Lcom/android/systemui/util/kotlin/SysUICoroutinesModule_BgApplicationScopeFactory;
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
.field private final applicationScopeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final coroutineContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/systemui/util/kotlin/SysUICoroutinesModule;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/kotlin/SysUICoroutinesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/kotlin/SysUICoroutinesModule;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/kotlin/SysUICoroutinesModule_BgApplicationScopeFactory;->module:Lcom/android/systemui/util/kotlin/SysUICoroutinesModule;

    iput-object p2, p0, Lcom/android/systemui/util/kotlin/SysUICoroutinesModule_BgApplicationScopeFactory;->applicationScopeProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/util/kotlin/SysUICoroutinesModule_BgApplicationScopeFactory;->coroutineContextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static bgApplicationScope(Lcom/android/systemui/util/kotlin/SysUICoroutinesModule;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/kotlin/SysUICoroutinesModule;->bgApplicationScope(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static create(Lcom/android/systemui/util/kotlin/SysUICoroutinesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/kotlin/SysUICoroutinesModule_BgApplicationScopeFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/kotlin/SysUICoroutinesModule;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")",
            "Lcom/android/systemui/util/kotlin/SysUICoroutinesModule_BgApplicationScopeFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/util/kotlin/SysUICoroutinesModule_BgApplicationScopeFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/util/kotlin/SysUICoroutinesModule_BgApplicationScopeFactory;-><init>(Lcom/android/systemui/util/kotlin/SysUICoroutinesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/kotlin/SysUICoroutinesModule_BgApplicationScopeFactory;->get()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p0

    return-object p0
.end method

.method public get()Lkotlinx/coroutines/CoroutineScope;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/kotlin/SysUICoroutinesModule_BgApplicationScopeFactory;->module:Lcom/android/systemui/util/kotlin/SysUICoroutinesModule;

    iget-object v1, p0, Lcom/android/systemui/util/kotlin/SysUICoroutinesModule_BgApplicationScopeFactory;->applicationScopeProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/SysUICoroutinesModule_BgApplicationScopeFactory;->coroutineContextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/util/kotlin/SysUICoroutinesModule_BgApplicationScopeFactory;->bgApplicationScope(Lcom/android/systemui/util/kotlin/SysUICoroutinesModule;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p0

    return-object p0
.end method
