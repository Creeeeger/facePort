.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/Provider;"
    }
.end annotation


# instance fields
.field public final id:I

.field public final mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

.field public final referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

.field public final referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iput-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iput-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    iput p4, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->id:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->id:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/AssertionError;

    iget v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->id:I

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    :pswitch_0
    new-instance v1, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionBlockerEmptyStateProvider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->hostUserHandle:Landroid/os/UserHandle;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    invoke-virtual {v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->personalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v4, v4, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->screenCaptureDevicePolicyResolverProvider:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionBlockerEmptyStateProvider;-><init>(Landroid/os/UserHandle;Landroid/os/UserHandle;Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;Landroid/content/Context;)V

    return-object v1

    :pswitch_1
    new-instance v1, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->context:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    invoke-virtual {v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->windowMetricsProviderImpl()Lcom/android/systemui/mediaprojection/appselector/view/WindowMetricsProviderImpl;

    move-result-object v3

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->configurationControllerImplProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;-><init>(Landroid/content/Context;Lcom/android/systemui/mediaprojection/appselector/view/WindowMetricsProvider;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    return-object v1

    :pswitch_2
    new-instance v1, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->bgDispatcherProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->providePackageManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Landroid/content/pm/PackageManager;)V

    return-object v1

    :pswitch_3
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->context:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorModule;->Companion:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorModule$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/launcher3/icons/IconFactory;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/IconFactory;

    move-result-object v0

    return-object v0

    :pswitch_4
    new-instance v1, Lcom/android/systemui/mediaprojection/appselector/data/BasicPackageManagerAppIconLoader;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->bgDispatcherProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v3, v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->providePackageManagerWrapperProvider:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/system/PackageManagerWrapper;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->providePackageManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/systemui/mediaprojection/appselector/data/BasicPackageManagerAppIconLoader;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/shared/system/PackageManagerWrapper;Landroid/content/pm/PackageManager;)V

    return-object v1

    :pswitch_5
    new-instance v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider$2;

    invoke-direct {v1, v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider$2;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;)V

    return-object v1

    :pswitch_6
    new-instance v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider$1;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;)V

    return-object v1

    :pswitch_7
    new-instance v1, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v3, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->context:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->pluginAODManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/doze/PluginAODManager;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->factoryProvider2:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter$Factory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->taskPreviewSizeProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->provideIActivityTaskManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/app/IActivityTaskManager;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    iget-object v8, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->resultHandler:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorResultHandler;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->setSplitScreen:Ljava/util/Optional;

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;-><init>(Landroid/content/Context;Lcom/android/systemui/doze/PluginAODManager;Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter$Factory;Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;Landroid/app/IActivityTaskManager;Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorResultHandler;Ljava/util/Optional;)V

    return-object v1

    :pswitch_8
    new-instance v1, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->bgDispatcherProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideActivityManagerWrapperProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/shared/system/ActivityManagerWrapper;)V

    return-object v1

    :pswitch_9
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->context:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorModule;->Companion:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorModule$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v1

    :pswitch_a
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->applicationScopeProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    sget-object v1, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorModule;->Companion:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorModule$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    return-object v0

    :pswitch_b
    new-instance v7, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->bgDispatcherProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideBackgroundExecutorProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/util/concurrent/Executor;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v4, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->setRecentTasks:Ljava/util/Optional;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideUserTrackerProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/settings/UserTracker;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->provideUserManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/UserManager;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/concurrent/Executor;Ljava/util/Optional;Lcom/android/systemui/settings/UserTracker;Landroid/os/UserManager;)V

    return-object v7

    :pswitch_c
    new-instance v1, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->bindRecentTaskListProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/systemui/mediaprojection/appselector/data/RecentTaskListProvider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    iget-object v10, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->view:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorView;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->screenCaptureDevicePolicyResolverProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    iget-object v12, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->hostUserHandle:Landroid/os/UserHandle;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->provideCoroutineScopeProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->provideAppSelectorComponentNameProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/content/ComponentName;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    iget-object v15, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->callingPackage:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->bindRecentTaskThumbnailLoaderProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/android/systemui/mediaprojection/appselector/data/RecentTaskThumbnailLoader;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->isFirstStart:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->mediaProjectionMetricsLoggerProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->hostUid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object v8, v1

    invoke-direct/range {v8 .. v19}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;-><init>(Lcom/android/systemui/mediaprojection/appselector/data/RecentTaskListProvider;Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorView;Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;Landroid/os/UserHandle;Lkotlinx/coroutines/CoroutineScope;Landroid/content/ComponentName;Ljava/lang/String;Lcom/android/systemui/mediaprojection/appselector/data/RecentTaskThumbnailLoader;ZLcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;I)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
