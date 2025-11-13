.class public final Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final globalUncaughtExceptionPreHandler:Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager$GlobalUncaughtExceptionHandler;

.field public final handlers:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;->handlers:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager$GlobalUncaughtExceptionHandler;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager$GlobalUncaughtExceptionHandler;-><init>(Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;)V

    iput-object v0, p0, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;->globalUncaughtExceptionPreHandler:Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager$GlobalUncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public final registerHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->getUncaughtExceptionPreHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;->globalUncaughtExceptionPreHandler:Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager$GlobalUncaughtExceptionHandler;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v0, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager$GlobalUncaughtExceptionHandler;

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;->handlers:Ljava/util/List;

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;->handlers:Ljava/util/List;

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {v1}, Ljava/lang/Thread;->setUncaughtExceptionPreHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Two UncaughtExceptionPreHandlerManagers created"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;->handlers:Ljava/util/List;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;->handlers:Ljava/util/List;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method
