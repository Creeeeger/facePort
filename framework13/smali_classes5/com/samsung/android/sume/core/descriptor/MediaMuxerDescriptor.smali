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
    .param p1, "outputFormat"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputFormat"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;->mediaTypesToNotifyEvent:Ljava/util/Set;

    .line 20
    iput p1, p0, Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;->outputFormat:I

    .line 21
    return-void
.end method


# virtual methods
.method public blacklist getFilterId()Ljava/lang/String;
    .locals 1

    .line 37
    const-class v0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOutputFormat()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;->outputFormat:I

    return v0
.end method

.method public blacklist isMediaTypeToNotifyEvent(Lcom/samsung/android/sume/core/types/MediaType;)Z
    .locals 2
    .param p1, "mediaType"    # Lcom/samsung/android/sume/core/types/MediaType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaType"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;->mediaTypesToNotifyEvent:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/types/MediaType;->getRank()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public varargs blacklist setMediaTypeToNotifyEvent([Lcom/samsung/android/sume/core/types/MediaType;)V
    .locals 3
    .param p1, "mediaTypes"    # [Lcom/samsung/android/sume/core/types/MediaType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaTypes"
        }
    .end annotation

    .line 24
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

    .line 25
    return-void
.end method
