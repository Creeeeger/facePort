.class public final Landroidx/window/embedding/ExtensionEmbeddingBackend;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/window/embedding/EmbeddingBackend;


# static fields
.field public static final Companion:Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;

.field public static volatile globalInstance:Landroidx/window/embedding/ExtensionEmbeddingBackend;

.field public static final globalLock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field public final applicationContext:Landroid/content/Context;

.field public final embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

.field public final splitChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->Companion:Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/window/embedding/EmbeddingInterfaceCompat;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->applicationContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    new-instance p1, Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;

    invoke-direct {p1, p0}, Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;-><init>(Landroidx/window/embedding/ExtensionEmbeddingBackend;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->splitChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p2, :cond_2

    check-cast p2, Landroidx/window/embedding/EmbeddingCompat;

    iget-object v0, p2, Landroidx/window/embedding/EmbeddingCompat;->windowSdkExtensions:Landroidx/window/WindowSdkExtensions$Companion$getInstance$1;

    iget v0, v0, Landroidx/window/WindowSdkExtensions;->extensionVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p2, Landroidx/window/embedding/EmbeddingCompat;->embeddingExtension:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    const-class v2, Ljava/util/List;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v2

    new-instance v3, Landroidx/window/embedding/EmbeddingCompat$setEmbeddingCallback$1;

    invoke-direct {v3, p1, p2}, Landroidx/window/embedding/EmbeddingCompat$setEmbeddingCallback$1;-><init>(Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;Landroidx/window/embedding/EmbeddingCompat;)V

    iget-object p1, p2, Landroidx/window/embedding/EmbeddingCompat;->consumerAdapter:Landroidx/window/core/ConsumerAdapter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    new-array v4, v1, [Ljava/lang/Class;

    iget-object v5, p1, Landroidx/window/core/ConsumerAdapter;->loader:Ljava/lang/ClassLoader;

    const-string v6, "java.util.function.Consumer"

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    const-string v5, "setSplitInfoCallback"

    invoke-virtual {p2, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-instance v4, Landroidx/window/core/ConsumerAdapter$ConsumerHandler;

    invoke-direct {v4, v2, v3}, Landroidx/window/core/ConsumerAdapter$ConsumerHandler;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)V

    iget-object p1, p1, Landroidx/window/core/ConsumerAdapter;->loader:Ljava/lang/ClassLoader;

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {p1, v1, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x5

    if-gt v1, v0, :cond_1

    if-ge v0, v2, :cond_1

    new-instance v0, Landroidx/window/embedding/EmbeddingCompat$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Landroidx/window/embedding/EmbeddingCompat$$ExternalSyntheticLambda1;-><init>(Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;Landroidx/window/embedding/EmbeddingCompat;)V

    iget-object p1, p2, Landroidx/window/embedding/EmbeddingCompat;->embeddingExtension:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    invoke-interface {p1, v0}, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;->setSplitInfoCallback(Landroidx/window/extensions/core/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    if-gt v2, v0, :cond_2

    const v1, 0x7fffffff

    if-gt v0, v1, :cond_2

    new-instance v0, Landroidx/window/embedding/EmbeddingCompat$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Landroidx/window/embedding/EmbeddingCompat$$ExternalSyntheticLambda1;-><init>(Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;Landroidx/window/embedding/EmbeddingCompat;)V

    iget-object v1, p2, Landroidx/window/embedding/EmbeddingCompat;->embeddingExtension:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    invoke-interface {v1, v0}, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;->setSplitInfoCallback(Landroidx/window/extensions/core/util/function/Consumer;)V

    new-instance v0, Landroidx/window/embedding/EmbeddingCompat$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Landroidx/window/embedding/EmbeddingCompat$$ExternalSyntheticLambda0;-><init>(Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;Landroidx/window/embedding/EmbeddingCompat;)V

    iget-object p1, p2, Landroidx/window/embedding/EmbeddingCompat;->embeddingExtension:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    new-instance p2, Landroidx/profileinstaller/ProfileInstallReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, p2, v0}, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;->registerActivityStackCallback(Ljava/util/concurrent/Executor;Landroidx/window/extensions/core/util/function/Consumer;)V

    :cond_2
    :goto_0
    new-instance p1, Landroidx/window/embedding/ExtensionEmbeddingBackend$RuleTracker;

    invoke-direct {p1}, Landroidx/window/embedding/ExtensionEmbeddingBackend$RuleTracker;-><init>()V

    new-instance p1, Landroidx/window/embedding/ExtensionEmbeddingBackend$splitSupportStatus$2;

    invoke-direct {p1, p0}, Landroidx/window/embedding/ExtensionEmbeddingBackend$splitSupportStatus$2;-><init>(Landroidx/window/embedding/ExtensionEmbeddingBackend;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    return-void
.end method
