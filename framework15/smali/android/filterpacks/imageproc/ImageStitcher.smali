.class public Landroid/filterpacks/imageproc/ImageStitcher;
.super Landroid/filterfw/core/Filter;
.source "ImageStitcher.java"


# instance fields
.field private blacklist mImageHeight:I

.field private blacklist mImageWidth:I

.field private blacklist mInputHeight:I

.field private blacklist mInputWidth:I

.field private blacklist mOutputFrame:Landroid/filterfw/core/Frame;

.field private blacklist mPadSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "padSize"
    .end annotation
.end field

.field private blacklist mProgram:Landroid/filterfw/core/Program;

.field private blacklist mSliceHeight:I

.field private blacklist mSliceIndex:I

.field private blacklist mSliceWidth:I

.field private blacklist mXSlices:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "xSlices"
    .end annotation
.end field

.field private blacklist mYSlices:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "ySlices"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    return-void
.end method

.method private blacklist calcOutputFormatForInput(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 3

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v1

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v1

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mPadSize:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceWidth:I

    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mPadSize:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceWidth:I

    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    mul-int/2addr v1, v2

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mYSlices:I

    mul-int/2addr v1, v2

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    return-object v0
.end method


# virtual methods
.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0

    return-object p2
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .locals 14

    const-string v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/ImageStitcher;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    iget v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-direct {p0, v2}, Landroid/filterpacks/imageproc/ImageStitcher;->calcOutputFormatForInput(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    iput-object v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    if-ne v3, v4, :cond_3

    :goto_0
    iget-object v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    if-nez v3, :cond_1

    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v3

    iput-object v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    :cond_1
    iget v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mPadSize:I

    int-to-float v3, v3

    iget v4, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mPadSize:I

    int-to-float v4, v4

    iget v5, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    iget v6, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    rem-int/2addr v5, v6

    iget v6, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceWidth:I

    mul-int/2addr v5, v6

    iget v6, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    iget v7, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    div-int/2addr v6, v7

    iget v7, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    mul-int/2addr v6, v7

    iget v7, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceWidth:I

    iget v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    sub-int/2addr v8, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    sub-int/2addr v9, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    check-cast v9, Landroid/filterfw/core/ShaderProgram;

    iget v10, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    int-to-float v10, v10

    div-float v10, v7, v10

    iget v11, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    int-to-float v11, v11

    div-float v11, v8, v11

    invoke-virtual {v9, v3, v4, v10, v11}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    iget-object v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    check-cast v9, Landroid/filterfw/core/ShaderProgram;

    int-to-float v10, v5

    iget v11, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    int-to-float v11, v6

    iget v12, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    iget v12, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    int-to-float v12, v12

    div-float v12, v7, v12

    iget v13, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    int-to-float v13, v13

    div-float v13, v8, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    iget-object v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    iget-object v10, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v9, v1, v10}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    iget v10, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    iget v11, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mYSlices:I

    mul-int/2addr v10, v11

    if-ne v9, v10, :cond_2

    iget-object v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {p0, v0, v9}, Landroid/filterpacks/imageproc/ImageStitcher;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    iget-object v0, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Image size should not change."

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setupPorts()V
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/ImageStitcher;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/ImageStitcher;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
