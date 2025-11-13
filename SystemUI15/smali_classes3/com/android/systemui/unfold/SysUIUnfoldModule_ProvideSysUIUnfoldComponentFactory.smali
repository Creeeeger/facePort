.class public final Lcom/android/systemui/unfold/SysUIUnfoldModule_ProvideSysUIUnfoldComponentFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final bgProvider:Ljavax/inject/Provider;

.field public final factoryProvider:Ljavax/inject/Provider;

.field public final module:Lcom/android/systemui/unfold/SysUIUnfoldModule;

.field public final providerProvider:Ljavax/inject/Provider;

.field public final rotationProvider:Ljavax/inject/Provider;

.field public final scopedProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/SysUIUnfoldModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/unfold/SysUIUnfoldModule;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/unfold/SysUIUnfoldModule_ProvideSysUIUnfoldComponentFactory;->module:Lcom/android/systemui/unfold/SysUIUnfoldModule;

    iput-object p2, p0, Lcom/android/systemui/unfold/SysUIUnfoldModule_ProvideSysUIUnfoldComponentFactory;->providerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/unfold/SysUIUnfoldModule_ProvideSysUIUnfoldComponentFactory;->rotationProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/unfold/SysUIUnfoldModule_ProvideSysUIUnfoldComponentFactory;->scopedProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/unfold/SysUIUnfoldModule_ProvideSysUIUnfoldComponentFactory;->bgProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/android/systemui/unfold/SysUIUnfoldModule_ProvideSysUIUnfoldComponentFactory;->factoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static provideSysUIUnfoldComponent(Lcom/android/systemui/unfold/SysUIUnfoldModule;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SysUIUnfoldComponentFactory;)Ljava/util/Optional;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    invoke-virtual {p2, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;

    invoke-virtual {p3, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    invoke-virtual {p4, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p5, p1, p2, p3, p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SysUIUnfoldComponentFactory;->create(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)Lcom/android/systemui/unfold/SysUIUnfoldComponent;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    return-object p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/unfold/SysUIUnfoldModule_ProvideSysUIUnfoldComponentFactory;->providerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/systemui/unfold/SysUIUnfoldModule_ProvideSysUIUnfoldComponentFactory;->rotationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/systemui/unfold/SysUIUnfoldModule_ProvideSysUIUnfoldComponentFactory;->scopedProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/systemui/unfold/SysUIUnfoldModule_ProvideSysUIUnfoldComponentFactory;->bgProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/systemui/unfold/SysUIUnfoldModule_ProvideSysUIUnfoldComponentFactory;->factoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SysUIUnfoldComponentFactory;

    iget-object v1, p0, Lcom/android/systemui/unfold/SysUIUnfoldModule_ProvideSysUIUnfoldComponentFactory;->module:Lcom/android/systemui/unfold/SysUIUnfoldModule;

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/unfold/SysUIUnfoldModule_ProvideSysUIUnfoldComponentFactory;->provideSysUIUnfoldComponent(Lcom/android/systemui/unfold/SysUIUnfoldModule;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SysUIUnfoldComponentFactory;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
