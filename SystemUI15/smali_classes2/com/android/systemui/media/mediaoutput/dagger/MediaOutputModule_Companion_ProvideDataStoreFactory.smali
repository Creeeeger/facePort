.class public final Lcom/android/systemui/media/mediaoutput/dagger/MediaOutputModule_Companion_ProvideDataStoreFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final contextProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/dagger/MediaOutputModule_Companion_ProvideDataStoreFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static provideDataStore(Landroid/content/Context;)Landroidx/datastore/preferences/core/PreferenceDataStore;
    .locals 4

    sget-object v0, Lcom/android/systemui/media/mediaoutput/dagger/MediaOutputModule;->Companion:Lcom/android/systemui/media/mediaoutput/dagger/MediaOutputModule$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/datastore/preferences/core/PreferenceDataStoreFactory;->INSTANCE:Landroidx/datastore/preferences/core/PreferenceDataStoreFactory;

    new-instance v1, Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/dagger/MediaOutputModule$Companion$provideDataStore$1;->INSTANCE:Lcom/android/systemui/media/mediaoutput/dagger/MediaOutputModule$Companion$provideDataStore$1;

    invoke-direct {v1, v2}, Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;-><init>(Lkotlin/jvm/functions/Function1;)V

    sget-object v2, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lkotlin/coroutines/CoroutineContext$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/media/mediaoutput/dagger/MediaOutputModule$Companion$provideDataStore$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/media/mediaoutput/dagger/MediaOutputModule$Companion$provideDataStore$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1, v2, v3}, Landroidx/datastore/preferences/core/PreferenceDataStoreFactory;->create$default(Landroidx/datastore/preferences/core/PreferenceDataStoreFactory;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlinx/coroutines/internal/ContextScope;Lkotlin/jvm/functions/Function0;)Landroidx/datastore/preferences/core/PreferenceDataStore;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/dagger/MediaOutputModule_Companion_ProvideDataStoreFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/media/mediaoutput/dagger/MediaOutputModule_Companion_ProvideDataStoreFactory;->provideDataStore(Landroid/content/Context;)Landroidx/datastore/preferences/core/PreferenceDataStore;

    move-result-object p0

    return-object p0
.end method
