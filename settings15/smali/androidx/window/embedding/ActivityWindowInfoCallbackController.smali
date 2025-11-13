.class public Landroidx/window/embedding/ActivityWindowInfoCallbackController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation build Landroidx/window/RequiresWindowSdkExtension;
    version = 0x6
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/embedding/ActivityWindowInfoCallbackController$CallbackWrapper;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0011\u0018\u00002\u00020\u0001:\u0001\u001eB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001c\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007J\u0014\u0010\u001a\u001a\u00020\u00162\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007J\u0015\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u0012H\u0011\u00a2\u0006\u0002\u0008\u001dR:\u0010\u0005\u001a\u0018\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0008\u0012\u00060\tR\u00020\u00000\u00068\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00118\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Landroidx/window/embedding/ActivityWindowInfoCallbackController;",
        "",
        "embeddingExtension",
        "Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;",
        "(Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;)V",
        "callbacks",
        "",
        "Landroidx/core/util/Consumer;",
        "Landroidx/window/embedding/EmbeddedActivityWindowInfo;",
        "Landroidx/window/embedding/ActivityWindowInfoCallbackController$CallbackWrapper;",
        "getCallbacks$window_release$annotations",
        "()V",
        "getCallbacks$window_release",
        "()Ljava/util/Map;",
        "setCallbacks$window_release",
        "(Ljava/util/Map;)V",
        "extensionsCallback",
        "Landroidx/window/extensions/core/util/function/Consumer;",
        "Landroidx/window/extensions/embedding/EmbeddedActivityWindowInfo;",
        "globalLock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "addCallback",
        "",
        "activity",
        "Landroid/app/Activity;",
        "callback",
        "removeCallback",
        "translate",
        "info",
        "translate$window_release",
        "CallbackWrapper",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private callbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/core/util/Consumer;",
            "Landroidx/window/embedding/ActivityWindowInfoCallbackController$CallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final embeddingExtension:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

.field private final extensionsCallback:Landroidx/window/extensions/core/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/window/extensions/core/util/function/Consumer<",
            "Landroidx/window/extensions/embedding/EmbeddedActivityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final globalLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public static synthetic $r8$lambda$kjzNJh5txK6V0huhzFlTunnx3ZA(Landroidx/window/embedding/ActivityWindowInfoCallbackController;Landroidx/window/extensions/embedding/EmbeddedActivityWindowInfo;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/window/embedding/ActivityWindowInfoCallbackController;->_init_$lambda$1(Landroidx/window/embedding/ActivityWindowInfoCallbackController;Landroidx/window/extensions/embedding/EmbeddedActivityWindowInfo;)V

    return-void
.end method

.method public constructor <init>(Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;)V
    .locals 1

    const-string v0, "embeddingExtension"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/ActivityWindowInfoCallbackController;->embeddingExtension:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/ActivityWindowInfoCallbackController;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/ActivityWindowInfoCallbackController;->callbacks:Ljava/util/Map;

    sget-object p1, Landroidx/window/WindowSdkExtensions;->Companion:Landroidx/window/WindowSdkExtensions$Companion;

    invoke-virtual {p1}, Landroidx/window/WindowSdkExtensions$Companion;->getInstance()Landroidx/window/WindowSdkExtensions;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroidx/window/WindowSdkExtensions;->requireExtensionVersion$window_release(I)V

    new-instance p1, Landroidx/window/embedding/ActivityWindowInfoCallbackController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/window/embedding/ActivityWindowInfoCallbackController$$ExternalSyntheticLambda0;-><init>(Landroidx/window/embedding/ActivityWindowInfoCallbackController;)V

    iput-object p1, p0, Landroidx/window/embedding/ActivityWindowInfoCallbackController;->extensionsCallback:Landroidx/window/extensions/core/util/function/Consumer;

    return-void
.end method

.method private static final _init_$lambda$1(Landroidx/window/embedding/ActivityWindowInfoCallbackController;Landroidx/window/extensions/embedding/EmbeddedActivityWindowInfo;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/window/embedding/ActivityWindowInfoCallbackController;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object p0, p0, Landroidx/window/embedding/ActivityWindowInfoCallbackController;->callbacks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/embedding/ActivityWindowInfoCallbackController$CallbackWrapper;

    const-string v2, "info"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroidx/window/embedding/ActivityWindowInfoCallbackController$CallbackWrapper;->accept(Landroidx/window/extensions/embedding/EmbeddedActivityWindowInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public static synthetic getCallbacks$window_release$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final addCallback(Landroid/app/Activity;Landroidx/core/util/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroidx/core/util/Consumer;",
            ")V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/window/embedding/ActivityWindowInfoCallbackController;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Landroidx/window/embedding/ActivityWindowInfoCallbackController;->callbacks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/window/embedding/ActivityWindowInfoCallbackController;->embeddingExtension:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    new-instance v2, Landroidx/window/embedding/ActivityWindowInfoCallbackController$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v3, p0, Landroidx/window/embedding/ActivityWindowInfoCallbackController;->extensionsCallback:Landroidx/window/extensions/core/util/function/Consumer;

    invoke-interface {v1, v2, v3}, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;->setEmbeddedActivityWindowInfoCallback(Ljava/util/concurrent/Executor;Landroidx/window/extensions/core/util/function/Consumer;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v1, Landroidx/window/embedding/ActivityWindowInfoCallbackController$CallbackWrapper;

    invoke-direct {v1, p0, p1, p2}, Landroidx/window/embedding/ActivityWindowInfoCallbackController$CallbackWrapper;-><init>(Landroidx/window/embedding/ActivityWindowInfoCallbackController;Landroid/app/Activity;Landroidx/core/util/Consumer;)V

    iget-object v2, p0, Landroidx/window/embedding/ActivityWindowInfoCallbackController;->callbacks:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/window/embedding/ActivityWindowInfoCallbackController;->embeddingExtension:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    invoke-interface {p0, p1}, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;->getEmbeddedActivityWindowInfo(Landroid/app/Activity;)Landroidx/window/extensions/embedding/EmbeddedActivityWindowInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v1, p0}, Landroidx/window/embedding/ActivityWindowInfoCallbackController$CallbackWrapper;->accept(Landroidx/window/extensions/embedding/EmbeddedActivityWindowInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final getCallbacks$window_release()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/core/util/Consumer;",
            "Landroidx/window/embedding/ActivityWindowInfoCallbackController$CallbackWrapper;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/window/embedding/ActivityWindowInfoCallbackController;->callbacks:Ljava/util/Map;

    return-object p0
.end method

.method public final removeCallback(Landroidx/core/util/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer;",
            ")V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/window/embedding/ActivityWindowInfoCallbackController;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Landroidx/window/embedding/ActivityWindowInfoCallbackController;->callbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object p1, p0, Landroidx/window/embedding/ActivityWindowInfoCallbackController;->callbacks:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/window/embedding/ActivityWindowInfoCallbackController;->embeddingExtension:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    invoke-interface {p0}, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;->clearEmbeddedActivityWindowInfoCallback()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final setCallbacks$window_release(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/core/util/Consumer;",
            "Landroidx/window/embedding/ActivityWindowInfoCallbackController$CallbackWrapper;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/window/embedding/ActivityWindowInfoCallbackController;->callbacks:Ljava/util/Map;

    return-void
.end method

.method public translate$window_release(Landroidx/window/extensions/embedding/EmbeddedActivityWindowInfo;)Landroidx/window/embedding/EmbeddedActivityWindowInfo;
    .locals 3

    const-string p0, "info"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/EmbeddedActivityWindowInfo;->getTaskBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/EmbeddedActivityWindowInfo;->getActivityStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v1, p0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, p0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    new-instance v1, Landroidx/window/embedding/EmbeddedActivityWindowInfo;

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/EmbeddedActivityWindowInfo;->isEmbedded()Z

    move-result p1

    invoke-direct {v1, p1, p0, v0}, Landroidx/window/embedding/EmbeddedActivityWindowInfo;-><init>(ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v1
.end method
