.class public final Lcom/android/systemui/util/kotlin/GlobalCoroutinesModule_MainCoroutineContextFactory;
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
.field private final module:Lcom/android/systemui/util/kotlin/GlobalCoroutinesModule;

.field private final tracingCoroutineContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/kotlin/GlobalCoroutinesModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/kotlin/GlobalCoroutinesModule;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/kotlin/GlobalCoroutinesModule_MainCoroutineContextFactory;->module:Lcom/android/systemui/util/kotlin/GlobalCoroutinesModule;

    iput-object p2, p0, Lcom/android/systemui/util/kotlin/GlobalCoroutinesModule_MainCoroutineContextFactory;->tracingCoroutineContextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/android/systemui/util/kotlin/GlobalCoroutinesModule;Ljavax/inject/Provider;)Lcom/android/systemui/util/kotlin/GlobalCoroutinesModule_MainCoroutineContextFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/kotlin/GlobalCoroutinesModule;",
            "Ljavax/inject/Provider;",
            ")",
            "Lcom/android/systemui/util/kotlin/GlobalCoroutinesModule_MainCoroutineContextFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/util/kotlin/GlobalCoroutinesModule_MainCoroutineContextFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/util/kotlin/GlobalCoroutinesModule_MainCoroutineContextFactory;-><init>(Lcom/android/systemui/util/kotlin/GlobalCoroutinesModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static mainCoroutineContext(Lcom/android/systemui/util/kotlin/GlobalCoroutinesModule;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/kotlin/GlobalCoroutinesModule;->mainCoroutineContext(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/kotlin/GlobalCoroutinesModule_MainCoroutineContextFactory;->get()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0
.end method

.method public get()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/kotlin/GlobalCoroutinesModule_MainCoroutineContextFactory;->module:Lcom/android/systemui/util/kotlin/GlobalCoroutinesModule;

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/GlobalCoroutinesModule_MainCoroutineContextFactory;->tracingCoroutineContextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0, p0}, Lcom/android/systemui/util/kotlin/GlobalCoroutinesModule_MainCoroutineContextFactory;->mainCoroutineContext(Lcom/android/systemui/util/kotlin/GlobalCoroutinesModule;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0
.end method
