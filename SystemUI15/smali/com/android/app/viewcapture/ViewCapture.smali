.class public abstract Lcom/android/app/viewcapture/ViewCapture;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final MAGIC_NUMBER_FOR_WINSCOPE:J

.field public static final MAIN_EXECUTOR:Lcom/android/app/viewcapture/LooperExecutor;


# instance fields
.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mIsEnabled:Z

.field public final mListeners:Ljava/util/List;

.field public final mMemorySize:I

.field public mPool:Lcom/android/app/viewcapture/ViewCapture$ViewRef;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;->MAGIC_NUMBER_H:Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;

    invoke-virtual {v0}, Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;->getNumber()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    sget-object v2, Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;->MAGIC_NUMBER_L:Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;

    invoke-virtual {v2}, Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;->getNumber()I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    sput-wide v0, Lcom/android/app/viewcapture/ViewCapture;->MAGIC_NUMBER_FOR_WINSCOPE:J

    new-instance v0, Lcom/android/app/viewcapture/LooperExecutor;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/app/viewcapture/LooperExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/app/viewcapture/ViewCapture;->MAIN_EXECUTOR:Lcom/android/app/viewcapture/LooperExecutor;

    return-void
.end method

.method public constructor <init>(IILjava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/app/viewcapture/ViewCapture;->mListeners:Ljava/util/List;

    new-instance v0, Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/app/viewcapture/ViewCapture$ViewRef;-><init>(I)V

    iput-object v0, p0, Lcom/android/app/viewcapture/ViewCapture;->mPool:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/app/viewcapture/ViewCapture;->mIsEnabled:Z

    iput p1, p0, Lcom/android/app/viewcapture/ViewCapture;->mMemorySize:I

    iput-object p3, p0, Lcom/android/app/viewcapture/ViewCapture;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, p2}, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda3;-><init>(Lcom/android/app/viewcapture/ViewCapture;I)V

    invoke-interface {p3, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getExportedData(Landroid/content/Context;)Lcom/android/app/viewcapture/data/ExportedData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/app/viewcapture/data/ExportedData;->newBuilder()Lcom/android/app/viewcapture/data/ExportedData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v2, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/android/app/viewcapture/data/ExportedData;

    sget-wide v3, Lcom/android/app/viewcapture/ViewCapture;->MAGIC_NUMBER_FOR_WINSCOPE:J

    invoke-static {v2, v3, v4}, Lcom/android/app/viewcapture/data/ExportedData;->access$100(Lcom/android/app/viewcapture/data/ExportedData;J)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v3, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v3, Lcom/android/app/viewcapture/data/ExportedData;

    invoke-static {v3, v2}, Lcom/android/app/viewcapture/data/ExportedData;->access$900(Lcom/android/app/viewcapture/data/ExportedData;Ljava/lang/String;)V

    new-instance v2, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/app/viewcapture/ViewCapture;->getWindowData(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/function/Predicate;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object p1, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p1, Lcom/android/app/viewcapture/data/ExportedData;

    invoke-static {p1, p0}, Lcom/android/app/viewcapture/data/ExportedData;->access$600(Lcom/android/app/viewcapture/data/ExportedData;Ljava/lang/Iterable;)V

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda9;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object p1, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p1, Lcom/android/app/viewcapture/data/ExportedData;

    invoke-static {p1, p0}, Lcom/android/app/viewcapture/data/ExportedData;->access$1400(Lcom/android/app/viewcapture/data/ExportedData;Ljava/lang/Iterable;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    sub-long/2addr p0, v2

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/app/viewcapture/data/ExportedData;

    invoke-static {v0, p0, p1}, Lcom/android/app/viewcapture/data/ExportedData;->access$1700(Lcom/android/app/viewcapture/data/ExportedData;J)V

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/app/viewcapture/data/ExportedData;

    return-object p0
.end method

.method public final getWindowData(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/function/Predicate;)Ljava/util/concurrent/CompletableFuture;
    .locals 2

    new-instance v0, Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;-><init>(Landroid/content/res/Resources;)V

    new-instance p1, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0, p3}, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda10;-><init>(Lcom/android/app/viewcapture/ViewCapture;Ljava/util/function/Predicate;)V

    sget-object p3, Lcom/android/app/viewcapture/ViewCapture;->MAIN_EXECUTOR:Lcom/android/app/viewcapture/LooperExecutor;

    invoke-static {p1, p3}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    new-instance p3, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda11;

    const/4 v1, 0x0

    invoke-direct {p3, v0, p2, v1}, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda11;-><init>(Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;Ljava/util/ArrayList;I)V

    iget-object p0, p0, Lcom/android/app/viewcapture/ViewCapture;->mBgExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3, p0}, Ljava/util/concurrent/CompletableFuture;->thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public onCapturedViewPropertiesBg(JLjava/lang/String;Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;)V
    .locals 0

    return-void
.end method

.method public stopCapture(Landroid/view/View;)V
    .locals 2

    iget-object p0, p0, Lcom/android/app/viewcapture/ViewCapture;->mListeners:Ljava/util/List;

    new-instance v0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda4;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
