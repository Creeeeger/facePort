.class public Lcom/samsung/android/sume/core/graph/MFGraph$Builder;
.super Lcom/samsung/android/sume/core/graph/GraphBuilderBase;
.source "MFGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/graph/MFGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sume/core/graph/GraphBuilderBase<",
        "Lcom/samsung/android/sume/core/filter/MediaFilter;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist bufferChannelSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist option:Lcom/samsung/android/sume/core/graph/Graph$Option;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/graph/Graph$Option;-><init>()V

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/graph/MFGraph$Builder;-><init>(Lcom/samsung/android/sume/core/graph/Graph$Option;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/graph/Graph$Option;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sume/core/graph/GraphBuilderBase;-><init>()V

    new-instance v0, Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/graph/MFGraph$Builder;->bufferChannelSupplier:Ljava/util/function/Supplier;

    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/MFGraph$Builder;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/graph/Graph$Option;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sume/core/graph/MFGraph$Builder;-><init>(Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;Lcom/samsung/android/sume/core/graph/Graph$Option;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;Lcom/samsung/android/sume/core/graph/Graph$Option;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sume/core/graph/GraphBuilderBase;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/sume/core/graph/MFGraph$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/core/graph/MFGraph$Builder$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/graph/MFGraph$Builder;->bufferChannelSupplier:Ljava/util/function/Supplier;

    iput-object p2, p0, Lcom/samsung/android/sume/core/graph/MFGraph$Builder;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/graph/Graph$Option;->isCacheable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/samsung/android/sume/core/graph/Graph$Option;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;->newDiskCache()Lcom/samsung/android/sume/core/cache/DiskCache;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/sume/core/graph/Graph$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/types/OptionBase;

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist addNode(Lcom/samsung/android/sume/core/graph/GraphNode;Lcom/samsung/android/sume/core/graph/GraphNode;)Lcom/samsung/android/sume/core/graph/GraphBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "+",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "+",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;)",
            "Lcom/samsung/android/sume/core/graph/GraphBuilder<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sume/core/graph/GraphEdge;

    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/MFGraph$Builder;->bufferChannelSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/graph/GraphEdge;-><init>(Lcom/samsung/android/sume/core/channel/BufferChannel;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/graph/GraphNode;->addOutputEdge(Lcom/samsung/android/sume/core/graph/GraphEdge;)Lcom/samsung/android/sume/core/graph/GraphNode;

    invoke-interface {p2, v0}, Lcom/samsung/android/sume/core/graph/GraphNode;->addInputEdge(Lcom/samsung/android/sume/core/graph/GraphEdge;)Lcom/samsung/android/sume/core/graph/GraphNode;

    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/MFGraph$Builder;->graphNodes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/MFGraph$Builder;->graphNodes:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist addNode(Lcom/samsung/android/sume/core/graph/GraphNode;Lcom/samsung/android/sume/core/graph/GraphNode;Lcom/samsung/android/sume/core/channel/BufferChannelDescriptor;)Lcom/samsung/android/sume/core/graph/GraphBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "+",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "+",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;",
            "Lcom/samsung/android/sume/core/channel/BufferChannelDescriptor;",
            ")",
            "Lcom/samsung/android/sume/core/graph/GraphBuilder<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/samsung/android/sume/core/graph/MFGraph$Builder;->addNode(Lcom/samsung/android/sume/core/graph/GraphNode;Lcom/samsung/android/sume/core/graph/GraphNode;Lcom/samsung/android/sume/core/evaluate/Evaluator;Lcom/samsung/android/sume/core/channel/BufferChannelDescriptor;)Lcom/samsung/android/sume/core/graph/GraphBuilder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist addNode(Lcom/samsung/android/sume/core/graph/GraphNode;Lcom/samsung/android/sume/core/graph/GraphNode;Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/graph/GraphBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "+",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "+",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;",
            ")",
            "Lcom/samsung/android/sume/core/graph/GraphBuilder<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sume/core/channel/BufferChannelDescriptor;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/channel/BufferChannelDescriptor;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/sume/core/graph/MFGraph$Builder;->addNode(Lcom/samsung/android/sume/core/graph/GraphNode;Lcom/samsung/android/sume/core/graph/GraphNode;Lcom/samsung/android/sume/core/evaluate/Evaluator;Lcom/samsung/android/sume/core/channel/BufferChannelDescriptor;)Lcom/samsung/android/sume/core/graph/GraphBuilder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist addNode(Lcom/samsung/android/sume/core/graph/GraphNode;Lcom/samsung/android/sume/core/graph/GraphNode;Lcom/samsung/android/sume/core/evaluate/Evaluator;Lcom/samsung/android/sume/core/channel/BufferChannelDescriptor;)Lcom/samsung/android/sume/core/graph/GraphBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "+",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "+",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;",
            "Lcom/samsung/android/sume/core/channel/BufferChannelDescriptor;",
            ")",
            "Lcom/samsung/android/sume/core/graph/GraphBuilder<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation

    invoke-virtual {p4}, Lcom/samsung/android/sume/core/channel/BufferChannelDescriptor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown BufferChannel.Type given: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p4}, Lcom/samsung/android/sume/core/channel/BufferChannelDescriptor;->getType()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/MFGraph$Builder;->bufferChannelSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/channel/SurfaceChannel;->of(ILcom/samsung/android/sume/core/channel/BufferChannel;)Lcom/samsung/android/sume/core/channel/SurfaceChannel;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;

    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/MFGraph$Builder;->bufferChannelSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;-><init>(Lcom/samsung/android/sume/core/channel/BufferChannel;)V

    invoke-interface {p2}, Lcom/samsung/android/sume/core/graph/GraphNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/filter/MediaFilter;

    instance-of v2, v1, Lcom/samsung/android/sume/core/functional/BufferSupplier;

    invoke-static {v2}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/sume/core/functional/BufferSupplier;

    invoke-interface {v3}, Lcom/samsung/android/sume/core/functional/BufferSupplier;->getBufferSupplier()Ljava/util/function/Supplier;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;->configure(Ljava/util/function/Supplier;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFGraph$Builder;->bufferChannelSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/channel/BufferChannel;

    nop

    :goto_0
    invoke-virtual {p4}, Lcom/samsung/android/sume/core/channel/BufferChannelDescriptor;->getCapacity()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p4}, Lcom/samsung/android/sume/core/channel/BufferChannelDescriptor;->getCapacity()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/channel/BufferChannel;->setCapacity(I)V

    :cond_0
    new-instance v1, Lcom/samsung/android/sume/core/graph/GraphEdge;

    invoke-direct {v1, v0, p3}, Lcom/samsung/android/sume/core/graph/GraphEdge;-><init>(Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/evaluate/Evaluator;)V

    invoke-interface {p1}, Lcom/samsung/android/sume/core/graph/GraphNode;->getNodeId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/samsung/android/sume/core/graph/GraphNode;->getNodeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sume/core/graph/GraphEdge;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/samsung/android/sume/core/graph/GraphNode;->addOutputEdge(Lcom/samsung/android/sume/core/graph/GraphEdge;)Lcom/samsung/android/sume/core/graph/GraphNode;

    invoke-interface {p2, v1}, Lcom/samsung/android/sume/core/graph/GraphNode;->addInputEdge(Lcom/samsung/android/sume/core/graph/GraphEdge;)Lcom/samsung/android/sume/core/graph/GraphNode;

    iget-object v2, p0, Lcom/samsung/android/sume/core/graph/MFGraph$Builder;->graphNodes:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/sume/core/graph/MFGraph$Builder;->graphNodes:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist build()Lcom/samsung/android/sume/core/graph/Graph;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sume/core/graph/Graph<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFGraph$Builder;->bufferChannelSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/channel/BufferChannel;

    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/MFGraph$Builder;->bufferChannelSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/samsung/android/sume/core/channel/BufferChannel;

    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/MFGraph$Builder;->graphNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/samsung/android/sume/core/graph/MFGraph$Builder;->graphNodes:Ljava/util/List;

    new-instance v8, Lcom/samsung/android/sume/core/graph/MFGraph;

    iget-object v2, p0, Lcom/samsung/android/sume/core/graph/MFGraph$Builder;->graphNodes:Ljava/util/List;

    iget-object v5, p0, Lcom/samsung/android/sume/core/graph/MFGraph$Builder;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    const/4 v6, 0x0

    move-object v1, v8

    move-object v3, v0

    move-object v4, v7

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sume/core/graph/MFGraph;-><init>(Ljava/util/List;Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/graph/Graph$Option;Lcom/samsung/android/sume/core/graph/MFGraph$1;)V

    return-object v8
.end method
