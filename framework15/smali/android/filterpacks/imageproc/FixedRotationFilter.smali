.class public Landroid/filterpacks/imageproc/FixedRotationFilter;
.super Landroid/filterfw/core/Filter;
.source "FixedRotationFilter.java"


# instance fields
.field private blacklist mProgram:Landroid/filterfw/core/ShaderProgram;

.field private blacklist mRotation:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "rotation"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mRotation:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    return-void
.end method


# virtual methods
.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0

    return-object p2
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .locals 13

    const-string v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/FixedRotationFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    iget v2, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mRotation:I

    if-nez v2, :cond_0

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/FixedRotationFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    iget-object v3, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    if-nez v3, :cond_1

    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v3

    iput-object v3, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    :cond_1
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v3

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v5

    new-instance v6, Landroid/filterfw/geometry/Point;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v8, Landroid/filterfw/geometry/Point;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v7}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v10, Landroid/filterfw/geometry/Point;

    invoke-direct {v10, v7, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    move-object v7, v10

    new-instance v10, Landroid/filterfw/geometry/Point;

    invoke-direct {v10, v9, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    move-object v9, v10

    iget v10, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mRotation:I

    int-to-float v10, v10

    const/high16 v11, 0x42b40000    # 90.0f

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    rem-int/lit8 v10, v10, 0x4

    packed-switch v10, :pswitch_data_0

    new-instance v10, Landroid/filterfw/geometry/Quad;

    invoke-direct {v10, v6, v8, v7, v9}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    goto :goto_0

    :pswitch_0
    new-instance v10, Landroid/filterfw/geometry/Quad;

    invoke-direct {v10, v8, v9, v6, v7}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    invoke-virtual {v3, v5, v4}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    goto :goto_0

    :pswitch_1
    new-instance v10, Landroid/filterfw/geometry/Quad;

    invoke-direct {v10, v9, v7, v8, v6}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    goto :goto_0

    :pswitch_2
    new-instance v10, Landroid/filterfw/geometry/Quad;

    invoke-direct {v10, v7, v6, v9, v8}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    invoke-virtual {v3, v5, v4}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v11

    iget-object v12, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v12, v10}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    iget-object v12, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v12, v1, v11}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    invoke-virtual {p0, v0, v11}, Landroid/filterpacks/imageproc/FixedRotationFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    invoke-virtual {v11}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setupPorts()V
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/FixedRotationFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/FixedRotationFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
