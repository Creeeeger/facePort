.class public final Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIRepositoryFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provideCompatUIRepository()Lcom/android/wm/shell/compatui/impl/DefaultCompatUIRepository;
    .locals 4

    new-instance v0, Lcom/android/wm/shell/compatui/impl/DefaultCompatUIRepository;

    invoke-direct {v0}, Lcom/android/wm/shell/compatui/impl/DefaultCompatUIRepository;-><init>()V

    sget-object v1, Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt;->RestartButtonSpec:Lcom/android/wm/shell/compatui/api/CompatUISpec;

    iget-object v2, v0, Lcom/android/wm/shell/compatui/impl/DefaultCompatUIRepository;->allSpecs:Ljava/util/Map;

    check-cast v2, Ljava/util/LinkedHashMap;

    iget-object v3, v1, Lcom/android/wm/shell/compatui/api/CompatUISpec;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/wm/shell/compatui/impl/DefaultCompatUIRepository;->allSpecs:Ljava/util/Map;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Spec with id:"

    const-string v2, " already present"

    invoke-static {v1, v3, v2}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIRepositoryFactory;->provideCompatUIRepository()Lcom/android/wm/shell/compatui/impl/DefaultCompatUIRepository;

    move-result-object p0

    return-object p0
.end method
