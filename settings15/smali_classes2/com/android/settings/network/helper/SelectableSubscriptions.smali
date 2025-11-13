.class public Lcom/android/settings/network/helper/SelectableSubscriptions;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/android/settings/network/helper/SubscriptionAnnotation;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mFilter:Ljava/util/function/Predicate;

.field public final mFinisher:Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda5;

.field public final mSubscriptions:Ljava/util/function/Supplier;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/helper/SelectableSubscriptions;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/network/helper/SelectableSubscriptions;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/network/helper/SelectableSubscriptions;->mSubscriptions:Ljava/util/function/Supplier;

    new-instance p1, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/helper/SelectableSubscriptions;->mFilter:Ljava/util/function/Predicate;

    new-instance p1, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/helper/SelectableSubscriptions;->mFinisher:Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda5;

    return-void
.end method

.method public static atomicToList(Ljava/util/concurrent/atomic/AtomicIntegerArray;)Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicIntegerArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicIntegerArray;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/network/helper/SelectableSubscriptions;->call()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final call()Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/network/helper/SelectableSubscriptions;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :try_start_0
    new-instance v1, Lcom/android/settings/network/helper/QuerySimSlotIndex;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/settings/network/helper/QuerySimSlotIndex;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/settings/network/helper/QuerySimSlotIndex;->mDisabledSlotsIncluded:Z

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/settings/network/helper/QuerySimSlotIndex;->mOnlySlotWithSim:Z

    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getBackgroundExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;

    invoke-virtual {v2, v1}, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/helper/SelectableSubscriptions;->mSubscriptions:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-static {v1}, Lcom/android/settings/network/helper/SelectableSubscriptions;->atomicToList(Ljava/util/concurrent/atomic/AtomicIntegerArray;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v3, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v3}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/network/helper/SelectableSubscriptions;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/helper/SelectableSubscriptions;->mFilter:Ljava/util/function/Predicate;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/network/helper/SelectableSubscriptions;->mFinisher:Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda5;

    invoke-static {v1, p0}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "SelectableSubscriptions"

    const-string v1, "Fail to request subIdList"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
