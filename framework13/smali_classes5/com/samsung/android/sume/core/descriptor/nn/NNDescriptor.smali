.class public Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
.super Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;
.source "NNDescriptor.java"


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
.method public constructor blacklist <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->nnfwProfiles:Ljava/util/List;

    .line 29
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Enum;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    .line 30
    .local p1, "modelId":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-direct {p0}, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->nnfwProfiles:Ljava/util/List;

    .line 31
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setPluginId(Ljava/lang/Enum;)V

    .line 32
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V
    .locals 2
    .param p2, "fw"    # Lcom/samsung/android/sume/core/types/nn/NNFW;
    .param p3, "hw"    # Lcom/samsung/android/sume/core/types/HwUnit;
    .param p4, "units"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "modelId",
            "fw",
            "hw",
            "units"
        }
    .end annotation

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

    .line 33
    .local p1, "modelId":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-direct {p0}, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->nnfwProfiles:Ljava/util/List;

    .line 34
    new-instance v1, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;

    invoke-direct {v1, p2, p3, p4}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;-><init>(Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setPluginId(Ljava/lang/Enum;)V

    .line 36
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

    .line 64
    const-class v0, Lcom/samsung/android/sume/core/filter/NNFilter;

    return-object v0
.end method

.method public blacklist getInputFormat()Lcom/samsung/android/sume/core/format/MutableImageFormat;
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->PLUGIN_INPUT_FORMAT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableImageFormat;

    return-object v0
.end method

.method public blacklist getLoadingType()Lcom/samsung/android/sume/core/types/LoadType;
    .locals 2

    .line 105
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

    .line 39
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

    .line 99
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->modelIdSupplier:Ljava/util/function/Supplier;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor$$ExternalSyntheticLambda0;-><init>()V

    .line 100
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;)V

    .line 101
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    return-object v0
.end method

.method public blacklist getModelSelector()Lcom/samsung/android/sume/core/functional/ModelSelector;
    .locals 1

    .line 118
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

    .line 55
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

    .line 47
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->nnFileDescriptor:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getOutputFormat()Lcom/samsung/android/sume/core/format/MutableImageFormat;
    .locals 2

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->PLUGIN_OUTPUT_FORMAT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableImageFormat;

    return-object v0
.end method

.method synthetic blacklist lambda$getModelId$0$com-samsung-android-sume-core-descriptor-nn-NNDescriptor()Ljava/lang/String;
    .locals 1

    .line 101
    invoke-super {p0}, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;->getFilterId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setInputFormat(Lcom/samsung/android/sume/core/format/MutableImageFormat;)Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    .locals 2
    .param p1, "inputFormat"    # Lcom/samsung/android/sume/core/format/MutableImageFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputFormat"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->PLUGIN_INPUT_FORMAT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-object p0
.end method

.method public blacklist setLoadingType(Lcom/samsung/android/sume/core/types/LoadType;)V
    .locals 2
    .param p1, "loadType"    # Lcom/samsung/android/sume/core/types/LoadType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadType"
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->PLUGIN_LOADING_TYPE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public blacklist setMediaType(Lcom/samsung/android/sume/core/types/MediaType;)V
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

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->PLUGIN_MEDIA_TYPE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public blacklist setModelIdSupplier(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelIdSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 95
    .local p1, "modelIdSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->modelIdSupplier:Ljava/util/function/Supplier;

    .line 96
    return-void
.end method

.method public blacklist setModelSelector(Lcom/samsung/android/sume/core/functional/ModelSelector;)V
    .locals 0
    .param p1, "modelSelector"    # Lcom/samsung/android/sume/core/functional/ModelSelector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelSelector"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->modelSelector:Lcom/samsung/android/sume/core/functional/ModelSelector;

    .line 114
    return-void
.end method

.method public blacklist setNNFWProfile(Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V
    .locals 2
    .param p1, "fw"    # Lcom/samsung/android/sume/core/types/nn/NNFW;
    .param p2, "hw"    # Lcom/samsung/android/sume/core/types/HwUnit;
    .param p3, "units"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fw",
            "hw",
            "units"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->nnfwProfiles:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;

    invoke-direct {v1, p1, p2, p3}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;-><init>(Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public blacklist setNNFileDescriptors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nnFileDescriptor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p1, "nnFileDescriptor":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->nnFileDescriptor:Ljava/util/List;

    .line 52
    return-void
.end method

.method public blacklist setOutputFormat(Lcom/samsung/android/sume/core/format/MutableImageFormat;)Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    .locals 3
    .param p1, "outputFormat"    # Lcom/samsung/android/sume/core/format/MutableImageFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputFormat"
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->PLUGIN_OUTPUT_FORMAT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-class v0, Ljava/lang/Float;

    const-string/jumbo v1, "scale"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->checkTypeOf(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p1, v1}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 86
    .local v0, "scale":Ljava/lang/Float;
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getInputFormat()Lcom/samsung/android/sume/core/format/MutableImageFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/Shape;->toMutableShape()Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sume/core/format/MutableShape;->scale(Ljava/lang/Float;)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->setShape(Lcom/samsung/android/sume/core/format/Shape;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .end local v0    # "scale":Ljava/lang/Float;
    goto :goto_0

    .line 87
    :cond_0
    const-class v0, Landroid/util/Pair;

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->checkTypeOf(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p1, v1}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 89
    .local v0, "scale":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getInputFormat()Lcom/samsung/android/sume/core/format/MutableImageFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/Shape;->toMutableShape()Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/format/MutableShape;->scale(Landroid/util/Pair;)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->setShape(Lcom/samsung/android/sume/core/format/Shape;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    goto :goto_1

    .line 87
    .end local v0    # "scale":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    :cond_1
    :goto_0
    nop

    .line 91
    :goto_1
    return-object p0
.end method
