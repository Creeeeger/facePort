.class public Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
.super Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;
.source "NNDescriptor.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private transient blacklist modelIdSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient blacklist modelSelector:Lcom/samsung/android/sume/core/functional/ModelSelector;

.field private transient blacklist nnFileDescriptor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist nnfwProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->nnfwProfiles:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Enum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->nnfwProfiles:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setPluginId(Ljava/lang/Enum;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/types/nn/NNFW;",
            "Lcom/samsung/android/sume/core/types/HwUnit;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->nnfwProfiles:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->nnfwProfiles:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;

    invoke-direct {v1, p2, p3, p4}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;-><init>(Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setPluginId(Ljava/lang/Enum;)V

    return-void
.end method


# virtual methods
.method public blacklist getFilterType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/sume/core/filter/NNFilter;

    return-object v0
.end method

.method public blacklist getInputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->PLUGIN_INPUT_FORMAT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    return-object v0
.end method

.method public blacklist getLoadingType()Lcom/samsung/android/sume/core/types/LoadType;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->PLUGIN_LOADING_TYPE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/LoadType;

    return-object v0
.end method

.method public blacklist getMediaType()Lcom/samsung/android/sume/core/types/MediaType;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->PLUGIN_MEDIA_TYPE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/MediaType;

    return-object v0
.end method

.method public blacklist getModelId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->modelIdSupplier:Ljava/util/function/Supplier;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getModelSelector()Lcom/samsung/android/sume/core/functional/ModelSelector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->modelSelector:Lcom/samsung/android/sume/core/functional/ModelSelector;

    return-object v0
.end method

.method public blacklist getNNFWProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->nnfwProfiles:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getNnFileDescriptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->nnFileDescriptor:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getOutputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->PLUGIN_OUTPUT_FORMAT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    return-object v0
.end method

.method public blacklist getTargetFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->PLUGIN_TARGET_FORMAT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    return-object v0
.end method

.method synthetic blacklist lambda$getModelId$0$com-samsung-android-sume-core-descriptor-nn-NNDescriptor()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;->getFilterId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setInputFormat(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->PLUGIN_INPUT_FORMAT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public blacklist setLoadingType(Lcom/samsung/android/sume/core/types/LoadType;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->PLUGIN_LOADING_TYPE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist setMediaType(Lcom/samsung/android/sume/core/types/MediaType;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->PLUGIN_MEDIA_TYPE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist setModelIdSupplier(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->modelIdSupplier:Ljava/util/function/Supplier;

    return-void
.end method

.method public blacklist setModelSelector(Lcom/samsung/android/sume/core/functional/ModelSelector;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->modelSelector:Lcom/samsung/android/sume/core/functional/ModelSelector;

    return-void
.end method

.method public blacklist setNNFWProfile(Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->nnfwProfiles:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;

    invoke-direct {v1, p1, p2, p3}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;-><init>(Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist setNNFileDescriptors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->nnFileDescriptor:Ljava/util/List;

    return-void
.end method

.method public blacklist setOutputFormat(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->PLUGIN_OUTPUT_FORMAT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Ljava/lang/Float;

    const-string v1, "scale"

    invoke-interface {p1, v1, v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->checkTypeOf(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getInputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/Shape;->toMutableShape()Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sume/core/format/MutableShape;->scale(Ljava/lang/Float;)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setShape(Lcom/samsung/android/sume/core/format/Shape;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    goto :goto_0

    :cond_0
    const-class v0, Landroid/util/Pair;

    invoke-interface {p1, v1, v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->checkTypeOf(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getInputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/Shape;->toMutableShape()Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/format/MutableShape;->scale(Landroid/util/Pair;)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setShape(Lcom/samsung/android/sume/core/format/Shape;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    return-object p0
.end method

.method public blacklist setTargetFormat(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->PLUGIN_TARGET_FORMAT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
