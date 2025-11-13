.class public Landroid/filterpacks/imageproc/DrawRectFilter;
.super Landroid/filterfw/core/Filter;
.source "DrawRectFilter.java"


# instance fields
.field private blacklist mColorBlue:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "colorBlue"
    .end annotation
.end field

.field private blacklist mColorGreen:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "colorGreen"
    .end annotation
.end field

.field private blacklist mColorRed:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "colorRed"
    .end annotation
.end field

.field private final blacklist mFixedColorFragmentShader:Ljava/lang/String;

.field private blacklist mProgram:Landroid/filterfw/core/ShaderProgram;

.field private final blacklist mVertexShader:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorRed:F

    iput v0, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorGreen:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorBlue:F

    const-string v0, "attribute vec4 aPosition;\nvoid main() {\n  gl_Position = aPosition;\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mVertexShader:Ljava/lang/String;

    const-string/jumbo v0, "precision mediump float;\nuniform vec4 color;\nvoid main() {\n  gl_FragColor = color;\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mFixedColorFragmentShader:Ljava/lang/String;

    return-void
.end method

.method private blacklist renderBox(Landroid/filterfw/geometry/Quad;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x4

    iget v3, v0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorRed:F

    iget v4, v0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorGreen:F

    iget v5, v0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorBlue:F

    const/4 v6, 0x4

    new-array v7, v6, [F

    const/4 v8, 0x0

    aput v3, v7, v8

    const/4 v3, 0x1

    aput v4, v7, v3

    const/4 v4, 0x2

    aput v5, v7, v4

    const/4 v5, 0x3

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v5

    iget-object v10, v1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iget v10, v10, Landroid/filterfw/geometry/Point;->x:F

    iget-object v11, v1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iget v11, v11, Landroid/filterfw/geometry/Point;->y:F

    iget-object v12, v1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iget v12, v12, Landroid/filterfw/geometry/Point;->x:F

    iget-object v13, v1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iget v13, v13, Landroid/filterfw/geometry/Point;->y:F

    iget-object v14, v1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iget v14, v14, Landroid/filterfw/geometry/Point;->x:F

    iget-object v15, v1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iget v15, v15, Landroid/filterfw/geometry/Point;->y:F

    iget-object v9, v1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iget v9, v9, Landroid/filterfw/geometry/Point;->x:F

    iget-object v6, v1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iget v6, v6, Landroid/filterfw/geometry/Point;->y:F

    const/16 v5, 0x8

    new-array v5, v5, [F

    aput v10, v5, v8

    aput v11, v5, v3

    aput v12, v5, v4

    const/4 v3, 0x3

    aput v13, v5, v3

    const/4 v3, 0x4

    aput v14, v5, v3

    const/4 v3, 0x5

    aput v15, v5, v3

    const/4 v3, 0x6

    aput v9, v5, v3

    const/4 v3, 0x7

    aput v6, v5, v3

    move-object v3, v5

    iget-object v5, v0, Landroid/filterpacks/imageproc/DrawRectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v6, "color"

    invoke-virtual {v5, v6, v7}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v0, Landroid/filterpacks/imageproc/DrawRectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v6, "aPosition"

    invoke-virtual {v5, v6, v3, v4}, Landroid/filterfw/core/ShaderProgram;->setAttributeValues(Ljava/lang/String;[FI)V

    iget-object v5, v0, Landroid/filterpacks/imageproc/DrawRectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/filterfw/core/ShaderProgram;->setVertexCount(I)V

    iget-object v5, v0, Landroid/filterpacks/imageproc/DrawRectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v5}, Landroid/filterfw/core/ShaderProgram;->beginDrawing()V

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Landroid/opengl/GLES20;->glLineWidth(F)V

    invoke-static {v4, v8, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method


# virtual methods
.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0

    return-object p2
.end method

.method public blacklist prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 3

    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "attribute vec4 aPosition;\nvoid main() {\n  gl_Position = aPosition;\n}\n"

    const-string/jumbo v2, "precision mediump float;\nuniform vec4 color;\nvoid main() {\n  gl_FragColor = color;\n}\n"

    invoke-direct {v0, p1, v1, v2}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    return-void
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .locals 6

    const-string v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/DrawRectFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    const-string v2, "box"

    invoke-virtual {p0, v2}, Landroid/filterpacks/imageproc/DrawRectFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/filterfw/geometry/Quad;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v3, v4}, Landroid/filterfw/geometry/Quad;->scaled(F)Landroid/filterfw/geometry/Quad;

    move-result-object v4

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v5}, Landroid/filterfw/geometry/Quad;->translated(FF)Landroid/filterfw/geometry/Quad;

    move-result-object v3

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/filterfw/core/FrameManager;->duplicateFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    move-result-object v4

    check-cast v4, Landroid/filterfw/core/GLFrame;

    invoke-virtual {v4}, Landroid/filterfw/core/GLFrame;->focus()V

    invoke-direct {p0, v3}, Landroid/filterpacks/imageproc/DrawRectFilter;->renderBox(Landroid/filterfw/geometry/Quad;)V

    invoke-virtual {p0, v0, v4}, Landroid/filterpacks/imageproc/DrawRectFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    invoke-virtual {v4}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    return-void
.end method

.method public blacklist setupPorts()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/DrawRectFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    const-class v0, Landroid/filterfw/geometry/Quad;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v2, "box"

    invoke-virtual {p0, v2, v0}, Landroid/filterpacks/imageproc/DrawRectFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/DrawRectFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
