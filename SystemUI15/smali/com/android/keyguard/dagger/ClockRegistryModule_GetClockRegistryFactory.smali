.class public final Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final bgDispatcherProvider:Ljavax/inject/Provider;

.field public final clockBuffersProvider:Ljavax/inject/Provider;

.field public final contextProvider:Ljavax/inject/Provider;

.field public final featureFlagsProvider:Ljavax/inject/Provider;

.field public final layoutInflaterProvider:Ljavax/inject/Provider;

.field public final mainDispatcherProvider:Ljavax/inject/Provider;

.field public final pluginManagerProvider:Ljavax/inject/Provider;

.field public final resourcesProvider:Ljavax/inject/Provider;

.field public final scopeProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    iput-object p1, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->pluginManagerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->scopeProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->mainDispatcherProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->bgDispatcherProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->featureFlagsProvider:Ljavax/inject/Provider;

    iput-object p7, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->resourcesProvider:Ljavax/inject/Provider;

    iput-object p8, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->layoutInflaterProvider:Ljavax/inject/Provider;

    iput-object p9, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->clockBuffersProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static getClockRegistry(Landroid/content/Context;Lcom/android/systemui/plugins/PluginManager;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/flags/FeatureFlags;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;)Lcom/android/systemui/shared/clocks/ClockRegistry;
    .locals 17

    new-instance v15, Lcom/android/systemui/shared/clocks/ClockRegistry;

    sget-object v0, Lcom/android/systemui/flags/Flags;->LOCKSCREEN_CUSTOM_CLOCKS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    move-object/from16 v1, p5

    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ResourceBooleanFlag;)Z

    move-result v6

    new-instance v13, Lcom/android/systemui/shared/clocks/DefaultClockProvider;

    sget-object v0, Lcom/android/systemui/flags/Flags;->STEP_CLOCK_ANIMATION:Lcom/android/systemui/flags/ReleasedFlag;

    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result v11

    sget-object v0, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    const/4 v12, 0x0

    move-object v7, v13

    move-object/from16 v8, p0

    move-object/from16 v9, p7

    move-object/from16 v10, p6

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/shared/clocks/DefaultClockProvider;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/content/res/Resources;ZZ)V

    const v0, 0x7f130b28

    move-object/from16 v2, p0

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget-object v0, Lcom/android/systemui/flags/Flags;->TRANSIT_CLOCK:Lcom/android/systemui/flags/ReleasedFlag;

    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result v14

    new-instance v16, Lcom/android/systemui/util/ThreadAssert;

    invoke-direct/range {v16 .. v16}, Lcom/android/systemui/util/ThreadAssert;-><init>()V

    const-string v12, "System"

    const/4 v7, 0x1

    const/4 v11, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v8, v13

    move-object/from16 v10, p8

    move v13, v14

    move-object/from16 v14, v16

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/shared/clocks/ClockRegistry;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/PluginManager;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;ZZLcom/android/systemui/plugins/clocks/ClockProvider;Ljava/lang/String;Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;ZLjava/lang/String;ZLcom/android/systemui/util/ThreadAssert;)V

    invoke-virtual {v15}, Lcom/android/systemui/shared/clocks/ClockRegistry;->registerListeners()V

    return-object v15
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->pluginManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/plugins/PluginManager;

    iget-object v0, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->scopeProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->mainDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v0, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->bgDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v0, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->featureFlagsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/flags/FeatureFlags;

    iget-object v0, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->resourcesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->layoutInflaterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/LayoutInflater;

    iget-object p0, p0, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->clockBuffersProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;

    invoke-static/range {v1 .. v9}, Lcom/android/keyguard/dagger/ClockRegistryModule_GetClockRegistryFactory;->getClockRegistry(Landroid/content/Context;Lcom/android/systemui/plugins/PluginManager;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/flags/FeatureFlags;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;)Lcom/android/systemui/shared/clocks/ClockRegistry;

    move-result-object p0

    return-object p0
.end method
