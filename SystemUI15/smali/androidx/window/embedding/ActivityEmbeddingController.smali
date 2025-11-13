.class public final Landroidx/window/embedding/ActivityEmbeddingController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Landroidx/window/embedding/ActivityEmbeddingController$Companion;


# instance fields
.field public final backend:Landroidx/window/embedding/EmbeddingBackend;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/embedding/ActivityEmbeddingController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/embedding/ActivityEmbeddingController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/embedding/ActivityEmbeddingController;->Companion:Landroidx/window/embedding/ActivityEmbeddingController$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/window/embedding/EmbeddingBackend;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/ActivityEmbeddingController;->backend:Landroidx/window/embedding/EmbeddingBackend;

    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Landroidx/window/embedding/ActivityEmbeddingController;
    .locals 4

    sget-object v0, Landroidx/window/embedding/ActivityEmbeddingController;->Companion:Landroidx/window/embedding/ActivityEmbeddingController$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/window/embedding/EmbeddingBackend;->Companion:Landroidx/window/embedding/EmbeddingBackend$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/window/embedding/EmbeddingBackend$Companion;->decorator:Lkotlin/jvm/functions/Function1;

    sget-object v1, Landroidx/window/embedding/ExtensionEmbeddingBackend;->Companion:Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalInstance:Landroidx/window/embedding/ExtensionEmbeddingBackend;

    if-nez v1, :cond_1

    sget-object v1, Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    sget-object v2, Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalInstance:Landroidx/window/embedding/ExtensionEmbeddingBackend;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;->initAndVerifyEmbeddingExtension(Landroid/content/Context;)Landroidx/window/embedding/EmbeddingCompat;

    move-result-object v2

    new-instance v3, Landroidx/window/embedding/ExtensionEmbeddingBackend;

    invoke-direct {v3, p0, v2}, Landroidx/window/embedding/ExtensionEmbeddingBackend;-><init>(Landroid/content/Context;Landroidx/window/embedding/EmbeddingInterfaceCompat;)V

    sput-object v3, Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalInstance:Landroidx/window/embedding/ExtensionEmbeddingBackend;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalInstance:Landroidx/window/embedding/ExtensionEmbeddingBackend;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroidx/window/embedding/EmbeddingBackend$Companion$decorator$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/window/embedding/ActivityEmbeddingController;

    invoke-direct {v0, p0}, Landroidx/window/embedding/ActivityEmbeddingController;-><init>(Landroidx/window/embedding/EmbeddingBackend;)V

    return-object v0
.end method
