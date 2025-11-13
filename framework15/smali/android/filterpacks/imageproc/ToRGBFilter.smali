.class public Landroid/filterpacks/imageproc/ToRGBFilter;
.super Landroid/filterfw/core/Filter;
.source "ToRGBFilter.java"


# instance fields
.field private blacklist mInputBPP:I

.field private blacklist mLastFormat:Landroid/filterfw/core/FrameFormat;

.field private blacklist mProgram:Landroid/filterfw/core/Program;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/ToRGBFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    return-void
.end method


# virtual methods
.method public blacklist createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V
    .locals 3

    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v0

    iput v0, p0, Landroid/filterpacks/imageproc/ToRGBFilter;->mInputBPP:I

    iget-object v0, p0, Landroid/filterpacks/imageproc/ToRGBFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterpacks/imageproc/ToRGBFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v0

    iget v1, p0, Landroid/filterpacks/imageproc/ToRGBFilter;->mInputBPP:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-object p2, p0, Landroid/filterpacks/imageproc/ToRGBFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    iget v0, p0, Landroid/filterpacks/imageproc/ToRGBFilter;->mInputBPP:I

    const-string v1, "filterpack_imageproc"

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported BytesPerPixel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/filterpacks/imageproc/ToRGBFilter;->mInputBPP:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    new-instance v0, Landroid/filterfw/core/NativeProgram;

    const-string/jumbo v2, "rgba_to_rgb"

    invoke-direct {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/filterpacks/imageproc/ToRGBFilter;->mProgram:Landroid/filterfw/core/Program;

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/filterfw/core/NativeProgram;

    const-string v2, "gray_to_rgb"

    invoke-direct {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/filterpacks/imageproc/ToRGBFilter;->mProgram:Landroid/filterfw/core/Program;

    nop

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist getConvertedFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 3

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "colorspace"

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/MutableFrameFormat;->setMetaValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    return-object v0
.end method

.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 1

    invoke-virtual {p0, p2}, Landroid/filterpacks/imageproc/ToRGBFilter;->getConvertedFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    return-object v0
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .locals 4

    const-string v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/ToRGBFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/filterpacks/imageproc/ToRGBFilter;->createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/ToRGBFilter;->getConvertedFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    iget-object v3, p0, Landroid/filterpacks/imageproc/ToRGBFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v1, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    invoke-virtual {p0, v0, v2}, Landroid/filterpacks/imageproc/ToRGBFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    return-void
.end method

.method public blacklist setupPorts()V
    .locals 2

    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v1}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensionCount(I)V

    const-string v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/ToRGBFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/ToRGBFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
