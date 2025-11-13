.class public Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;
.super Lcom/samsung/android/sume/core/filter/NNFWFilter;
.source "NNFWFilterGroup.java"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/MediaFilterGroup;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mediaFilter:Lcom/samsung/android/sume/core/filter/MediaFilter;

.field private blacklist modelSelector:Lcom/samsung/android/sume/core/functional/ModelSelector;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/filter/NNFWFilter;-><init>(Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/filter/NNFWFilter;-><init>(Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;)V

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getNNDescriptor()Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getModelSelector()Lcom/samsung/android/sume/core/functional/ModelSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->modelSelector:Lcom/samsung/android/sume/core/functional/ModelSelector;

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getNNDescriptor()Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setModelSelector(Lcom/samsung/android/sume/core/functional/ModelSelector;)V

    iput-object p2, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->filters:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->modelSelector:Lcom/samsung/android/sume/core/functional/ModelSelector;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "no model selector is given"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/core/Def;->require(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$loadModel$1(Lcom/samsung/android/sume/core/functional/ModelSelector$Item;Lcom/samsung/android/sume/core/filter/MediaFilter;)Z
    .locals 2

    invoke-interface {p1}, Lcom/samsung/android/sume/core/filter/MediaFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getNNFileDescriptor()Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/functional/ModelSelector$Item;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$loadModel$2(Lcom/samsung/android/sume/core/functional/ModelSelector$Item;)Ljava/lang/IllegalStateException;
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no matched model with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist loadModel(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/functional/ModelSelector$Item;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->modelSelector:Lcom/samsung/android/sume/core/functional/ModelSelector;

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/functional/ModelSelector;->select(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/functional/ModelSelector$Item;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load model: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/sume/core/functional/ModelSelector$Item;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/functional/ModelSelector$Item;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/functional/ModelSelector$Item;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/filter/MediaFilter;

    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->mediaFilter:Lcom/samsung/android/sume/core/filter/MediaFilter;

    return-object v0
.end method


# virtual methods
.method public blacklist addFilter(Ljava/util/List;)Lcom/samsung/android/sume/core/filter/MediaFilterGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;)",
            "Lcom/samsung/android/sume/core/filter/MediaFilterGroup;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->filters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method synthetic blacklist lambda$new$0$com-samsung-android-sume-core-filter-NNFWFilterGroup(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/functional/ModelSelector$Item;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->loadModel(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/functional/ModelSelector$Item;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$prepare$3$com-samsung-android-sume-core-filter-NNFWFilterGroup(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 3

    move-object v0, p1

    instance-of v1, p1, Lcom/samsung/android/sume/core/filter/DecorateFilter;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/sume/core/filter/DecorateFilter;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->getEnclosedFilter()Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v0

    :cond_0
    instance-of v1, v0, Lcom/samsung/android/sume/core/filter/NNFWFilter;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/sume/core/filter/NNFWFilter;

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->executeDelegator:Lcom/samsung/android/sume/core/functional/ExecuteDelegator;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/core/filter/NNFWFilter;->setExecuteDelegator(Lcom/samsung/android/sume/core/functional/ExecuteDelegator;)V

    :cond_1
    invoke-interface {p1}, Lcom/samsung/android/sume/core/filter/MediaFilter;->prepare()V

    return-void
.end method

.method public blacklist prepare()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->filters:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->filters:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public varargs blacklist removeFilter([Lcom/samsung/android/sume/core/filter/MediaFilter;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->filters:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public blacklist replaceFilter(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/filter/MediaFilter;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->filters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->filters:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    return v1
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->mediaFilter:Lcom/samsung/android/sume/core/filter/MediaFilter;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->loadModel(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/functional/ModelSelector$Item;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->mediaFilter:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sume/core/filter/MediaFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->descriptor:Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->isInstant()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->mediaFilter:Lcom/samsung/android/sume/core/filter/MediaFilter;

    :cond_1
    return-object p2
.end method

.method public blacklist runAdapter(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/types/Status;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "do not use this"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist stream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
