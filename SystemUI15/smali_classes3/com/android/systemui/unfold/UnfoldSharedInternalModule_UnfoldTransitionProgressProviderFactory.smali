.class public final Lcom/android/systemui/unfold/UnfoldSharedInternalModule_UnfoldTransitionProgressProviderFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final bgProvider:Ljavax/inject/Provider;

.field public final configProvider:Ljavax/inject/Provider;

.field public final fixedTimingTransitionProgressProvider:Ljavax/inject/Provider;

.field public final foldStateProvider:Ljavax/inject/Provider;

.field public final mainHandlerProvider:Ljavax/inject/Provider;

.field public final mainThreadUnfoldTransitionProgressProviderFactoryProvider:Ljavax/inject/Provider;

.field public final module:Lcom/android/systemui/unfold/UnfoldSharedInternalModule;

.field public final physicsBasedUnfoldTransitionProgressProvider:Ljavax/inject/Provider;

.field public final scaleAwareProviderFactoryProvider:Ljavax/inject/Provider;

.field public final tracingListenerProvider:Ljavax/inject/Provider;

.field public final unfoldBgProgressFlagProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldSharedInternalModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/unfold/UnfoldSharedInternalModule;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldSharedInternalModule_UnfoldTransitionProgressProviderFactory;->module:Lcom/android/systemui/unfold/UnfoldSharedInternalModule;

    iput-object p2, p0, Lcom/android/systemui/unfold/UnfoldSharedInternalModule_UnfoldTransitionProgressProviderFactory;->configProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/unfold/UnfoldSharedInternalModule_UnfoldTransitionProgressProviderFactory;->scaleAwareProviderFactoryProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/unfold/UnfoldSharedInternalModule_UnfoldTransitionProgressProviderFactory;->tracingListenerProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/unfold/UnfoldSharedInternalModule_UnfoldTransitionProgressProviderFactory;->physicsBasedUnfoldTransitionProgressProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/android/systemui/unfold/UnfoldSharedInternalModule_UnfoldTransitionProgressProviderFactory;->fixedTimingTransitionProgressProvider:Ljavax/inject/Provider;

    iput-object p7, p0, Lcom/android/systemui/unfold/UnfoldSharedInternalModule_UnfoldTransitionProgressProviderFactory;->foldStateProvider:Ljavax/inject/Provider;

    iput-object p8, p0, Lcom/android/systemui/unfold/UnfoldSharedInternalModule_UnfoldTransitionProgressProviderFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    iput-object p9, p0, Lcom/android/systemui/unfold/UnfoldSharedInternalModule_UnfoldTransitionProgressProviderFactory;->mainThreadUnfoldTransitionProgressProviderFactoryProvider:Ljavax/inject/Provider;

    iput-object p10, p0, Lcom/android/systemui/unfold/UnfoldSharedInternalModule_UnfoldTransitionProgressProviderFactory;->bgProvider:Ljavax/inject/Provider;

    iput-object p11, p0, Lcom/android/systemui/unfold/UnfoldSharedInternalModule_UnfoldTransitionProgressProviderFactory;->unfoldBgProgressFlagProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static unfoldTransitionProgressProvider(Lcom/android/systemui/unfold/UnfoldSharedInternalModule;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl$SwitchingProvider$1;Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener$Factory;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl$SwitchingProvider$3;Ljavax/inject/Provider;Lcom/android/systemui/unfold/updates/FoldStateProvider;Landroid/os/Handler;Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$Factory;Ljavax/inject/Provider;Ljava/util/Optional;)Ljava/util/Optional;
    .locals 9

    move-object v0, p3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {p10 .. p10}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p10 .. p10}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    :cond_0
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface/range {p9 .. p9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    new-instance v2, Lcom/android/systemui/unfold/UnfoldSharedInternalModule$unfoldTransitionProgressProvider$mainThreadProvider$1;

    move-object/from16 v3, p8

    invoke-direct {v2, v3}, Lcom/android/systemui/unfold/UnfoldSharedInternalModule$unfoldTransitionProgressProvider$mainThreadProvider$1;-><init>(Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$Factory;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/unfold/UnfoldSharedInternalModule$unfoldTransitionProgressProvider$1;

    invoke-direct {v2, p3}, Lcom/android/systemui/unfold/UnfoldSharedInternalModule$unfoldTransitionProgressProvider$1;-><init>(Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener$Factory;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    const-string v1, "MainThread"

    invoke-interface {p3, v1}, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener$Factory;->create(Ljava/lang/String;)Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;

    move-result-object v4

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Lcom/android/systemui/unfold/UnfoldSharedInternalModule;->createOptionalUnfoldTransitionProgressProvider(Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl$SwitchingProvider$1;Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl$SwitchingProvider$3;Ljavax/inject/Provider;Lcom/android/systemui/unfold/updates/FoldStateProvider;Landroid/os/Handler;)Ljava/util/Optional;

    move-result-object v1

    :goto_0
    return-object v1
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldSharedInternalModule_UnfoldTransitionProgressProviderFactory;->configProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldSharedInternalModule_UnfoldTransitionProgressProviderFactory;->scaleAwareProviderFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl$SwitchingProvider$1;

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldSharedInternalModule_UnfoldTransitionProgressProviderFactory;->tracingListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener$Factory;

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldSharedInternalModule_UnfoldTransitionProgressProviderFactory;->physicsBasedUnfoldTransitionProgressProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl$SwitchingProvider$3;

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldSharedInternalModule_UnfoldTransitionProgressProviderFactory;->foldStateProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/unfold/updates/FoldStateProvider;

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldSharedInternalModule_UnfoldTransitionProgressProviderFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldSharedInternalModule_UnfoldTransitionProgressProviderFactory;->mainThreadUnfoldTransitionProgressProviderFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$Factory;

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldSharedInternalModule_UnfoldTransitionProgressProviderFactory;->unfoldBgProgressFlagProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/util/Optional;

    iget-object v6, p0, Lcom/android/systemui/unfold/UnfoldSharedInternalModule_UnfoldTransitionProgressProviderFactory;->fixedTimingTransitionProgressProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/android/systemui/unfold/UnfoldSharedInternalModule_UnfoldTransitionProgressProviderFactory;->bgProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/unfold/UnfoldSharedInternalModule_UnfoldTransitionProgressProviderFactory;->module:Lcom/android/systemui/unfold/UnfoldSharedInternalModule;

    invoke-static/range {v1 .. v11}, Lcom/android/systemui/unfold/UnfoldSharedInternalModule_UnfoldTransitionProgressProviderFactory;->unfoldTransitionProgressProvider(Lcom/android/systemui/unfold/UnfoldSharedInternalModule;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl$SwitchingProvider$1;Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener$Factory;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl$SwitchingProvider$3;Ljavax/inject/Provider;Lcom/android/systemui/unfold/updates/FoldStateProvider;Landroid/os/Handler;Lcom/android/systemui/unfold/progress/MainThreadUnfoldTransitionProgressProvider$Factory;Ljavax/inject/Provider;Ljava/util/Optional;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
