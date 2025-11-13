.class final Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/GtsCellProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GtsItemSender"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000g\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0015\u0008\u0002\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0006\u0010\u0019\u001a\u00020\u001aJ#\u0010\u001b\u001a\u00020\u001c2\u0018\u0010\u001d\u001a\u0014\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u001c0\u001eH\u0086\u0008R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;",
        "",
        "cell",
        "Lcom/samsung/android/gtscell/data/cell/GtsItemCell;",
        "configuration",
        "Lcom/samsung/android/gtscell/data/GtsConfiguration;",
        "finishCallback",
        "Lcom/samsung/android/gtscell/RemoteCallback;",
        "gtsCellVersion",
        "",
        "timeout",
        "",
        "(Lcom/samsung/android/gtscell/data/cell/GtsItemCell;Lcom/samsung/android/gtscell/data/GtsConfiguration;Lcom/samsung/android/gtscell/RemoteCallback;IJ)V",
        "builder",
        "Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;",
        "itemSet",
        "",
        "",
        "respond",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "resultCallback",
        "com/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1",
        "Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;",
        "timer",
        "Lcom/samsung/android/gtscell/utils/GtsTimer;",
        "isRespond",
        "",
        "send",
        "",
        "action",
        "Lkotlin/Function2;",
        "Lcom/samsung/android/gtscell/data/GtsItem;",
        "Lcom/samsung/android/gtscell/ResultCallback;",
        "gtscell_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final builder:Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;

.field private final cell:Lcom/samsung/android/gtscell/data/cell/GtsItemCell;

.field private final configuration:Lcom/samsung/android/gtscell/data/GtsConfiguration;

.field private final finishCallback:Lcom/samsung/android/gtscell/RemoteCallback;

.field private final gtsCellVersion:I

.field private final itemSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final respond:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final resultCallback:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;

.field private final timer:Lcom/samsung/android/gtscell/utils/GtsTimer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/gtscell/data/cell/GtsItemCell;Lcom/samsung/android/gtscell/data/GtsConfiguration;Lcom/samsung/android/gtscell/RemoteCallback;IJ)V
    .locals 1

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finishCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->cell:Lcom/samsung/android/gtscell/data/cell/GtsItemCell;

    iput-object p2, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->configuration:Lcom/samsung/android/gtscell/data/GtsConfiguration;

    iput-object p3, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->finishCallback:Lcom/samsung/android/gtscell/RemoteCallback;

    iput p4, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->gtsCellVersion:I

    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->getItems()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/gtscell/data/GtsItem;

    invoke-virtual {p3}, Lcom/samsung/android/gtscell/data/GtsItem;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->itemSet:Ljava/util/Set;

    new-instance p1, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;

    invoke-direct {p1}, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->builder:Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->respond:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;-><init>(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)V

    iput-object p1, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->resultCallback:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;

    new-instance p1, Lcom/samsung/android/gtscell/utils/GtsTimer;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$timer$1;

    invoke-direct {p3, p0}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$timer$1;-><init>(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)V

    invoke-direct {p1, p2, p5, p6, p3}, Lcom/samsung/android/gtscell/utils/GtsTimer;-><init>(Landroid/os/Handler;JLjava/lang/Runnable;)V

    iput-object p1, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->timer:Lcom/samsung/android/gtscell/utils/GtsTimer;

    return-void
.end method

.method public static final synthetic access$getBuilder$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->builder:Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;

    return-object p0
.end method

.method public static final synthetic access$getCell$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/data/cell/GtsItemCell;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->cell:Lcom/samsung/android/gtscell/data/cell/GtsItemCell;

    return-object p0
.end method

.method public static final synthetic access$getConfiguration$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/data/GtsConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->configuration:Lcom/samsung/android/gtscell/data/GtsConfiguration;

    return-object p0
.end method

.method public static final synthetic access$getFinishCallback$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/RemoteCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->finishCallback:Lcom/samsung/android/gtscell/RemoteCallback;

    return-object p0
.end method

.method public static final synthetic access$getGtsCellVersion$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->gtsCellVersion:I

    return p0
.end method

.method public static final synthetic access$getItemSet$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->itemSet:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getRespond$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->respond:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$getResultCallback$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->resultCallback:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;

    return-object p0
.end method

.method public static final synthetic access$getTimer$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/utils/GtsTimer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->timer:Lcom/samsung/android/gtscell/utils/GtsTimer;

    return-object p0
.end method


# virtual methods
.method public final isRespond()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->respond:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final send(Lkotlin/jvm/functions/Function2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getTimer$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/utils/GtsTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/utils/GtsTimer;->start()V

    invoke-static {p0}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getCell$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/data/cell/GtsItemCell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->getItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gtscell/data/GtsItem;

    invoke-static {p0}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getResultCallback$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
