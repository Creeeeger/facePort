.class public Lcom/samsung/android/sume/ext/director/NNDirector;
.super Ljava/lang/Object;
.source "NNDirector.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist AlphaChannelPluginName:Ljava/lang/String;

.field private final blacklist OldPhotoPluginName:Ljava/lang/String;

.field private final blacklist defaultServiceClass:Ljava/lang/String;

.field private final blacklist defaultServicePackage:Ljava/lang/String;

.field private final blacklist graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

.field private final blacklist serviceProxySupplier:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/samsung/android/sume/ext/director/NNDirector;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/ext/director/NNDirector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/service/ServiceProxySupplier;)V
    .locals 5
    .param p1, "serviceProxy"    # Lcom/samsung/android/sume/core/service/ServiceProxySupplier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serviceProxy"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "com.samsung.android.sume.nn.service"

    iput-object v0, p0, Lcom/samsung/android/sume/ext/director/NNDirector;->defaultServicePackage:Ljava/lang/String;

    .line 27
    const-string v1, "com.samsung.android.sume.nn.service.RemoteNNService"

    iput-object v1, p0, Lcom/samsung/android/sume/ext/director/NNDirector;->defaultServiceClass:Ljava/lang/String;

    .line 29
    const-string v2, "com.samsung.android.sume.ext.plugin.AlphaChannelPlugin"

    iput-object v2, p0, Lcom/samsung/android/sume/ext/director/NNDirector;->AlphaChannelPluginName:Ljava/lang/String;

    .line 30
    const-string v2, "com.samsung.android.sume.nn.plugin.OldPhotoPlugin"

    iput-object v2, p0, Lcom/samsung/android/sume/ext/director/NNDirector;->OldPhotoPluginName:Ljava/lang/String;

    .line 36
    instance-of v2, p1, Lcom/samsung/android/sume/core/functional/PlaceHolder;

    if-eqz v2, :cond_0

    .line 37
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/sume/core/functional/PlaceHolder;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    .line 38
    invoke-interface {v2, v3}, Lcom/samsung/android/sume/core/functional/PlaceHolder;->setParameters([Ljava/lang/Object;)Lcom/samsung/android/sume/core/functional/PlaceHolder;

    move-result-object v0

    .line 39
    invoke-interface {v0}, Lcom/samsung/android/sume/core/functional/PlaceHolder;->replace()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    iput-object v0, p0, Lcom/samsung/android/sume/ext/director/NNDirector;->serviceProxySupplier:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    goto :goto_0

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sume/ext/director/NNDirector;->serviceProxySupplier:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    .line 43
    :goto_0
    new-instance v0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/ext/director/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    .line 44
    return-void
.end method


# virtual methods
.method public blacklist newAiUpscaler()Lcom/samsung/android/sume/core/controller/SumeClient;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/sume/ext/director/NNDirector;->newImageUpscaler()Lcom/samsung/android/sume/core/controller/SumeClient;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newAiUpscaler(Lcom/samsung/android/sume/ext/director/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;
    .locals 1
    .param p1, "option"    # Lcom/samsung/android/sume/ext/director/Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/ext/director/NNDirector;->newImageUpscaler(Lcom/samsung/android/sume/ext/director/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newImageUpscaler()Lcom/samsung/android/sume/core/controller/SumeClient;
    .locals 1

    .line 110
    new-instance v0, Lcom/samsung/android/sume/ext/director/Option;

    invoke-direct {v0}, Lcom/samsung/android/sume/ext/director/Option;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/ext/director/NNDirector;->newImageUpscaler(Lcom/samsung/android/sume/ext/director/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newImageUpscaler(Lcom/samsung/android/sume/ext/director/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;
    .locals 8
    .param p1, "option"    # Lcom/samsung/android/sume/ext/director/Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    sget-object v1, Lcom/samsung/android/sume/core/types/nn/Model;->MIRACLE_ESTIMATOR:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v2, Lcom/samsung/android/sume/core/types/nn/NNFW;->TFLITE:Lcom/samsung/android/sume/core/types/nn/NNFW;

    sget-object v3, Lcom/samsung/android/sume/core/types/HwUnit;->GPU:Lcom/samsung/android/sume/core/types/HwUnit;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;-><init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    .line 115
    .local v0, "miracleEstimator":Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    invoke-virtual {v0, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setKeepFilterDatatype(Z)V

    .line 116
    invoke-virtual {v0, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setInputWithEvaluationValue(Z)V

    .line 118
    new-instance v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    sget-object v2, Lcom/samsung/android/sume/core/types/nn/Model;->MIRACLE_FILTER:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v3, Lcom/samsung/android/sume/core/types/nn/NNFW;->TFLITE:Lcom/samsung/android/sume/core/types/nn/NNFW;

    sget-object v5, Lcom/samsung/android/sume/core/types/HwUnit;->GPU:Lcom/samsung/android/sume/core/types/HwUnit;

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;-><init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    .line 119
    .local v1, "miracleFilter":Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    new-instance v2, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    sget-object v3, Lcom/samsung/android/sume/core/types/nn/Model;->IMAGE_UPSCALER_X4:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v5, Lcom/samsung/android/sume/core/types/nn/NNFW;->SNAP:Lcom/samsung/android/sume/core/types/nn/NNFW;

    sget-object v6, Lcom/samsung/android/sume/core/types/HwUnit;->GPU:Lcom/samsung/android/sume/core/types/HwUnit;

    invoke-direct {v2, v3, v5, v6, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;-><init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    .line 121
    .local v2, "upscaler":Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    invoke-virtual {p1}, Lcom/samsung/android/sume/ext/director/Option;->getFilterThreshold()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 122
    .local v3, "miracleFilterThreshold":F
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_0

    .line 123
    const/high16 v3, 0x42ac0000    # 86.0f

    .line 125
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/sume/ext/director/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    .line 126
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->ge(Ljava/lang/Comparable;)Lcom/samsung/android/sume/core/evaluate/Evaluator;

    move-result-object v5

    invoke-virtual {v4, v0, v2, v5}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v4

    .line 127
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->lt(Ljava/lang/Comparable;)Lcom/samsung/android/sume/core/evaluate/Evaluator;

    move-result-object v5

    invoke-virtual {v4, v0, v1, v5}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v4

    .line 128
    invoke-virtual {v4, v1, v2}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    .line 130
    invoke-virtual {p1}, Lcom/samsung/android/sume/ext/director/Option;->isSupportAlphaChannel()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    new-instance v4, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    const-string v5, "com.samsung.android.sume.ext.plugin.AlphaChannelPlugin"

    const-string v6, "EXTRACT_ALPHA"

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .local v4, "extractAlpha":Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;
    new-instance v6, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    const-string v7, "MERGE_ALPHA"

    invoke-direct {v6, v5, v7}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 134
    .local v5, "mergeAlpha":Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;
    iget-object v6, p0, Lcom/samsung/android/sume/ext/director/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    .line 135
    invoke-virtual {v6, v4, v0}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v6

    .line 136
    invoke-virtual {v6, v2, v5}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    .line 139
    .end local v4    # "extractAlpha":Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;
    .end local v5    # "mergeAlpha":Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/sume/ext/director/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    invoke-virtual {v4, p1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->build(Lcom/samsung/android/sume/core/graph/Graph$Option;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;

    move-result-object v4

    .line 141
    .local v4, "graph":Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;
    new-instance v5, Lcom/samsung/android/sume/core/controller/SumeClient;

    iget-object v6, p0, Lcom/samsung/android/sume/ext/director/NNDirector;->serviceProxySupplier:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    invoke-virtual {v6}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->get()Lcom/samsung/android/sume/core/service/ServiceProxy;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/samsung/android/sume/core/controller/SumeClient;-><init>(Lcom/samsung/android/sume/core/service/ServiceProxy;Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;)V

    return-object v5
.end method

.method public blacklist newOldPhotoDetector()Lcom/samsung/android/sume/core/controller/SumeClient;
    .locals 1

    .line 145
    new-instance v0, Lcom/samsung/android/sume/ext/director/Option;

    invoke-direct {v0}, Lcom/samsung/android/sume/ext/director/Option;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/ext/director/NNDirector;->newOldPhotoDetector(Lcom/samsung/android/sume/ext/director/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newOldPhotoDetector(Lcom/samsung/android/sume/ext/director/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;
    .locals 5
    .param p1, "option"    # Lcom/samsung/android/sume/ext/director/Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .line 149
    new-instance v0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    sget-object v1, Lcom/samsung/android/sume/core/types/nn/Model;->OLD_PHOTO_ESTIMATOR:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v2, Lcom/samsung/android/sume/core/types/nn/NNFW;->TFLITE:Lcom/samsung/android/sume/core/types/nn/NNFW;

    sget-object v3, Lcom/samsung/android/sume/core/types/HwUnit;->GPU:Lcom/samsung/android/sume/core/types/HwUnit;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;-><init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    .line 150
    .local v0, "oldPhotoDetector":Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    invoke-virtual {v0, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setKeepFilterDatatype(Z)V

    .line 152
    iget-object v1, p0, Lcom/samsung/android/sume/ext/director/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    .line 153
    invoke-virtual {v1, v0}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v1

    .line 154
    invoke-virtual {v1, p1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->build(Lcom/samsung/android/sume/core/graph/Graph$Option;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;

    move-result-object v1

    .line 156
    .local v1, "graph":Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;
    new-instance v2, Lcom/samsung/android/sume/core/controller/SumeClient;

    iget-object v3, p0, Lcom/samsung/android/sume/ext/director/NNDirector;->serviceProxySupplier:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->get()Lcom/samsung/android/sume/core/service/ServiceProxy;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/sume/core/controller/SumeClient;-><init>(Lcom/samsung/android/sume/core/service/ServiceProxy;Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;)V

    return-object v2
.end method

.method public blacklist newOldPhotoEnhancer()Lcom/samsung/android/sume/core/controller/SumeClient;
    .locals 1

    .line 160
    new-instance v0, Lcom/samsung/android/sume/ext/director/Option;

    invoke-direct {v0}, Lcom/samsung/android/sume/ext/director/Option;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/ext/director/NNDirector;->newOldPhotoEnhancer(Lcom/samsung/android/sume/ext/director/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newOldPhotoEnhancer(Lcom/samsung/android/sume/ext/director/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;
    .locals 8
    .param p1, "option"    # Lcom/samsung/android/sume/ext/director/Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .line 164
    new-instance v0, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    const-string v1, "com.samsung.android.sume.nn.plugin.OldPhotoPlugin"

    const-string v2, "SEPARATE_BG_FACES"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .local v0, "extractBgNFaces":Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;
    new-instance v2, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    const-string v3, "COMPOSE_BG_FACES"

    invoke-direct {v2, v1, v3}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 166
    .local v1, "composeBgNFaces":Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->setWaitToReceiveAll(Z)V

    .line 168
    new-instance v3, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    sget-object v4, Lcom/samsung/android/sume/core/types/nn/Model;->OLD_PHOTO_ENHANCER:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v5, Lcom/samsung/android/sume/core/types/nn/NNFW;->SNAP:Lcom/samsung/android/sume/core/types/nn/NNFW;

    sget-object v6, Lcom/samsung/android/sume/core/types/HwUnit;->GPU:Lcom/samsung/android/sume/core/types/HwUnit;

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;-><init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    .line 169
    .local v3, "oldPhotoEnhancer":Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    new-instance v4, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    sget-object v5, Lcom/samsung/android/sume/core/types/nn/Model;->OLD_PHOTO_FACE_ENHANCER:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v6, Lcom/samsung/android/sume/core/types/nn/NNFW;->SNAP:Lcom/samsung/android/sume/core/types/nn/NNFW;

    sget-object v7, Lcom/samsung/android/sume/core/types/HwUnit;->GPU:Lcom/samsung/android/sume/core/types/HwUnit;

    invoke-direct {v4, v5, v6, v7, v2}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;-><init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    move-object v2, v4

    .line 172
    .local v2, "oldPhotoFaceEnhancer":Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    iget-object v4, p0, Lcom/samsung/android/sume/ext/director/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    .line 173
    invoke-virtual {v4, v0, v3}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v4

    .line 174
    invoke-virtual {v4, v3, v1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v4

    .line 175
    invoke-virtual {v4, v0, v2}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v4

    .line 176
    invoke-virtual {v4, v2, v1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v4

    .line 177
    invoke-virtual {v4, p1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->build(Lcom/samsung/android/sume/core/graph/Graph$Option;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;

    move-result-object v4

    .line 179
    .local v4, "graph":Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;
    new-instance v5, Lcom/samsung/android/sume/core/controller/SumeClient;

    iget-object v6, p0, Lcom/samsung/android/sume/ext/director/NNDirector;->serviceProxySupplier:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    invoke-virtual {v6}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->get()Lcom/samsung/android/sume/core/service/ServiceProxy;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/samsung/android/sume/core/controller/SumeClient;-><init>(Lcom/samsung/android/sume/core/service/ServiceProxy;Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;)V

    return-object v5
.end method

.method public blacklist newVideoUpscaler()Lcom/samsung/android/sume/core/controller/SumeClient;
    .locals 2

    .line 47
    new-instance v0, Lcom/samsung/android/sume/ext/director/Option;

    invoke-direct {v0}, Lcom/samsung/android/sume/ext/director/Option;-><init>()V

    .line 48
    .local v0, "option":Lcom/samsung/android/sume/ext/director/Option;
    const v1, 0x3e800

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/ext/director/Option;->setAudioBitrate(I)Lcom/samsung/android/sume/ext/director/Option;

    .line 49
    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/ext/director/NNDirector;->newVideoUpscaler(Lcom/samsung/android/sume/ext/director/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;

    move-result-object v1

    return-object v1
.end method

.method public blacklist newVideoUpscaler(Lcom/samsung/android/sume/ext/director/Option;)Lcom/samsung/android/sume/core/controller/SumeClient;
    .locals 11
    .param p1, "option"    # Lcom/samsung/android/sume/ext/director/Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;-><init>(Lcom/samsung/android/sume/core/types/MediaType;)V

    .line 54
    .local v0, "audioDecoder":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    new-instance v1, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    sget-object v2, Lcom/samsung/android/sume/core/types/MediaType;->RAW_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-direct {v1, v2}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;-><init>(Lcom/samsung/android/sume/core/types/MediaType;)V

    .line 55
    .local v1, "audioEncoder":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    invoke-virtual {p1}, Lcom/samsung/android/sume/ext/director/Option;->getAudioBitrate()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->setBitrate(I)V

    .line 57
    new-instance v2, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    sget-object v3, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-direct {v2, v3}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;-><init>(Lcom/samsung/android/sume/core/types/MediaType;)V

    .line 58
    .local v2, "videoDecoder":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    new-instance v3, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    sget-object v4, Lcom/samsung/android/sume/core/types/MediaType;->RAW_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-direct {v3, v4}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;-><init>(Lcom/samsung/android/sume/core/types/MediaType;)V

    .line 59
    .local v3, "videoEncoder":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v3, v4}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->setScale(F)V

    .line 60
    invoke-virtual {p1}, Lcom/samsung/android/sume/ext/director/Option;->getVideoBitrate()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->setBitrate(I)V

    .line 63
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->setRunInstant(Z)V

    .line 64
    invoke-virtual {v1, v4}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->setRunInstant(Z)V

    .line 65
    invoke-virtual {v2, v4}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->setRunInstant(Z)V

    .line 66
    invoke-virtual {v3, v4}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->setRunInstant(Z)V

    .line 68
    new-instance v5, Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;

    const/4 v6, 0x0

    new-array v7, v6, [Lcom/samsung/android/sume/core/types/MediaType;

    invoke-direct {v5, v7}, Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;-><init>([Lcom/samsung/android/sume/core/types/MediaType;)V

    .line 70
    .local v5, "parser":Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;
    new-instance v7, Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;

    invoke-direct {v7, v6}, Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;-><init>(I)V

    .line 71
    .local v7, "muxer":Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;
    new-array v8, v4, [Lcom/samsung/android/sume/core/types/MediaType;

    sget-object v9, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    aput-object v9, v8, v6

    invoke-virtual {v7, v8}, Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;->setMediaTypeToNotifyEvent([Lcom/samsung/android/sume/core/types/MediaType;)V

    .line 73
    new-instance v6, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    sget-object v8, Lcom/samsung/android/sume/core/types/nn/Model;->VIDEO_UPSCALER_X4:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v9, Lcom/samsung/android/sume/core/types/nn/NNFW;->TFLITE:Lcom/samsung/android/sume/core/types/nn/NNFW;

    sget-object v10, Lcom/samsung/android/sume/core/types/HwUnit;->GPU:Lcom/samsung/android/sume/core/types/HwUnit;

    invoke-direct {v6, v8, v9, v10, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;-><init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V

    .line 74
    .local v6, "upscaler":Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    invoke-virtual {v6, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setBatchIO(Z)V

    .line 75
    invoke-virtual {v6, v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->setKeepFilterDatatype(Z)V

    .line 77
    invoke-virtual {p1}, Lcom/samsung/android/sume/ext/director/Option;->runOneByOne()Lcom/samsung/android/sume/core/graph/Graph$Option;

    .line 78
    invoke-virtual {p1}, Lcom/samsung/android/sume/ext/director/Option;->packedIOBuffers()Lcom/samsung/android/sume/core/graph/Graph$Option;

    .line 80
    iget-object v8, p0, Lcom/samsung/android/sume/ext/director/NNDirector;->graphBuilder:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    sget-object v9, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    .line 81
    invoke-static {v9}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->eq(Ljava/lang/Comparable;)Lcom/samsung/android/sume/core/evaluate/Evaluator;

    move-result-object v9

    invoke-virtual {v8, v5, v0, v9, v4}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/evaluate/Evaluator;I)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v8

    .line 82
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/sume/core/types/MediaType;->RAW_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    .line 83
    invoke-static {v9}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->eq(Ljava/lang/Comparable;)Lcom/samsung/android/sume/core/evaluate/Evaluator;

    move-result-object v9

    invoke-virtual {v8, v1, v7, v9}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    .line 84
    invoke-static {v9}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->eq(Ljava/lang/Comparable;)Lcom/samsung/android/sume/core/evaluate/Evaluator;

    move-result-object v9

    invoke-virtual {v8, v5, v2, v9, v4}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/evaluate/Evaluator;I)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v4

    .line 85
    const/4 v8, 0x2

    invoke-virtual {v4, v2, v6, v8}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;I)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v4

    .line 86
    const/4 v8, 0x3

    invoke-virtual {v4, v6, v3, v8}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;I)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v4

    sget-object v8, Lcom/samsung/android/sume/core/types/MediaType;->RAW_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    .line 87
    invoke-static {v8}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->eq(Ljava/lang/Comparable;)Lcom/samsung/android/sume/core/evaluate/Evaluator;

    move-result-object v8

    invoke-virtual {v4, v3, v7, v8}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->addNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;

    move-result-object v4

    .line 88
    invoke-virtual {v4, p1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;->build(Lcom/samsung/android/sume/core/graph/Graph$Option;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;

    move-result-object v4

    .line 90
    .local v4, "graph":Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;
    new-instance v8, Lcom/samsung/android/sume/core/controller/SumeClient;

    iget-object v9, p0, Lcom/samsung/android/sume/ext/director/NNDirector;->serviceProxySupplier:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    invoke-virtual {v9}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->get()Lcom/samsung/android/sume/core/service/ServiceProxy;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Lcom/samsung/android/sume/core/controller/SumeClient;-><init>(Lcom/samsung/android/sume/core/service/ServiceProxy;Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;)V

    return-object v8
.end method
