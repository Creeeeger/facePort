.class public abstract Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;
.super Ljava/lang/Object;
.source "MFGraphUnitFactory.java"


# instance fields
.field private final blacklist mediaFilterFactory:Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;


# direct methods
.method protected constructor blacklist <init>(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderConstitutor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;",
            ">;)V"
        }
    .end annotation

    .line 17
    .local p1, "builderConstitutor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;-><init>()V

    .line 19
    .local v0, "builder":Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 20
    const-class v1, Lcom/samsung/android/sume/core/filter/AsyncFilter;

    new-instance v2, Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->addCreator(Ljava/lang/Class;Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;)Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;

    .line 21
    new-instance v1, Lcom/samsung/android/sume/core/graph/MFGraph$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/graph/MFGraph$Builder$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->addBufferChannelSupplier(Ljava/util/function/Supplier;)Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;

    .line 23
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->build()Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;->mediaFilterFactory:Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;

    .line 24
    return-void
.end method

.method protected static blacklist getFilterId(Lcom/samsung/android/sume/core/filter/MediaFilter;)Ljava/lang/String;
    .locals 1
    .param p0, "filter"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    .line 48
    invoke-interface {p0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist clear()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;->mediaFilterFactory:Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->clear()V

    .line 55
    return-void
.end method

.method public abstract blacklist newBufferChannel()Lcom/samsung/android/sume/core/channel/BufferChannel;
.end method

.method public abstract blacklist newDiskCache()Lcom/samsung/android/sume/core/cache/DiskCache;
.end method

.method public blacklist newFilter(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 1
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "descriptor"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;->mediaFilterFactory:Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->newFilter(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newFilter(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 1
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .param p2, "successor"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "descriptor",
            "successor"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;->mediaFilterFactory:Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->newFilter(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/GraphNode;
    .locals 1
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "descriptor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/descriptor/MFDescriptor;",
            ")",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;->mediaFilterFactory:Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->newFilter(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;->newNode(Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/graph/GraphNode;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/graph/GraphNode;
    .locals 1
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .param p2, "successor"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "descriptor",
            "successor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/descriptor/MFDescriptor;",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ")",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;->mediaFilterFactory:Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->newFilter(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;->newNode(Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/graph/GraphNode;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist newNode(Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/graph/GraphNode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ")",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract blacklist parallelizeFilter(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "factory",
            "descriptor",
            "successor"
        }
    .end annotation
.end method
