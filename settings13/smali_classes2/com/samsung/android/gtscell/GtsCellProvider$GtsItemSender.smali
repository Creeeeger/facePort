.class final Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;
.super Ljava/lang/Object;
.source "GtsCellProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/GtsCellProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GtsItemSender"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGtsCellProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GtsCellProvider.kt\ncom/samsung/android/gtscell/GtsCellProvider$GtsItemSender\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,438:1\n1648#2,2:439\n1648#2,2:441\n*E\n*S KotlinDebug\n*F\n+ 1 GtsCellProvider.kt\ncom/samsung/android/gtscell/GtsCellProvider$GtsItemSender\n*L\n433#1,2:439\n371#1,2:441\n*E\n"
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
    .param p1    # Lcom/samsung/android/gtscell/data/cell/GtsItemCell;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/gtscell/data/GtsConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/gtscell/RemoteCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finishCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->cell:Lcom/samsung/android/gtscell/data/cell/GtsItemCell;

    iput-object p2, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->configuration:Lcom/samsung/android/gtscell/data/GtsConfiguration;

    iput-object p3, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->finishCallback:Lcom/samsung/android/gtscell/RemoteCallback;

    iput p4, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->gtsCellVersion:I

    .line 371
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 372
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->getItems()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 441
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/gtscell/data/GtsItem;

    .line 373
    invoke-virtual {p3}, Lcom/samsung/android/gtscell/data/GtsItem;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 371
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->itemSet:Ljava/util/Set;

    .line 376
    new-instance p1, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;

    invoke-direct {p1}, Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->builder:Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;

    .line 377
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->respond:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 381
    new-instance p1, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;-><init>(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)V

    iput-object p1, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->resultCallback:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;

    .line 406
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

    .line 364
    iget-object p0, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->builder:Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;

    return-object p0
.end method

.method public static final synthetic access$getCell$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/data/cell/GtsItemCell;
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->cell:Lcom/samsung/android/gtscell/data/cell/GtsItemCell;

    return-object p0
.end method

.method public static final synthetic access$getConfiguration$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/data/GtsConfiguration;
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->configuration:Lcom/samsung/android/gtscell/data/GtsConfiguration;

    return-object p0
.end method

.method public static final synthetic access$getFinishCallback$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/RemoteCallback;
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->finishCallback:Lcom/samsung/android/gtscell/RemoteCallback;

    return-object p0
.end method

.method public static final synthetic access$getGtsCellVersion$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)I
    .locals 0

    .line 364
    iget p0, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->gtsCellVersion:I

    return p0
.end method

.method public static final synthetic access$getItemSet$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Ljava/util/Set;
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->itemSet:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getRespond$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->respond:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$getResultCallback$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->resultCallback:Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;

    return-object p0
.end method

.method public static final synthetic access$getTimer$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/utils/GtsTimer;
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->timer:Lcom/samsung/android/gtscell/utils/GtsTimer;

    return-object p0
.end method


# virtual methods
.method public final isRespond()Z
    .locals 0

    .line 379
    iget-object p0, p0, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->respond:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final send(Lkotlin/jvm/functions/Function2;)V
    .locals 3
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/samsung/android/gtscell/data/GtsItem;",
            "-",
            "Lcom/samsung/android/gtscell/ResultCallback;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    invoke-static {p0}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getTimer$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/utils/GtsTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/utils/GtsTimer;->start()V

    .line 433
    invoke-static {p0}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getCell$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/data/cell/GtsItemCell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->getItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 439
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gtscell/data/GtsItem;

    .line 434
    invoke-static {p0}, Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;->access$getResultCallback$p(Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender;)Lcom/samsung/android/gtscell/GtsCellProvider$GtsItemSender$resultCallback$1;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
