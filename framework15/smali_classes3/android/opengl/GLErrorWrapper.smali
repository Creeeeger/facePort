.class Landroid/opengl/GLErrorWrapper;
.super Landroid/opengl/GLWrapperBase;
.source "GLErrorWrapper.java"


# instance fields
.field blacklist mCheckError:Z

.field blacklist mCheckThread:Z

.field blacklist mOurThread:Ljava/lang/Thread;


# direct methods
.method public constructor blacklist <init>(Ljavax/microedition/khronos/opengles/GL;I)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/opengl/GLWrapperBase;-><init>(Ljavax/microedition/khronos/opengles/GL;)V

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/opengl/GLErrorWrapper;->mCheckError:Z

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Landroid/opengl/GLErrorWrapper;->mCheckThread:Z

    return-void
.end method

.method private blacklist checkError()V
    .locals 2

    iget-boolean v0, p0, Landroid/opengl/GLErrorWrapper;->mCheckError:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    move v1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/opengl/GLException;

    invoke-direct {v0, v1}, Landroid/opengl/GLException;-><init>(I)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist checkThread()V
    .locals 4

    iget-boolean v0, p0, Landroid/opengl/GLErrorWrapper;->mCheckThread:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mOurThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    iput-object v0, p0, Landroid/opengl/GLErrorWrapper;->mOurThread:Ljava/lang/Thread;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mOurThread:Ljava/lang/Thread;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/opengl/GLException;

    const/16 v2, 0x7000

    const-string v3, "OpenGL method called from wrong thread."

    invoke-direct {v1, v2, v3}, Landroid/opengl/GLException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist glActiveTexture(I)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glAlphaFunc(IF)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFunc(IF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glAlphaFuncx(II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFuncx(II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glBindBuffer(II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glBindFramebufferOES(II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glBindRenderbufferOES(II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindRenderbufferOES(II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glBindTexture(II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glBlendEquation(I)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBlendEquation(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glBlendEquationSeparate(II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBlendEquationSeparate(II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glBlendFunc(II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glBlendFuncSeparate(IIII)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBlendFuncSeparate(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glBufferData(IILjava/nio/Buffer;I)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glBufferSubData(IIILjava/nio/Buffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferSubData(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glCheckFramebufferStatusOES(I)I
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glCheckFramebufferStatusOES(I)I

    move-result v0

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return v0
.end method

.method public whitelist glClear(I)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glClearColor(FFFF)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glClearColorx(IIII)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColorx(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glClearDepthf(F)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthf(F)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glClearDepthx(I)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthx(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glClearStencil(I)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearStencil(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glClientActiveTexture(I)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glClipPlanef(I[FI)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(I[FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glClipPlanex(I[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glColor4f(FFFF)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glColor4ub(BBBB)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glColor4ub(BBBB)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glColor4x(IIII)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glColorMask(ZZZZ)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorMask(ZZZZ)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glColorPointer(IIII)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glColorPointer(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glColorPointer(IIILjava/nio/Buffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
    .locals 10

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    move-object v0, p0

    iget-object v1, v0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 11

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    move-object v0, p0

    iget-object v1, v0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glCopyTexImage2D(IIIIIIII)V
    .locals 10

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    move-object v0, p0

    iget-object v1, v0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexImage2D(IIIIIIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glCopyTexSubImage2D(IIIIIIII)V
    .locals 10

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    move-object v0, p0

    iget-object v1, v0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexSubImage2D(IIIIIIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glCullFace(I)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glCurrentPaletteMatrixOES(I)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glCurrentPaletteMatrixOES(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glDeleteBuffers(ILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glDeleteBuffers(I[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glDeleteFramebuffersOES(ILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glDeleteFramebuffersOES(I[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glDeleteRenderbuffersOES(ILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteRenderbuffersOES(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glDeleteRenderbuffersOES(I[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteRenderbuffersOES(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glDeleteTextures(ILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glDeleteTextures(I[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glDepthFunc(I)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glDepthMask(Z)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glDepthRangef(FF)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangef(FF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glDepthRangex(II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangex(II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glDisable(I)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glDisableClientState(I)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glDrawArrays(III)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glDrawElements(IIII)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glDrawElements(IIILjava/nio/Buffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glDrawTexfOES(FFFFF)V
    .locals 6

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfOES(FFFFF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glDrawTexfvOES(Ljava/nio/FloatBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES(Ljava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glDrawTexfvOES([FI)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES([FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glDrawTexiOES(IIIII)V
    .locals 6

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glDrawTexivOES(Ljava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES(Ljava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glDrawTexivOES([II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES([II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glDrawTexsOES(SSSSS)V
    .locals 6

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsOES(SSSSS)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glDrawTexsvOES(Ljava/nio/ShortBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES(Ljava/nio/ShortBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glDrawTexsvOES([SI)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES([SI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glDrawTexxOES(IIIII)V
    .locals 6

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxOES(IIIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glDrawTexxvOES(Ljava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES(Ljava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glDrawTexxvOES([II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES([II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glEnable(I)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glEnableClientState(I)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glFinish()V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFinish()V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glFlush()V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFlush()V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glFogf(IF)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glFogfv(ILjava/nio/FloatBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glFogfv(I[FI)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(I[FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glFogx(II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogx(II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glFogxv(ILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glFogxv(I[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glFramebufferRenderbufferOES(IIII)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferRenderbufferOES(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glFramebufferTexture2DOES(IIIII)V
    .locals 6

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferTexture2DOES(IIIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glFrontFace(I)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glFrustumf(FFFFFF)V
    .locals 7

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glFrustumx(IIIIII)V
    .locals 7

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumx(IIIIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGenBuffers(ILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGenBuffers(I[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGenFramebuffersOES(ILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenFramebuffersOES(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGenFramebuffersOES(I[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenFramebuffersOES(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGenRenderbuffersOES(ILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenRenderbuffersOES(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGenRenderbuffersOES(I[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenRenderbuffersOES(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGenTextures(ILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGenTextures(I[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGenerateMipmapOES(I)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenerateMipmapOES(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetBooleanv(ILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetBooleanv(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetBooleanv(I[ZI)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetBooleanv(I[ZI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetBufferParameteriv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetBufferParameteriv(II[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetBufferParameteriv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanef(ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetClipPlanef(I[FI)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanef(I[FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanex(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetClipPlanex(I[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanex(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetError()I
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    return v0
.end method

.method public whitelist glGetFixedv(ILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetFixedv(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetFixedv(I[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetFixedv(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetFloatv(ILjava/nio/FloatBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetFloatv(ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetFloatv(I[FI)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetFloatv(I[FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetFramebufferAttachmentParameterivOES(IIILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetFramebufferAttachmentParameterivOES(IIILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetFramebufferAttachmentParameterivOES(III[II)V
    .locals 6

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetFramebufferAttachmentParameterivOES(III[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetIntegerv(ILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetIntegerv(I[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetLightfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetLightfv(II[FI)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetLightxv(IILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetLightxv(II[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetMaterialfv(II[FI)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetMaterialxv(II[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetPointerv(I[Ljava/nio/Buffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetPointerv(I[Ljava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetRenderbufferParameterivOES(IILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetRenderbufferParameterivOES(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetRenderbufferParameterivOES(II[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetRenderbufferParameterivOES(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetString(I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-object v0
.end method

.method public whitelist glGetTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnviv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetTexEnviv(II[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnviv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnvxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetTexEnvxv(II[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnvxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetTexGenfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGenfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetTexGenfv(II[FI)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGenfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetTexGeniv(IILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGeniv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetTexGeniv(II[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGeniv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetTexGenxv(IILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGenxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetTexGenxv(II[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGenxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetTexParameterfv(II[FI)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameteriv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetTexParameteriv(II[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameteriv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glGetTexParameterxv(II[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glHint(II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glIsBuffer(I)Z
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11;->glIsBuffer(I)Z

    move-result v0

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return v0
.end method

.method public whitelist glIsEnabled(I)Z
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11;->glIsEnabled(I)Z

    move-result v0

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return v0
.end method

.method public whitelist glIsFramebufferOES(I)Z
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glIsFramebufferOES(I)Z

    move-result v0

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return v0
.end method

.method public whitelist glIsRenderbufferOES(I)Z
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glIsRenderbufferOES(I)Z

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist glIsTexture(I)Z
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11;->glIsTexture(I)Z

    move-result v0

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return v0
.end method

.method public whitelist glLightModelf(IF)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelf(IF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glLightModelfv(ILjava/nio/FloatBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glLightModelfv(I[FI)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(I[FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glLightModelx(II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelx(II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glLightModelxv(ILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glLightModelxv(I[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glLightf(IIF)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightf(IIF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glLightfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glLightfv(II[FI)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glLightx(III)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightx(III)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glLightxv(IILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glLightxv(II[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glLineWidth(F)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glLineWidthx(I)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glLoadIdentity()V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glLoadMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glLoadMatrixf([FI)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glLoadMatrixx(Ljava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx(Ljava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glLoadMatrixx([II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx([II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glLoadPaletteFromModelViewMatrixOES()V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11Ext;->glLoadPaletteFromModelViewMatrixOES()V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glLogicOp(I)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLogicOp(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glMaterialf(IIF)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialf(IIF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glMaterialfv(II[FI)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glMaterialx(III)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialx(III)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glMaterialxv(II[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glMatrixIndexPointerOES(IIII)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glMatrixIndexPointerOES(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glMatrixIndexPointerOES(IIILjava/nio/Buffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glMatrixIndexPointerOES(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glMatrixMode(I)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glMultMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glMultMatrixf([FI)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glMultMatrixx(Ljava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx(Ljava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glMultMatrixx([II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx([II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glMultiTexCoord4f(IFFFF)V
    .locals 6

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4f(IFFFF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glMultiTexCoord4x(IIIII)V
    .locals 6

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4x(IIIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glNormal3f(FFF)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3f(FFF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glNormal3x(III)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3x(III)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glNormalPointer(III)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glNormalPointer(III)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glNormalPointer(IILjava/nio/Buffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glOrthof(FFFFFF)V
    .locals 7

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glOrthox(IIIIII)V
    .locals 7

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthox(IIIIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glPixelStorei(II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPixelStorei(II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glPointParameterf(IF)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterf(IF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glPointParameterfv(ILjava/nio/FloatBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterfv(ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glPointParameterfv(I[FI)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterfv(I[FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glPointParameterx(II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterx(II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glPointParameterxv(ILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterxv(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glPointParameterxv(I[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterxv(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glPointSize(F)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glPointSizePointerOES(IILjava/nio/Buffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glPointSizePointerOES(IILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glPointSizex(I)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSizex(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glPolygonOffset(FF)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffset(FF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glPolygonOffsetx(II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffsetx(II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glPopMatrix()V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glPushMatrix()V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10Ext;->glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I

    move-result v0

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return v0
.end method

.method public whitelist glQueryMatrixxOES([II[II)I
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10Ext;->glQueryMatrixxOES([II[II)I

    move-result v0

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return v0
.end method

.method public whitelist glReadPixels(IIIIIILjava/nio/Buffer;)V
    .locals 8

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glRenderbufferStorageOES(IIII)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glRenderbufferStorageOES(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glRotatef(FFFF)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glRotatex(IIII)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatex(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glSampleCoverage(FZ)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoverage(FZ)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glSampleCoveragex(IZ)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoveragex(IZ)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glScalef(FFF)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glScalex(III)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalex(III)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glScissor(IIII)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glShadeModel(I)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glStencilFunc(III)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glStencilMask(I)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glStencilMask(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glStencilOp(III)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTexCoordPointer(IIII)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTexCoordPointer(IIILjava/nio/Buffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTexEnvf(IIF)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTexEnvfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTexEnvfv(II[FI)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTexEnvi(III)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvi(III)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnviv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTexEnviv(II[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnviv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTexEnvx(III)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTexEnvxv(II[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTexGenf(IIF)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenf(IIF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTexGenfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTexGenfv(II[FI)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTexGeni(III)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGeni(III)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTexGeniv(IILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGeniv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTexGeniv(II[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGeniv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTexGenx(III)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenx(III)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTexGenxv(IILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTexGenxv(II[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 11

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    move-object v0, p0

    iget-object v1, v0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTexParameterf(IIF)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTexParameterfv(II[FI)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTexParameteri(III)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTexParameteriv(II[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTexParameterx(III)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTexParameterxv(II[II)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 11

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    move-object v0, p0

    iget-object v1, v0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Ljavax/microedition/khronos/opengles/GL10;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTranslatef(FFF)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glTranslatex(III)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatex(III)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glVertexPointer(IIII)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glVertexPointer(IIILjava/nio/Buffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glViewport(IIII)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glWeightPointerOES(IIII)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glWeightPointerOES(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public whitelist glWeightPointerOES(IIILjava/nio/Buffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glWeightPointerOES(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method
