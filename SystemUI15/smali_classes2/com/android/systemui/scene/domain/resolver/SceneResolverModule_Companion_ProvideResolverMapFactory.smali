.class public final Lcom/android/systemui/scene/domain/resolver/SceneResolverModule_Companion_ProvideResolverMapFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final resolverSetProvider:Ljavax/inject/Provider;


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

    iput-object p1, p0, Lcom/android/systemui/scene/domain/resolver/SceneResolverModule_Companion_ProvideResolverMapFactory;->resolverSetProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static provideResolverMap(Ljava/util/Set;)Ljava/util/Map;
    .locals 3

    sget-object v0, Lcom/android/systemui/scene/domain/resolver/SceneResolverModule;->Companion:Lcom/android/systemui/scene/domain/resolver/SceneResolverModule$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Iterable;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/scene/domain/resolver/SceneResolver;

    invoke-interface {v2}, Lcom/android/systemui/scene/domain/resolver/SceneResolver;->getTargetFamily()Lcom/android/compose/animation/scene/SceneKey;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/scene/domain/resolver/SceneResolverModule_Companion_ProvideResolverMapFactory;->resolverSetProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Lcom/android/systemui/scene/domain/resolver/SceneResolverModule_Companion_ProvideResolverMapFactory;->provideResolverMap(Ljava/util/Set;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
