.class public Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;
.super Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;
.source "MediaMuxerDescriptor.java"


# instance fields
.field private final blacklist mediaTypesToNotifyEvent:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist outputFormat:I


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;->mediaTypesToNotifyEvent:Ljava/util/Set;

    iput p1, p0, Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;->outputFormat:I

    return-void
.end method

.method static synthetic blacklist lambda$setMediaTypeToNotifyEvent$0(Lcom/samsung/android/sume/core/types/MediaType;)Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/MediaType;->rank()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/MediaType;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getFilterId()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOutputFormat()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;->outputFormat:I

    return v0
.end method

.method public blacklist isMediaTypeToNotifyEvent(Lcom/samsung/android/sume/core/types/MediaType;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;->mediaTypesToNotifyEvent:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/types/MediaType;->rank()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/types/MediaType;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public varargs blacklist setMediaTypeToNotifyEvent([Lcom/samsung/android/sume/core/types/MediaType;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;->mediaTypesToNotifyEvent:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
