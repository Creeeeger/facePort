.class public final Landroid/hardware/camera2/extension/RequestProcessor$Request;
.super Ljava/lang/Object;
.source "RequestProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/RequestProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation


# instance fields
.field private final blacklist mOutputIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mTemplateId:I


# direct methods
.method public constructor whitelist <init>(Ljava/util/List;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            "Ljava/lang/Object;",
            ">;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/extension/RequestProcessor$Request;->mOutputIds:Ljava/util/List;

    iput-object p2, p0, Landroid/hardware/camera2/extension/RequestProcessor$Request;->mParameters:Ljava/util/List;

    iput p3, p0, Landroid/hardware/camera2/extension/RequestProcessor$Request;->mTemplateId:I

    return-void
.end method

.method static blacklist getParametersMetadata(JLjava/util/List;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;"
        }
    .end annotation

    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setVendorId(J)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static blacklist initializeParcelable(JLjava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/RequestProcessor$Request;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/Request;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/extension/RequestProcessor$Request;

    new-instance v4, Landroid/hardware/camera2/extension/Request;

    invoke-direct {v4}, Landroid/hardware/camera2/extension/Request;-><init>()V

    add-int/lit8 v5, v1, 0x1

    iput v1, v4, Landroid/hardware/camera2/extension/Request;->requestId:I

    invoke-virtual {v3}, Landroid/hardware/camera2/extension/RequestProcessor$Request;->getTemplateId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v4, Landroid/hardware/camera2/extension/Request;->templateId:I

    invoke-virtual {v3}, Landroid/hardware/camera2/extension/RequestProcessor$Request;->getTargetIds()Ljava/util/List;

    move-result-object v1

    iput-object v1, v4, Landroid/hardware/camera2/extension/Request;->targetOutputConfigIds:Ljava/util/List;

    invoke-virtual {v3}, Landroid/hardware/camera2/extension/RequestProcessor$Request;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-static {p0, p1, v1}, Landroid/hardware/camera2/extension/RequestProcessor$Request;->getParametersMetadata(JLjava/util/List;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v1

    iput-object v1, v4, Landroid/hardware/camera2/extension/Request;->parameters:Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget v1, v4, Landroid/hardware/camera2/extension/Request;->requestId:I

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v1, v5

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method blacklist getOutputConfigIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$Request;->mOutputIds:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$Request;->mParameters:Ljava/util/List;

    return-object v0
.end method

.method blacklist getTargetIds()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/OutputConfigId;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/hardware/camera2/extension/RequestProcessor$Request;->mOutputIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/hardware/camera2/extension/RequestProcessor$Request;->mOutputIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    new-instance v4, Landroid/hardware/camera2/extension/OutputConfigId;

    invoke-direct {v4}, Landroid/hardware/camera2/extension/OutputConfigId;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v1, v5

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method blacklist getTemplateId()Ljava/lang/Integer;
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$Request;->mTemplateId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
