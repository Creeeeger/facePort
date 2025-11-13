.class public final Lcom/android/systemui/keyguard/ui/preview/KeyguardRemotePreviewManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final activePreviews:Landroid/util/ArrayMap;

.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final backgroundHandler:Landroid/os/Handler;

.field public final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final previewRendererFactory:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRendererFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardRemotePreviewManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/ui/preview/KeyguardRemotePreviewManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRendererFactory;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardRemotePreviewManager;->previewRendererFactory:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRendererFactory;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardRemotePreviewManager;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardRemotePreviewManager;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p4, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardRemotePreviewManager;->backgroundHandler:Landroid/os/Handler;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardRemotePreviewManager;->activePreviews:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final destroyObserver(Lcom/android/systemui/keyguard/ui/preview/PreviewLifecycleObserver;)V
    .locals 6

    iget-boolean v0, p1, Lcom/android/systemui/keyguard/ui/preview/PreviewLifecycleObserver;->isDestroyedOrDestroying:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    const-string v2, "KeyguardRemotePreviewManager"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Destroying "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/keyguard/ui/preview/PreviewLifecycleObserver;->isDestroyedOrDestroying:Z

    iget-object v0, p1, Lcom/android/systemui/keyguard/ui/preview/PreviewLifecycleObserver;->renderer:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;

    if-eqz v0, :cond_3

    iput-object v1, p1, Lcom/android/systemui/keyguard/ui/preview/PreviewLifecycleObserver;->renderer:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;

    iput-object v1, p1, Lcom/android/systemui/keyguard/ui/preview/PreviewLifecycleObserver;->onDestroy:Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->hostToken:Landroid/os/IBinder;

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_2
    iget-object v2, p1, Lcom/android/systemui/keyguard/ui/preview/PreviewLifecycleObserver;->scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v3, p1, Lcom/android/systemui/keyguard/ui/preview/PreviewLifecycleObserver;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v4, Lcom/android/systemui/keyguard/ui/preview/PreviewLifecycleObserver$onDestroy$2$1;

    invoke-direct {v4, v0, v1}, Lcom/android/systemui/keyguard/ui/preview/PreviewLifecycleObserver$onDestroy$2$1;-><init>(Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    invoke-static {v2, v3, v1, v4, v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object v1, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->id:Lkotlin/Pair;

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardRemotePreviewManager;->activePreviews:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardRemotePreviewManager;->activePreviews:Landroid/util/ArrayMap;

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public final preview(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    const-string v0, "KeyguardRemotePreviewManager"

    const-string v1, "Created observer "

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardRemotePreviewManager;->previewRendererFactory:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRendererFactory;

    invoke-interface {v3, p1}, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRendererFactory;->create(Landroid/os/Bundle;)Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;

    move-result-object p1

    new-instance v3, Lcom/android/systemui/keyguard/ui/preview/PreviewLifecycleObserver;

    iget-object v4, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardRemotePreviewManager;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v5, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardRemotePreviewManager;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v6, Lcom/android/systemui/keyguard/ui/preview/KeyguardRemotePreviewManager$preview$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/keyguard/ui/preview/KeyguardRemotePreviewManager$preview$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {v3, v4, v5, p1, v6}, Lcom/android/systemui/keyguard/ui/preview/PreviewLifecycleObserver;-><init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x3

    :try_start_1
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardRemotePreviewManager;->activePreviews:Landroid/util/ArrayMap;

    iget-object v4, p1, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->id:Lkotlin/Pair;

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/ui/preview/PreviewLifecycleObserver;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/ui/preview/KeyguardRemotePreviewManager;->destroyObserver(Lcom/android/systemui/keyguard/ui/preview/PreviewLifecycleObserver;)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardRemotePreviewManager;->activePreviews:Landroid/util/ArrayMap;

    iget-object v4, p1, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->id:Lkotlin/Pair;

    invoke-virtual {v1, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$render$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$render$1;-><init>(Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;)V

    iget-object v4, p1, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p1, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->hostToken:Landroid/os/IBinder;

    if-eqz v1, :cond_3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "surface_package"

    iget-object p1, p1, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->host:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance p1, Landroid/os/Messenger;

    new-instance v4, Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardRemotePreviewManager;->backgroundHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {p1, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    iput-object p1, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const-string p1, "callback"

    invoke-virtual {v1, p1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object v2, v1

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_1
    move-exception p1

    move-object v3, v2

    :goto_1
    const-string v1, "Unable to generate preview"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v3, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/systemui/keyguard/ui/preview/KeyguardRemotePreviewManager;->destroyObserver(Lcom/android/systemui/keyguard/ui/preview/PreviewLifecycleObserver;)V

    :cond_5
    :goto_2
    return-object v2
.end method
