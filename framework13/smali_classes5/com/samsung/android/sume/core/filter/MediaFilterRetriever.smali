.class public final Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;
.super Ljava/lang/Object;
.source "MediaFilterRetriever.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist filter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist predictor:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 1
    .param p1, "node"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;->filter:Ljava/lang/ref/WeakReference;

    .line 21
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/samsung/android/sume/core/filter/DecorateFilter;)V
    .locals 2
    .param p1, "decorateFilter"    # Lcom/samsung/android/sume/core/filter/DecorateFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decorateFilter"
        }
    .end annotation

    .line 35
    sget-object v0, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;->TAG:Ljava/lang/String;

    const-string v1, "apply DecorateFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;->predictor:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;->filters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->getSuccessorFilter()Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->getSuccessorFilter()Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->accept(Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;)V

    .line 41
    :cond_1
    return-void
.end method

.method public blacklist apply(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 2
    .param p1, "mediaFilter"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaFilter"
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;->TAG:Ljava/lang/String;

    const-string v1, "apply MediaFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;->predictor:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;->filters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    return-void
.end method

.method public blacklist apply(Lcom/samsung/android/sume/core/filter/MediaFilterGroup;)V
    .locals 2
    .param p1, "filterGroup"    # Lcom/samsung/android/sume/core/filter/MediaFilterGroup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filterGroup"
        }
    .end annotation

    .line 44
    sget-object v0, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;->TAG:Ljava/lang/String;

    const-string v1, "apply MediaFilterGroup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-interface {p1}, Lcom/samsung/android/sume/core/filter/MediaFilterGroup;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 46
    return-void
.end method

.method synthetic blacklist lambda$apply$0$com-samsung-android-sume-core-filter-MediaFilterRetriever(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 0
    .param p1, "it"    # Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 45
    invoke-interface {p1, p0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->accept(Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;)V

    return-void
.end method

.method public blacklist retrieve(Ljava/util/function/Function;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "predictor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation

    .line 25
    .local p1, "predictor":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/samsung/android/sume/core/filter/MediaFilter;Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;->predictor:Ljava/util/function/Function;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;->filters:Ljava/util/List;

    .line 27
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;->filter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 28
    .local v0, "filter":Lcom/samsung/android/sume/core/filter/MediaFilter;
    if-eqz v0, :cond_0

    .line 29
    invoke-interface {v0, p0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->accept(Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;)V

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;->filters:Ljava/util/List;

    return-object v1
.end method
