.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$Factory;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider$2;->this$0:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/view/ViewGroup;)Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;
    .locals 8

    new-instance v7, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider$2;->this$0:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    invoke-virtual {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->badgedAppIconLoader()Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->bindRecentTaskThumbnailLoaderProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/mediaprojection/appselector/data/RecentTaskThumbnailLoader;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->bindRecentTaskLabelLoaderProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/mediaprojection/appselector/data/RecentTaskLabelLoader;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->taskPreviewSizeProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->provideCoroutineScopeProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader;Lcom/android/systemui/mediaprojection/appselector/data/RecentTaskThumbnailLoader;Lcom/android/systemui/mediaprojection/appselector/data/RecentTaskLabelLoader;Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;Lkotlinx/coroutines/CoroutineScope;)V

    return-object v7
.end method
