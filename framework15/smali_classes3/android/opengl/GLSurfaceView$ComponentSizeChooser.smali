.class Landroid/opengl/GLSurfaceView$ComponentSizeChooser;
.super Landroid/opengl/GLSurfaceView$BaseConfigChooser;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComponentSizeChooser"
.end annotation


# instance fields
.field protected greylist-max-o mAlphaSize:I

.field protected greylist-max-o mBlueSize:I

.field protected greylist-max-o mDepthSize:I

.field protected greylist-max-o mGreenSize:I

.field protected greylist-max-o mRedSize:I

.field protected greylist-max-o mStencilSize:I

.field private greylist-max-o mValue:[I

.field final synthetic blacklist this$0:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor blacklist <init>(Landroid/opengl/GLSurfaceView;IIIIII)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->this$0:Landroid/opengl/GLSurfaceView;

    const/16 v12, 0x3026

    const/16 v14, 0x3038

    const/16 v2, 0x3024

    const/16 v4, 0x3023

    const/16 v6, 0x3022

    const/16 v8, 0x3021

    const/16 v10, 0x3025

    move/from16 v3, p2

    move/from16 v5, p3

    move/from16 v7, p4

    move/from16 v9, p5

    move/from16 v11, p6

    move/from16 v13, p7

    filled-new-array/range {v2 .. v14}, [I

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/opengl/GLSurfaceView$BaseConfigChooser;-><init>(Landroid/opengl/GLSurfaceView;[I)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    move/from16 v1, p2

    iput v1, v0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mRedSize:I

    move/from16 v2, p3

    iput v2, v0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mGreenSize:I

    move/from16 v3, p4

    iput v3, v0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mBlueSize:I

    move/from16 v4, p5

    iput v4, v0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    move/from16 v5, p6

    iput v5, v0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mDepthSize:I

    move/from16 v6, p7

    iput v6, v0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mStencilSize:I

    return-void
.end method

.method private greylist-max-o findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2

    iget-object v0, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    :cond_0
    return p5
.end method


# virtual methods
.method public greylist-max-o chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    array-length v8, v7

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    const/16 v4, 0x3025

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v10

    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    const/16 v4, 0x3026

    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    iget v0, v6, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mDepthSize:I

    if-lt v11, v0, :cond_0

    iget v0, v6, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mStencilSize:I

    if-lt v12, v0, :cond_0

    const/16 v4, 0x3024

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v10

    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v13

    const/16 v4, 0x3023

    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    const/16 v4, 0x3022

    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v15

    const/16 v4, 0x3021

    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    iget v1, v6, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mRedSize:I

    if-ne v13, v1, :cond_0

    iget v1, v6, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mGreenSize:I

    if-ne v14, v1, :cond_0

    iget v1, v6, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mBlueSize:I

    if-ne v15, v1, :cond_0

    iget v1, v6, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    if-ne v0, v1, :cond_0

    return-object v10

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
