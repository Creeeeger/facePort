.class public Lcom/samsung/android/transcode/surfaces/OutputSurface;
.super Ljava/lang/Object;
.source "OutputSurface.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field private static final blacklist EGL_OPENGL_ES2_BIT:I = 0x4

.field public static final blacklist EXCEPTION_FRAME_NOT_AVAILABLE:Ljava/lang/String; = "Surface frame wait timed out"

.field private static final blacklist HD_SIZE:I = 0xe1000


# instance fields
.field private blacklist mEGL:Ljavax/microedition/khronos/egl/EGL10;

.field private blacklist mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private blacklist mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private blacklist mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private blacklist mFrameAvailable:Z

.field private blacklist mFrameSyncObject:Ljava/lang/Object;

.field private blacklist mSurface:Landroid/view/Surface;

.field private blacklist mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private blacklist mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->setup(I)V

    return-void
.end method

.method public constructor blacklist <init>(IIIIIIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    invoke-direct/range {p0 .. p8}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->setup(IIIIIIIZ)V

    return-void
.end method

.method private blacklist checkEglError(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    move v2, v1

    const/16 v3, 0x3000

    if-eq v1, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": EGL error: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist eglSetup(II)V
    .locals 10

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xb

    new-array v3, v0, [I

    fill-array-data v3, :array_0

    const/4 v0, 0x1

    new-array v7, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v5, 0x1

    move-object v4, v7

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x3098

    const/4 v2, 0x2

    const/16 v4, 0x3038

    filled-new-array {v1, v2, v4}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v6, 0x0

    aget-object v8, v7, v6

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v5, v8, v9, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    const-string v2, "eglCreateContext"

    invoke-direct {p0, v2}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->checkEglError(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v2, :cond_1

    const/16 v2, 0x3057

    const/16 v5, 0x3056

    filled-new-array {v2, p1, v5, p2, v4}, [I

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v6, v7, v6

    invoke-interface {v4, v5, v6, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const-string v4, "eglCreatePbufferSurface"

    invoke-direct {p0, v4}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->checkEglError(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v4, :cond_0

    return-void

    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "surface was null"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "null context"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "unable to find RGB888+pbuffer EGL config"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to initialize EGL10"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3033
        0x1
        0x3040
        0x4
        0x3038
    .end array-data
.end method

.method private blacklist setup(I)V
    .locals 2

    new-instance v0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    invoke-direct {v0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    invoke-virtual {v0, p1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->prepare(I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "textureID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->getTextureId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method private blacklist setup(IIIIIIIZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v12, p6

    move/from16 v13, p7

    new-instance v1, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    invoke-direct {v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p8, :cond_3

    mul-int v3, v12, v13

    const v4, 0xe1000

    if-lt v3, v4, :cond_3

    if-le v12, v13, :cond_1

    const/16 v1, 0x280

    mul-int v3, v1, v13

    div-int v2, v3, v12

    rem-int/lit8 v3, v2, 0x20

    if-eqz v3, :cond_0

    div-int/lit8 v3, v2, 0x20

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v2, v3, 0x20

    move v14, v1

    move v15, v2

    goto :goto_0

    :cond_0
    move v14, v1

    move v15, v2

    goto :goto_0

    :cond_1
    const/16 v2, 0x280

    mul-int v3, v2, v12

    div-int v1, v3, v13

    rem-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_2

    div-int/lit8 v3, v1, 0x20

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v1, v3, 0x20

    move v14, v1

    move v15, v2

    goto :goto_0

    :cond_2
    move v14, v1

    move v15, v2

    goto :goto_0

    :cond_3
    move v14, v1

    move v15, v2

    :goto_0
    iget-object v1, v0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move v10, v14

    move v11, v15

    invoke-virtual/range {v1 .. v11}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->prepare(IIIIIIIZII)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "textureID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->getTextureId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranscodeLib"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget-object v2, v0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->getTextureId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, v0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, v0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    new-instance v1, Landroid/view/Surface;

    iget-object v2, v0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, v0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurface:Landroid/view/Surface;

    if-eqz v14, :cond_4

    if-eqz v15, :cond_4

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->eglSetup(II)V

    :cond_4
    return-void
.end method


# virtual methods
.method public blacklist checkForNewImage(I)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    int-to-long v3, p1

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    iget-boolean v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameAvailable:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    :try_start_2
    monitor-exit v0

    return v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameAvailable:Z

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "before updateTexImage"

    invoke-static {v0}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public blacklist drawImage()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->draw(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public blacklist getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public blacklist notifyFrameSyncObject()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameAvailable:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameAvailable:Z

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "mFrameAvailable already set, frame could be dropped"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist release()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->release()V

    :cond_3
    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurface:Landroid/view/Surface;

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method
